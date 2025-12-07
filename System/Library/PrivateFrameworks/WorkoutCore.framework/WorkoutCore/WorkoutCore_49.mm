unint64_t protocol witness for CodingKey.stringValue.getter in conformance ExternalProvider.CodingKeys()
{
  v1 = *v0;
  v2 = 0x614E656372756F73;
  v3 = 0x6D49656372756F73;
  v4 = 0x72617453636E7973;
  if (v1 != 3)
  {
    v4 = 1684632949;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExternalProvider.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ExternalProvider.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExternalProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExternalProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double key path setter for ExternalProvider.sourceName : ExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return result;
}

uint64_t ExternalProvider.sourceName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double ExternalProvider.sourceName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double key path setter for ExternalProvider.sourceBundleIdentifier : ExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  return result;
}

uint64_t ExternalProvider.sourceBundleIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

double ExternalProvider.sourceBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

uint64_t key path setter for ExternalProvider.sourceImageData : ExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  outlined copy of Data._Representation(v2, v3);
  return outlined consume of Data._Representation(v5, v6);
}

uint64_t ExternalProvider.sourceImageData.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  outlined copy of Data._Representation(v1, *(v0 + 56));
  return v1;
}

uint64_t ExternalProvider.sourceImageData.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return outlined consume of Data._Representation(v5, v6);
}

uint64_t ExternalProvider.syncStartDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

char *ExternalProvider.init(sourceName:sourceBundleIdentifier:sourceImageData:syncStartDate:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  *(v8 + 6) = a5;
  *(v8 + 7) = a6;
  v11 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 32))(&v8[v11], a7, v12);
  v13 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 32))(&v8[v13], a8, v14);
  return v8;
}

uint64_t ExternalProvider.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ExternalProvider.init(from:)(a1);
  return v2;
}

uint64_t ExternalProvider.init(from:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore16ExternalProviderC10CodingKeys33_16CFC71F3F099194EA929A55B0075CFFLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore16ExternalProviderC10CodingKeys33_16CFC71F3F099194EA929A55B0075CFFLLOGMR);
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v11);
  v13 = &v26 - v12;
  v14 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1Tm_3(a1, v14);
  lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys();
  v15 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    v16 = v32;
    type metadata accessor for ExternalProvider(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v9;
    v18 = v10;
    v31 = v5;
    v19 = v29;
    LOBYTE(v34) = 0;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v32;
    *(v32 + 16) = v20;
    *(v16 + 24) = v21;
    LOBYTE(v34) = 1;
    *(v16 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v16 + 40) = v22;
    v35 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v16 + 48) = v34;
    LOBYTE(v34) = 3;
    _s10Foundation4DateVACSeAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = 0;
    (*(v19 + 32))(v16 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate, v17, v6);
    LOBYTE(v34) = 4;
    _s10Foundation4DateVACSeAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v23 = v31;
    v24 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 8))(v13, v30);
    (*(v27 + 32))(v16 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid, v23, v24);
  }

  __swift_destroy_boxed_opaque_existential_1Tm_23(v33);
  return v16;
}

void ExternalProvider.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore16ExternalProviderC10CodingKeys33_16CFC71F3F099194EA929A55B0075CFFLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore16ExternalProviderC10CodingKeys33_16CFC71F3F099194EA929A55B0075CFFLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1Tm_3(a1, a1[3]);
  lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v15 = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    swift_beginAccess();
    v14 = 1;

    KeyedEncodingContainer.encode(_:forKey:)();

    swift_beginAccess();
    v10 = *(v3 + 56);
    v12 = *(v3 + 48);
    v13 = v10;
    v11[7] = 2;
    outlined copy of Data._Representation(v12, v10);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v12, v13);
    LOBYTE(v12) = 3;
    type metadata accessor for Date();
    _s10Foundation4DateVACSeAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    type metadata accessor for UUID();
    _s10Foundation4DateVACSeAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t one-time initialization function for placeholder()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() zeroObjectModificationDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init()();
  type metadata accessor for ExternalProvider(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0xE000000000000000;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  *(v11 + 48) = xmmword_20B42FB30;
  (*(v6 + 32))(v11 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate, v9, v5);
  result = (*(v1 + 32))(v11 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid, v4, v0);
  static ExternalProvider.placeholder = v11;
  return result;
}

uint64_t static ExternalProvider.placeholder.getter()
{
  if (one-time initialization token for placeholder != -1)
  {
    swift_once();
  }
}

char *ExternalProvider.deinit()
{

  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ExternalProvider.__deallocating_deinit()
{

  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance ExternalProvider@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ExternalProvider(0);
  v6 = swift_allocObject();
  result = ExternalProvider.init(from:)(a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

id ExternalProvider.serialize()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v69 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v71 = &v68 - v7;
  v72 = type metadata accessor for Date();
  v70 = *(v72 - 8);
  v8 = v70;
  MEMORY[0x28223BE20](v72, v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = v0[4];
  v13 = v1[5];

  v14 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v12, v13);
  v16 = v15;
  static Date.now.getter();
  v17 = objc_allocWithZone(MEMORY[0x277D7E7E8]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v19 = Data._bridgeToObjectiveC()().super.isa;
  v20 = Date._bridgeToObjectiveC()().super.isa;
  v21 = [v17 initWithVersion:1 type:4 uuid:isa persistedData:v19 persistedProtoData:0 objectState:0 objectModificationDate:v20 syncIdentity:0];

  outlined consume of Data._Representation(v14, v16);
  v22 = *(v8 + 8);
  v68 = v11;
  v22(v11, v72);
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  swift_beginAccess();
  v26 = v1[2];
  v27 = v1[3];

  v28 = [v21 keyedStrings];
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = v29;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v27, v23, v25, isUniquelyReferenced_nonNull_native);

  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 setKeyedStrings_];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  v35 = v1[4];
  v36 = v1[5];

  v37 = [v21 keyedStrings];
  v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = v38;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v36, v32, v34, v39);

  v40 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 setKeyedStrings_];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  swift_beginAccess();
  v44 = v1[6];
  v45 = v1[7];
  outlined copy of Data._Representation(v44, v45);
  v46 = [v21 keyedDatas];
  v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v47;
  v49 = v44;
  v50 = v72;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, v45, v41, v43, v48);

  v51 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 setKeyedDatas_];

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  v56 = v70;
  v55 = v71;
  (*(v70 + 16))(v71, v1 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate, v50);
  v57 = v56;
  v58 = v55;
  (*(v56 + 56))(v55, 0, 1, v50);
  v59 = [v21 keyedDates];
  v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = v58;
  v74 = v60;
  if ((*(v57 + 48))(v58, 1, v50) == 1)
  {
    outlined destroy of Date?(v58);
    v62 = v69;
    specialized Dictionary._Variant.removeValue(forKey:)(v52, v54, v69);

    outlined destroy of Date?(v62);
  }

  else
  {
    v63 = v68;
    (*(v57 + 32))(v68, v61, v50);
    v64 = v74;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v64;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v52, v54, v65);

    v74 = v73;
  }

  v66 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 setKeyedDates_];

  return v21;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExternalProvider()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  MEMORY[0x20F2E6D80](v2, v3);

  MEMORY[0x20F2E6D80](39, 0xE100000000000000);
  return 0x72656469766F7270;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  swift_beginAccess();
  if (v4 == *(v3 + 32) && v5 == *(v3 + 40))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

double ExternalProvider.hash(into:)(uint64_t a1)
{
  swift_beginAccess();

  String.hash(into:)();

  return result;
}

Swift::Int ExternalProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();

  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExternalProvider()
{
  Hasher.init(_seed:)();
  swift_beginAccess();

  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance ExternalProvider(uint64_t a1)
{
  swift_beginAccess();

  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExternalProvider(uint64_t a1)
{
  Hasher.init(_seed:)();
  swift_beginAccess();

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t type metadata accessor for ExternalProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for ExternalProvider;
  if (!type metadata singleton initialization cache for ExternalProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for ExternalProvider(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExternalProvider.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExternalProvider.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized ExternalProvider.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExternalProvider.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void *__swift_project_boxed_opaque_existential_1Tm_3(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t static VoiceFeedbackWorkoutStep.make(workoutStep:distanceType:formattingManager:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a2;
  v7 = type metadata accessor for VoiceFeedbackStepType();
  v99 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v92 = v87 - v13;
  v90 = type metadata accessor for VoiceFeedbackMetricType();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v14);
  v91 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v101 = v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v102 = v87 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v103);

  v22 = v103;
  v23 = [v103 goalTypeIdentifier];

  v100 = v10;
  if (v23 <= 1)
  {
    if (!v23)
    {
      v97 = 1;
      v98 = 0;
LABEL_7:
      v28 = v102;
      goto LABEL_22;
    }

    if (v23 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v103);

      v29 = v103;
      v22 = [v103 value];

      v28 = v102;
      if (v22)
      {
        v23 = [v22 _unit];
        v30 = v23;
        [v22 _value];
        v32 = v31;

        v97 = 0;
        v98 = v32;
        goto LABEL_22;
      }

      v81 = "al does not have a value";
      v86 = 22;
      v82 = "WorkoutCore/VoiceFeedbackWorkoutStep+WorkoutStep.swift";
      v83 = 0xD000000000000023;
LABEL_93:
      v84 = v81 | 0x8000000000000000;
      for (i = 54; ; i = 45)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v83, v84, v82, i, 2, v86, 0);
        __break(1u);
LABEL_95:
        if (v22)
        {
LABEL_97:
          v86 = 28;
          v82 = "WorkoutCore/_HKWorkoutGoalType+UserUnit.swift";
          v83 = 0xD000000000000041;
          v84 = 0x800000020B45AAC0;
        }

        else
        {
          v86 = 26;
          v82 = "WorkoutCore/_HKWorkoutGoalType+UserUnit.swift";
          v84 = 0x800000020B45AB10;
          v83 = 0xD000000000000018;
        }
      }
    }

    goto LABEL_89;
  }

  if (v23 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v103);

    v24 = v103;
    v22 = [v103 value];

    if (v22)
    {
      v23 = [v22 _unit];
      v25 = v23;
      [v22 _value];
      v27 = v26;

      v97 = 0;
      v98 = v27;
      goto LABEL_7;
    }

    v81 = "t step goal type identifier";
    v86 = 37;
    v82 = "WorkoutCore/VoiceFeedbackWorkoutStep+WorkoutStep.swift";
    v83 = 0xD00000000000001FLL;
    goto LABEL_93;
  }

  if (v23 != 3)
  {
LABEL_89:
    v81 = "Step+WorkoutStep.swift";
    v86 = 45;
    v82 = "WorkoutCore/VoiceFeedbackWorkoutStep+WorkoutStep.swift";
    v83 = 0xD00000000000003BLL;
    goto LABEL_93;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v103);

  v22 = v103;
  v33 = [v103 value];

  if (!v33)
  {
    v81 = "Time goal does not have a value";
    v86 = 29;
    v82 = "WorkoutCore/VoiceFeedbackWorkoutStep+WorkoutStep.swift";
    v83 = 0xD000000000000028;
    goto LABEL_93;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v103);

  v34 = v103;
  v22 = [v103 goalTypeIdentifier];

  v35 = [a3 unitManager];
  if (!v35)
  {
    __break(1u);
    goto LABEL_89;
  }

  v36 = v35;
  v28 = v102;
  if (v22 > 2)
  {
    if (v22 != 3)
    {
      goto LABEL_97;
    }

    v37 = [v35 userActiveEnergyBurnedUnit];
  }

  else if (v22 == 1)
  {
    v37 = [v35 userDistanceHKUnitForDistanceType_];
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_95;
    }

    v37 = [objc_opt_self() secondUnit];
  }

  v23 = v37;

  [v33 doubleValueForUnit_];
  v39 = v38;

  v98 = v39;
  v40 = v23;
  v97 = 0;
LABEL_22:
  v41 = type metadata accessor for VoiceFeedbackTargetZone();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v96 = v41;
  v95 = v43;
  v94 = v42 + 56;
  (v43)(v28, 1, 1);
  if ((WorkoutStep.hasActiveTargetZone.getter() & 1) == 0)
  {
    goto LABEL_75;
  }

  v44 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v88 = a1;
  v45 = *&a1[v44];
  v87[1] = a4;
  v87[0] = v7;
  a1 = a3;
  if (v45 >> 62)
  {
LABEL_86:
    v46 = __CocoaSet.count.getter();
  }

  else
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v46)
  {
LABEL_36:

    a1 = v88;
    v45 = *&v88[v44];
    if (v45 >> 62)
    {
      v50 = __CocoaSet.count.getter();
    }

    else
    {
      v50 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v50)
    {
      v51 = 0;
      v44 = v45 & 0xC000000000000001;
      while (1)
      {
        if (v44)
        {
          v52 = MEMORY[0x20F2E7A20](v51, v45);
          v53 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v51 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v52 = *(v45 + 8 * v51 + 32);

          v53 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        swift_beginAccess();
        v54 = *(v52 + 40);

        if (v54 == 1)
        {
          break;
        }

        ++v51;
        if (v53 == v50)
        {
          goto LABEL_49;
        }
      }

      v7 = v87[0];
    }

    else
    {
LABEL_49:

      v55 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
      swift_beginAccess();
      v56 = *&a1[v55];
      if (v56)
      {
        v57 = *&a1[v55];
        v7 = v87[0];
      }

      else
      {
        v7 = v87[0];
        if (one-time initialization token for defaultZone != -1)
        {
          swift_once();
        }

        v57 = static HeartRateTargetZone.defaultZone;
      }

      v59 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
      if (v57[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v57[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
      {
        v68 = v56;
      }

      else
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v61 = v56;

        if ((v60 & 1) == 0)
        {
          HeartRateTargetZone.applicableRange.getter();
          v28 = v102;
          if (v62)
          {
            if (one-time initialization token for zones != -1)
            {
              swift_once();
            }

            v63 = type metadata accessor for Logger();
            __swift_project_value_buffer(v63, static WOLog.zones);
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.fault.getter();
            if (!os_log_type_enabled(v64, v65))
            {
              goto LABEL_74;
            }

            v66 = swift_slowAlloc();
            *v66 = 0;
            v67 = "[VoiceFeedback] No applicable range for heart rate zone alert";
            goto LABEL_73;
          }

          if (v57[v59] == 1)
          {
            swift_beginAccess();
          }

          v78 = [objc_opt_self() _countPerMinuteUnit];
          v79 = [v78 unitString];

          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v89 + 104))(v91, *MEMORY[0x277D7D8D0], v90);
          v80 = type metadata accessor for VoiceFeedbackPaceFormat();
          (*(*(v80 - 8) + 56))(v92, 1, 1, v80);
          v77 = v101;
LABEL_82:
          VoiceFeedbackTargetZone.init(minMagnitude:maxMagnitude:unit:metricType:paceFormat:zoneIndex:)();

          outlined destroy of VoiceFeedbackTargetZone?(v28);
          v95(v77, 0, 1, v96);
          outlined init with take of VoiceFeedbackTargetZone?(v77, v28);
          if (!v23)
          {
            goto LABEL_77;
          }

LABEL_76:
          v72 = [v23 unitString];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          goto LABEL_77;
        }
      }
    }

    v28 = v102;
    v69 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
    if (!v69)
    {
      goto LABEL_75;
    }

    v57 = v69;
    PowerZonesAlertTargetZone.applicableRange.getter();
    if (v70)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, static WOLog.zones);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v64, v65))
      {
        goto LABEL_74;
      }

      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "[VoiceFeedback] No applicable range for power zone alert";
LABEL_73:
      _os_log_impl(&dword_20AEA4000, v64, v65, v67, v66, 2u);
      MEMORY[0x20F2E9420](v66, -1, -1);
LABEL_74:

LABEL_75:
      if (!v23)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    v74 = [objc_opt_self() wattUnit];
    v75 = [v74 unitString];

    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v89 + 104))(v91, *MEMORY[0x277D7D8C8], v90);
    v76 = type metadata accessor for VoiceFeedbackPaceFormat();
    (*(*(v76 - 8) + 56))(v92, 1, 1, v76);
    v77 = v101;
    goto LABEL_82;
  }

  v47 = 0;
  while (1)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x20F2E7A20](v47, v45);
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v48 = *(v45 + 8 * v47 + 32);

      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_35;
      }
    }

    swift_beginAccess();
    if (*(v48 + 40))
    {
      break;
    }

    ++v47;
    if (v49 == v46)
    {
      goto LABEL_36;
    }
  }

  v58 = v101;
  static VoiceFeedbackTargetZone.make(targetZone:distanceType:formattingManager:)(v48, v93, a1, v101);

  v28 = v102;
  outlined destroy of VoiceFeedbackTargetZone?(v102);
  v95(v58, 0, 1, v96);
  outlined init with take of VoiceFeedbackTargetZone?(v58, v28);
  v7 = v87[0];
  a1 = v88;
  if (v23)
  {
    goto LABEL_76;
  }

LABEL_77:
  swift_beginAccess();
  (*(v99 + 104))(v100, **(&unk_277D8C980 + a1[16]), v7);
  outlined init with copy of VoiceFeedbackTargetZone?(v28, v101);
  VoiceFeedbackWorkoutStep.init(magnitude:unit:stepType:targetZone:)();

  return outlined destroy of VoiceFeedbackTargetZone?(v28);
}

uint64_t outlined init with copy of VoiceFeedbackTargetZone?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VoiceFeedbackTargetZone?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of VoiceFeedbackTargetZone?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id specialized static NLSessionActivityGoal.canonicalUnit(for:)(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v1 = &selRef_kilocalorieUnit;
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v1 = &selRef_secondUnit;
      goto LABEL_8;
    }

    if (!a1)
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, 0x800000020B46DEC0, "WorkoutCore/NLSessionActivityGoal+CanonicalUnit.swift", 53, 2, 25, 0);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000047, 0x800000020B46DE70, "WorkoutCore/NLSessionActivityGoal+CanonicalUnit.swift", 53, 2, 27, 0);
    goto LABEL_14;
  }

  v1 = &selRef_meterUnit;
LABEL_8:
  v2 = [objc_opt_self() *v1];

  return v2;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  lazy protocol witness table accessor for type MusicItemCollection<Station> and conformance MusicItemCollection<A>(a3, a1, a2);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

void *one-time initialization function for shared()
{
  type metadata accessor for MediaPlaybackMoodStationCache();
  swift_allocObject();
  result = MediaPlaybackMoodStationCache.().init()();
  static MediaPlaybackMoodStationCache.shared = result;
  return result;
}

uint64_t static MediaPlaybackMoodStationCache.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

void *MediaPlaybackMoodStationCache.().init()()
{
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = MEMORY[0x20F2E6C00](0xD000000000000039, 0x800000020B46DFE0);
  v3 = [v1 initWithSuiteName_];

  v0[14] = v3;
  v4 = MEMORY[0x277D84F90];
  v0[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_10Foundation4DateVTt0g5Tf4g_n(v4);
  v0[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_ScTySSSgs5NeverOGTt0g5Tf4g_n(v4);
  return v0;
}

uint64_t MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v41 - v6;
  v8 = type metadata accessor for Station.Mood();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v13 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v41 - v19;
  swift_beginAccess();
  if (!*(*(v1 + 120) + 16))
  {
    MediaPlaybackMoodStationCache.loadDefaultsMoodStationIdentifiers()();
  }

  HKWorkoutActivityType.moodForWorkoutType.getter([a1 identifier], v20);
  MediaPlaybackMoodStationCache.validCachedMoodStationIdentifier(for:)(v20);
  if (v21)
  {

    return (*(v9 + 8))(v20, v8);
  }

  swift_beginAccess();
  if (*(*(v1 + 136) + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(v20);
    v24 = v23;

    if (v24)
    {
      return (*(v9 + 8))(v20, v8);
    }
  }

  v48 = v7;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static WOLog.mediaPlayback);
  v49 = *(v9 + 16);
  v49(v17, v20, v8);
  v26 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v45))
  {
    v27 = swift_slowAlloc();
    v43 = v27;
    v44 = swift_slowAlloc();
    v50 = v44;
    *v27 = 136315138;
    v49(v13, v17, v8);
    v42 = String.init<A>(describing:)();
    v29 = v28;
    v30 = *(v9 + 8);
    v46 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v30;
    v30(v17, v8);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v29, &v50);

    v32 = v43;
    *(v43 + 1) = v31;
    _os_log_impl(&dword_20AEA4000, v26, v45, "MediaPlaybackMoodStationCache: Prefetching mood station identifier for mood: %s", v32, 0xCu);
    v33 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x20F2E9420](v33, -1, -1);
    MEMORY[0x20F2E9420](v32, -1, -1);
  }

  else
  {

    v34 = *(v9 + 8);
    v46 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v34;
    v34(v17, v8);
  }

  v35 = v48;
  static TaskPriority.userInitiated.getter();
  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v49(v13, v20, v8);
  v38 = lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(&lazy protocol witness table cache variable for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache, v37, type metadata accessor for MediaPlaybackMoodStationCache, &protocol conformance descriptor for MediaPlaybackMoodStationCache);
  v39 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = v2;
  *(v40 + 3) = v38;
  *(v40 + 4) = v2;
  (*(v9 + 32))(&v40[v39], v13, v8);
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:), v40);

  return v47(v20, v8);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for Station.Mood();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:);

  return MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(a5);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:), v4, 0);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)()
{
  v31 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.mediaPlayback);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v26 = v0[10];
    v27 = v0[9];
    v11 = v0[6];
    v10 = v0[7];
    v29 = v9;
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v14 = 136315394;
    v7(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    if (v26)
    {
      v19 = v27;
    }

    else
    {
      v19 = 7104878;
    }

    if (!v26)
    {
      v1 = 0xE300000000000000;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v1, &v30);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_20AEA4000, v8, v29, "MediaPlaybackMoodStationCache: Finished prefetching mood station identifier for %s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v28, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  else
  {
    v21 = v0[7];
    v22 = v0[4];
    v23 = v0[5];

    (*(v23 + 8))(v21, v22);
  }

  v24 = v0[1];

  return v24();
}

uint64_t MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for Station.Mood();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v2[17] = *(v4 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v1, 0);
}

uint64_t MediaPlaybackMoodStationCache.moodStationIdentifier(for:)()
{
  v80 = v0;
  v1 = MediaPlaybackMoodStationCache.validCachedMoodStationIdentifier(for:)(v0[12]);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v5 = v0[20];
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[12];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.mediaPlayback);
    v10 = *(v6 + 16);
    v10(v5, v8, v7);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[20];
    if (v13)
    {
      v74 = v4;
      v76 = v3;
      v15 = v0[19];
      v17 = v0[15];
      v16 = v0[16];
      v18 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v18 = 136315394;
      v10(v15, v14, v17);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      v22 = v17;
      v4 = v74;
      (*(v16 + 8))(v14, v22);
      v23 = v19;
      v3 = v76;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v21, &v79);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v74, &v79);
      _os_log_impl(&dword_20AEA4000, v11, v12, "MediaPlaybackMoodStationCache: Using cached mood station identifier for %s: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v73, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    else
    {
      v48 = v0[15];
      v49 = v0[16];

      (*(v49 + 8))(v14, v48);
    }

    v50 = v0[1];

    return v50(v3, v4);
  }

  v25 = v0[13];
  swift_beginAccess();
  v26 = *(v25 + 136);
  if (*(v26 + 16))
  {
    v27 = v0[12];

    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
    if (v29)
    {
      v30 = *(*(v26 + 56) + 8 * v28);
      v0[21] = v30;

      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v31 = v0[18];
      v32 = v0[15];
      v33 = v0[16];
      v34 = v0[12];
      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static WOLog.mediaPlayback);
      v36 = *(v33 + 16);
      v36(v31, v34, v32);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v77 = v30;
        v39 = v0[18];
        v40 = v0[19];
        v42 = v0[15];
        v41 = v0[16];
        v43 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v79 = v75;
        *v43 = 136315138;
        v36(v40, v39, v42);
        v44 = String.init<A>(describing:)();
        v46 = v45;
        (*(v41 + 8))(v39, v42);
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v79);

        *(v43 + 4) = v47;
        v30 = v77;
        _os_log_impl(&dword_20AEA4000, v37, v38, "MediaPlaybackMoodStationCache: Awaiting existing request for mood: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x20F2E9420](v75, -1, -1);
        MEMORY[0x20F2E9420](v43, -1, -1);
      }

      else
      {
        v69 = v0[18];
        v71 = v0[15];
        v70 = v0[16];

        (*(v70 + 8))(v69, v71);
      }

      v72 = swift_task_alloc();
      v0[22] = v72;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      *v72 = v0;
      v72[1] = MediaPlaybackMoodStationCache.moodStationIdentifier(for:);
      v67 = v0 + 10;
      v68 = v30;
      goto LABEL_20;
    }
  }

  v52 = v0[19];
  v53 = v0[16];
  v54 = v0[14];
  v55 = v0[15];
  v56 = v0[12];
  v57 = v0[13];
  v78 = v56;
  static TaskPriority.userInitiated.getter();
  v58 = type metadata accessor for TaskPriority();
  (*(*(v58 - 8) + 56))(v54, 0, 1, v58);
  (*(v53 + 16))(v52, v56, v55);
  v60 = lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(&lazy protocol witness table cache variable for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache, v59, type metadata accessor for MediaPlaybackMoodStationCache, &protocol conformance descriptor for MediaPlaybackMoodStationCache);
  v61 = (*(v53 + 80) + 40) & ~*(v53 + 80);
  v62 = swift_allocObject();
  *(v62 + 2) = v57;
  *(v62 + 3) = v60;
  *(v62 + 4) = v57;
  (*(v53 + 32))(&v62[v61], v52, v55);
  swift_retain_n();
  v63 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCAG_Tt2g5(0, 0, v54, &async function pointer to partial apply for closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v62);
  v0[23] = v63;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(v25 + 136);
  *(v25 + 136) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v78, isUniquelyReferenced_nonNull_native);
  *(v25 + 136) = v79;
  swift_endAccess();
  v65 = swift_task_alloc();
  v0[24] = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *v65 = v0;
  v65[1] = MediaPlaybackMoodStationCache.moodStationIdentifier(for:);
  v67 = v0 + 8;
  v68 = v63;
LABEL_20:

  return MEMORY[0x282200460](v67, v68, v66);
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v1, 0);
}

{

  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3(v2, v1);
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v1, 0);
}

{

  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:);

  return MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:)(a5);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v4, 0);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  **(v0 + 16) = *(v0 + 48);
  $defer #1 () in closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t $defer #1 () in closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 136);
    *(a1 + 136) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    v9 = *(v8 + 48);
    v10 = type metadata accessor for Station.Mood();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);

    specialized _NativeDictionary._delete(at:)(v6, v8);
    *(a1 + 136) = v8;
  }

  return swift_endAccess();
}

uint64_t MediaPlaybackMoodStationCache.validCachedMoodStationIdentifier(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Station.Mood();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v39 - v19;
  swift_beginAccess();
  v21 = *(v1 + 120);
  if (!*(v21 + 16))
  {
    return 0;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v23 & 1) == 0)
  {

    return 0;
  }

  v24 = (*(v21 + 56) + 16 * v22);
  v26 = *v24;
  v25 = v24[1];
  v40 = v13;
  v41 = v26;
  v42 = v25;

  swift_beginAccess();
  v27 = *(v2 + 128);
  if (*(v27 + 16))
  {

    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v29 & 1) == 0)
    {

      return v41;
    }

    v30 = v40;
    (*(v40 + 16))(v17, *(v27 + 56) + *(v40 + 72) * v28, v12);

    (*(v30 + 32))(v20, v17, v12);
    Date.timeIntervalSinceNow.getter();
    if (v31 > -604800.0)
    {
      (*(v30 + 8))(v20, v12);
      return v41;
    }

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.mediaPlayback);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20AEA4000, v34, v35, "MediaPlaybackMoodStationCache: cached mood station identifier is stale, discarding", v36, 2u);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    v37 = *(v43 + 16);
    v37(v11, a1, v8);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, 0, v11);
    swift_endAccess();
    v37(v11, a1, v8);
    v38 = v40;
    (*(v40 + 56))(v7, 1, 1, v12);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v11);
    swift_endAccess();
    (*(v38 + 8))(v20, v12);
    return 0;
  }

  return v41;
}

uint64_t MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for MusicSiriRepresentation();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationVSgMd, &_s8MusicKit7StationVSgMR);
  v2[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA7StationVGMd, &_s8MusicKit0A14ItemCollectionVyAA7StationVGMR);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for Station();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v6 = type metadata accessor for MusicMoodStationResponse();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for Station.Mood();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v8 = type metadata accessor for MusicMoodStationRequest();
  v2[28] = v8;
  v2[29] = *(v8 - 8);
  v2[30] = swift_task_alloc();
  v9 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v2[31] = v9;
  v2[32] = *(v9 - 8);
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:), v1, 0);
}

uint64_t MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:)()
{
  v29 = v0;
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[8];
  (*(v0[32] + 104))(v0[33], *MEMORY[0x277D2AE20], v0[31]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v5 = *(v3 + 16);
  v0[34] = v5;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  MusicMoodStationRequest.init(mood:)();
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v6 = v0[26];
  v7 = v0[24];
  v8 = v0[8];
  v9 = type metadata accessor for Logger();
  v0[36] = __swift_project_value_buffer(v9, static WOLog.mediaPlayback);
  v5(v6, v8, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[26];
    v13 = v0[27];
    v15 = v0[24];
    v14 = v0[25];
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v16 = 136315138;
    v5(v13, v12, v15);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    (*(v14 + 8))(v12, v15);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v28);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v10, v11, "MediaPlaybackMoodStationCache: request starting for mood: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x20F2E9420](v27, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {
    v22 = v0[25];
    v21 = v0[26];
    v23 = v0[24];

    (*(v22 + 8))(v21, v23);
  }

  v24 = swift_task_alloc();
  v0[37] = v24;
  *v24 = v0;
  v24[1] = MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:);
  v25 = v0[23];

  return MEMORY[0x282189588](v25);
}

{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:);
  }

  else
  {
    v4 = MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  MusicMoodStationResponse.stations.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA7StationVGMd, &_s8MusicKit0A14ItemCollectionVyAA7StationVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Station> and conformance MusicItemCollection<A>, MEMORY[0x277CD84F8], v6);
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v8 = v0[29];
    v7 = v0[30];
    v9 = v0[28];
    v10 = v0[14];
    (*(v0[22] + 8))(v0[23], v0[21]);
    (*(v8 + 8))(v7, v9);
    _sSo8NSObjectCSgWOhTm_19(v10, &_s8MusicKit7StationVSgMd, &_s8MusicKit7StationVSgMR);
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v27 = v0[34];
    v34 = v0[28];
    v35 = v0[30];
    v25 = v0[27];
    v26 = v0[24];
    v32 = v0[23];
    v33 = v0[29];
    v30 = v0[22];
    v31 = v0[21];
    v11 = v0[19];
    v28 = v0[20];
    v29 = v0[18];
    v12 = v0[13];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[9];
    v24 = v0[10];
    v16 = v0[8];
    (*(v11 + 32))(v28, v0[14]);
    Station.siriRepresentation.getter();
    v17 = MusicSiriRepresentation.id.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    v38 = *(v15 + 120);
    *(v15 + 120) = 0x8000000000000000;
    v36 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v19, v16, isUniquelyReferenced_nonNull_native);
    *(v15 + 120) = v38;
    swift_endAccess();
    v27(v25, v16, v26);
    Date.init()();
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v24, 0, 1, v21);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v24, v25);
    swift_endAccess();
    MediaPlaybackMoodStationCache.saveDefaultsMoodStationIdentifiers()();
    (*(v11 + 8))(v28, v29);
    (*(v30 + 8))(v32, v31);
    (*(v33 + 8))(v35, v34);
  }

  v22 = v0[1];

  return v22(v37, v36);
}

{
  v1 = v0[38];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[38];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20AEA4000, v3, v4, "MediaPlaybackMoodStationCache: request failed: %@", v10, 0xCu);
    _sSo8NSObjectCSgWOhTm_19(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);

  v14 = v0[1];

  return v14(0, 0);
}

void MediaPlaybackMoodStationCache.saveDefaultsMoodStationIdentifiers()()
{
  v1 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "MediaPlaybackMoodStationCache: saving to defaults", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  swift_beginAccess();
  v18 = v1[15];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMR);
  lazy protocol witness table accessor for type [Station.Mood : String] and conformance <> [A : B]();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  v9 = v1[14];
  if (v9)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46DFC0);
    [v9 setObject:isa forKey:v11];
  }

  swift_allocObject();
  JSONEncoder.init()();
  swift_beginAccess();
  v17 = v1[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMR);
  lazy protocol witness table accessor for type [Station.Mood : Date] and conformance <> [A : B]();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;

  if (v9)
  {
    v15 = Data._bridgeToObjectiveC()().super.isa;
    v16 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B46DFA0);
    [v9 setObject:v15 forKey:{v16, v17, v18}];
    outlined consume of Data._Representation(v6, v8);
    outlined consume of Data._Representation(v12, v14);
  }

  else
  {
    outlined consume of Data._Representation(v6, v8);
    outlined consume of Data._Representation(v12, v14);
  }
}

void MediaPlaybackMoodStationCache.loadDefaultsMoodStationIdentifiers()()
{
  v1 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "MediaPlaybackMoodStationCache: loading from defaults", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = v1[14];
  if (v6)
  {
    v7 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46DFC0);
    v8 = [v6 dataForKey_];

    if (v8)
    {
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMR);
      lazy protocol witness table accessor for type [Station.Mood : String] and conformance <> [A : B]();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      swift_beginAccess();
      v1[15] = v31[1];

      v12 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B46DFA0);
      v13 = [v6 dataForKey_];

      if (v13)
      {
        v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        swift_allocObject();
        JSONDecoder.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMR);
        lazy protocol witness table accessor for type [Station.Mood : Date] and conformance <> [A : B]();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        outlined consume of Data._Representation(v14, v16);

        swift_beginAccess();
        v1[16] = v30;
      }

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v28 = v18;
        v19 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31[0] = v29;
        *v19 = 136315394;
        type metadata accessor for Station.Mood();
        lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, 255, MEMORY[0x277D2B280], MEMORY[0x277D2B290]);

        v20 = Dictionary.description.getter();
        v22 = v21;

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v31);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        swift_beginAccess();
        type metadata accessor for Date();

        v24 = Dictionary.description.getter();
        v26 = v25;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v31);

        *(v19 + 14) = v27;
        _os_log_impl(&dword_20AEA4000, v17, v28, "MediaPlaybackMoodStationCache: loaded from defaults, identifiers: %s, dates: %s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v29, -1, -1);
        MEMORY[0x20F2E9420](v19, -1, -1);
      }

      outlined consume of Data._Representation(v9, v11);
    }
  }
}

uint64_t MediaPlaybackMoodStationCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaPlaybackMoodStationCache.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t partial apply for closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Station.Mood() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:);

  return closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for Station.Mood();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Station.Mood() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:);

  return closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type MusicItemCollection<Station> and conformance MusicItemCollection<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id ButtonActivityPickerItem.__allocating_init(buttonType:title:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type] = 3;
  v7 = &v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  *v7 = a2;
  v7[1] = a3;
  v9.receiver = v6;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ButtonActivityPickerItem.ButtonType()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ButtonActivityPickerItem.ButtonType(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t ButtonActivityPickerItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title);

  return v1;
}

id ButtonActivityPickerItem.init(buttonType:title:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type] = 3;
  v4 = &v3[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  *v4 = a2;
  v4[1] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ButtonActivityPickerItem();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ButtonActivityPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ButtonActivityPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonActivityPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *ButtonActivityPickerItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title);
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title + 8);
  v5 = type metadata accessor for ButtonActivityPickerItem();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type] = 3;
  v7 = &v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  *v7 = v4;
  v7[1] = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  a1[3] = v5;
  *a1 = result;
  return result;
}

id protocol witness for Identifiable.id.getter in conformance ButtonActivityPickerItem@<X0>(void *a1@<X8>)
{
  result = [*v1 hash];
  *a1 = result;
  return result;
}

Swift::Int ButtonActivityPickerItem.hash.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init()();
  MEMORY[0x20F2E7FF0](*(v2 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type));
  MEMORY[0x20F2E7FF0](0);
  String.hash(into:)();
  return Hasher.finalize()();
}

uint64_t ButtonActivityPickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v6);
  if (!v7)
  {
    outlined destroy of Any?(v6);
    goto LABEL_11;
  }

  type metadata accessor for ButtonActivityPickerItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type) != v5[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type])
  {

    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title) == *&v5[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title] && *(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title + 8) == *&v5[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

unint64_t lazy protocol witness table accessor for type ButtonActivityPickerItem.ButtonType and conformance ButtonActivityPickerItem.ButtonType()
{
  result = lazy protocol witness table cache variable for type ButtonActivityPickerItem.ButtonType and conformance ButtonActivityPickerItem.ButtonType;
  if (!lazy protocol witness table cache variable for type ButtonActivityPickerItem.ButtonType and conformance ButtonActivityPickerItem.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonActivityPickerItem.ButtonType and conformance ButtonActivityPickerItem.ButtonType);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ButtonActivityPickerItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonActivityPickerItem.ButtonType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ButtonActivityPickerItem.ButtonType(_WORD *result, int a2, int a3)
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

id protocol witness for ActiveWorkoutProvider.activeWorkout.getter in conformance NLWorkoutController()
{
  v1 = [*v0 activeWorkout];

  return v1;
}

uint64_t MirroredClientAlertStackResponse.init(protobuf:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(a1 + 5);

  result = outlined destroy of Apple_Workout_Core_MirroredClientAlertStackResponse(a1);
  *(a2 + 24) = v6;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredClientAlertStackResponse(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredClientAlertStackResponse.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse();
  return static Message.with(_:)();
}

uint64_t MirroredClientAlertStackResponse.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void MirroredClientAlertStackResponse.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

WorkoutCore::MirroredClientAlertStackResponse __swiftcall MirroredClientAlertStackResponse.init(identifier:continueExecution:continueOption:)(WorkoutCore::MirroredClientAlertStackResponse identifier, Swift::Bool continueExecution, Swift::Int continueOption)
{
  *v3 = identifier.identifier;
  *(v3 + 16) = continueExecution;
  *(v3 + 24) = continueOption;
  identifier.continueOption = continueOption;
  identifier.continueExecution = continueExecution;
  return identifier;
}

void closure #1 in MirroredClientAlertStackResponse.protobuf.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a5 <= 0x7FFFFFFF)
  {
    *(a1 + 20) = a5;
    return;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse)
  {
    type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse);
  }

  return result;
}

uint64_t MirroredClientAlertStackResponse.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  _StringGuts.grow(_:)(57);
  MEMORY[0x20F2E6D80](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x20F2E6D80](v1, v2);
  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B46E090);
  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v4, v5);

  MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B46E0B0);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v6);

  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredClientAlertStackResponse@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(a1 + 5);

  result = outlined destroy of Apple_Workout_Core_MirroredClientAlertStackResponse(a1);
  *(a2 + 24) = v6;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredClientAlertStackResponse()
{
  type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse();
  return static Message.with(_:)();
}

BOOL static MirroredClientAlertStackResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t MirroredClientAlertStackResponse.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  return MEMORY[0x20F2E7FF0](v3);
}

Swift::Int MirroredClientAlertStackResponse.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredClientAlertStackResponse()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredClientAlertStackResponse(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  return MEMORY[0x20F2E7FF0](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredClientAlertStackResponse(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x20F2E7FF0](v3);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredClientAlertStackResponse(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse();
  *(a1 + 8) = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MirroredClientAlertStackResponse(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredClientAlertStackResponse(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for MirroredClientAlertStackResponse(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t NLWorkoutController.startSession(with:countdownDeadline:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  type metadata accessor for MainActor();
  v3[28] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[29] = v5;
  v3[30] = v4;

  return MEMORY[0x2822009F8](NLWorkoutController.startSession(with:countdownDeadline:), v5, v4);
}

uint64_t NLWorkoutController.startSession(with:countdownDeadline:)()
{
  v40 = v0;
  v1 = v0 + 80;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.app);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315394;
    v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
    swift_beginAccess();
    v11 = NLWorkoutStartSourceDescription(*(v7 + v10));
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    *(v0 + 80) = v13;
    *(v0 + 88) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v16 = Optional.description.getter();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v39);
    v1 = v0 + 80;

    *(v8 + 4) = v19;
    *(v8 + 12) = 2080;
    v20 = LiveWorkoutConfiguration.logString.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v39);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[NLWorkoutController] startSession with startSource: %s, live configuration: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v23 = *(v0 + 200);
  v24 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  if ((*(v23 + v24) - 19) > 1)
  {
    v29 = [*(v0 + 216) healthStore];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for formattingManager != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 216);
    v31 = *(v0 + 200);
    v32 = static WorkoutCoreInjector.formattingManager;
    v33 = [v30 locationProvider];
    v34 = [objc_allocWithZone(NLWorkout) initWithWorkoutConfiguration:v31 healthStore:v29 formattingManager:v32 locationProvider:v33];
    *(v0 + 248) = v34;

    [v30 _logWorkoutStartWithConfiguration_workout_];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 208);
    v36 = *(v0 + 216);
    WorkoutSignposter.emit(signpost:)(0);
    v37 = *(v23 + v24);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = NLWorkoutController.startSession(with:countdownDeadline:);
    v38 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16NLSessionControlCs5NeverOGMd, &_sSccySo16NLSessionControlCs5NeverOGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NLSessionControl) -> () with result type NLSessionControl;
    *(v0 + 104) = &block_descriptor_91;
    *(v0 + 112) = v38;
    [v36 _startSessionWithWorkout_startSource_countdownDeadline_completion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v25 = *(v0 + 216);
    v26 = *(v0 + 200);

    [v25 _startMirroredSessionWithLiveWorkoutConfiguration_];
    v27 = *(v0 + 8);

    return v27(0);
  }
}

{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](NLWorkoutController.startSession(with:countdownDeadline:), v2, v1);
}

{

  v1 = *(v0 + 192);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NLSessionControl) -> () with result type NLSessionControl(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:), v6, v5);
}

uint64_t @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:);
  v10 = v0[2];
  v9 = v0[3];

  return NLWorkoutController.startSession(with:countdownDeadline:)(v10, v9);
}

uint64_t @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)(void *a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v7 = *(v9 + 8);

  return v7();
}

Swift::Bool __swiftcall NLWorkoutController.hasCurrentSession()()
{
  v1 = [v0 activeWorkout];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 sessionActivity];
  IsActive_2 = NLSessionActivityIsActive_2(v3);

  if (IsActive_2)
  {
    IsPaused_1 = 1;
  }

  else
  {
    v6 = [v2 sessionActivity];
    IsPaused_1 = NLSessionActivityIsPaused_1(v6);
  }

  return IsPaused_1;
}

BOOL @objc NLWorkoutController.hasCurrentSession()(NLWorkoutController *self, SEL a2)
{
  v2 = self;
  v3 = [(NLWorkoutController *)v2 activeWorkout];
  if (v3)
  {
    v4 = v3;
    v5 = [(NLWorkout *)v3 sessionActivity];
    IsActive_2 = NLSessionActivityIsActive_2(v5);

    if (IsActive_2)
    {
      IsPaused_1 = 1;
    }

    else
    {
      v8 = [(NLWorkout *)v4 sessionActivity];
      IsPaused_1 = NLSessionActivityIsPaused_1(v8);
    }
  }

  else
  {
    IsPaused_1 = 0;
  }

  return IsPaused_1;
}

NLSessionControl __swiftcall NLWorkoutController.sessionControlForRecovery()()
{
  v1 = [v0 activeWorkout];
  v2 = [objc_allocWithZone(NLSessionControl) initWithWorkout_];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    __break(1u);
  }

  result._workout = v4;
  result.super.isa = v3;
  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TRTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  outlined init with copy of TaskPriority?(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    outlined destroy of TaskPriority?(a3);

    return v22;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL NLSessionActivityIsActive_2(void *a1)
{
  v1 = a1;
  v2 = [v1 state];

  return v2 == 6;
}

uint64_t NLSessionActivityIsPaused_1(void *a1)
{
  v1 = a1;
  v2 = [v1 state];
  v3 = v2 < 0xA;
  v4 = 0x338u >> v2;

  return v3 & v4;
}

uint64_t partial apply for @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:);

  return @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)(v2, v3, v5, v4);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTATQ0__0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_17(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_17TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_17TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static VoiceFeedbackTargetZone.make(targetZone:distanceType:formattingManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackMetricTypeOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackMetricTypeOSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for VoiceFeedbackMetricType();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v57 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v51 - v21;
  v23 = MEMORY[0x20F2E8410](a2);
  swift_beginAccess();
  swift_beginAccess();
  v24 = [a1 primaryType];
  if (v24 > 2)
  {
    if (v24 == 3)
    {
      v33 = [objc_opt_self() wattUnit];
LABEL_10:
      v30 = v33;
      goto LABEL_18;
    }

LABEL_32:
    v50 = 45;
    v47 = "WorkoutCore/VoiceFeedbackTargetZone+TargetZone.swift";
    v45 = 0xD00000000000003CLL;
    v46 = 0x800000020B45A740;
    goto LABEL_33;
  }

  if (v24 != 1)
  {
    if (v24 == 2)
    {
      v33 = [objc_opt_self() _countPerMinuteUnit];
      goto LABEL_10;
    }

    if (!v24)
    {
      v50 = 43;
      v47 = "WorkoutCore/VoiceFeedbackTargetZone+TargetZone.swift";
      v46 = 0x800000020B45A780;
      v45 = 0xD000000000000034;
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v55 = a3;
  v25 = [a3 unitManager];
  if (!v25)
  {
    __break(1u);
    goto LABEL_27;
  }

  v26 = v25;
  v27 = [v25 userDistanceHKUnitForDistanceType_];
  v54 = a2;
  v28 = v27;

  v29 = objc_opt_self();
  v30 = v28;
  v53 = v29;
  a3 = [v29 meterUnit];
  v31 = *(a1 + 24);
  v52 = objc_opt_self();
  v32 = [v52 quantityWithUnit:a3 doubleValue:v31];

  if (v23 != 4)
  {
    v34 = [v55 unitManager];
    if (v34)
    {
      v35 = v34;
      [v34 paceWithDistance:v32 overDuration:v23 paceFormat:v54 distanceType:1.0];

      goto LABEL_13;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v55 speedPerHourWithDistance:v32 overDuration:4 paceFormat:v54 distanceType:1.0];
LABEL_13:

  v36 = [v53 meterUnit];
  a3 = [v52 quantityWithUnit:v36 doubleValue:*(a1 + 32)];

  if (v23 == 4)
  {
    [v55 speedPerHourWithDistance:a3 overDuration:4 paceFormat:v54 distanceType:1.0];
LABEL_17:

LABEL_18:
    a3 = qword_20B44F0B8[*(a1 + 16)];
    VoiceFeedbackMetricType.init(_:)();
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v22, v14, v15);
      v39 = [v30 unitString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v16 + 16))(v57, v22, v15);
      if (v23 <= 2)
      {
        if (v23 != 1)
        {
          if (v23 == 2)
          {
            v49 = "ceFeedbackPaceFormat";
            v50 = 21;
            v47 = "WorkoutCore/FIUIPaceFormat+VoiceFeedbackPaceFormat.swift";
            v45 = 0xD000000000000040;
LABEL_37:
            v46 = v49 | 0x8000000000000000;
            v48 = 56;
            goto LABEL_38;
          }

LABEL_36:
          v49 = "FeedbackPaceFormat.swift";
          v50 = 23;
          v47 = "WorkoutCore/FIUIPaceFormat+VoiceFeedbackPaceFormat.swift";
          v45 = 0xD000000000000044;
          goto LABEL_37;
        }
      }

      else if (v23 != 3)
      {
        if (v23 == 4)
        {
          v40 = MEMORY[0x277D7D8E0];
LABEL_25:
          v41 = *v40;
          v42 = type metadata accessor for VoiceFeedbackPaceFormat();
          v43 = *(v42 - 8);
          (*(v43 + 104))(v10, v41, v42);
          (*(v43 + 56))(v10, 0, 1, v42);
          VoiceFeedbackTargetZone.init(minMagnitude:maxMagnitude:unit:metricType:paceFormat:zoneIndex:)();

          return (*(v16 + 8))(v22, v15);
        }

        goto LABEL_36;
      }

      v40 = MEMORY[0x277D7D8D8];
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v37 = [v55 unitManager];
  if (v37)
  {
    v38 = v37;
    [v37 paceWithDistance:a3 overDuration:v23 paceFormat:v54 distanceType:1.0];

    goto LABEL_17;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  outlined destroy of VoiceFeedbackMetricType?(v14);
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  MEMORY[0x20F2E6D80](0xD00000000000003FLL, 0x800000020B46E130);
  v58 = a3;
  type metadata accessor for HKWorkoutMetricType(0);
  _print_unlocked<A, B>(_:_:)();
  v45 = v59;
  v46 = v60;
  v50 = 50;
  v47 = "WorkoutCore/VoiceFeedbackTargetZone+TargetZone.swift";
LABEL_33:
  v48 = 52;
LABEL_38:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v45, v46, v47, v48, 2, v50, 0);
  __break(1u);
  return result;
}

uint64_t outlined destroy of VoiceFeedbackMetricType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackMetricTypeOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackMetricTypeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static VoiceFeedbackWorkoutStep.make(completedStep:formattingManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for VoiceFeedbackStepType();
  v12 = MEMORY[0x28223BE20](v10, v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v47 = v9;
    v48 = v13;
    v49 = v12;
    v18 = *a1;
    v17 = *(a1 + 8);
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v50[0] = *a1;
    v50[1] = v17;
    v50[2] = v16;
    v50[3] = v19;
    v50[4] = v20;
    v51 = v21 & 1;

    v22 = CompletedWorkoutStep.metricTypeToDisplay.getter();
    if ((v23 & 1) == 0)
    {
      v43 = v18;
      v44 = v20;
      v46 = a3;
      v45 = v21;
      if (v22 == 3)
      {
        v27 = [objc_opt_self() secondUnit];
        v28 = v17;
        v42 = v17;
      }

      else
      {
        if (v22 != 1)
        {
          result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000041, 0x800000020B46E1B0, "WorkoutCore/VoiceFeedbackWorkoutStep+CompletedWorkoutStep.swift", 63, 2, 36, 0);
          __break(1u);
          return result;
        }

        v28 = v17;
        v29 = *&v18;
        swift_beginAccess();
        v30 = FIUIDistanceTypeForActivityType();
        v50[0] = 1;

        v31 = MEMORY[0x20F2E8320](v50[0]);
        v32 = objc_opt_self();
        v27 = v31;
        v33 = [v32 meterUnit];
        v34 = [objc_opt_self() quantityWithUnit:v33 doubleValue:v29];

        [v34 doubleValueForUnit_];
        v36 = v35;

        v42 = v36;
      }

      v37 = [v27 unitString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_beginAccess();
      (*(v48 + 104))(v15, **(&unk_277D8C9B0 + *(v16 + 16)), v49);
      v38 = type metadata accessor for VoiceFeedbackTargetZone();
      (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
      v39 = v46;
      VoiceFeedbackWorkoutStep.init(magnitude:unit:stepType:targetZone:)();

      outlined consume of CompletedWorkoutStep?(v43, v28, v16, v19);
      v40 = type metadata accessor for VoiceFeedbackWorkoutStep();
      return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    }

    outlined consume of CompletedWorkoutStep?(v18, v17, v16, v19);
  }

  v24 = type metadata accessor for VoiceFeedbackWorkoutStep();
  v25 = *(*(v24 - 8) + 56);

  return v25(a3, 1, 1, v24);
}

void PowerZonesAlertTargetZone.workoutKitRepresentation(activityType:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WorkoutAlertMetric();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 effectiveTypeIdentifier] != 13)
  {
    goto LABEL_12;
  }

  v10 = v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = v13 >> 6;
  if (v13 >> 6 <= 1)
  {
    if (!v14)
    {
      v15 = *(v10 + 8);
      if (v15 == 5)
      {
        v16 = [objc_opt_self() watts];
        v17 = MEMORY[0x277CE3F50];
        goto LABEL_16;
      }

      if (v15 == 6)
      {
        v16 = [objc_opt_self() watts];
        v17 = MEMORY[0x277CE3F48];
LABEL_16:
        (*(v6 + 104))(v9, *v17, v5);
        *(a2 + 24) = type metadata accessor for PowerThresholdAlert();
        *(a2 + 32) = lazy protocol witness table accessor for type PowerRangeAlert and conformance PowerRangeAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, MEMORY[0x277CE40D8], MEMORY[0x277CE40D0]);
        __swift_allocate_boxed_opaque_existential_1(a2);
        static WorkoutAlert<>.power(_:unit:metric:)();
LABEL_20:

        (*(v6 + 8))(v9, v5);
        return;
      }

LABEL_12:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    if (!__OFADD__(*&v12, 1))
    {
      *(a2 + 24) = type metadata accessor for PowerZoneAlert();
      *(a2 + 32) = lazy protocol witness table accessor for type PowerRangeAlert and conformance PowerRangeAlert(&lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert, MEMORY[0x277CE4048], MEMORY[0x277CE4040]);
      __swift_allocate_boxed_opaque_existential_1(a2);
      static WorkoutAlert<>.power(zone:)();
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v14 != 2)
  {
    goto LABEL_12;
  }

  v18 = v13 & 0x3F;
  if (v18 != 5)
  {
    if (v18 != 6)
    {
      goto LABEL_12;
    }

    if (v12 > v11)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v16 = [objc_opt_self() watts];
    v19 = MEMORY[0x277CE3F48];
LABEL_19:
    (*(v6 + 104))(v9, *v19, v5);
    *(a2 + 24) = type metadata accessor for PowerRangeAlert();
    *(a2 + 32) = lazy protocol witness table accessor for type PowerRangeAlert and conformance PowerRangeAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, MEMORY[0x277CE4058], MEMORY[0x277CE4050]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.power(_:unit:metric:)();
    goto LABEL_20;
  }

  if (v12 <= v11)
  {
    v16 = [objc_opt_self() watts];
    v19 = MEMORY[0x277CE3F50];
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type PowerRangeAlert and conformance PowerRangeAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Apple_Workout_Core_WorkoutStatePublisher.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v3) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
}

void Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = a1 & 1;
}

void Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.setter(double a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v5 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v5);
    *(v1 + v3) = v5;
  }

  swift_beginAccess();
  *(v5 + 24) = a1;
  *(v5 + 32) = 0;
}

void Apple_Workout_Core_WorkoutStatePublisher.workoutActive.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 33) = a1 & 1;
}

uint64_t Apple_Workout_Core_DateInterval.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Apple_Workout_Core_DateInterval(0);
  *a1 = 0;
  a1[1] = 0;
  return UnknownStorage.init()();
}

double Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.getter()
{
  type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  swift_beginAccess();

  return result;
}

double Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 40) = a1;

  return result;
}

void Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.setter(double a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v5 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v5);
    *(v1 + v3) = v5;
  }

  swift_beginAccess();
  *(v5 + 48) = a1;
  *(v5 + 56) = 0;
}

void Apple_Workout_Core_WorkoutStatePublisher.gpsLock.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 57) = a1 & 1;
}

void Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 58) = a1 & 1;
}

void Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 59) = a1 & 1;
}

void Apple_Workout_Core_WorkoutStatePublisher.checkingGpsLock.setter(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v8);
    *(v4 + v6) = v8;
  }

  v9 = *a2;
  swift_beginAccess();
  *(v8 + v9) = a1 & 1;
}

void Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 60) = a1 & 1;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.activityType.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_Activity(a1, v7);
  v11 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v7, v10 + v12);
  return swift_endAccess();
}

void Apple_Workout_Core_WorkoutStatePublisher.mirrorModeEnabled.setter(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v8);
    *(v4 + v6) = v8;
  }

  v9 = *a2;
  swift_beginAccess();
  *(v8 + v9) = a1 & 1;
}

void Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = v6 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 4) = 0;
}

double Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.getter()
{
  type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  swift_beginAccess();

  return result;
}

double Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  *(v6 + v7) = a1;

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasWorkoutStartDateReferenceTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

double Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 32))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.workoutActive.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 33);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasLastUnbalancedPauseStartReferenceTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return (*(v1 + 56) & 1) == 0;
}

double Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  result = *(v1 + 48);
  if (*(v1 + 56))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.gpsLock.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 57);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 58);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 59);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasCheckingGpsLock.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 2;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.checkingGpsLock.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) & 1;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 60);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasActivityType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v6 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v5 + v6, v4);
  v7 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v4, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return v8;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.activityType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v7 + v8, v6);
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v6, a1);
  }

  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.mirrorModeEnabled.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasSegmentIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex);
  swift_beginAccess();
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.workoutStarted : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = v3;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 16);
  return Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v5;

  free(v2);
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime : Apple_Workout_Core_WorkoutStatePublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 32) = 0;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 32))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = 0;

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStatePublisher.clearWorkoutStartDateReferenceTime()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v3 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.workoutActive : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 33) = v3;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.workoutActive.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 33);
  return Apple_Workout_Core_WorkoutStatePublisher.workoutActive.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.workoutActive.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 33) = v5;

  free(v2);
}

double key path getter for Apple_Workout_Core_WorkoutStatePublisher.pauseTimes : Apple_Workout_Core_WorkoutStatePublisher@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  *a2 = *(v3 + 40);

  return result;
}

double key path setter for Apple_Workout_Core_WorkoutStatePublisher.pauseTimes : Apple_Workout_Core_WorkoutStatePublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 40) = v3;

  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 40);

  return Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    swift_beginAccess();
    *(v7 + 40) = v3;
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v5 + v4);
    if ((v10 & 1) == 0)
    {
      v12 = *(v2 + 88);
      v13 = *(v2 + 80);
      type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      swift_allocObject();
      v11 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v11);
      *(v13 + v12) = v11;
    }

    swift_beginAccess();
    *(v11 + 40) = v3;
  }

  free(v2);
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime : Apple_Workout_Core_WorkoutStatePublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 48) = v3;
  *(v6 + 56) = 0;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 56))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 48) = v3;
  *(v7 + 56) = 0;

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStatePublisher.clearLastUnbalancedPauseStartReferenceTime()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v3 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.gpsLock : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 57) = v3;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.gpsLock.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 57);
  return Apple_Workout_Core_WorkoutStatePublisher.gpsLock.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.gpsLock.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 57) = v5;

  free(v2);
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 58) = v3;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 58);
  return Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 58) = v5;

  free(v2);
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 59) = v3;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 59);
  return Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 59) = v5;

  free(v2);
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 60) = v3;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 60);
  return Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 60) = v5;

  free(v2);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.activityType : Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity(a1, v12);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v12, v7);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v7, v15 + v16);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStatePublisher.activityType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v16 + v17, v8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14);
  }

  return Apple_Workout_Core_WorkoutStatePublisher.activityType.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.activityType.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_Activity(*(v2 + 120), *(v2 + 112));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      swift_allocObject();
      v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Activity(v10, v14);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v14, v6 + v15);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_Activity(v9);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      swift_allocObject();
      v18 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Activity(v9, v14);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v14, v18 + v23);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStatePublisher.clearActivityType()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v8);
    *(v1 + v6) = v8;
  }

  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v5, v8 + v10);
  swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStatePublisher.mirroringToCompanion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return Apple_Workout_Core_WorkoutStatePublisher.mirroringToCompanion.modify;
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.mirroringToCompanion : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v10);
    *(a2 + v8) = v10;
  }

  v11 = *a5;
  swift_beginAccess();
  *(v10 + v11) = v7;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.mirrorModeEnabled.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return Apple_Workout_Core_WorkoutStatePublisher.mirrorModeEnabled.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.mirroringToCompanion.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v9 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v9);
    *(v11 + v10) = v9;
  }

  v12 = *a3;
  swift_beginAccess();
  *(v9 + v12) = v7;

  free(v4);
}

void (*Apple_Workout_Core_WorkoutStatePublisher.isGymKit.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.isGymKit.modify;
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.isGymKit : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v10);
    *(a2 + v8) = v10;
  }

  v11 = *a5;
  swift_beginAccess();
  *(v10 + v11) = v7;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.multisportWorkoutInAutoMode.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.isGymKit.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v9 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v9);
    *(v11 + v10) = v9;
  }

  v12 = *a3;
  swift_beginAccess();
  *(v9 + v12) = v7;

  free(v4);
}

void Apple_Workout_Core_WorkoutStatePublisher.clearIsGymKit()(uint64_t *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v3 + v4) = v6;
  }

  v7 = *a1;
  swift_beginAccess();
  *(v6 + v7) = 2;
}

void key path getter for Apple_Workout_Core_WorkoutStatePublisher.segmentIndex : Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  v4 = *v3;
  if (*(v3 + 4))
  {
    v4 = 0;
  }

  *a2 = v4;
}

void key path setter for Apple_Workout_Core_WorkoutStatePublisher.segmentIndex : Apple_Workout_Core_WorkoutStatePublisher(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = v6 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 4) = 0;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v10 = v7 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  *v10 = v3;
  *(v10 + 4) = 0;

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStatePublisher.clearSegmentIndex()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v4 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v4;
  }

  v5 = v4 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  *v5 = 0;
  *(v5 + 4) = 1;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.speedSensor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.speedSensor.modify;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.cadenceSensor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.cadenceSensor.modify;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.powerSensor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.powerSensor.modify;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.checkingGpsLock.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.checkingGpsLock.modify;
}

double key path getter for Apple_Workout_Core_WorkoutStatePublisher.pausedReasons : Apple_Workout_Core_WorkoutStatePublisher@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v4 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double key path setter for Apple_Workout_Core_WorkoutStatePublisher.pausedReasons : Apple_Workout_Core_WorkoutStatePublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  *(v6 + v7) = v3;

  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v10 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
    swift_beginAccess();
    *(v7 + v10) = v3;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 88);
      v14 = *(v2 + 80);
      type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      swift_allocObject();
      v12 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    v15 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
    swift_beginAccess();
    *(v12 + v15) = v3;
  }

  free(v2);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_DateInterval.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DateInterval(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_DateInterval.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DateInterval(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 40) = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 57) = 0;
  v2 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  v3 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode) = 2;
  v4 = v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  *v4 = 0;
  *(v4 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons) = v1;
  return v0;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v42 = &v40 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = MEMORY[0x277D84F90];
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 57) = 0;
  v6 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  v40 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  v7 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v41 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion) = 0;
  v43 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled) = 0;
  v44 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit) = 2;
  v45 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode) = 2;
  v8 = v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  v46 = v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  *v8 = 0;
  *(v8 + 4) = 1;
  v47 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor) = 2;
  v48 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor) = 2;
  v49 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor) = 2;
  v9 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock) = 2;
  v50 = v9;
  v51 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v10 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v10;
  swift_beginAccess();
  v11 = *(a1 + 24);
  LOBYTE(v6) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v11;
  *(v1 + 32) = v6;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 33);
  swift_beginAccess();
  *(v1 + 33) = v11;
  swift_beginAccess();
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v12;
  swift_beginAccess();
  v13 = *(a1 + 48);
  LOBYTE(v6) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v13;
  *(v1 + 56) = v6;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 59);
  swift_beginAccess();
  *(v1 + 59) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 60) = v13;
  v14 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  v15 = a1 + v14;
  v16 = v42;
  outlined init with copy of Apple_Workout_Core_Activity?(v15, v42);
  v17 = v40;
  swift_beginAccess();

  outlined assign with take of Apple_Workout_Core_Activity?(v16, v1 + v17);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  swift_beginAccess();
  LOBYTE(v18) = *(a1 + v18);
  v19 = v41;
  swift_beginAccess();
  *(v1 + v19) = v18;
  v20 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + v20);
  v21 = v43;
  swift_beginAccess();
  *(v1 + v21) = v20;
  v22 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  v23 = v44;
  swift_beginAccess();
  *(v1 + v23) = v22;
  v24 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + v24);
  v25 = v45;
  swift_beginAccess();
  *(v1 + v25) = v24;
  v26 = a1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  LODWORD(v24) = *v26;
  LOBYTE(v26) = *(v26 + 4);
  v27 = v46;
  swift_beginAccess();
  *v27 = v24;
  *(v27 + 4) = v26;
  v28 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v47;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  swift_beginAccess();
  LOBYTE(v30) = *(a1 + v30);
  v31 = v48;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + v32);
  v33 = v49;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);
  v35 = v50;
  swift_beginAccess();
  *(v1 + v35) = v34;
  v36 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  v37 = *(a1 + v36);

  v38 = v51;
  swift_beginAccess();
  *(v1 + v38) = v37;

  return v1;
}

uint64_t type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher._StorageClass.__deallocating_deinit()
{

  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v11);
    *(v4 + v8) = v10;
  }

  return closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(v10, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          closure #1 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 2:
          closure #2 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 3:
          closure #3 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 4:
          closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 5:
          closure #5 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 6:
          closure #6 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 7:
          closure #7 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 8:
          closure #8 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 9:
          closure #9 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 10:
          closure #10 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 11:
          v11 = MEMORY[0x277D21730];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
          goto LABEL_5;
        case 12:
          v11 = MEMORY[0x277D21730];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
          goto LABEL_5;
        case 13:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
          goto LABEL_5;
        case 14:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
          goto LABEL_5;
        case 15:
          closure #15 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 16:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
          goto LABEL_5;
        case 17:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
          goto LABEL_5;
        case 18:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
          goto LABEL_5;
        case 19:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
LABEL_5:
          closure #11 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(v12, v13, v14, v15, v16, v11);
          break;
        case 20:
          closure #20 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_DateInterval(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval, &protocol conformance descriptor for Apple_Workout_Core_DateInterval);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_Activity(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #15 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t closure #20 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason();
  dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
  return swift_endAccess();
}

void Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    UnknownStorage.traverse<A>(visitor:)();
  }
}

double closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    closure #1 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    if (!v4)
    {
      swift_beginAccess();
      if (*(a1 + 33) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      swift_beginAccess();
      if (*(*(a1 + 40) + 16))
      {
        type metadata accessor for Apple_Workout_Core_DateInterval(0);
        lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval, &protocol conformance descriptor for Apple_Workout_Core_DateInterval);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      closure #2 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
      swift_beginAccess();
      if (*(a1 + 57) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      swift_beginAccess();
      if (*(a1 + 58) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      swift_beginAccess();
      if (*(a1 + 59) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      swift_beginAccess();
      if (*(a1 + 60) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      closure #3 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
      v10 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
      swift_beginAccess();
      if (*(a1 + v10) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      v11 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
      swift_beginAccess();
      if (*(a1 + v11) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit, 13);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode, 14);
      closure #6 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor, 16);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor, 17);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor, 18);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock, 19);
      v12 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
      swift_beginAccess();
      if (*(*(a1 + v12) + 16))
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason();

        dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)();
      }
    }
  }

  return result;
}

void closure #1 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a1 + 32) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }
}

void closure #2 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_Activity(v13);
}

void closure #6 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  if ((*(v4 + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }
}

void closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  swift_beginAccess();
  if (*(a1 + v7) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }
}

uint64_t closure #1 in static Apple_Workout_Core_WorkoutStatePublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v82 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v80 - v18;
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  if (v20 != *(a2 + 16))
  {
    goto LABEL_2;
  }

  swift_beginAccess();
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  swift_beginAccess();
  v25 = *(a2 + 32);
  if (v24)
  {
    if (!*(a2 + 32))
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (v23 != *(a2 + 24))
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_2;
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 33);
  swift_beginAccess();
  if (v26 == *(a2 + 33))
  {
    v80 = v11;
    v81 = v4;
    swift_beginAccess();
    v27 = *(a1 + 40);
    swift_beginAccess();
    v28 = *(a2 + 40);

    v29 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C13_DateIntervalV_Tt1g5(v27, v28);

    if ((v29 & 1) == 0)
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v30 = *(a1 + 48);
    v31 = *(a1 + 56);
    swift_beginAccess();
    v32 = *(a2 + 56);
    if (v31)
    {
      v33 = v81;
      if (!*(a2 + 56))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v30 != *(a2 + 48))
      {
        v32 = 1;
      }

      v33 = v81;
      if (v32)
      {
        goto LABEL_31;
      }
    }

    swift_beginAccess();
    v34 = *(a1 + 57);
    swift_beginAccess();
    if (v34 != *(a2 + 57))
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v35 = *(a1 + 58);
    swift_beginAccess();
    if (v35 != *(a2 + 58))
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v36 = *(a1 + 59);
    swift_beginAccess();
    if (v36 != *(a2 + 59))
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v37 = *(a1 + 60);
    swift_beginAccess();
    if (v37 != *(a2 + 60))
    {
      goto LABEL_31;
    }

    v38 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    outlined init with copy of Apple_Workout_Core_Activity?(a1 + v38, v19);
    v39 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    v40 = *(v8 + 48);
    v41 = v80;
    outlined init with copy of Apple_Workout_Core_Activity?(v19, v80);
    v81 = v40;
    outlined init with copy of Apple_Workout_Core_Activity?(a2 + v39, v41 + v40);
    v42 = *(v82 + 48);
    if (v42(v41, 1, v33) == 1)
    {
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v19, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      if (v42(v41 + v81, 1, v33) == 1)
      {
        _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v41, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
LABEL_29:
        v44 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
        swift_beginAccess();
        LODWORD(v44) = *(a1 + v44);
        v45 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
        swift_beginAccess();
        if (v44 != *(a2 + v45))
        {
          goto LABEL_31;
        }

        v46 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
        swift_beginAccess();
        LODWORD(v46) = *(a1 + v46);
        v47 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
        swift_beginAccess();
        if (v46 != *(a2 + v47))
        {
          goto LABEL_31;
        }

        v48 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
        swift_beginAccess();
        v49 = *(a1 + v48);
        v50 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
        swift_beginAccess();
        v51 = *(a2 + v50);
        if (v49 == 2)
        {
          if (v51 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v51 == 2 || ((v49 ^ v51) & 1) != 0)
        {
          goto LABEL_31;
        }

        v52 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
        swift_beginAccess();
        v53 = *(a1 + v52);
        v54 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
        swift_beginAccess();
        v55 = *(a2 + v54);
        if (v53 == 2)
        {
          if (v55 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v55 == 2 || ((v53 ^ v55) & 1) != 0)
        {
          goto LABEL_31;
        }

        v56 = (a1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex);
        swift_beginAccess();
        v57 = *v56;
        v58 = *(v56 + 4);
        v59 = a2 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
        swift_beginAccess();
        v60 = *(v59 + 4);
        if (v58)
        {
          if (!*(v59 + 4))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v57 != *v59)
          {
            v60 = 1;
          }

          if (v60)
          {
            goto LABEL_31;
          }
        }

        v61 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
        swift_beginAccess();
        v62 = *(a1 + v61);
        v63 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
        swift_beginAccess();
        v64 = *(a2 + v63);
        if (v62 == 2)
        {
          if (v64 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v64 == 2 || ((v62 ^ v64) & 1) != 0)
        {
          goto LABEL_31;
        }

        v65 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
        swift_beginAccess();
        v66 = *(a1 + v65);
        v67 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
        swift_beginAccess();
        v68 = *(a2 + v67);
        if (v66 == 2)
        {
          if (v68 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v68 == 2 || ((v66 ^ v68) & 1) != 0)
        {
          goto LABEL_31;
        }

        v69 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
        swift_beginAccess();
        v70 = *(a1 + v69);
        v71 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
        swift_beginAccess();
        v72 = *(a2 + v71);
        if (v70 == 2)
        {
          if (v72 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v72 == 2 || ((v70 ^ v72) & 1) != 0)
        {
          goto LABEL_31;
        }

        v73 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
        swift_beginAccess();
        v74 = *(a1 + v73);
        v75 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
        swift_beginAccess();
        v76 = *(a2 + v75);
        if (v74 != 2)
        {
          if (v76 == 2 || ((v74 ^ v76) & 1) != 0)
          {
            goto LABEL_31;
          }

LABEL_69:
          v77 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
          swift_beginAccess();
          v78 = *(a1 + v77);
          v79 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
          swift_beginAccess();
          v21 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B14StatePublisherV0B12PausedReasonO_Tt1g5(v78, *(a2 + v79));
          goto LABEL_32;
        }

        if (v76 == 2)
        {
          goto LABEL_69;
        }

LABEL_31:
        v21 = 0;
LABEL_32:

        return v21 & 1;
      }
    }

    else
    {
      outlined init with copy of Apple_Workout_Core_Activity?(v41, v16);
      if (v42(v41 + v81, 1, v33) != 1)
      {
        outlined init with take of Apple_Workout_Core_Activity(v41 + v81, v7);
        v43 = static Apple_Workout_Core_Activity.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_Activity(v7);
        _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v19, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
        outlined destroy of Apple_Workout_Core_Activity(v16);
        _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v41, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
        if ((v43 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v19, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      outlined destroy of Apple_Workout_Core_Activity(v16);
    }

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v41, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
    goto LABEL_31;
  }

LABEL_2:
  v21 = 0;
  return v21 & 1;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WorkoutStatePublisher@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStatePublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStatePublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStatePublisher);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_WorkoutStatePublisher._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Apple_Workout_Core_DateInterval.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_DateInterval.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_Core_DateInterval(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static Apple_Workout_Core_DateInterval.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_DateInterval(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_WorkoutStatePublisher.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_DateInterval@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_DateInterval@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval, &protocol conformance descriptor for Apple_Workout_Core_DateInterval);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_WorkoutStatePublisher@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_DateInterval(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval, &protocol conformance descriptor for Apple_Workout_Core_DateInterval);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval, &protocol conformance descriptor for Apple_Workout_Core_DateInterval);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_DateInterval(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_WorkoutStatePublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static Apple_Workout_Core_WorkoutStatePublisher.== infix(_:_:)(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_b1_A14StatePublisherV0A12PausedReasonOGMd, &_sSay11WorkoutCore06Apple_a1_b1_A14StatePublisherV0A12PausedReasonOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason] and conformance [A]);
  }

  return result;
}

void keypath_get_34Tm_1(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

void keypath_get_38Tm(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6) & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_DateInterval(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_Activity?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id specialized static FitnessBridgeAppSettingsNavigator.openSettings()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v40 - v15;
  URL.init(string:)();
  outlined init with copy of URL?(v16, v13);
  if ((*(v1 + 48))(v13, 1, v0) == 1)
  {
    outlined destroy of URL?(v13);
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.activityPicker);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v19, "Failed to create URL for fitness bridge app deeplink", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    return outlined destroy of URL?(v16);
  }

  (*(v1 + 32))(v8, v13, v0);
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.activityPicker);
  (*(v1 + 16))(v5, v8, v0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = v1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v41 = v8;
    v27 = v26;
    v43 = v26;
    *v25 = 136315138;
    v28 = URL.absoluteString.getter();
    v30 = v29;
    v31 = *(v42 + 8);
    v31(v5, v0);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v43);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_20AEA4000, v22, v23, "Opening deeplink to bridge app. url=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v33 = v27;
    v8 = v41;
    MEMORY[0x20F2E9420](v33, -1, -1);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  else
  {

    v31 = *(v1 + 8);
    v31(v5, v0);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v36 = result;
    URL._bridgeToObjectiveC()(v35);
    v38 = v37;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v36 openSensitiveURL:v38 withOptions:isa];

    v31(v8, v0);
    return outlined destroy of URL?(v16);
  }

  __break(1u);
  return result;
}

uint64_t LapsMetricsPublisher.laps.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t (*LapsMetricsPublisher.laps.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return LapsMetricsPublisher.laps.modify;
}

void LapsMetricsPublisher.laps.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

double LapsMetricsPublisher.laps.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

void key path getter for LapsMetricsPublisher.laps : LapsMetricsPublisher(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for LapsMetricsPublisher.laps : LapsMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t LapsMetricsPublisher.$laps.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for LapsMetricsPublisher.$laps : LapsMetricsPublisher(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LapsMetricsPublisher.$laps : LapsMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySu_GMd, &_s7Combine9PublishedV9PublisherVySu_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t LapsMetricsPublisher.$laps.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySu_GMd, &_s7Combine9PublishedV9PublisherVySu_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LapsMetricsPublisher.$laps.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySu_GMd, &_s7Combine9PublishedV9PublisherVySu_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LapsMetricsPublisher.$laps.modify;
}

void LapsMetricsPublisher.$laps.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t LapsMetricsPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  Published.init(initialValue:)();
  return v0;
}

uint64_t LapsMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v8[1] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t LapsMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LapsMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LapsMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void LapsMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if (HIDWORD(v5))
  {
    __break(1u);
  }

  else
  {
    *v3 = v5;
    lazy protocol witness table accessor for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher();
    Message.serializedData(partial:)();
    outlined destroy of Apple_Workout_Core_LapsMetricsPublisher(v3);
  }
}

void LapsMetricsPublisher.protobuf.getter(_DWORD *a1@<X8>)
{
  type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  if (HIDWORD(v2))
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_LapsMetricsPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LapsMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static LapsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

void protocol witness for Protable.protobuf.getter in conformance LapsMetricsPublisher(_DWORD *a1@<X8>)
{
  type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  if (HIDWORD(v2))
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance LapsMetricsPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static LapsMetricsPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance LapsMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static LapsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static LapsMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - v12;
  type metadata accessor for LapsMetricsPublisher(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  *&v21 = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v14 + v15, v13, v9);
  v24 = a1;
  v25 = v20;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  outlined copy of Data._Representation(a1, v20);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher();
  v16 = v26;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v16)
  {
  }

  else
  {
    v17 = *v8;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v21 = v17;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_LapsMetricsPublisher(v8);
  }

  return v14;
}

uint64_t type metadata accessor for LapsMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for LapsMetricsPublisher;
  if (!type metadata singleton initialization cache for LapsMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LapsMetricsPublisher(uint64_t a1)
{
  type metadata accessor for Published<UInt>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<UInt>()
{
  if (!lazy cache variable for type metadata for Published<UInt>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<UInt>);
    }
  }
}

void MetricsPublisher.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v154 - v16;
  switch(a2)
  {
    case 0:
    case 6:
    case 20:
    case 34:
    case 41:
    case 42:
    case 46:
    case 50:
      return;
    case 1:
      [objc_msgSend(a1 distanceProvider)];
      v43 = v96;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 2:
      [objc_msgSend(a1 energyBurnProvider)];
      v71 = v70;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v71;
      goto LABEL_55;
    case 3:
      [objc_msgSend(a1 elapsedTimeProvider)];
      v55 = v54;
      swift_unknownObjectRelease();
      v56 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher];
      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v55;

      static Published.subscript.setter();
      v57 = [a1 elapsedTimeProvider];
      objc_opt_self();
      v58 = swift_dynamicCastObjCClass();
      if (!v58)
      {
        goto LABEL_123;
      }

      v59 = v58;
      [v58 adjustedTime];
      v60 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime;
      if (v61 == *(v56 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime))
      {
        goto LABEL_123;
      }

      [v59 adjustedTime];
      *(v56 + v60) = v62;
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      (*(v6 + 8))(v9, v5);
      (*(v6 + 56))(v17, 0, 1, v5);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of Date?(v17, v14);

      static Published.subscript.setter();
      swift_unknownObjectRelease();
      outlined destroy of GroundContactTimeProvider?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return;
    case 4:
      v101 = [a1 paceProvider];
      if (v101)
      {
        [v101 currentPaceInMetersPerSecond];
        v43 = v102;
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0.0;
      }

      goto LABEL_116;
    case 5:
      [objc_msgSend(a1 heartRateProvider)];
      v74 = v154;
      v75 = v155;
      swift_unknownObjectRelease();
      if (v74 > 0.0)
      {
        v76 = v74;
      }

      else
      {
        v76 = 0.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v76;
      LOBYTE(v155) = v74 <= 0.0;

      static Published.subscript.setter();
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, static WOLog.app);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_20AEA4000, v78, v79, "MetricsPublisher updated heart rate metric", v80, 2u);
        MEMORY[0x20F2E9420](v80, -1, -1);
      }

      if (v75 > 1)
      {
        goto LABEL_126;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v154) = v75;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v154) = 0;

      static Published.subscript.setter();
      lazy protocol witness table accessor for type MetricsPublisher and conformance MetricsPublisher();
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      return;
    case 7:
      [objc_msgSend(a1 energyBurnProvider)];
      v51 = v50;
      swift_unknownObjectRelease();
      [objc_msgSend(a1 energyBurnProvider)];
      v53 = v52;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v51 + v53;
      goto LABEL_55;
    case 8:
      v87 = [a1 paceProvider];
      if (v87)
      {
        [v87 averagePaceInMetersPerSecond];
        v43 = v88;
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0.0;
      }

      goto LABEL_116;
    case 9:
      v68 = COERCE_DOUBLE([objc_msgSend(a1 lapsProvider)]);
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v68;

      goto LABEL_119;
    case 10:
      v104 = [a1 elevationProvider];
      if (!v104)
      {
        return;
      }

      v105 = v104;
      v106 = [v104 elevationGain];
      if (v106)
      {
        v107 = v106;
        v108 = [objc_opt_self() meterUnit];
        [v107 doubleValueForUnit_];
        v110 = v109;
      }

      else
      {
        v110 = 0.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v110;
      LOBYTE(v155) = 0;
      v147 = v2;
      static Published.subscript.setter();
      v148 = [v105 chartDataElements];
      type metadata accessor for WorkoutChartDataElement(0);
      *&v149 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

      swift_getKeyPath();
      swift_getKeyPath();
      v154 = *&v149;
      v150 = v147;
      static Published.subscript.setter();
      v151 = COERCE_DOUBLE([v105 chartUnit]);
      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v151;
      v152 = v150;
      v153 = *&v151;
      static Published.subscript.setter();

      goto LABEL_123;
    case 11:
      v89 = [a1 powerProvider];
      if (!v89)
      {
        return;
      }

      v90 = v89;
      v91 = [v89 instantaneousPowerStale];
      v92 = 0.0;
      if ((v91 & 1) == 0)
      {
        [v90 instantaneousPower];
        v92 = v93;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v92;
      LOBYTE(v155) = v91;

      static Published.subscript.setter();
      v94 = [v90 chartDataElements];
      type metadata accessor for WorkoutChartDataElement(0);
      *&v95 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

      swift_getKeyPath();
      swift_getKeyPath();
      v154 = *&v95;

      goto LABEL_80;
    case 12:
      v99 = [a1 powerProvider];
      if (v99)
      {
        [v99 averagePower];
        v40 = v100;
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0.0;
      }

      goto LABEL_109;
    case 13:
      [objc_msgSend(a1 flightsClimbedProvider)];
      v43 = v42;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 14:
      [objc_msgSend(a1 rollingPaceProvider)];
      v43 = v111;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 15:
      v112 = [a1 cadenceProvider];
      if (v112)
      {
        v113 = v112;
        v114 = [v112 currentCadenceStale];
        v115 = 0.0;
        if ((v114 & 1) == 0)
        {
          [v113 currentCadence];
          v115 = v116;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v154 = v115;
        LOBYTE(v155) = v114;
LABEL_79:
        v120 = v2;
LABEL_80:
        static Published.subscript.setter();
LABEL_123:
        swift_unknownObjectRelease();
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v154 = 0.0;
        LOBYTE(v155) = 1;
LABEL_118:
        v146 = v2;
LABEL_119:
        static Published.subscript.setter();
      }

      return;
    case 16:
      v46 = [a1 cadenceProvider];
      v47 = v46;
      if (v46)
      {
        [v46 averageCadence];
        v49 = v48;
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v49;
      LOBYTE(v155) = v47 == 0;
      goto LABEL_118;
    case 17:
      v63 = [a1 elevationProvider];
      v64 = 0.0;
      if (v63)
      {
        v65 = [v63 currentAltitude];
        swift_unknownObjectRelease();
        if (v65)
        {
          v66 = [objc_opt_self() meterUnit];
          [v65 doubleValueForUnit_];
          v64 = v67;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v64;
      LOBYTE(v155) = 0;
      goto LABEL_118;
    case 18:
      [objc_msgSend(a1 ghostPacerProvider)];
      v43 = v117;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 19:
      [objc_msgSend(a1 ghostPacerProvider)];
      v43 = v124;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 21:
      [objc_msgSend(a1 segmentProvider)];
      v82 = v81;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v82;
      v83 = v2;
      static Published.subscript.setter();
      v84 = COERCE_DOUBLE([objc_msgSend(a1 segmentProvider)]);
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v154);

      if (*&v84 != *&v154)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v154 = v84;
        v85 = v83;
        static Published.subscript.setter();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v154);

      if (*&v84 == *&v154)
      {
        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v84;

      goto LABEL_119;
    case 22:
      [objc_msgSend(a1 segmentProvider)];
      v43 = v103;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 23:
      [objc_msgSend(a1 segmentProvider)];
      v43 = v72;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 24:
      [objc_msgSend(a1 segmentProvider)];
      v43 = v73;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 25:
      [objc_msgSend(a1 segmentProvider)];
      v43 = v44;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 26:
      v41 = [a1 strideLengthProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore20StrideLengthProvider_pMd, &_s11WorkoutCore20StrideLengthProvider_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_96;
      }

      goto LABEL_20;
    case 27:
      v45 = [a1 strideLengthProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore20StrideLengthProvider_pMd, &_s11WorkoutCore20StrideLengthProvider_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_91;
      }

LABEL_20:
      v161 = 0;
      v159 = 0u;
      v160 = 0u;
      v36 = &_s11WorkoutCore20StrideLengthProvider_pSgMd;
      v37 = &_s11WorkoutCore20StrideLengthProvider_pSgMR;
      goto LABEL_100;
    case 28:
      v139 = [a1 verticalOscillationProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27VerticalOscillationProvider_pMd, &_s11WorkoutCore27VerticalOscillationProvider_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_96;
      }

      goto LABEL_99;
    case 29:
      v129 = [a1 verticalOscillationProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27VerticalOscillationProvider_pMd, &_s11WorkoutCore27VerticalOscillationProvider_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_91;
      }

LABEL_99:
      v161 = 0;
      v159 = 0u;
      v160 = 0u;
      v36 = &_s11WorkoutCore27VerticalOscillationProvider_pSgMd;
      v37 = &_s11WorkoutCore27VerticalOscillationProvider_pSgMR;
      goto LABEL_100;
    case 30:
      v123 = [a1 groundContactTimeProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25GroundContactTimeProvider_pMd, &_s11WorkoutCore25GroundContactTimeProvider_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_92;
      }

LABEL_96:
      sub_20AEE2CE0(&v159, &v154);
      v140 = v157;
      v141 = v158;
      __swift_project_boxed_opaque_existential_1(&v154, v157);
      v133 = v2;
      v134 = (*(*&v141 + 8))(v140, COERCE_DOUBLE(*&v141));
      v136 = v142;
      swift_getKeyPath();
      goto LABEL_97;
    case 31:
      v130 = [a1 groundContactTimeProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25GroundContactTimeProvider_pMd, &_s11WorkoutCore25GroundContactTimeProvider_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_92:
        v161 = 0;
        v159 = 0u;
        v160 = 0u;
        v36 = &_s11WorkoutCore25GroundContactTimeProvider_pSgMd;
        v37 = &_s11WorkoutCore25GroundContactTimeProvider_pSgMR;
        goto LABEL_100;
      }

LABEL_91:
      sub_20AEE2CE0(&v159, &v154);
      v131 = v157;
      v132 = v158;
      __swift_project_boxed_opaque_existential_1(&v154, v157);
      v133 = v2;
      v134 = (*(*&v132 + 16))(v131, COERCE_DOUBLE(*&v132));
      v136 = v135;
      swift_getKeyPath();
LABEL_97:
      swift_getKeyPath();
      *&v159 = v134;
      BYTE8(v159) = v136 & 1;
      v143 = v133;
      goto LABEL_98;
    case 35:
      v137 = [a1 splitProvider];
      if (v137)
      {
        [v137 splitDistance];
        v43 = v138;
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0.0;
      }

      goto LABEL_116;
    case 36:
      v97 = [a1 splitProvider];
      if (v97)
      {
        [v97 splitPace];
        v43 = v98;
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0.0;
      }

      goto LABEL_116;
    case 37:
      [objc_msgSend(a1 heartRateProvider)];
      v86 = v158;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_54;
    case 38:
    case 39:
      v18 = [a1 heartRateZonesProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore22HeartRateZonesProvider_pMd, &_s11WorkoutCore22HeartRateZonesProvider_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_5;
      }

      v161 = 0;
      v159 = 0u;
      v160 = 0u;
      v36 = &_s11WorkoutCore22HeartRateZonesProvider_pSgMd;
      v37 = &_s11WorkoutCore22HeartRateZonesProvider_pSgMR;
      goto LABEL_100;
    case 40:
      [objc_msgSend(a1 heartRateProvider)];
      v86 = v156;
      swift_unknownObjectRelease();
      swift_getKeyPath();
LABEL_54:
      swift_getKeyPath();
      v154 = v86;
      LOBYTE(v155) = 0;
      goto LABEL_55;
    case 43:
    case 47:
      v19 = [a1 powerZonesProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18PowerZonesProvider_pMd, &_s11WorkoutCore18PowerZonesProvider_pMR);
      if (swift_dynamicCast())
      {
LABEL_5:
        sub_20AEE2CE0(&v159, &v154);
        v20 = v157;
        v21 = v158;
        __swift_project_boxed_opaque_existential_1(&v154, v157);
        v22 = (*(*&v21 + 8))(v20, COERCE_DOUBLE(*&v21));
        swift_getKeyPath();
        swift_getKeyPath();
        *&v159 = v22;

LABEL_98:
        static Published.subscript.setter();
        __swift_destroy_boxed_opaque_existential_1(&v154);
      }

      else
      {
        v161 = 0;
        v159 = 0u;
        v160 = 0u;
        v36 = &_s11WorkoutCore18PowerZonesProvider_pSgMd;
        v37 = &_s11WorkoutCore18PowerZonesProvider_pSgMR;
LABEL_100:
        outlined destroy of GroundContactTimeProvider?(&v159, v36, v37);
      }

      return;
    case 44:
      [objc_msgSend(a1 segmentProvider)];
      v43 = v69;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_117;
    case 45:
      v121 = [a1 splitProvider];
      if (v121)
      {
        [v121 splitAveragePower];
        v43 = v122;
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0.0;
      }

      goto LABEL_116;
    case 48:
      v144 = [a1 paceProvider];
      if (v144)
      {
        [v144 fastestPaceInMetersPerSecond];
        v43 = v145;
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0.0;
      }

LABEL_116:
      swift_getKeyPath();
LABEL_117:
      swift_getKeyPath();
      v154 = v43;
      goto LABEL_118;
    case 49:
      v38 = [a1 powerProvider];
      if (v38)
      {
        [v38 thirtySecondAveragePower];
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0.0;
      }

LABEL_109:
      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v40;
      LOBYTE(v155) = 0;
LABEL_55:

      goto LABEL_119;
    case 51:
    case 52:
      v23 = [a1 waterTemperatureProvider];
      if (!v23)
      {
        return;
      }

      v24 = v23;
      v25 = [v23 currentWaterTemperature];
      if (v25)
      {
        v26 = v25;
        v27 = [objc_opt_self() degreeCelsiusUnit];
        [v26 doubleValueForUnit_];
        v29 = v28;

        swift_getKeyPath();
        swift_getKeyPath();
        v154 = v29;
        LOBYTE(v155) = 0;

        static Published.subscript.setter();
      }

      v30 = [v24 currentWaterTemperatureStale];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v154) = v30;

      static Published.subscript.setter();
      v31 = [v24 averageWaterTemperature];
      if (!v31)
      {
        goto LABEL_123;
      }

      v32 = v31;
      v33 = [objc_opt_self() degreeCelsiusUnit];
      [v32 doubleValueForUnit_];
      v35 = v34;

      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v35;
      LOBYTE(v155) = 0;

      static Published.subscript.setter();
      swift_unknownObjectRelease();

      return;
    case 53:
      v125 = [a1 descentProvider];
      if (!v125)
      {
        return;
      }

      [v125 descent];
      v127 = v126;
      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v127;
      LOBYTE(v155) = 0;
      v128 = v2;
      static Published.subscript.setter();
      goto LABEL_123;
    case 54:
      v118 = [a1 downhillRunCountProvider];
      if (!v118)
      {
        return;
      }

      v119 = COERCE_DOUBLE([v118 downhillRunCount]);
      swift_getKeyPath();
      swift_getKeyPath();
      v154 = v119;
      LOBYTE(v155) = 0;
      goto LABEL_79;
    default:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002ALL, 0x800000020B46E570, "WorkoutCore/MetricsPublisherActivityDataObserver.swift", 54, 2, 172, 0);
      while (1)
      {
        __break(1u);
LABEL_126:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003FLL, 0x800000020B46E5A0, "WorkoutCore/MetricsPublisherActivityDataObserver.swift", 54, 2, 46, 0);
      }
  }
}

double MetricsPublisher.dataProvider(_:didUpdate:)(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = static Published.subscript.modify();
  specialized Array.append<A>(contentsOf:)(a2);
  v3(&v5, 0);

  return result;
}

double MetricsPublisher.dataProvider(_:didUpdateRoutePosition:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

Swift::Void __swiftcall MetricsPublisher.pacerDistanceGoalComplete(in:)(Swift::Double in)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
}

void @objc MetricsPublisher.dataProvider(_:didReceive:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3);
  swift_unknownObjectRelease();
}

double MetricsPublisher.dataProvider(_:didUpdateIsGPSAvailable:)(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double MetricsPublisher.activityHeartRateDidBecomeStale(_:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

void MetricsPublisher.dataProvider(_:didChangeActivityTypeTo:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - v11;
  v13 = [a1 splitProvider];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 splitIndex];
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v15;
    v16 = v2;
    static Published.subscript.setter();
    v17 = [v14 splitStartDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of Date?(v12, v9);
    v19 = v16;
    static Published.subscript.setter();
    swift_unknownObjectRelease();
    outlined destroy of GroundContactTimeProvider?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = a2;
  v20 = a2;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v23);

  v21 = v23;
  [v23 identifier];
}

unint64_t lazy protocol witness table accessor for type MetricsPublisher and conformance MetricsPublisher()
{
  result = lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher;
  if (!lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher)
  {
    type metadata accessor for MetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of GroundContactTimeProvider?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double specialized MetricsPublisher.dataProvider(_:didReceive:)(void *a1)
{
  v2 = [objc_msgSend(a1 segmentProvider)];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if (v2 != v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v2;
    v3 = v1;
    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if (v2 != v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v2;

    static Published.subscript.setter();
  }

  return result;
}

id specialized MetricsPublisher.dataProvider(_:splitComplete:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v18 - v9;
  result = [a1 splitProvider];
  if (result)
  {
    v12 = result;
    v13 = [result splitIndex];
    swift_getKeyPath();
    swift_getKeyPath();
    v18[1] = v13;
    v14 = v1;
    static Published.subscript.setter();
    v15 = [v12 splitStartDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of Date?(v10, v7);
    v17 = v14;
    static Published.subscript.setter();
    swift_unknownObjectRelease();
    return outlined destroy of GroundContactTimeProvider?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

unint64_t type metadata accessor for CLLocation()
{
  result = lazy cache variable for type metadata for CLLocation;
  if (!lazy cache variable for type metadata for CLLocation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLLocation);
  }

  return result;
}

uint64_t MirroredStartHelper.__allocating_init()()
{
  v0 = swift_allocObject();
  MirroredStartHelper.init()();
  return v0;
}

uint64_t MirroredStartHelper.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  *(v0 + 16) = v7;
  *(v0 + 24) = 0;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.dataLink);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20AEA4000, v9, v10, "MirroredStartHelper: start observing device changes for prewarmWorkoutWatchApp", v11, 2u);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher();
  Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

double closure #1 in MirroredStartHelper.init()(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29 - v5;
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(v7 + 16) + 1;
    v12 = 64;
    do
    {
      if (!--v11)
      {
        break;
      }

      v13 = *(v7 + v12);
      v12 += 80;
    }

    while (v13);
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.dataLink);
    swift_retain_n();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v30 = v6;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315650;
      v19 = MEMORY[0x20F2E6F70](v7, &type metadata for WorkoutDevice);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v31);

      *(v17 + 4) = v21;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v11 != 0;
      *(v17 + 18) = 1024;
      v22 = *(v10 + 24);

      *(v17 + 20) = v22;
      v6 = v30;

      _os_log_impl(&dword_20AEA4000, v15, v16, "MirroredStartHelper: observed device change devices=%s, watchAvailable (%{BOOL}d, previous state: %{BOOL}d)", v17, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);

      if (!v11)
      {
        goto LABEL_15;
      }
    }

    else
    {

      if (!v11)
      {
LABEL_15:
        *(v10 + 24) = v11 != 0;

        return result;
      }
    }

    if ((*(v10 + 24) & 1) == 0)
    {
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20AEA4000, v23, v24, "MirroredStartHelper: observed device watch become available to start workout, submit prewarmWorkoutWatchApp task", v25, 2u);
        MEMORY[0x20F2E9420](v25, -1, -1);
      }

      v26 = type metadata accessor for TaskPriority();
      (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v27;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #2 in closure #1 in MirroredStartHelper.init(), v28);
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t closure #2 in closure #1 in MirroredStartHelper.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in MirroredStartHelper.init(), 0, 0);
}

uint64_t closure #2 in closure #1 in MirroredStartHelper.init()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = closure #2 in closure #1 in MirroredStartHelper.init();

    return specialized MirroredStartHelper.prewarmWorkoutWatchApp()();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{

  return MEMORY[0x2822009F8](closure #2 in closure #1 in MirroredStartHelper.init(), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 56) == 0;
  return (*(v0 + 8))();
}

uint64_t MirroredStartHelper.prewarmWorkoutWatchApp()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MirroredStartHelper.prewarmWorkoutWatchApp();

  return specialized MirroredStartHelper.prewarmWorkoutWatchApp()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void closure #1 in MirroredStartHelper.prewarmWorkoutWatchApp()(char a1, void *a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = mach_absolute_time();
  info = 0;
  mach_timebase_info(&info);
  numer = info.numer;
  if (is_mul_ok(v7, info.numer))
  {
    denom = info.denom;
    if (info.denom)
    {
      if (one-time initialization token for dataLink == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_4:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.dataLink);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = (v7 * numer / denom) / 1000000000.0 - a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    info = v15;
    *v14 = 134218498;
    *(v14 + 4) = v13;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    *(v14 + 18) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v16 = Optional.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &info);

    *(v14 + 20) = v18;
    _os_log_impl(&dword_20AEA4000, v11, v12, "MirroredStartHelper: prewarmWorkoutWatchApp completion with roundtripTime: %f (success: %{BOOL}d, error: %s)", v14, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }
}

uint64_t MirroredStartHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized MirroredStartHelper.prewarmWorkoutWatchApp()()
{

  return MEMORY[0x2822009F8](specialized MirroredStartHelper.prewarmWorkoutWatchApp(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v24 = static WorkoutDevicesProvider.shared;
  v1 = static WorkoutDevicesProvider.shared;
  v2 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();

  if (v2)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    v3 = (v0 + 16);
    v4 = static WorkoutCoreInjector.healthStore;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.dataLink);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v6, v7, "MirroredStartHelper: prewarmWorkoutWatchApp", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v9 = mach_absolute_time();
    *v3 = 0;
    mach_timebase_info((v0 + 16));
    v10 = *v3;
    if (is_mul_ok(v9, v10))
    {
      v11 = *(v0 + 20);
      if (!v11)
      {
        __break(1u);
      }

      v23 = v4;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      *(v0 + 16) = 1;
      *(v0 + 24) = xmmword_20B42FB30;
      *(v0 + 40) = 19;
      lazy protocol witness table accessor for type MirroredStart and conformance MirroredStart();
      v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v14 = v13;

      v18.super.isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v12, v14);
      v19 = swift_allocObject();
      *(v19 + 16) = (v9 * v10 / v11) / 1000000000.0;
      *(v0 + 48) = partial apply for closure #1 in MirroredStartHelper.prewarmWorkoutWatchApp();
      *(v0 + 56) = v19;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      *(v0 + 40) = &block_descriptor_92;
      v20 = _Block_copy((v0 + 16));

      [v23 _startWatchAppWithMirroredStartData_completion_];
      outlined consume of Data._Representation(0, 0xC000000000000000);
      _Block_release(v20);
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (one-time initialization token for dataLink == -1)
  {
    goto LABEL_16;
  }

  swift_once();
LABEL_16:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.dataLink);
  v18.super.isa = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18.super.isa, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20AEA4000, v18.super.isa, v16, "MirroredStartHelper: prewarmWorkoutWatchApp skipped because watch is not available to start workout", v17, 2u);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

LABEL_18:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t dispatch thunk of MirroredStartHelper.prewarmWorkoutWatchApp()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of MirroredStartHelper.prewarmWorkoutWatchApp();

  return v4();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in closure #1 in MirroredStartHelper.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in closure #1 in MirroredStartHelper.init();

  return closure #2 in closure #1 in MirroredStartHelper.init()(a1, v4, v5, v6);
}

uint64_t FIUIWorkoutActivityType.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v110 = &v101 - v6;
  v109 = type metadata accessor for Date();
  v7 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v8);
  v107 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v11 = MEMORY[0x28223BE20](v113, v10);
  v112 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v111 = &v101 - v14;
  v120 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  v15 = *(v120 - 8);
  v17 = MEMORY[0x28223BE20](v120, v16);
  v123 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (&v101 - v20);
  v22 = type metadata accessor for Apple_Workout_Core_Activity(0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  UnknownStorage.init()();
  v26 = [v2 identifier];
  if (v26 >> 31)
  {
    goto LABEL_50;
  }

  *v25 = v26;
  v27 = [v2 auxiliaryTypeIdentifier];
  if (!(v27 >> 31))
  {
    v103 = a1;
    *(v25 + 1) = v27;
    v25[8] = [v2 isIndoor];
    v28 = [v2 isPartOfMultiSport];
    v102 = v25;
    v25[9] = v28;
    v29 = [v2 metadata];
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
    v34 = v30 + 64;
    v33 = *(v30 + 64);
    v116 = v30;
    v35 = 1 << *(v30 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v33;
    v38 = (v35 + 63) >> 6;
    v108 = (v7 + 56);
    v106 = (v7 + 32);
    v105 = (v7 + 8);
    v39 = MEMORY[0x277D84F98];
    *&v31 = 136315138;
    v101 = v31;
    v121 = v21;
    v118 = v38;
    v115 = v15;
    v119 = v30 + 64;
    while (1)
    {
      if (!v37)
      {
        if (v38 <= v32 + 1)
        {
          v42 = v32 + 1;
        }

        else
        {
          v42 = v38;
        }

        v43 = v42 - 1;
        while (1)
        {
          v41 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v41 >= v38)
          {
            v37 = 0;
            v128 = 0u;
            v129 = 0u;
            v32 = v43;
            v127 = 0u;
            goto LABEL_19;
          }

          v37 = *(v34 + 8 * v41);
          ++v32;
          if (v37)
          {
            v32 = v41;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v41 = v32;
LABEL_18:
      v44 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v45 = v44 | (v41 << 6);
      v46 = (*(v116 + 48) + 16 * v45);
      v47 = *v46;
      v48 = v46[1];
      outlined init with copy of Any(*(v116 + 56) + 32 * v45, &v126);
      *&v127 = v47;
      *(&v127 + 1) = v48;
      outlined init with take of Any(&v126, &v128);

LABEL_19:
      v130 = v127;
      v131[0] = v128;
      v131[1] = v129;
      v49 = *(&v127 + 1);
      if (!*(&v127 + 1))
      {

        v99 = v102;
        *(v102 + 2) = v39;
        outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(v99, v103, type metadata accessor for Apple_Workout_Core_Activity);
        return _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v99, type metadata accessor for Apple_Workout_Core_Activity);
      }

      v122 = v130;
      outlined init with take of Any(v131, &v127);
      v50 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
      v51 = *(v50 - 8);
      v52 = *(v51 + 56);
      v53 = v51 + 56;
      v52(v21, 1, 1, v50);
      UnknownStorage.init()();
      outlined init with copy of Any(&v127, &v126);
      if (swift_dynamicCast())
      {
        v54 = v124[0];
        v117 = v39;
        v55 = v52;
        v56 = v124[1];
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v21, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
        *v21 = v54;
        v21[1] = v56;
        swift_storeEnumTagMultiPayload();
        v55(v21, 0, 1, v50);
        v39 = v117;
        goto LABEL_31;
      }

      v117 = v52;
      outlined init with copy of Any(&v127, &v126);
      type metadata accessor for HKQuantity();
      if (swift_dynamicCast())
      {
        break;
      }

      outlined init with copy of Any(&v127, &v126);
      if (swift_dynamicCast())
      {
        v68 = v124[0];
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v21, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
        *v21 = v68;
        goto LABEL_29;
      }

      outlined init with copy of Any(&v127, &v126);
      v69 = v110;
      v70 = v109;
      v71 = swift_dynamicCast();
      v72 = *v108;
      if (v71)
      {
        v72(v69, 0, 1, v70);
        v73 = v107;
        (*v106)(v107, v69, v70);
        Date.timeIntervalSinceReferenceDate.getter();
        v75 = v74;
        (*v105)(v73, v70);
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v21, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
        *v21 = v75;
LABEL_29:
        swift_storeEnumTagMultiPayload();
        (v117)(v21, 0, 1, v50);
LABEL_30:
        v15 = v115;
        goto LABEL_31;
      }

      v72(v69, 1, 1, v70);
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v69, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      __swift_project_value_buffer(v89, static WOLog.core);
      outlined init with copy of Any(&v127, &v126);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v125 = v93;
        *v92 = v101;
        outlined init with copy of Any(&v126, v124);
        v94 = String.init<A>(describing:)();
        v96 = v95;
        __swift_destroy_boxed_opaque_existential_0(&v126);
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, &v125);

        *(v92 + 4) = v97;
        _os_log_impl(&dword_20AEA4000, v90, v91, "Unhandled metadata value %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x20F2E9420](v93, -1, -1);
        MEMORY[0x20F2E9420](v92, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v126);
      }

      v15 = v115;
      v21 = v121;
LABEL_31:
      v76 = v122;
      outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(v21, v123, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v126 = v39;
      v78 = specialized __RawDictionaryStorage.find<A>(_:)(v76, v49);
      v80 = v39[2];
      v81 = (v79 & 1) == 0;
      v82 = __OFADD__(v80, v81);
      v83 = v80 + v81;
      if (v82)
      {
        goto LABEL_48;
      }

      v84 = v79;
      if (v39[3] >= v83)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v98 = v78;
          specialized _NativeDictionary.copy()();
          v78 = v98;
          v76 = v122;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v83, isUniquelyReferenced_nonNull_native);
        v78 = specialized __RawDictionaryStorage.find<A>(_:)(v76, v49);
        if ((v84 & 1) != (v85 & 1))
        {
          goto LABEL_52;
        }
      }

      v34 = v119;
      if (v84)
      {
        v40 = v78;

        v39 = v126;
        outlined assign with take of Apple_Workout_Core_ActivityMetadataValue(v123, *(v126 + 56) + *(v15 + 72) * v40);
        __swift_destroy_boxed_opaque_existential_0(&v127);
      }

      else
      {
        v39 = v126;
        *(v126 + 8 * (v78 >> 6) + 64) |= 1 << v78;
        v86 = (v39[6] + 16 * v78);
        *v86 = v76;
        v86[1] = v49;
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v123, v39[7] + *(v15 + 72) * v78, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
        __swift_destroy_boxed_opaque_existential_0(&v127);
        v87 = v39[2];
        v82 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v82)
        {
          goto LABEL_49;
        }

        v39[2] = v88;
      }

      v21 = v121;
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v121, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      v38 = v118;
    }

    v57 = v124[0];
    v114 = v53;
    v58 = v111;
    UnknownStorage.init()();
    v59 = [v57 _unit];
    v60 = [v59 unitString];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v58[1] = v61;
    v58[2] = v63;
    v21 = v121;
    v64 = [v57 _unit];
    [v57 doubleValueForUnit_];
    v66 = v65;

    *v58 = v66;
    v67 = v112;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(v58, v112, type metadata accessor for Apple_Workout_Core_HKQuantity);
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v21, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v67, v21, type metadata accessor for Apple_Workout_Core_HKQuantity);
    swift_storeEnumTagMultiPayload();
    (v117)(v21, 0, 1, v50);
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v58, type metadata accessor for Apple_Workout_Core_HKQuantity);
    goto LABEL_30;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id Apple_Workout_Core_Activity.decoded.getter()
{
  v1 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v116 = (&v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v113 - v6;
  v130 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v8 = *(v130 - 8);
  v10 = MEMORY[0x28223BE20](v130, v9);
  v121 = (&v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v12);
  v120 = &v113 - v13;
  v14 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  v127 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v126 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMR);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = (&v113 - v23);
  v25 = *v0;
  if ((v25 & 0x80000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if ((v0[1] & 0x80000000) != 0)
  {
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

  v117 = v0[1];
  v118 = v25;
  v122 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v119 = v0;
  v26 = *(v0 + 2);
  v29 = *(v26 + 64);
  v28 = v26 + 64;
  v27 = v29;
  v30 = 1 << *(*(v0 + 2) + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v33 = (v30 + 63) >> 6;
  v128 = *(v0 + 2);
  v129 = (v8 + 48);

  v34 = 0;
  v124 = v21;
  v125 = v7;
  v123 = v24;
  while (1)
  {
    v35 = v34;
    if (!v32)
    {
LABEL_8:
      if (v33 <= v35 + 1)
      {
        v37 = v35 + 1;
      }

      else
      {
        v37 = v33;
      }

      v34 = v37 - 1;
      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v36 >= v33)
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
          (*(*(v50 - 8) + 56))(v21, 1, 1, v50);
          v32 = 0;
          goto LABEL_16;
        }

        v32 = *(v28 + 8 * v36);
        ++v35;
        if (v32)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    while (1)
    {
      v36 = v35;
LABEL_15:
      v38 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v39 = v38 | (v36 << 6);
      v40 = (*(v128 + 48) + 16 * v39);
      v42 = *v40;
      v41 = v40[1];
      v43 = v126;
      outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(*(v128 + 56) + *(v127 + 72) * v39, v126, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
      v45 = *(v44 + 48);
      v21 = v124;
      *v124 = v42;
      *(v21 + 1) = v41;
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v43, &v21[v45], type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      (*(*(v44 - 8) + 56))(v21, 0, 1, v44);

      v34 = v36;
      v7 = v125;
      v24 = v123;
LABEL_16:
      outlined init with take of (key: String, value: Apple_Workout_Core_ActivityMetadataValue)?(v21, v24);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
      if ((*(*(v46 - 8) + 48))(v24, 1, v46) == 1)
      {

        v107 = *(v119 + 8);
        v108 = *(v119 + 9);
        v109 = objc_allocWithZone(MEMORY[0x277D0A810]);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v111 = [v109 initWithActivityTypeIdentifier:v118 isIndoor:v107 isPartOfMultiSport:v108 metadata:isa auxiliaryTypeIdentifier:v117];

        return v111;
      }

      v47 = *v24;
      v48 = v24[1];
      v49 = *(v46 + 48);
      outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v24 + v49, v7);
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v24 + v49, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      if ((*v129)(v7, 1, v130) != 1)
      {
        break;
      }

      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
      v35 = v34;
      if (!v32)
      {
        goto LABEL_8;
      }
    }

    v51 = v120;
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v7, v120, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(v51, v121, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      break;
    }

    if (EnumCaseMultiPayload)
    {
      v71 = v116;
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v121, v116, type metadata accessor for Apple_Workout_Core_HKQuantity);
      v115 = MEMORY[0x20F2E6C00](*(v71 + 1), *(v71 + 2));
      v114 = [objc_opt_self() unitFromString_];

      v72 = *v71;
      v73 = objc_opt_self();
      v74 = v114;
      v115 = [v73 quantityWithUnit:v114 doubleValue:v72];

      v134 = type metadata accessor for HKQuantity();
      *&v133 = v115;
      outlined init with take of Any(&v133, v132);
      v75 = v122;
      LODWORD(v115) = swift_isUniquelyReferenced_nonNull_native();
      v131 = v75;
      v77 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
      v78 = *(v75 + 16);
      v79 = (v76 & 1) == 0;
      v80 = v78 + v79;
      if (__OFADD__(v78, v79))
      {
        goto LABEL_77;
      }

      if (*(v75 + 24) < v80)
      {
        LODWORD(v122) = v76;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v80, v115);
        v81 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
        if ((v122 & 1) != (v82 & 1))
        {
          goto LABEL_83;
        }

        v77 = v81;
        if ((v122 & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_56:
        v97 = v77;

        v122 = v131;
        v98 = (v131[7] + 32 * v97);
        __swift_destroy_boxed_opaque_existential_0(v98);
        outlined init with take of Any(v132, v98);
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v120, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
        goto LABEL_67;
      }

      if (v115)
      {
        if (v76)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v115 = v77;
        LODWORD(v122) = v76;
        specialized _NativeDictionary.copy()();
        v77 = v115;
        if (v122)
        {
          goto LABEL_56;
        }
      }

LABEL_65:
      v101 = v131;
      v131[(v77 >> 6) + 8] |= 1 << v77;
      v102 = (v101[6] + 16 * v77);
      *v102 = v47;
      v102[1] = v48;
      outlined init with take of Any(v132, (v101[7] + 32 * v77));
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v120, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      v103 = v101[2];
      v93 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v93)
      {
        goto LABEL_82;
      }

      v122 = v101;
      v101[2] = v104;
LABEL_67:
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v116, type metadata accessor for Apple_Workout_Core_HKQuantity);
      continue;
    }

    v53 = *v121;
    v54 = v121[1];
    v134 = MEMORY[0x277D837D0];
    *&v133 = v53;
    *(&v133 + 1) = v54;
    outlined init with take of Any(&v133, v132);
    v55 = v122;
    LODWORD(v115) = swift_isUniquelyReferenced_nonNull_native();
    v131 = v55;
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
    v58 = *(v55 + 16);
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_78;
    }

    if (*(v55 + 24) >= v60)
    {
      if (v115)
      {
        if ((v56 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v115 = v57;
        LODWORD(v122) = v56;
        specialized _NativeDictionary.copy()();
        v57 = v115;
        if ((v122 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

LABEL_59:
      v99 = v57;

      v122 = v131;
      v100 = (v131[7] + 32 * v99);
      __swift_destroy_boxed_opaque_existential_0(v100);
      outlined init with take of Any(v132, v100);
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v120, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      continue;
    }

    LODWORD(v122) = v56;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, v115);
    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
    if ((v122 & 1) != (v62 & 1))
    {
      goto LABEL_83;
    }

    v57 = v61;
    if (v122)
    {
      goto LABEL_59;
    }

LABEL_46:
    v90 = v131;
    v131[(v57 >> 6) + 8] |= 1 << v57;
    v91 = (v90[6] + 16 * v57);
    *v91 = v47;
    v91[1] = v48;
    outlined init with take of Any(v132, (v90[7] + 32 * v57));
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v120, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    v92 = v90[2];
    v93 = __OFADD__(v92, 1);
    v94 = v92 + 1;
    if (v93)
    {
      goto LABEL_80;
    }

LABEL_70:
    v122 = v90;
    v90[2] = v94;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v63 = *v121;
    v134 = MEMORY[0x277D839F8];
    *&v133 = v63;
    outlined init with take of Any(&v133, v132);
    v64 = v122;
    LODWORD(v115) = swift_isUniquelyReferenced_nonNull_native();
    v131 = v64;
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
    v66 = *(v64 + 16);
    v67 = (v65 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_76;
    }

    if (*(v64 + 24) >= v68)
    {
      if (v115)
      {
        if (v65)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v115 = v57;
        LODWORD(v122) = v65;
        specialized _NativeDictionary.copy()();
        v57 = v115;
        if (v122)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      LODWORD(v122) = v65;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, v115);
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
      if ((v122 & 1) != (v70 & 1))
      {
        goto LABEL_83;
      }

      v57 = v69;
      if (v122)
      {
        goto LABEL_59;
      }
    }

    v90 = v131;
    v131[(v57 >> 6) + 8] |= 1 << v57;
    v95 = (v90[6] + 16 * v57);
    *v95 = v47;
    v95[1] = v48;
    outlined init with take of Any(v132, (v90[7] + 32 * v57));
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v120, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    v96 = v90[2];
    v93 = __OFADD__(v96, 1);
    v94 = v96 + 1;
    if (v93)
    {
      goto LABEL_79;
    }

    goto LABEL_70;
  }

  v134 = type metadata accessor for Date();
  __swift_allocate_boxed_opaque_existential_0(&v133);
  Date.init(timeIntervalSinceReferenceDate:)();
  outlined init with take of Any(&v133, v132);
  v83 = v122;
  LODWORD(v115) = swift_isUniquelyReferenced_nonNull_native();
  v131 = v83;
  v57 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
  v85 = *(v83 + 16);
  v86 = (v84 & 1) == 0;
  v87 = v85 + v86;
  if (__OFADD__(v85, v86))
  {
    goto LABEL_75;
  }

  if (*(v83 + 24) >= v87)
  {
    if (v115)
    {
      if (v84)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v115 = v57;
      LODWORD(v122) = v84;
      specialized _NativeDictionary.copy()();
      v57 = v115;
      if (v122)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    LODWORD(v122) = v84;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v87, v115);
    v88 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
    if ((v122 & 1) != (v89 & 1))
    {
      goto LABEL_83;
    }

    v57 = v88;
    if (v122)
    {
      goto LABEL_59;
    }
  }

  v90 = v131;
  v131[(v57 >> 6) + 8] |= 1 << v57;
  v105 = (v90[6] + 16 * v57);
  *v105 = v47;
  v105[1] = v48;
  outlined init with take of Any(v132, (v90[7] + 32 * v57));
  _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v120, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  v106 = v90[2];
  v93 = __OFADD__(v106, 1);
  v94 = v106 + 1;
  if (!v93)
  {
    goto LABEL_70;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      if (v22 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v22;
      }

      v25 = MEMORY[0x20F2E7FD0](*(v9 + 40), *&v24);
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v33 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v22);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v34 = v8;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
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
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v35 = *(*(v9 + 48) + 16 * v23);
      v24 = *(*(v9 + 56) + 8 * v23);
      if ((v34 & 1) == 0)
      {
        v10 = v24;
      }

      a5(v10);
      v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v11 + 32);
      v26 = v10 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 16 * v19) = v35;
      *(*(v11 + 56) + 8 * v19) = v24;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_33;
    }

    v32 = 1 << *(v9 + 32);
    v7 = v6;
    if (v32 >= 64)
    {
      bzero((v9 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    *(v9 + 16) = 0;
  }

LABEL_33:
  *v7 = v11;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277CC9578]);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Station.Mood();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277D2B280]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277CC95F0]);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for Station.Mood();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v34 = type metadata accessor for Date();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMd, &_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSdGMd, &_ss18_DictionaryStorageCySiSdGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

{
  v1 = v0;
  v2 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMd, &_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(*(v5 + 56) + v27, v31, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v26, *(v28 + 56) + v27, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore0C25VoiceMomentAnalyticsEventV0G3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy11WorkoutCore0C25VoiceMomentAnalyticsEventV0G3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5Int32VSdGMd, &_ss18_DictionaryStorageCys5Int32VSdGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

{
  v1 = v0;
  v36 = type metadata accessor for Date();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMd, &_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore28DataLinkMirroredHostExpectedOSo7NSTimerCGMd, &_ss18_DictionaryStorageCy11WorkoutCore28DataLinkMirroredHostExpectedOSo7NSTimerCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySd11WorkoutCore26MeanDistributionByPositionC6BucketCGMd, &_ss18_DictionaryStorageCySd11WorkoutCore26MeanDistributionByPositionC6BucketCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo31NLCompoundActivityPickerSectionVSay11WorkoutCore08CompounddE12ItemProtocol_pGGMd, &_ss18_DictionaryStorageCySo31NLCompoundActivityPickerSectionVSay11WorkoutCore08CompounddE12ItemProtocol_pGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11WorkoutCore26CompoundActivityPickerItemCGMd, &_ss18_DictionaryStorageCySS11WorkoutCore26CompoundActivityPickerItemCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore0C8SignpostOSayAC0c8IntervalE0CGGMd, &_ss18_DictionaryStorageCy11WorkoutCore0C8SignpostOSayAC0c8IntervalE0CGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMd, &_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMR);
}

{
  v1 = v0;
  v43 = type metadata accessor for Date();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v2);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Station.Mood();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v4);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || v9 >= &v10[8 * v11])
    {
      memmove(v9, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

{
  v1 = v0;
  v36 = type metadata accessor for Station.Mood();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

{
  v1 = v0;
  v34 = type metadata accessor for Station.Mood();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore16ExternalProviderCSayAC0C13ConfigurationCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore16ExternalProviderCSayAC0C13ConfigurationCGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMd, &_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        outlined copy of Data._Representation(v22, *(&v22 + 1));
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
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo28NLSessionBackgroundAssertionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo28NLSessionBackgroundAssertionCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore23BackgroundAssertionTypeOSDy10Foundation4UUIDVSo09NLSessioneF0CGGMd, &_ss18_DictionaryStorageCy11WorkoutCore23BackgroundAssertionTypeOSDy10Foundation4UUIDVSo09NLSessioneF0CGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerCGMd, &_ss18_DictionaryStorageCy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSayyycGGMd, &_ss18_DictionaryStorageCySSSayyycGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore23QueriedExternalProviderCSayAC0C13ConfigurationCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore23QueriedExternalProviderCSayAC0C13ConfigurationCGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay11WorkoutCore08Standardc3AddC3RowCGGMd, &_ss18_DictionaryStorageCySSSay11WorkoutCore08Standardc3AddC3RowCGGMR);
}

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo32HKDatabaseAccessibilityAssertionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo32HKDatabaseAccessibilityAssertionCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_ss18_DictionaryStorageCySS11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
}

void specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v5 = v2;
  v37 = type metadata accessor for UUID();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v32 = v5;
    v33 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v33, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v38 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v8 + 48) + v26, v37);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        v30 = v29;
        v18 = v40;
      }

      while (v40);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v32;
        v10 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        v24 = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Station.Mood and conformance Station.Mood(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t MetricsPublisher.splitStartDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_11(a1, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = v1;
  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_17(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t (*MetricsPublisher.segmentDuration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.segmentDuration.modify;
}

uint64_t (*MetricsPublisher.splitDuration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.splitDuration.modify;
}

uint64_t (*MetricsPublisher.distance.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.distance.modify;
}

uint64_t (*MetricsPublisher.segmentDistance.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.segmentDistance.modify;
}

uint64_t (*MetricsPublisher.segmentActiveEnergy.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.segmentActiveEnergy.modify;
}

uint64_t (*MetricsPublisher.segmentTotalEnergy.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.segmentTotalEnergy.modify;
}

uint64_t (*MetricsPublisher.splitDistance.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.splitDistance.modify;
}

uint64_t (*MetricsPublisher.descent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.descent.modify;
}

uint64_t (*MetricsPublisher.flightsClimbed.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.flightsClimbed.modify;
}

uint64_t (*MetricsPublisher.downhillRunCount.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.downhillRunCount.modify;
}

uint64_t (*MetricsPublisher.timerRemainingTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.timerRemainingTime.modify;
}

id MetricsPublisher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double MetricsPublisher.elevationChartData.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

double MetricsPublisher.currentElevation.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  static Published.subscript.setter();
  return result;
}

void MetricsPublisher.protobuf.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v461 = &v454 - v6;
  v7 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  v459 = *(v7 - 8);
  v460 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v458 = &v454 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v457 = &v454 - v12;
  v464 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v456 = *(v464 - 8);
  MEMORY[0x28223BE20](v464, v13);
  v463 = &v454 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v462 = (&v454 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v496 = &v454 - v20;
  v21 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  v494 = *(v21 - 8);
  v495 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v493 = (&v454 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v492 = &v454 - v26;
  v27 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v490 = *(v27 - 8);
  v491 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v489 = &v454 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v488 = &v454 - v32;
  v33 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v486 = *(v33 - 8);
  v487 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v485 = (&v454 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v484 = &v454 - v38;
  v39 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v482 = *(v39 - 8);
  v483 = v39;
  MEMORY[0x28223BE20](v39, v40);
  v481 = &v454 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v480 = &v454 - v44;
  v45 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v478 = *(v45 - 8);
  v479 = v45;
  MEMORY[0x28223BE20](v45, v46);
  v477 = &v454 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  MEMORY[0x28223BE20](v48 - 8, v49);
  v476 = &v454 - v50;
  v51 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v474 = *(v51 - 8);
  v475 = v51;
  MEMORY[0x28223BE20](v51, v52);
  v473 = &v454 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v54 - 8, v55);
  v472 = &v454 - v56;
  v57 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  v470 = *(v57 - 8);
  v471 = v57;
  MEMORY[0x28223BE20](v57, v58);
  v469 = &v454 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v60 - 8, v61);
  v468 = &v454 - v62;
  v63 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v466 = *(v63 - 8);
  v467 = v63;
  MEMORY[0x28223BE20](v63, v64);
  v465 = &v454 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v533 = type metadata accessor for Date();
  v522 = *(v533 - 8);
  v67 = MEMORY[0x28223BE20](v533, v66);
  v455 = &v454 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67, v69);
  v531 = &v454 - v70;
  v530 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  v529 = *(v530 - 8);
  v72 = MEMORY[0x28223BE20](v530, v71);
  v536 = &v454 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v72, v74);
  v537 = (&v454 - v76);
  MEMORY[0x28223BE20](v75, v77);
  v535 = &v454 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  MEMORY[0x28223BE20](v79 - 8, v80);
  v505 = &v454 - v81;
  v82 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v503 = *(v82 - 8);
  v504 = v82;
  MEMORY[0x28223BE20](v82, v83);
  v521 = &v454 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  MEMORY[0x28223BE20](v85 - 8, v86);
  v502 = &v454 - v87;
  v88 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v500 = *(v88 - 8);
  v501 = v88;
  MEMORY[0x28223BE20](v88, v89);
  v499 = (&v454 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v91 - 8, v92);
  v498 = &v454 - v93;
  v523 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  v497 = *(v523 - 8);
  MEMORY[0x28223BE20](v523, v94);
  v520 = &v454 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v96 - 8, v97);
  v519 = &v454 - v98;
  v532 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  v518 = *(v532 - 8);
  MEMORY[0x28223BE20](v532, v99);
  v528 = (&v454 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v101 - 8, v102);
  v517 = &v454 - v103;
  v104 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v515 = *(v104 - 8);
  v516 = v104;
  MEMORY[0x28223BE20](v104, v105);
  v527 = (&v454 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v107 - 8, v108);
  v514 = &v454 - v109;
  v110 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v511 = *(v110 - 8);
  v512 = v110;
  MEMORY[0x28223BE20](v110, v111);
  v510 = &v454 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v513 = *(v526 - 8);
  MEMORY[0x28223BE20](v526, v113);
  v506 = &v454 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v115 - 8, v116);
  v509 = &v454 - v117;
  v118 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  v507 = *(v118 - 8);
  v508 = v118;
  MEMORY[0x28223BE20](v118, v119);
  v524 = (&v454 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = type metadata accessor for UUID();
  v122 = *(v121 - 1);
  MEMORY[0x28223BE20](v121, v123);
  v125 = (&v454 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
  UnknownStorage.init()();
  v126 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    *(a1 + v126) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
    v127 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
    swift_beginAccess();
    v525 = v2;
    v128 = *(v2 + v127);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = *(a1 + v126);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v130 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v130);
      *(a1 + v126) = v130;
    }

    swift_beginAccess();
    *(v130 + 16) = v128;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v125);

    v131 = UUID.woData.getter();
    v133 = v132;
    (*(v122 + 1))(v125, v121);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v135 = *(a1 + v126);
    if ((v134 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v135 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v135);
      *(a1 + v126) = v135;
    }

    v136 = (v135 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
    swift_beginAccess();
    v137 = *v136;
    v138 = v136[1];
    *v136 = v131;
    v136[1] = v133;
    outlined consume of Data?(v137, v138);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v568);

    v139 = LOBYTE(v568[0]);
    v140 = swift_isUniquelyReferenced_nonNull_native();
    v141 = *(a1 + v126);
    if ((v140 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v141 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v141);
      *(a1 + v126) = v141;
    }

    v142 = v508;
    swift_beginAccess();
    *(v141 + 40) = v139;
    *(v141 + 48) = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v568);

    v143 = v568[0];
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v145 = *(a1 + v126);
    if ((v144 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v145 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v145);
      *(a1 + v126) = v145;
    }

    v146 = v509;
    swift_beginAccess();
    *(v145 + 49) = v143;
    v147 = v524;
    UnknownStorage.init()();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v567);

    *v147 = v567[0];
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v149 = *(a1 + v126);
    v534 = a1;
    if ((v148 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v149 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v149);
      *(a1 + v126) = v149;
    }

    v151 = v506;
    v150 = v507;
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v524, v146, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    (*(v150 + 56))(v146, 0, 1, v142);
    v152 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v146, v149 + v152, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    swift_endAccess();
    *v151 = 0;
    v153 = v526;
    UnknownStorage.init()();
    v154 = *(v153 + 24);
    v155 = v151;
    v156 = v512;
    v158 = v511 + 56;
    v157 = *(v511 + 56);
    v157(&v151[v154], 1, 1, v512);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v567);

    v159 = v567[0];
    v160 = v510;
    HKActivitySummary.protobuf.getter(v510);

    _s10Foundation4DateVSgWOhTm_17(&v155[v154], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v160, &v155[v154], type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    v157(&v155[v154], 0, 1, v156);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v567);

    *v155 = v567[0];
    v161 = v534;
    v162 = swift_isUniquelyReferenced_nonNull_native();
    v163 = *(v161 + v126);
    v164 = v126;
    if ((v162 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v163 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v163);
      *(v161 + v126) = v163;
    }

    v165 = v519;
    v166 = v155;
    v167 = v513;
    v168 = v514;
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v166, v514, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
    (*(v167 + 56))(v168, 0, 1, v526);
    v169 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v168, v163 + v169, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    swift_endAccess();
    HeartRateMetricsPublisher.protobuf.getter(v527);
    v170 = swift_isUniquelyReferenced_nonNull_native();
    v171 = *(v161 + v126);
    if ((v170 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v171 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v171);
      *(v161 + v126) = v171;
    }

    v172 = v516;
    v173 = v517;
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v527, v517, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
    (*(v515 + 56))(v173, 0, 1, v172);
    v174 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v173, v171 + v174, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    swift_endAccess();
    v175 = v528;
    UnknownStorage.init()();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v567);

    *v175 = v567[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v567);

    v175[1] = v567[0];
    v176 = swift_isUniquelyReferenced_nonNull_native();
    v177 = *(v161 + v164);
    if ((v176 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v177 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v177);
      *(v161 + v164) = v177;
    }

    v178 = v520;
    v179 = v518;
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v528, v165, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
    (*(v179 + 56))(v165, 0, 1, v532);
    v180 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v165, v177 + v180, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v567);

    v181 = v567[0];
    v182 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(v161 + v164);
    v184 = v521;
    if ((v182 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v183 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v183);
      *(v161 + v164) = v183;
    }

    v185 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
    swift_beginAccess();
    *(v183 + v185) = v181;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v566);

    v186 = v566[0];
    v187 = swift_isUniquelyReferenced_nonNull_native();
    v188 = *(v161 + v164);
    if ((v187 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v188 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v188);
      *(v161 + v164) = v188;
    }

    v189 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
    swift_beginAccess();
    *(v188 + v189) = v186;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v565);

    v190 = v565[0];
    v191 = swift_isUniquelyReferenced_nonNull_native();
    v192 = *(v161 + v164);
    if ((v191 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v192 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v192);
      *(v161 + v164) = v192;
    }

    v193 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
    swift_beginAccess();
    *(v192 + v193) = v190;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v564);

    v194 = v564[0];
    v195 = swift_isUniquelyReferenced_nonNull_native();
    v196 = *(v161 + v164);
    if ((v195 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v196 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v196);
      *(v161 + v164) = v196;
    }

    v197 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
    swift_beginAccess();
    *(v196 + v197) = v194;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v563);

    v198 = v563[0];
    v199 = swift_isUniquelyReferenced_nonNull_native();
    v200 = *(v161 + v164);
    if ((v199 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v200 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v200);
      *(v161 + v164) = v200;
    }

    v201 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
    swift_beginAccess();
    *(v200 + v201) = v198;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v562);

    v202 = v562[0];
    v203 = swift_isUniquelyReferenced_nonNull_native();
    v204 = *(v161 + v164);
    if ((v203 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v204 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v204);
      *(v161 + v164) = v204;
    }

    v205 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
    swift_beginAccess();
    *(v204 + v205) = v202;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v561);

    v206 = v561[0];
    v207 = swift_isUniquelyReferenced_nonNull_native();
    v208 = *(v161 + v164);
    if ((v207 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v208 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v208);
      *(v161 + v164) = v208;
    }

    v209 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
    swift_beginAccess();
    *(v208 + v209) = v206;
    UnknownStorage.init()();
    swift_getKeyPath();
    swift_getKeyPath();
    v210 = v178;
    static Published.subscript.getter(&v559);

    if (HIDWORD(v559))
    {
      __break(1u);
    }

    else
    {
      *v178 = v559;
      v211 = swift_isUniquelyReferenced_nonNull_native();
      v212 = *(v161 + v164);
      if ((v211 & 1) == 0)
      {
        type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
        swift_allocObject();
        v212 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v212);
        *(v161 + v164) = v212;
      }

      v213 = v498;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v210, v498, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
      (*(v497 + 56))(v213, 0, 1, v523);
      v214 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
      swift_beginAccess();
      outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v213, v212 + v214, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
      swift_endAccess();
      v215 = v499;
      PlatterPublisher.protobuf.getter(v499);
      v216 = swift_isUniquelyReferenced_nonNull_native();
      v217 = *(v161 + v164);
      if ((v216 & 1) == 0)
      {
        type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
        swift_allocObject();
        v217 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v217);
        *(v161 + v164) = v217;
      }

      v218 = v502;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v215, v502, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
      (*(v500 + 56))(v218, 0, 1, v501);
      v219 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
      swift_beginAccess();
      outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v218, v217 + v219, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
      swift_endAccess();
      *v184 = 0;
      *(v184 + 8) = 1;
      v220 = v504;
      UnknownStorage.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v559);

      v221 = 0;
      if (v559 <= 3)
      {
        v221 = qword_20B451AD0[v559];
      }

      *v184 = v221;
      *(v184 + 8) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v559);

      *(v184 + 12) = v559;
      v222 = swift_isUniquelyReferenced_nonNull_native();
      v223 = *(v161 + v164);
      if ((v222 & 1) == 0)
      {
        type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
        swift_allocObject();
        v223 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v223);
        *(v161 + v164) = v223;
      }

      v224 = v505;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v184, v505, type metadata accessor for Apple_Workout_Core_GoalPublisher);
      (*(v503 + 56))(v224, 0, 1, v220);
      v225 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
      swift_beginAccess();
      v158 = v223;
      outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v224, v223 + v225, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v559);

      if ((v560 & 1) == 0)
      {
        v226 = v559;
        v227 = swift_isUniquelyReferenced_nonNull_native();
        v228 = *(v161 + v164);
        if ((v227 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v228 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v228);
          *(v161 + v164) = v228;
        }

        v158 = v228;
        v229 = v228 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
        swift_beginAccess();
        *v229 = v226;
        *(v229 + 8) = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v559);

      if ((v560 & 1) == 0)
      {
        v230 = v559;
        v231 = swift_isUniquelyReferenced_nonNull_native();
        v232 = *(v161 + v164);
        if ((v231 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v232 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v232);
          *(v161 + v164) = v232;
        }

        v158 = v232;
        v233 = v232 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
        swift_beginAccess();
        *v233 = v230;
        *(v233 + 8) = 0;
      }

      v532 = v164;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v559);

      v164 = v559;
      if (!(v559 >> 62))
      {
        v234 = *((v559 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v125 = v533;
        if (!v234)
        {
          break;
        }

        goto LABEL_51;
      }
    }

    v234 = __CocoaSet.count.getter();
    v125 = v533;
    if (!v234)
    {
      break;
    }

LABEL_51:
    if (v234 < 1)
    {
      goto LABEL_196;
    }

    a1 = 0;
    v235 = v164 & 0xC000000000000001;
    v528 = (v522 + 16);
    v527 = (v522 + 8);
    v526 = v164 & 0xC000000000000001;
    while (1)
    {
      if (v235)
      {
        v236 = MEMORY[0x20F2E7A20](a1, v164);
      }

      else
      {
        v236 = *(v164 + 8 * a1 + 32);
      }

      v121 = v236;
      v2 = OBJC_IVAR___WOWorkoutChartDataElement_value;
      swift_beginAccess();
      if ((~*(v121 + v2) & 0x7FF0000000000000) == 0)
      {

        goto LABEL_54;
      }

      v237 = v164;
      v126 = v234;
      v238 = v530;
      v239 = v537;
      UnknownStorage.init()();
      v240 = v239 + *(v238 + 28);
      *v240 = 0;
      v240[8] = 1;
      v241 = v239 + *(v238 + 32);
      *v241 = 0;
      v241[8] = 1;
      v242 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v122 = v531;
      (*v528)(v531, v121 + v242, v125);
      Date.timeIntervalSinceReferenceDate.getter();
      v244 = v243;
      v245 = v243;
      (*v527)(v122, v125);
      if ((*&v245 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v244 <= -2147483650.0)
      {
        goto LABEL_74;
      }

      if (v244 >= 2147483650.0)
      {
        goto LABEL_75;
      }

      *v537 = v244;
      v246 = *(v121 + v2) * 100.0;
      if (COERCE__INT64(fabs(v246)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_76;
      }

      if (v246 <= -2147483650.0)
      {
        goto LABEL_77;
      }

      if (v246 >= 2147483650.0)
      {
        goto LABEL_78;
      }

      v247 = v537;
      v537[1] = v246;
      v248 = v535;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v247, v535, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
      outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(v248, v536);
      v249 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
      swift_beginAccess();
      v250 = *(v158 + v249);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v250[2] + 1, 1, v250);
      }

      v252 = v250[2];
      v251 = v250[3];
      if (v252 >= v251 >> 1)
      {
        v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v251 > 1), v252 + 1, 1, v250);
      }

      v250[2] = v252 + 1;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v536, v250 + ((*(v529 + 80) + 32) & ~*(v529 + 80)) + *(v529 + 72) * v252, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
      v253 = v534;
      v254 = v532;
      if (swift_isUniquelyReferenced_nonNull_native())
      {

        outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v535, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        v255 = *(v253 + v254);
      }

      else
      {
        type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
        swift_allocObject();

        v257 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v256);

        outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v535, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);

        *(v253 + v254) = v257;
        v255 = v257;
      }

      v258 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
      swift_beginAccess();
      v158 = v255;
      *(v255 + v258) = v250;

      v125 = v533;
      v234 = v126;
      v164 = v237;
      v235 = v526;
LABEL_54:
      if (v234 == ++a1)
      {
        goto LABEL_82;
      }
    }

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
    swift_once();
  }

LABEL_82:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v558);

  v259 = v558[0];
  v260 = [v558[0] unitString];

  v261 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v263 = v262;

  v264 = v534;
  v265 = v532;
  v266 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *(v264 + v265);
  if ((v266 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v267 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v267);
    *(v264 + v265) = v267;
  }

  v268 = v469;
  v269 = v465;
  v270 = (v267 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  *v270 = v261;
  v270[1] = v263;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v556);

  v271 = v473;
  if ((v557 & 1) == 0)
  {
    v272 = v556;
    v273 = swift_isUniquelyReferenced_nonNull_native();
    v274 = *(v264 + v265);
    if ((v273 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v274 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v274);
      *(v264 + v265) = v274;
    }

    v275 = v274 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
    swift_beginAccess();
    *v275 = v272;
    *(v275 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v556);

  if ((v557 & 1) == 0)
  {
    v276 = v556;
    v277 = swift_isUniquelyReferenced_nonNull_native();
    v278 = *(v264 + v265);
    if ((v277 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v278 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v278);
      *(v264 + v265) = v278;
    }

    v279 = v278 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
    swift_beginAccess();
    *v279 = v276;
    *(v279 + 8) = 0;
  }

  PowerMetricsPublisher.protobuf.getter(v269);
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v281 = *(v264 + v265);
  if ((v280 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v281 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v281);
    *(v264 + v265) = v281;
  }

  v282 = v269;
  v283 = v467;
  v284 = v468;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v282, v468, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  (*(v466 + 56))(v284, 0, 1, v283);
  v285 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v284, v281 + v285, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  swift_endAccess();
  WaterTemperatureMetricsPublisher.protobuf.getter(v268);
  v286 = swift_isUniquelyReferenced_nonNull_native();
  v287 = *(v264 + v265);
  if ((v286 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v287 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v287);
    *(v264 + v265) = v287;
  }

  v288 = v477;
  v289 = v268;
  v290 = v471;
  v291 = v472;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v289, v472, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  (*(v470 + 56))(v291, 0, 1, v290);
  v292 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v291, v287 + v292, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v556);

  v293 = v556;
  v294 = swift_isUniquelyReferenced_nonNull_native();
  v295 = *(v264 + v265);
  if ((v294 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v295 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v295);
    *(v264 + v265) = v295;
  }

  v296 = v481;
  v297 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  swift_beginAccess();
  *(v295 + v297) = v293;
  WorkoutStatePublisher.protobuf.getter(v271);
  v298 = swift_isUniquelyReferenced_nonNull_native();
  v299 = *(v264 + v265);
  if ((v298 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v299 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v299);
    *(v264 + v265) = v299;
  }

  v300 = v271;
  v301 = v475;
  v302 = v476;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v300, v476, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  (*(v474 + 56))(v302, 0, 1, v301);
  v303 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v302, v299 + v303, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  swift_endAccess();
  IntervalsMetricsPublisher.protobuf.getter(v288);
  v304 = swift_isUniquelyReferenced_nonNull_native();
  v305 = *(v264 + v265);
  if ((v304 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v305 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v305);
    *(v264 + v265) = v305;
  }

  v306 = v485;
  v307 = v288;
  v308 = v479;
  v309 = v480;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v307, v480, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  (*(v478 + 56))(v309, 0, 1, v308);
  v310 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v309, v305 + v310, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  swift_endAccess();
  MultisportMetricsPublisher.protobuf.getter(v296);
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v312 = *(v264 + v265);
  if ((v311 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v312 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v312);
    *(v264 + v265) = v312;
  }

  v313 = v493;
  v314 = v296;
  v315 = v483;
  v316 = v484;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v314, v484, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  (*(v482 + 56))(v316, 0, 1, v315);
  v317 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v316, v312 + v317, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  swift_endAccess();
  RaceInformationPublisher.protobuf.getter(v306);
  v318 = swift_isUniquelyReferenced_nonNull_native();
  v319 = *(v264 + v265);
  if ((v318 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v319 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v319);
    *(v264 + v265) = v319;
  }

  v320 = v489;
  v321 = v306;
  v322 = v487;
  v323 = v488;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v321, v488, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  (*(v486 + 56))(v323, 0, 1, v322);
  v324 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v323, v319 + v324, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  swift_endAccess();
  RacePositionStatePublisher.protobuf.getter(v320);
  v325 = swift_isUniquelyReferenced_nonNull_native();
  v326 = *(v264 + v265);
  if ((v325 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v326 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v326);
    *(v264 + v265) = v326;
  }

  v327 = v496;
  v328 = v320;
  v329 = v491;
  v330 = v492;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v328, v492, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  (*(v490 + 56))(v330, 0, 1, v329);
  v331 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v330, v326 + v331, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  swift_endAccess();
  LocationPositionPublisher.protobuf.getter(v313);
  v332 = swift_isUniquelyReferenced_nonNull_native();
  v333 = *(v264 + v265);
  if ((v332 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v333 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v333);
    *(v264 + v265) = v333;
  }

  v334 = v495;
  v335 = v522;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v313, v327, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  (*(v494 + 56))(v327, 0, 1, v334);
  v336 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v327, v333 + v336, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v554);

  if ((v555 & 1) == 0)
  {
    v337 = v554;
    v338 = swift_isUniquelyReferenced_nonNull_native();
    v339 = *(v264 + v265);
    if ((v338 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v339 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v339);
      *(v264 + v265) = v339;
    }

    v340 = v339 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
    swift_beginAccess();
    *v340 = v337;
    *(v340 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v554);

  v341 = v554;
  if (v554 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_193;
  }

  if (v554 > 0x7FFFFFFF)
  {
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v342 = swift_isUniquelyReferenced_nonNull_native();
  v343 = *(v264 + v265);
  if ((v342 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v343 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v343);
    *(v264 + v265) = v343;
  }

  v344 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  swift_beginAccess();
  *(v343 + v344) = v341;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v553);

  v345 = v553[0];
  v346 = swift_isUniquelyReferenced_nonNull_native();
  v347 = *(v264 + v265);
  if ((v346 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v347 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v347);
    *(v264 + v265) = v347;
  }

  v348 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  swift_beginAccess();
  *(v347 + v348) = v345;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v552);

  v349 = v552[0];
  v350 = swift_isUniquelyReferenced_nonNull_native();
  v351 = *(v264 + v265);
  if ((v350 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v351 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v351);
    *(v264 + v265) = v351;
  }

  v352 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  swift_beginAccess();
  *(v351 + v352) = v349;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v551);

  v353 = v551[0];
  v354 = swift_isUniquelyReferenced_nonNull_native();
  v355 = *(v264 + v265);
  if ((v354 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v355 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v355);
    *(v264 + v265) = v355;
  }

  v356 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  swift_beginAccess();
  *(v355 + v356) = v353;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v550);

  v357 = v550[0];
  v358 = swift_isUniquelyReferenced_nonNull_native();
  v359 = *(v264 + v265);
  if ((v358 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v359 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v359);
    *(v264 + v265) = v359;
  }

  v360 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  swift_beginAccess();
  *(v359 + v360) = v357;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v549);

  v361 = v549[0];
  v362 = swift_isUniquelyReferenced_nonNull_native();
  v363 = *(v264 + v265);
  if ((v362 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v363 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v363);
    *(v264 + v265) = v363;
  }

  v364 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  swift_beginAccess();
  *(v363 + v364) = v361;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v548);

  v365 = v548[0];
  v366 = swift_isUniquelyReferenced_nonNull_native();
  v367 = *(v264 + v265);
  if ((v366 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v367 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v367);
    *(v264 + v265) = v367;
  }

  v368 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  swift_beginAccess();
  *(v367 + v368) = v365;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v547);

  v369 = v547[0];
  if (v547[0] < 0xFFFFFFFF80000000)
  {
    goto LABEL_194;
  }

  if (v547[0] > 0x7FFFFFFF)
  {
    goto LABEL_195;
  }

  v370 = swift_isUniquelyReferenced_nonNull_native();
  v371 = *(v264 + v265);
  if ((v370 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v371 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v371);
    *(v264 + v265) = v371;
  }

  v372 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  swift_beginAccess();
  *(v371 + v372) = v369;
  swift_getKeyPath();
  swift_getKeyPath();
  v373 = v462;
  static Published.subscript.getter(v462);

  if ((*(v335 + 48))(v373, 1, v125) == 1)
  {
    _s10Foundation4DateVSgWOhTm_17(v373, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v374 = v463;
  }

  else
  {
    v375 = v455;
    (*(v335 + 32))(v455, v373, v125);
    Date.timeIntervalSinceReferenceDate.getter();
    v377 = v376;
    v378 = swift_isUniquelyReferenced_nonNull_native();
    v374 = v463;
    if (v378)
    {
      (*(v335 + 8))(v375, v125);
      v379 = *(v264 + v265);
    }

    else
    {
      v380 = v375;
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();

      v379 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v381);
      (*(v335 + 8))(v380, v125);

      *(v264 + v265) = v379;
    }

    v382 = v379 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
    swift_beginAccess();
    *v382 = v377;
    *(v382 + 8) = 0;
  }

  v383 = v464;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v546);

  v384 = v546[0];
  v385 = swift_isUniquelyReferenced_nonNull_native();
  v386 = *(v264 + v265);
  if ((v385 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v386 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v386);
    *(v264 + v265) = v386;
  }

  v387 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  swift_beginAccess();
  *(v386 + v387) = v384;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v545);

  v388 = v545[0];
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v390 = *(v264 + v265);
  if ((v389 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v390 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v390);
    *(v264 + v265) = v390;
  }

  v391 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  swift_beginAccess();
  *(v390 + v391) = v388;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v544);

  v392 = v544[0];
  v393 = swift_isUniquelyReferenced_nonNull_native();
  v394 = *(v264 + v265);
  if ((v393 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v394 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v394);
    *(v264 + v265) = v394;
  }

  v395 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  swift_beginAccess();
  *(v394 + v395) = v392;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v543);

  v396 = v543[0];
  v397 = swift_isUniquelyReferenced_nonNull_native();
  v398 = *(v264 + v265);
  if ((v397 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v398 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v398);
    *(v264 + v265) = v398;
  }

  v399 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  swift_beginAccess();
  *(v398 + v399) = v396;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v542);

  v400 = v542[0];
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v402 = *(v264 + v265);
  if ((v401 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v402 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v402);
    *(v264 + v265) = v402;
  }

  v403 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  swift_beginAccess();
  *(v402 + v403) = v400;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v541);

  v404 = v541[0];
  v405 = swift_isUniquelyReferenced_nonNull_native();
  v406 = *(v264 + v265);
  if ((v405 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v406 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v406);
    *(v264 + v265) = v406;
  }

  v407 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  swift_beginAccess();
  *(v406 + v407) = v404;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v540);

  v408 = v540[0];
  v409 = swift_isUniquelyReferenced_nonNull_native();
  v410 = *(v264 + v265);
  if ((v409 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v410 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v410);
    *(v264 + v265) = v410;
  }

  v411 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  swift_beginAccess();
  *(v410 + v411) = v408;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v538);

  if ((v539 & 1) == 0)
  {
    v412 = v538;
    v413 = swift_isUniquelyReferenced_nonNull_native();
    v414 = *(v264 + v265);
    if ((v413 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v414 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v414);
      *(v264 + v265) = v414;
    }

    v415 = v414 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
    swift_beginAccess();
    *v415 = v412;
    *(v415 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v538);

  if ((v539 & 1) == 0)
  {
    v416 = v538;
    v417 = swift_isUniquelyReferenced_nonNull_native();
    v418 = *(v264 + v265);
    if ((v417 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v418 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v418);
      *(v264 + v265) = v418;
    }

    v419 = v418 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
    swift_beginAccess();
    *v419 = v416;
    *(v419 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v538);

  if ((v539 & 1) == 0)
  {
    v420 = v538;
    v421 = swift_isUniquelyReferenced_nonNull_native();
    v422 = *(v264 + v265);
    if ((v421 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v422 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v422);
      *(v264 + v265) = v422;
    }

    v423 = v422 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
    swift_beginAccess();
    *v423 = v420;
    *(v423 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v538);

  if ((v539 & 1) == 0)
  {
    v424 = v538;
    v425 = swift_isUniquelyReferenced_nonNull_native();
    v426 = *(v264 + v265);
    if ((v425 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v426 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v426);
      *(v264 + v265) = v426;
    }

    v427 = v426 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
    swift_beginAccess();
    *v427 = v424;
    *(v427 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v538);

  if ((v539 & 1) == 0)
  {
    v428 = v538;
    v429 = swift_isUniquelyReferenced_nonNull_native();
    v430 = *(v264 + v265);
    if ((v429 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v430 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v430);
      *(v264 + v265) = v430;
    }

    v431 = v430 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
    swift_beginAccess();
    *v431 = v428;
    *(v431 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v538);

  if ((v539 & 1) == 0)
  {
    v432 = v538;
    v433 = swift_isUniquelyReferenced_nonNull_native();
    v434 = *(v264 + v265);
    if ((v433 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v434 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v434);
      *(v264 + v265) = v434;
    }

    v435 = v434 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
    swift_beginAccess();
    *v435 = v432;
    *(v435 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v538);

  if ((v539 & 1) == 0)
  {
    v436 = v538;
    v437 = swift_isUniquelyReferenced_nonNull_native();
    v438 = *(v264 + v265);
    if ((v437 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v438 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v438);
      *(v264 + v265) = v438;
    }

    v439 = v438 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
    swift_beginAccess();
    *v439 = v436;
    *(v439 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v538);

  if (v539)
  {
    goto LABEL_187;
  }

  v440 = v538;
  if (HIDWORD(v538))
  {
LABEL_197:
    __break(1u);
    return;
  }

  v441 = swift_isUniquelyReferenced_nonNull_native();
  v442 = *(v264 + v265);
  if ((v441 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v442 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v442);
    *(v264 + v265) = v442;
  }

  v443 = v442 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  *v443 = v440;
  *(v443 + 4) = 0;
LABEL_187:
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  static Message.with(_:)();
  v444 = swift_isUniquelyReferenced_nonNull_native();
  v445 = *(v264 + v265);
  if ((v444 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v445 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v445);
    *(v264 + v265) = v445;
  }

  v446 = v374;
  v447 = v457;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v446, v457, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  (*(v456 + 56))(v447, 0, 1, v383);
  v448 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v447, v445 + v448, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  swift_endAccess();
  v449 = v458;
  WorkoutBuddyStatePublisher.protobuf.getter(v458);
  v450 = swift_isUniquelyReferenced_nonNull_native();
  v451 = *(v264 + v265);
  if ((v450 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v451 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v451);
    *(v264 + v265) = v451;
  }

  v452 = v461;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v449, v461, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  (*(v459 + 56))(v452, 0, 1, v460);
  v453 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v452, v451 + v453, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  swift_endAccess();
}

void key path getter for GoalPublisher.goal : GoalPublisher(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for GoalPublisher.goal : GoalPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

void key path getter for GoalPublisher.progress : GoalPublisher(_DWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for GoalPublisher.progress : GoalPublisher(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(char *a1)
{
  v2 = v1;
  v617 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  v616 = *(v617 - 8);
  MEMORY[0x28223BE20](v617, v4);
  v561 = &v529 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v560 = &v529 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v615 = &v529 - v11;
  v614 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v613 = *(v614 - 8);
  MEMORY[0x28223BE20](v614, v12);
  v559 = &v529 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v564 = &v529 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v612 = &v529 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v609 = &v529 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v608 = &v529 - v25;
  v606 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  v605 = *(v606 - 8);
  MEMORY[0x28223BE20](v606, v26);
  v558 = &v529 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v557 = &v529 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v604 = &v529 - v33;
  v603 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v602 = *(v603 - 8);
  MEMORY[0x28223BE20](v603, v34);
  v556 = (&v529 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v38 = MEMORY[0x28223BE20](v36 - 8, v37);
  v555 = &v529 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v601 = &v529 - v41;
  v600 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v599 = *(v600 - 8);
  MEMORY[0x28223BE20](v600, v42);
  v554 = (&v529 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v46 = MEMORY[0x28223BE20](v44 - 8, v45);
  v552 = &v529 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v598 = &v529 - v49;
  v597 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v596 = *(v597 - 8);
  MEMORY[0x28223BE20](v597, v50);
  v551 = &v529 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v54 = MEMORY[0x28223BE20](v52 - 8, v53);
  v563 = &v529 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v56);
  v595 = &v529 - v57;
  v594 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v593 = *(v594 - 8);
  MEMORY[0x28223BE20](v594, v58);
  v550 = (&v529 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v60 - 8, v61);
  v592 = &v529 - v62;
  v63 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v590 = *(v63 - 8);
  v591 = v63;
  MEMORY[0x28223BE20](v63, v64);
  v549 = &v529 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v68 = MEMORY[0x28223BE20](v66 - 8, v67);
  v548 = &v529 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68, v70);
  v589 = &v529 - v71;
  v72 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  v587 = *(v72 - 8);
  v588 = v72;
  MEMORY[0x28223BE20](v72, v73);
  v547 = &v529 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v77 = MEMORY[0x28223BE20](v75 - 8, v76);
  v546 = &v529 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77, v79);
  v586 = &v529 - v80;
  v81 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v584 = *(v81 - 8);
  v585 = v81;
  MEMORY[0x28223BE20](v81, v82);
  v545 = &v529 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v86 = MEMORY[0x28223BE20](v84 - 8, v85);
  v544 = &v529 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86, v88);
  v583 = &v529 - v89;
  v628 = type metadata accessor for Date();
  v618 = *(v628 - 8);
  v91 = MEMORY[0x28223BE20](v628, v90);
  v625 = &v529 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91, v93);
  v624 = &v529 - v94;
  v623 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  v562 = *(v623 - 8);
  MEMORY[0x28223BE20](v623, v95);
  v626 = &v529 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v622 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  v621 = *(v622 - 8);
  MEMORY[0x28223BE20](v622, v97);
  v543 = (&v529 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v101 = MEMORY[0x28223BE20](v99 - 8, v100);
  v542 = &v529 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101, v103);
  v620 = (&v529 - v104);
  v105 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v581 = *(v105 - 8);
  v582 = v105;
  MEMORY[0x28223BE20](v105, v106);
  v541 = (&v529 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v110 = MEMORY[0x28223BE20](v108 - 8, v109);
  v540 = &v529 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110, v112);
  v580 = &v529 - v113;
  v114 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v578 = *(v114 - 8);
  v579 = v114;
  MEMORY[0x28223BE20](v114, v115);
  v539 = (&v529 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v119 = MEMORY[0x28223BE20](v117 - 8, v118);
  v538 = &v529 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119, v121);
  v577 = &v529 - v122;
  v123 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  v575 = *(v123 - 8);
  v576 = v123;
  MEMORY[0x28223BE20](v123, v124);
  v537 = (&v529 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v128 = MEMORY[0x28223BE20](v126 - 8, v127);
  v536 = &v529 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v128, v130);
  v574 = &v529 - v131;
  v132 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v572 = *(v132 - 8);
  v573 = v132;
  MEMORY[0x28223BE20](v132, v133);
  v535 = (&v529 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v137 = MEMORY[0x28223BE20](v135 - 8, v136);
  v534 = &v529 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v137, v139);
  v571 = &v529 - v140;
  v141 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v569 = *(v141 - 8);
  v570 = v141;
  MEMORY[0x28223BE20](v141, v142);
  v533 = &v529 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v146 = MEMORY[0x28223BE20](v144 - 8, v145);
  v532 = &v529 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v146, v148);
  v568 = &v529 - v149;
  v150 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  v566 = *(v150 - 8);
  v567 = v150;
  MEMORY[0x28223BE20](v150, v151);
  v531 = (&v529 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v155 = MEMORY[0x28223BE20](v153 - 8, v154);
  v530 = &v529 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v155, v157);
  v565 = &v529 - v158;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v161 = MEMORY[0x28223BE20](v159 - 8, v160);
  v163 = &v529 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v161, v164);
  v166 = &v529 - v165;
  v167 = type metadata accessor for UUID();
  v168 = *(v167 - 8);
  v170 = MEMORY[0x28223BE20](v167, v169);
  v611 = &v529 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = MEMORY[0x28223BE20](v170, v172);
  v175 = &v529 - v174;
  MEMORY[0x28223BE20](v173, v176);
  v619 = &v529 - v177;
  v178 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v553 = v2;
  v179 = *(v2 + v178);
  swift_beginAccess();
  LOBYTE(v2) = *(v179 + 16);
  v180 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
  swift_beginAccess();
  v627 = a1;
  a1[v180] = v2;
  v181 = (v179 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v182 = v181[1];
  v629 = v179;
  if (v182 >> 60 == 15)
  {
    swift_beginAccess();

    UUID.init(uuidString:)();

    if ((*(v168 + 48))(v163, 1, v167) == 1)
    {
      _s10Foundation4DateVSgWOhTm_17(v163, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v183 = type metadata accessor for Logger();
      __swift_project_value_buffer(v183, static WOLog.core);
      v184 = Logger.logObject.getter();
      v185 = static os_log_type_t.error.getter();
      v186 = os_log_type_enabled(v184, v185);
      v187 = v627;
      if (!v186)
      {
        goto LABEL_13;
      }

      v188 = swift_slowAlloc();
      *v188 = 0;
      v189 = "Unable to decode provided UUID for workoutIdentifierDeprecated, generating new UUID";
LABEL_12:
      _os_log_impl(&dword_20AEA4000, v184, v185, v189, v188, 2u);
      MEMORY[0x20F2E9420](v188, -1, -1);
LABEL_13:

      v193 = v619;
      UUID.init()();
      goto LABEL_17;
    }

    v193 = v619;
    (*(v168 + 32))(v619, v163, v167);
  }

  else
  {
    v190 = *v181;
    outlined copy of Data?(*v181, v182);
    UUID.init(woData:)(v190, v182, v166);
    if ((*(v168 + 48))(v166, 1, v167) == 1)
    {
      _s10Foundation4DateVSgWOhTm_17(v166, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v191 = type metadata accessor for Logger();
      __swift_project_value_buffer(v191, static WOLog.core);
      v184 = Logger.logObject.getter();
      v185 = static os_log_type_t.error.getter();
      v192 = os_log_type_enabled(v184, v185);
      v187 = v627;
      if (!v192)
      {
        goto LABEL_13;
      }

      v188 = swift_slowAlloc();
      *v188 = 0;
      v189 = "Unable to decode provided UUID for workoutIdentifierBytes, generating new UUID";
      goto LABEL_12;
    }

    v193 = v619;
    (*(v168 + 32))(v619, v166, v167);
  }

  v187 = v627;
LABEL_17:
  v194 = *(v168 + 16);
  v194(v175, v193, v167);
  swift_getKeyPath();
  swift_getKeyPath();
  v194(v611, v175, v167);
  v195 = v187;
  static Published.subscript.setter();
  v196 = *(v168 + 8);
  v611 = v167;
  v610 = v168 + 8;
  v607 = v196;
  v196(v175, v167);
  v197 = v629;
  swift_beginAccess();
  v198 = *(v197 + 48);
  v673 = *(v197 + 40);
  v674 = v198;
  Apple_Workout_Core_ConfigurationType.decoded.getter(&v678);
  v199 = v678;
  swift_getKeyPath();
  swift_getKeyPath();
  v677 = v199;
  v200 = v195;
  static Published.subscript.setter();
  swift_beginAccess();
  v201 = *(v197 + 49);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v673) = v201;
  v627 = v200;
  static Published.subscript.setter();
  v202 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  v203 = v565;
  _s10Foundation4DateVSgWOcTm_11(v197 + v202, v565, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v204 = v567;
  v205 = *(v566 + 48);
  v206 = v205(v203, 1, v567);
  _s10Foundation4DateVSgWOhTm_17(v203, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  if (v206 != 1)
  {
    v207 = v530;
    _s10Foundation4DateVSgWOcTm_11(v197 + v202, v530, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    if (v205(v207, 1, v204) == 1)
    {
      v208 = v531;
      *v531 = 0;
      UnknownStorage.init()();
      if (v205(v207, 1, v204) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v207, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
      }
    }

    else
    {
      v208 = v531;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v207, v531, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    }

    v209 = *v208;
    swift_getKeyPath();
    swift_getKeyPath();
    v673 = v209;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v208, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  v210 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  v211 = v568;
  _s10Foundation4DateVSgWOcTm_11(v197 + v210, v568, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v212 = v570;
  v213 = *(v569 + 48);
  v214 = v213(v211, 1, v570);
  _s10Foundation4DateVSgWOhTm_17(v211, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v215 = v214 == 1;
  v216 = v572;
  v217 = v573;
  if (!v215)
  {
    v218 = v197 + v210;
    v219 = v532;
    _s10Foundation4DateVSgWOcTm_11(v218, v532, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    if (v213(v219, 1, v212) == 1)
    {
      v220 = v533;
      *v533 = 0;
      UnknownStorage.init()();
      v221 = *(v212 + 24);
      v222 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
      (*(*(v222 - 8) + 56))(&v220[v221], 1, 1, v222);
      if (v213(v219, 1, v212) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v219, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
      }
    }

    else
    {
      v220 = v533;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v219, v533, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
    }

    Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeInto(publisher:)(*&v627[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v220, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
    v197 = v629;
  }

  v223 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  v224 = v571;
  _s10Foundation4DateVSgWOcTm_11(v197 + v223, v571, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v225 = *(v216 + 48);
  v226 = v225(v224, 1, v217);
  _s10Foundation4DateVSgWOhTm_17(v224, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v227 = v197;
  if (v226 != 1)
  {
    v228 = v197 + v223;
    v229 = v534;
    _s10Foundation4DateVSgWOcTm_11(v228, v534, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    if (v225(v229, 1, v217) == 1)
    {
      v230 = v535;
      *v535 = 0;
      *(v230 + 4) = 1;
      UnknownStorage.init()();
      v231 = v230 + v217[7];
      *v231 = 0;
      v231[8] = 1;
      v232 = v230 + v217[8];
      *v232 = 0;
      v232[8] = 1;
      v233 = v230 + v217[9];
      *v233 = 0;
      v233[8] = 1;
      v234 = v217[10];
      v235 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
      (*(*(v235 - 8) + 56))(v230 + v234, 1, 1, v235);
      if (v225(v229, 1, v217) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v229, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
      }
    }

    else
    {
      v230 = v535;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v229, v535, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
    }

    Apple_Workout_Core_HeartRateMetricsPublisher.decodeInto(publisher:)(*&v627[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v230, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  }

  v236 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  v237 = v574;
  _s10Foundation4DateVSgWOcTm_11(v227 + v236, v574, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v238 = v576;
  v239 = *(v575 + 48);
  v240 = v239(v237, 1, v576);
  _s10Foundation4DateVSgWOhTm_17(v237, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  if (v240 != 1)
  {
    v241 = v536;
    _s10Foundation4DateVSgWOcTm_11(v227 + v236, v536, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    if (v239(v241, 1, v238) == 1)
    {
      v242 = v537;
      *v537 = 0;
      v242[1] = 0;
      UnknownStorage.init()();
      if (v239(v241, 1, v238) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v241, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
      }
    }

    else
    {
      v242 = v537;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v241, v537, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
    }

    v243 = *v242;
    swift_getKeyPath();
    swift_getKeyPath();
    v673 = v243;

    static Published.subscript.setter();
    v244 = v242[1];
    swift_getKeyPath();
    swift_getKeyPath();
    v673 = v244;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v242, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  }

  v245 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  v246 = v577;
  _s10Foundation4DateVSgWOcTm_11(v227 + v245, v577, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v247 = v579;
  v248 = *(v578 + 48);
  v249 = v248(v246, 1, v579);
  _s10Foundation4DateVSgWOhTm_17(v246, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  if (v249 != 1)
  {
    v250 = v538;
    _s10Foundation4DateVSgWOcTm_11(v227 + v245, v538, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    if (v248(v250, 1, v247) == 1)
    {
      v251 = v539;
      *v539 = MEMORY[0x277D84F90];
      UnknownStorage.init()();
      if (v248(v250, 1, v247) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v250, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
      }
    }

    else
    {
      v251 = v539;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v250, v539, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
    }

    Apple_Workout_Core_PlatterPublisher.decodeInto(publisher:)(*&v627[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_platterPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v251, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  v252 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  v253 = v580;
  _s10Foundation4DateVSgWOcTm_11(v227 + v252, v580, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v254 = v582;
  v255 = *(v581 + 48);
  v256 = v255(v253, 1, v582);
  _s10Foundation4DateVSgWOhTm_17(v253, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  if (v256 != 1)
  {
    v257 = v540;
    _s10Foundation4DateVSgWOcTm_11(v227 + v252, v540, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
    if (v255(v257, 1, v254) == 1)
    {
      v258 = v541;
      *v541 = 0;
      *(v258 + 8) = 1;
      *(v258 + 3) = 0;
      UnknownStorage.init()();
      if (v255(v257, 1, v254) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v257, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
      }
    }

    else
    {
      v258 = v541;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v257, v541, type metadata accessor for Apple_Workout_Core_GoalPublisher);
    }

    v259 = *(v258 + 8);
    v673 = *v258;
    v674 = v259;
    v260 = Apple_Workout_Core_GoalType.decoded.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v676 = v260;

    static Published.subscript.setter();
    v261 = *(v258 + 3);
    swift_getKeyPath();
    swift_getKeyPath();
    LODWORD(v673) = v261;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v258, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  }

  v262 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  v263 = *(v227 + v262);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v263;
  v264 = v627;
  static Published.subscript.setter();
  v265 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  v266 = *(v227 + v265);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v266;
  v267 = v264;
  static Published.subscript.setter();
  v268 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  v269 = *(v227 + v268);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v269;
  v270 = v267;
  static Published.subscript.setter();
  v271 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  v272 = *(v227 + v271);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v272;
  v273 = v270;
  static Published.subscript.setter();
  v274 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  v275 = *(v227 + v274);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v275;
  v276 = v273;
  static Published.subscript.setter();
  v277 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  v278 = *(v227 + v277);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v278;
  v279 = v276;
  static Published.subscript.setter();
  v280 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  v281 = *(v227 + v280);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v281;
  v627 = v279;
  static Published.subscript.setter();
  v282 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  v283 = v620;
  _s10Foundation4DateVSgWOcTm_11(v227 + v282, v620, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v284 = *(v621 + 48);
  v285 = v622;
  v286 = v284(v283, 1, v622);
  _s10Foundation4DateVSgWOhTm_17(v283, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  if (v286 != 1)
  {
    v287 = v542;
    _s10Foundation4DateVSgWOcTm_11(v227 + v282, v542, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    if (v284(v287, 1, v285) == 1)
    {
      v288 = v543;
      *v543 = 0;
      UnknownStorage.init()();
      if (v284(v287, 1, v285) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v287, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
      }
    }

    else
    {
      v288 = v543;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v287, v543, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
    }

    v289 = *v288;
    swift_getKeyPath();
    swift_getKeyPath();
    v673 = v289;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v288, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  }

  v290 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain);
  swift_beginAccess();
  v291 = *v290;
  v292 = *(v290 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v291;
  v674 = (v292 & 1) != 0;
  v293 = v627;
  static Published.subscript.setter();
  v294 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation);
  swift_beginAccess();
  v295 = *v294;
  v296 = *(v294 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v295;
  v674 = (v296 & 1) != 0;
  v297 = v627;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = MEMORY[0x277D84F90];
  v627 = v627;
  static Published.subscript.setter();
  v298 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  v299 = *(v227 + v298);
  v300 = *(v299 + 16);
  if (v300)
  {
    v301 = v299 + ((*(v562 + 80) + 32) & ~*(v562 + 80));
    v622 = *(v562 + 72);
    v621 = v618 + 16;
    v620 = (v618 + 8);
    v582 = v299;

    v302 = v626;
    do
    {
      outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(v301, v302);
      v303 = v623;
      if (*(v302 + *(v623 + 28) + 8))
      {
        v304 = v624;
        Date.init(timeIntervalSinceReferenceDate:)();
        v305 = *(v302 + 4) / 100.0;
      }

      else
      {
        v304 = v624;
        Date.init(timeIntervalSinceReferenceDate:)();
        v306 = v302 + *(v303 + 32);
        v305 = 0.0;
        if ((*(v306 + 8) & 1) == 0)
        {
          v305 = *v306;
        }
      }

      v307 = *v621;
      v308 = v625;
      v309 = v628;
      (*v621)(v625, v304, v628);
      v310 = type metadata accessor for WorkoutChartDataElement(0);
      v311 = objc_allocWithZone(v310);
      v307(&v311[OBJC_IVAR___WOWorkoutChartDataElement_date], v308, v309);
      *&v311[OBJC_IVAR___WOWorkoutChartDataElement_value] = v305;
      v675.receiver = v311;
      v675.super_class = v310;
      objc_msgSendSuper2(&v675, sel_init);
      v312 = *v620;
      (*v620)(v308, v309);
      v312(v304, v309);
      swift_getKeyPath();
      swift_getKeyPath();
      v313 = static Published.subscript.modify();
      v315 = v314;
      MEMORY[0x20F2E6F30]();
      if (*((*v315 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v315 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v313(&v673, 0);

      v302 = v626;
      outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v626, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
      v301 += v622;
      --v300;
      v227 = v629;
    }

    while (v300);
  }

  v316 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v318 = *v316;
  v317 = v316[1];

  v319 = MEMORY[0x20F2E6C00](v318, v317);

  v320 = [objc_opt_self() unitFromString_];

  swift_getKeyPath();
  swift_getKeyPath();
  v672 = v320;
  v321 = v627;
  static Published.subscript.setter();
  v322 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence);
  swift_beginAccess();
  v323 = *v322;
  v324 = *(v322 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v670 = v323;
  v671 = (v324 & 1) != 0;
  v325 = v321;
  static Published.subscript.setter();
  v327 = v584;
  v326 = v585;
  v328 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence);
  swift_beginAccess();
  v329 = *v328;
  v330 = *(v328 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v627 = v321;
  v668 = v329;
  v669 = (v330 & 1) != 0;
  v331 = v321;
  static Published.subscript.setter();
  v332 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  v333 = v583;
  _s10Foundation4DateVSgWOcTm_11(v227 + v332, v583, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v334 = *(v327 + 48);
  LODWORD(v329) = v334(v333, 1, v326);
  _s10Foundation4DateVSgWOhTm_17(v333, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v215 = v329 == 1;
  v335 = v587;
  if (!v215)
  {
    v336 = v227 + v332;
    v337 = v544;
    _s10Foundation4DateVSgWOcTm_11(v336, v544, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
    if (v334(v337, 1, v326) == 1)
    {
      v338 = v326;
      v339 = v545;
      *v545 = 0;
      v340 = MEMORY[0x277D84F90];
      *(v339 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v339 + 2) = v340;
      UnknownStorage.init()();
      v341 = &v339[v338[8]];
      *v341 = 0;
      v341[8] = 1;
      v342 = &v339[v338[9]];
      *v342 = 0;
      v342[8] = 1;
      v343 = &v339[v338[10]];
      *v343 = 0;
      v343[8] = 1;
      v344 = v338[11];
      v345 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
      (*(*(v345 - 8) + 56))(&v339[v344], 1, 1, v345);
      if (v334(v337, 1, v338) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v337, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
      }
    }

    else
    {
      v339 = v545;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v337, v545, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
    }

    Apple_Workout_Core_PowerMetricsPublisher.decodeInto(publisher:)(*&v627[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v339, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  }

  v346 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  v347 = v586;
  _s10Foundation4DateVSgWOcTm_11(v227 + v346, v586, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v348 = *(v335 + 48);
  v349 = v588;
  v350 = v348(v347, 1, v588);
  _s10Foundation4DateVSgWOhTm_17(v347, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  if (v350 != 1)
  {
    v351 = v546;
    _s10Foundation4DateVSgWOcTm_11(v227 + v346, v546, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
    if (v348(v351, 1, v349) == 1)
    {
      v352 = v547;
      *v547 = 0;
      UnknownStorage.init()();
      v353 = &v352[*(v349 + 24)];
      *v353 = 0;
      v353[8] = 1;
      v354 = &v352[*(v349 + 28)];
      *v354 = 0;
      v354[8] = 1;
      v355 = v348(v351, 1, v349);
      v356 = v627;
      if (v355 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v351, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
      }
    }

    else
    {
      v352 = v547;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v351, v547, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
      v356 = v627;
    }

    Apple_Workout_Core_WaterTemperatureMetricsPublisher.decodeInto(publisher:)(*&v356[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v352, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  }

  v357 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  swift_beginAccess();
  v358 = *(v227 + v357);
  swift_getKeyPath();
  swift_getKeyPath();
  v667 = v358;
  v627 = v627;
  static Published.subscript.setter();
  v359 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  v360 = v589;
  _s10Foundation4DateVSgWOcTm_11(v227 + v359, v589, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v361 = v591;
  v362 = *(v590 + 48);
  v363 = v362(v360, 1, v591);
  _s10Foundation4DateVSgWOhTm_17(v360, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v364 = v597;
  if (v363 != 1)
  {
    v365 = v227 + v359;
    v366 = v548;
    _s10Foundation4DateVSgWOcTm_11(v365, v548, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
    if (v362(v366, 1, v361) == 1)
    {
      v367 = v549;
      UnknownStorage.init()();
      v368 = *(v361 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
      }

      *(v367 + v368) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
      v369 = v362(v366, 1, v361);

      if (v369 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v366, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
      }
    }

    else
    {
      v367 = v549;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v366, v549, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
    }

    Apple_Workout_Core_WorkoutStatePublisher.decodeInto(publisher:)(*&v627[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v367, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  v370 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  v371 = v592;
  _s10Foundation4DateVSgWOcTm_11(v227 + v370, v592, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  LODWORD(v370) = (*(v593 + 48))(v371, 1, v594);
  _s10Foundation4DateVSgWOhTm_17(v371, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  if (v370 != 1)
  {
    v372 = v550;
    Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.getter(v550);
    Apple_Workout_Core_IntervalsMetricsPublisher.decodeInto(publisher:)(*&v627[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v372, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  v373 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  v374 = v595;
  _s10Foundation4DateVSgWOcTm_11(v227 + v373, v595, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v375 = *(v596 + 48);
  v376 = v375(v374, 1, v364);
  _s10Foundation4DateVSgWOhTm_17(v374, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v215 = v376 == 1;
  v377 = v599;
  if (!v215)
  {
    v378 = v563;
    _s10Foundation4DateVSgWOcTm_11(v227 + v373, v563, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
    if (v375(v378, 1, v364) == 1)
    {
      v379 = v364;
      v380 = v551;
      UnknownStorage.init()();
      v381 = *(v379 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
      }

      *(v380 + v381) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
      v382 = v563;
      v383 = v375(v563, 1, v379);

      if (v383 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v382, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
      }
    }

    else
    {
      v380 = v551;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v378, v551, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
    }

    Apple_Workout_Core_MultiSportMetricsPublisher.decodeInto(publisher:)(*&v627[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v380, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  v384 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  v385 = v598;
  _s10Foundation4DateVSgWOcTm_11(v227 + v384, v598, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v386 = *(v377 + 48);
  v387 = v600;
  v388 = v386(v385, 1, v600);
  _s10Foundation4DateVSgWOhTm_17(v385, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v389 = v602;
  if (v388 != 1)
  {
    v390 = v552;
    _s10Foundation4DateVSgWOcTm_11(v227 + v384, v552, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
    if (v386(v390, 1, v387) == 1)
    {
      v391 = v554;
      *v554 = MEMORY[0x277D84F90];
      v391[1] = 0;
      *(v391 + 16) = 1;
      v391[3] = 0;
      v391[4] = 0;
      UnknownStorage.init()();
      if (v386(v390, 1, v387) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v390, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
      }
    }

    else
    {
      v391 = v554;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v390, v554, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
    }

    Apple_Workout_Core_RaceInformationPublisher.decodeInto(publisher:)(*&v627[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v391, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  }

  v392 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  v393 = v601;
  _s10Foundation4DateVSgWOcTm_11(v227 + v392, v601, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v394 = *(v389 + 48);
  v395 = v603;
  v396 = v394(v393, 1, v603);
  _s10Foundation4DateVSgWOhTm_17(v393, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v397 = v605;
  if (v396 != 1)
  {
    v398 = v227 + v392;
    v399 = v555;
    _s10Foundation4DateVSgWOcTm_11(v398, v555, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
    if (v394(v399, 1, v395) == 1)
    {
      v400 = v556;
      *v556 = 0;
      *(v400 + 8) = 1;
      v400[6] = 0;
      *(v400 + 1) = 0u;
      *(v400 + 2) = 0u;
      UnknownStorage.init()();
      v401 = *(v395 + 44);
      v402 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
      (*(*(v402 - 8) + 56))(v400 + v401, 1, 1, v402);
      if (v394(v399, 1, v395) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v399, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
      }
    }

    else
    {
      v400 = v556;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v399, v556, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
    }

    Apple_Workout_Core_RacePositionStatePublisher.decodeInto(publisher:)(*&v627[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v400, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  }

  v403 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  v404 = v604;
  _s10Foundation4DateVSgWOcTm_11(v227 + v403, v604, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v405 = *(v397 + 48);
  v406 = v606;
  v407 = v405(v404, 1, v606);
  _s10Foundation4DateVSgWOhTm_17(v404, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v408 = v627;
  if (v407 != 1)
  {
    v409 = v227 + v403;
    v410 = v557;
    _s10Foundation4DateVSgWOcTm_11(v409, v557, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
    if (v405(v410, 1, v406) == 1)
    {
      v411 = v558;
      v412 = MEMORY[0x277D84F90];
      *v558 = MEMORY[0x277D84F90];
      *(v411 + 1) = v412;
      UnknownStorage.init()();
      v413 = *(v406 + 28);
      v414 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
      (*(*(v414 - 8) + 56))(&v411[v413], 1, 1, v414);
      if (v405(v410, 1, v406) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v410, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
      }
    }

    else
    {
      v411 = v558;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v410, v558, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
    }

    Apple_Workout_Core_LocationPositionPublisher.decodeInto(publisher:)(*&v408[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v411, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  v415 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime);
  swift_beginAccess();
  v416 = *v415;
  v417 = *(v415 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v665 = v416;
  v666 = (v417 & 1) != 0;
  v418 = v408;
  static Published.subscript.setter();
  v419 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  swift_beginAccess();
  v420 = *(v227 + v419);
  swift_getKeyPath();
  swift_getKeyPath();
  v664 = v420;
  v421 = v408;
  static Published.subscript.setter();
  v422 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  swift_beginAccess();
  v423 = *(v227 + v422);
  swift_getKeyPath();
  swift_getKeyPath();
  v663 = v423;
  v424 = v421;
  static Published.subscript.setter();
  v425 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  swift_beginAccess();
  v426 = *(v227 + v425);
  swift_getKeyPath();
  swift_getKeyPath();
  v662 = v426;
  v427 = v424;
  static Published.subscript.setter();
  v428 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  swift_beginAccess();
  v429 = *(v227 + v428);
  swift_getKeyPath();
  swift_getKeyPath();
  v661 = v429;
  v430 = v427;
  static Published.subscript.setter();
  v431 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  swift_beginAccess();
  v432 = *(v227 + v431);
  swift_getKeyPath();
  swift_getKeyPath();
  v660 = v432;
  v433 = v430;
  static Published.subscript.setter();
  v434 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  swift_beginAccess();
  v435 = *(v227 + v434);
  swift_getKeyPath();
  swift_getKeyPath();
  v659 = v435;
  v436 = v433;
  static Published.subscript.setter();
  v437 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  swift_beginAccess();
  v438 = *(v227 + v437);
  swift_getKeyPath();
  swift_getKeyPath();
  v658 = v438;
  v439 = v436;
  static Published.subscript.setter();
  v440 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  swift_beginAccess();
  v441 = *(v227 + v440);
  swift_getKeyPath();
  swift_getKeyPath();
  v657 = v441;
  v442 = v439;
  static Published.subscript.setter();
  v443 = v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  swift_beginAccess();
  if (*(v443 + 8))
  {
    v444 = 1;
    v445 = v608;
  }

  else
  {
    v445 = v608;
    Date.init(timeIntervalSinceReferenceDate:)();
    v444 = 0;
  }

  (*(v618 + 56))(v445, v444, 1, v628);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_11(v445, v609, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v446 = v442;
  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_17(v445, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v447 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  swift_beginAccess();
  v448 = *(v227 + v447);
  swift_getKeyPath();
  swift_getKeyPath();
  v656 = v448;
  v449 = v446;
  static Published.subscript.setter();
  v450 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  swift_beginAccess();
  v451 = *(v227 + v450);
  swift_getKeyPath();
  swift_getKeyPath();
  v655 = v451;
  v452 = v449;
  static Published.subscript.setter();
  v453 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  swift_beginAccess();
  v454 = *(v227 + v453);
  swift_getKeyPath();
  swift_getKeyPath();
  v654 = v454;
  v455 = v452;
  static Published.subscript.setter();
  v456 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  swift_beginAccess();
  v457 = *(v227 + v456);
  swift_getKeyPath();
  swift_getKeyPath();
  v653 = v457;
  v458 = v455;
  static Published.subscript.setter();
  v459 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  swift_beginAccess();
  v460 = *(v227 + v459);
  swift_getKeyPath();
  swift_getKeyPath();
  v652 = v460;
  v461 = v458;
  static Published.subscript.setter();
  v462 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  swift_beginAccess();
  v463 = *(v227 + v462);
  swift_getKeyPath();
  swift_getKeyPath();
  v651 = v463;
  v464 = v461;
  static Published.subscript.setter();
  v465 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  swift_beginAccess();
  v466 = *(v227 + v465);
  swift_getKeyPath();
  swift_getKeyPath();
  v650 = v466;
  v467 = v464;
  static Published.subscript.setter();
  v468 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength);
  swift_beginAccess();
  v469 = *v468;
  v470 = *(v468 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v648 = v469;
  v649 = (v470 & 1) != 0;
  v471 = v467;
  static Published.subscript.setter();
  v472 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength);
  swift_beginAccess();
  v473 = *v472;
  v474 = *(v472 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v646 = v473;
  v647 = (v474 & 1) != 0;
  v475 = v467;
  static Published.subscript.setter();
  v476 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation);
  swift_beginAccess();
  v477 = *v476;
  v478 = *(v476 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v644 = v477;
  v645 = (v478 & 1) != 0;
  v479 = v467;
  static Published.subscript.setter();
  v480 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation);
  swift_beginAccess();
  v481 = *v480;
  v482 = *(v480 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v642 = v481;
  v643 = (v482 & 1) != 0;
  v483 = v467;
  static Published.subscript.setter();
  v484 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime);
  swift_beginAccess();
  v485 = *v484;
  v486 = *(v484 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v640 = v485;
  v641 = (v486 & 1) != 0;
  v487 = v467;
  static Published.subscript.setter();
  v488 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime);
  swift_beginAccess();
  v489 = *v488;
  v490 = *(v488 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v638 = v489;
  v639 = (v490 & 1) != 0;
  v491 = v467;
  static Published.subscript.setter();
  v492 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent);
  swift_beginAccess();
  v493 = *v492;
  v494 = *(v492 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v636 = v493;
  v637 = (v494 & 1) != 0;
  v495 = v467;
  static Published.subscript.setter();
  v496 = (v227 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount);
  swift_beginAccess();
  v497 = *(v496 + 4);
  v628 = v467;
  if (v497)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v634 = 0;
    v635 = 1;
  }

  else
  {
    v498 = *v496;
    swift_getKeyPath();
    swift_getKeyPath();
    v634 = v498;
    v635 = 0;
  }

  v499 = v467;
  static Published.subscript.setter();
  v500 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  v501 = v612;
  _s10Foundation4DateVSgWOcTm_11(v227 + v500, v612, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v502 = v227;
  v503 = *(v613 + 48);
  v504 = v614;
  v505 = v503(v501, 1, v614);
  _s10Foundation4DateVSgWOhTm_17(v501, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v506 = v616;
  if (v505 != 1)
  {
    v507 = v564;
    _s10Foundation4DateVSgWOcTm_11(v227 + v500, v564, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
    if (v503(v507, 1, v504) == 1)
    {
      v508 = v559;
      UnknownStorage.init()();
      v509 = *(v504 + 20);
      v510 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
      (*(*(v510 - 8) + 56))(v508 + v509, 1, 1, v510);
      v511 = *(v504 + 24);
      v512 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
      v513 = v508 + v511;
      v514 = v564;
      (*(*(v512 - 8) + 56))(v513, 1, 1, v512);
      v515 = v503(v514, 1, v504);
      v516 = v628;
      if (v515 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v514, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
      }
    }

    else
    {
      v508 = v559;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v507, v559, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
      v516 = v628;
    }

    Apple_Workout_Core_TrackRunningMetricsPublisher.decodeInto(publisher:)(*(v516 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_trackRunningMetricsPublisher));
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v508, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
    v502 = v629;
  }

  v517 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  v518 = v615;
  _s10Foundation4DateVSgWOcTm_11(v502 + v517, v615, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v519 = *(v506 + 48);
  v520 = v617;
  if (v519(v518, 1, v617) == 1)
  {
    v607(v619, v611);
    return _s10Foundation4DateVSgWOhTm_17(v518, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  }

  else
  {
    _s10Foundation4DateVSgWOhTm_17(v518, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    v522 = v560;
    _s10Foundation4DateVSgWOcTm_11(v502 + v517, v560, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    if (v519(v522, 1, v520) == 1)
    {
      v523 = v561;
      *v561 = 0;
      *(v523 + 1) = 0;
      v523[16] = 1;
      UnknownStorage.init()();
      v524 = v519(v522, 1, v520);
      v525 = v607;
      if (v524 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v522, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
      }
    }

    else
    {
      v523 = v561;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v522, v561, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
      v525 = v607;
    }

    v526 = *v523;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v632) = v526;

    static Published.subscript.setter();
    v527 = v523[16];
    v632 = *(v523 + 1);
    v633 = v527;
    Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.decoded.getter(&v631);
    v528 = v631;
    swift_getKeyPath();
    swift_getKeyPath();
    v630 = v528;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v523, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
    return v525(v619, v611);
  }
}

double MetricsPublisher.elevationChartUnit.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

double MetricsPublisher.splitIndex.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
  return result;
}

void MetricsPublisher.timerRemainingTime.setter(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
}

uint64_t MetricsPublisher.isFaked.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
  swift_beginAccess();
  return *(v0 + v1);
}

void MetricsPublisher.isFaked.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double MetricsPublisher.workoutIdentifier.getter@<D0>(void *a3@<X8>)
{
  return MetricsPublisher.workoutIdentifier.getter(a3);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a3);

  return result;
}

double key path getter for MetricsPublisher.workoutIdentifier : MetricsPublisher@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t key path setter for MetricsPublisher.workoutIdentifier : MetricsPublisher(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v17 - v11;
  v13 = *(v5 + 16);
  v13(&v17 - v11, a1, v4);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v13(v9, v12, v4);
  v15 = v14;
  static Published.subscript.setter();
  return (*(v5 + 8))(v12, v4);
}

uint64_t MetricsPublisher.workoutIdentifier.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1;
  static Published.subscript.setter();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*MetricsPublisher.workoutIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.workoutIdentifier.modify;
}

uint64_t key path setter for MetricsPublisher.$workoutIdentifier : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$workoutIdentifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$workoutIdentifier.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__workoutIdentifier;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$workoutIdentifier.modify;
}

double MetricsPublisher.workoutConfigurationType.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

void key path getter for MetricsPublisher.workoutConfigurationType : MetricsPublisher(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for MetricsPublisher.workoutConfigurationType : MetricsPublisher(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return result;
}

double MetricsPublisher.workoutConfigurationType.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

uint64_t (*MetricsPublisher.workoutConfigurationType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.workoutConfigurationType.modify;
}

uint64_t key path setter for MetricsPublisher.$workoutConfigurationType : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$workoutConfigurationType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$workoutConfigurationType.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__workoutConfigurationType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$workoutConfigurationType.modify;
}

uint64_t MetricsPublisher.multisportWorkoutInAutoMode.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for MetricsPublisher.multisportWorkoutInAutoMode : MetricsPublisher(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for MetricsPublisher.multisportWorkoutInAutoMode : MetricsPublisher(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return result;
}

double MetricsPublisher.multisportWorkoutInAutoMode.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

uint64_t (*MetricsPublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.multisportWorkoutInAutoMode.modify;
}

uint64_t key path setter for MetricsPublisher.$multisportWorkoutInAutoMode : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$multisportWorkoutInAutoMode.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$multisportWorkoutInAutoMode.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__multisportWorkoutInAutoMode;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$multisportWorkoutInAutoMode.modify;
}

double MetricsPublisher.videoTimeProvider.getter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double MetricsPublisher.videoTimeProvider.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double key path getter for MetricsPublisher.distance : MetricsPublisher@<D0>(double *a4@<X8>)
{
  return key path getter for MetricsPublisher.distance : MetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t key path setter for MetricsPublisher.$distance : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$distance.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$distance.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__distance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$distance.modify;
}

uint64_t (*MetricsPublisher.secondsAheadOfPacer.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.secondsAheadOfPacer.modify;
}

uint64_t key path setter for MetricsPublisher.$secondsAheadOfPacer : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$secondsAheadOfPacer.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$secondsAheadOfPacer.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__secondsAheadOfPacer;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$secondsAheadOfPacer.modify;
}

uint64_t (*MetricsPublisher.currentPace.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.currentPace.modify;
}

uint64_t key path setter for MetricsPublisher.$currentPace : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$currentPace.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentPace.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentPace.modify;
}

uint64_t (*MetricsPublisher.averagePace.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.averagePace.modify;
}

uint64_t key path setter for MetricsPublisher.$averagePace : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$averagePace.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$averagePace.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averagePace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averagePace.modify;
}

uint64_t (*MetricsPublisher.rollingPace.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.rollingPace.modify;
}

uint64_t key path setter for MetricsPublisher.$rollingPace : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$rollingPace.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$rollingPace.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__rollingPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$rollingPace.modify;
}

uint64_t (*MetricsPublisher.requiredPace.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.requiredPace.modify;
}

uint64_t key path setter for MetricsPublisher.$requiredPace : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$requiredPace.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$requiredPace.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__requiredPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$requiredPace.modify;
}

uint64_t (*MetricsPublisher.fastestPace.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.fastestPace.modify;
}

uint64_t key path setter for MetricsPublisher.$fastestPace : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$fastestPace.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$fastestPace.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__fastestPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$fastestPace.modify;
}

void key path getter for MetricsPublisher.elevationGain : MetricsPublisher(uint64_t a4@<X8>)
{
  key path getter for MetricsPublisher.elevationGain : MetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v5 = v7;
  *a4 = v6;
  *(a4 + 8) = v5;
}

uint64_t (*MetricsPublisher.elevationGain.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.elevationGain.modify;
}

uint64_t key path setter for MetricsPublisher.$elevationGain : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$elevationGain.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$elevationGain.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationGain;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$elevationGain.modify;
}

uint64_t (*MetricsPublisher.currentElevation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.currentElevation.modify;
}

uint64_t key path setter for MetricsPublisher.$currentElevation : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$currentElevation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentElevation.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentElevation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentElevation.modify;
}

uint64_t MetricsPublisher.elevationChartData.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t (*MetricsPublisher.elevationChartData.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.elevationChartData.modify;
}

uint64_t key path setter for MetricsPublisher.$elevationChartData : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$elevationChartData.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$elevationChartData.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationChartData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$elevationChartData.modify;
}

uint64_t MetricsPublisher.elevationChartUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for MetricsPublisher.elevationChartUnit : MetricsPublisher(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for MetricsPublisher.elevationChartUnit : MetricsPublisher(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  static Published.subscript.setter();
  return result;
}

uint64_t (*MetricsPublisher.elevationChartUnit.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.elevationChartUnit.modify;
}

uint64_t key path setter for MetricsPublisher.$elevationChartUnit : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMd, &_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HKUnitCGMd, &_s7Combine9PublishedVySo6HKUnitCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$elevationChartUnit.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMd, &_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HKUnitCGMd, &_s7Combine9PublishedVySo6HKUnitCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$elevationChartUnit.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMd, &_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationChartUnit;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HKUnitCGMd, &_s7Combine9PublishedVySo6HKUnitCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$elevationChartUnit.modify;
}

uint64_t (*MetricsPublisher.currentCadence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.currentCadence.modify;
}

uint64_t key path setter for MetricsPublisher.$currentCadence : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$currentCadence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentCadence.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentCadence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentCadence.modify;
}

uint64_t (*MetricsPublisher.averageCadence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.averageCadence.modify;
}

uint64_t key path setter for MetricsPublisher.$averageCadence : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$averageCadence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$averageCadence.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageCadence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averageCadence.modify;
}

uint64_t key path setter for MetricsPublisher.$flightsClimbed : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$flightsClimbed.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$flightsClimbed.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__flightsClimbed;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$flightsClimbed.modify;
}

uint64_t MetricsPublisher.currentCadence.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*MetricsPublisher.distanceGoalFinishTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.distanceGoalFinishTime.modify;
}

uint64_t key path setter for MetricsPublisher.$distanceGoalFinishTime : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$distanceGoalFinishTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$distanceGoalFinishTime.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__distanceGoalFinishTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$distanceGoalFinishTime.modify;
}

void key path getter for MetricsPublisher.segmentIndex : MetricsPublisher(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for MetricsPublisher.segmentIndex : MetricsPublisher(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return result;
}

uint64_t (*MetricsPublisher.segmentIndex.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.segmentIndex.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentIndex : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$segmentIndex.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$segmentIndex.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentIndex.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentDuration : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$segmentDuration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$segmentDuration.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentDuration.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentDistance : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$segmentDistance.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$segmentDistance.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentDistance.modify;
}

uint64_t (*MetricsPublisher.segmentPace.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.segmentPace.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentPace : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$segmentPace.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$segmentPace.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentPace.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentActiveEnergy : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$segmentActiveEnergy.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$segmentActiveEnergy.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentActiveEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentActiveEnergy.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentTotalEnergy : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$segmentTotalEnergy.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$segmentTotalEnergy.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentTotalEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentTotalEnergy.modify;
}

uint64_t (*MetricsPublisher.segmentAveragePower.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.segmentAveragePower.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentAveragePower : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$segmentAveragePower.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$segmentAveragePower.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentAveragePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentAveragePower.modify;
}

uint64_t MetricsPublisher.segmentIndex.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*MetricsPublisher.splitIndex.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.splitIndex.modify;
}

uint64_t key path setter for MetricsPublisher.$splitIndex : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$splitIndex.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$splitIndex.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitIndex.modify;
}

uint64_t (*MetricsPublisher.splitStartDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.splitStartDate.modify;
}

uint64_t key path setter for MetricsPublisher.$splitStartDate : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$splitStartDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$splitStartDate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitStartDate.modify;
}

uint64_t key path setter for MetricsPublisher.$splitDuration : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$splitDuration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$splitDuration.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitDuration.modify;
}

uint64_t key path setter for MetricsPublisher.$splitDistance : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$splitDistance.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$splitDistance.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitDistance.modify;
}

uint64_t (*MetricsPublisher.splitPace.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.splitPace.modify;
}

uint64_t key path setter for MetricsPublisher.$splitPace : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$splitPace.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$splitPace.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitPace.modify;
}

void key path setter for MetricsPublisher.distance : MetricsPublisher(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  static Published.subscript.setter();
}

uint64_t (*MetricsPublisher.splitAveragePower.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.splitAveragePower.modify;
}

uint64_t key path setter for MetricsPublisher.$splitAveragePower : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$splitAveragePower.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$splitAveragePower.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitAveragePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitAveragePower.modify;
}

uint64_t key path setter for MetricsPublisher.$timerRemainingTime : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$timerRemainingTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$timerRemainingTime.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerRemainingTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$timerRemainingTime.modify;
}

uint64_t (*MetricsPublisher.timerRemainingTimeWithOffset.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.timerRemainingTimeWithOffset.modify;
}

uint64_t key path setter for MetricsPublisher.$timerRemainingTimeWithOffset : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$timerRemainingTimeWithOffset.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$timerRemainingTimeWithOffset.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerRemainingTimeWithOffset;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$timerRemainingTimeWithOffset.modify;
}

double MetricsPublisher.currentPace.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*MetricsPublisher.timerDuration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.timerDuration.modify;
}

uint64_t key path setter for MetricsPublisher.$timerDuration : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$timerDuration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$timerDuration.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$timerDuration.modify;
}

uint64_t (*MetricsPublisher.currentStrideLength.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.currentStrideLength.modify;
}

uint64_t key path setter for MetricsPublisher.$currentStrideLength : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$currentStrideLength.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentStrideLength.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentStrideLength;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentStrideLength.modify;
}

uint64_t (*MetricsPublisher.averageStrideLength.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.averageStrideLength.modify;
}

uint64_t key path setter for MetricsPublisher.$averageStrideLength : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$averageStrideLength.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$averageStrideLength.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageStrideLength;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averageStrideLength.modify;
}

uint64_t (*MetricsPublisher.currentVerticalOscillation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.currentVerticalOscillation.modify;
}

uint64_t key path setter for MetricsPublisher.$currentVerticalOscillation : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$currentVerticalOscillation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentVerticalOscillation.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentVerticalOscillation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentVerticalOscillation.modify;
}

uint64_t (*MetricsPublisher.averageVerticalOscillation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.averageVerticalOscillation.modify;
}

uint64_t key path setter for MetricsPublisher.$averageVerticalOscillation : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$averageVerticalOscillation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$averageVerticalOscillation.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageVerticalOscillation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averageVerticalOscillation.modify;
}

uint64_t (*MetricsPublisher.currentGroundContactTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.currentGroundContactTime.modify;
}

uint64_t key path setter for MetricsPublisher.$currentGroundContactTime : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$currentGroundContactTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentGroundContactTime.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentGroundContactTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentGroundContactTime.modify;
}

uint64_t (*MetricsPublisher.averageGroundContactTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MetricsPublisher.averageGroundContactTime.modify;
}

void MetricsPublisher.segmentDuration.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for MetricsPublisher.$averageGroundContactTime : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$averageGroundContactTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$averageGroundContactTime.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageGroundContactTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averageGroundContactTime.modify;
}

uint64_t key path setter for MetricsPublisher.$descent : MetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$descent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$descent.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__descent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$descent.modify;
}

double key path setter for MetricsPublisher.elevationGain : MetricsPublisher(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  static Published.subscript.setter();
  return result;
}

uint64_t MetricsPublisher.$workoutIdentifier.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for MetricsPublisher.$workoutIdentifier : MetricsPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MetricsPublisher.$downhillRunCount : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySuSg_GMd, &_s7Combine9PublishedV9PublisherVySuSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuSgGMd, &_s7Combine9PublishedVySuSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MetricsPublisher.$downhillRunCount.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySuSg_GMd, &_s7Combine9PublishedV9PublisherVySuSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuSgGMd, &_s7Combine9PublishedVySuSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$downhillRunCount.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySuSg_GMd, &_s7Combine9PublishedV9PublisherVySuSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__downhillRunCount;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuSgGMd, &_s7Combine9PublishedVySuSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$downhillRunCount.modify;
}

void MetricsPublisher.$workoutIdentifier.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id MetricsPublisher.init()()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  v214 = *(v1 - 8);
  v215 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v213 = &v171 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  v211 = *(v4 - 8);
  v212 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v210 = &v171 - v6;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209, v7);
  v207 = &v171 - v8;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuSgGMd, &_s7Combine9PublishedVySuSgGMR);
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206, v9);
  v204 = &v171 - v10;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v201 = *(v202 - 8);
  MEMORY[0x28223BE20](v202, v11);
  v200 = &v171 - v12;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = MEMORY[0x28223BE20](v199, v13);
  v198 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v197 = &v171 - v17;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196, v18);
  v194 = &v171 - v19;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HKUnitCGMd, &_s7Combine9PublishedVySo6HKUnitCGMR);
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v20);
  v191 = &v171 - v21;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190, v22);
  v188 = &v171 - v23;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v221 = *(v218 - 8);
  MEMORY[0x28223BE20](v218, v24);
  v217 = &v171 - v25;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v225 = *(v223 - 8);
  MEMORY[0x28223BE20](v223, v26);
  v28 = &v171 - v27;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  v187 = *(v220 - 1);
  MEMORY[0x28223BE20](v220, v29);
  v186 = &v171 - v30;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v31);
  v183 = &v171 - v32;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v33);
  v180 = &v171 - v34;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v35);
  v177 = &v171 - v36;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176, v37);
  v174 = &v171 - v38;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v224 = *(v222 - 8);
  MEMORY[0x28223BE20](v222, v39);
  v219 = &v171 - v40;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMR);
  v173 = *(v203 - 1);
  MEMORY[0x28223BE20](v203, v41);
  v43 = &v171 - v42;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  v44 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v45);
  v47 = &v171 - v46;
  v48 = type metadata accessor for UUID();
  v49 = *(v48 - 8);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v53 = &v171 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v54);
  v56 = &v171 - v55;
  v0[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked] = 0;
  v57 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__workoutIdentifier;
  UUID.init()();
  (*(v49 + 16))(v53, v56, v48);
  Published.init(initialValue:)();
  (*(v49 + 8))(v56, v48);
  v58 = v0;
  (*(v44 + 32))(&v0[v57], v47, v172);
  v59 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__workoutConfigurationType;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  (*(v173 + 32))(&v58[v59], v43, v203);
  v60 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__multisportWorkoutInAutoMode;
  LOBYTE(v227) = 1;
  v61 = v219;
  Published.init(initialValue:)();
  v62 = *(v224 + 32);
  v224 += 32;
  v203 = v62;
  (v62)(&v58[v60], v61, v222);
  v63 = &v58[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_videoTimeProvider];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = v58;
  v65 = &v58[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_gymKitTimeProvider];
  *v65 = 0;
  *(v65 + 1) = 0;
  v66 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_trackRunningMetricsPublisher;
  type metadata accessor for TrackRunningMetricsPublisher(0);
  v67 = swift_allocObject();
  v68 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v227 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
  v69 = v174;
  Published.init(initialValue:)();
  (*(v175 + 32))(v67 + v68, v69, v176);
  v70 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v71 = static TrackRunningCoordinator.shared;
  v227 = static TrackRunningCoordinator.shared;
  type metadata accessor for TrackRunningCoordinator(0);
  v72 = v71;
  v73 = v177;
  Published.init(initialValue:)();
  (*(v178 + 32))(v67 + v70, v73, v179);
  *&v64[v66] = v67;
  v74 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_platterPublisher;
  type metadata accessor for PlatterPublisher(0);
  v75 = swift_allocObject();
  v76 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v227 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  v77 = v180;
  Published.init(initialValue:)();
  (*(v181 + 32))(v75 + v76, v77, v182);
  *&v64[v74] = v75;
  v78 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_goalPublisher;
  type metadata accessor for GoalPublisher(0);
  v79 = swift_allocObject();
  v80 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v227 = 0;
  type metadata accessor for _HKWorkoutGoalType(0);
  v81 = v183;
  Published.init(initialValue:)();
  (*(v184 + 32))(v79 + v80, v81, v185);
  v82 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  LODWORD(v227) = 0;
  v83 = v186;
  Published.init(initialValue:)();
  (*(v187 + 4))(v79 + v82, v83, v220);
  *&v64[v78] = v79;
  v84 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__distance;
  v227 = 0;
  Published.init(initialValue:)();
  v86 = v225 + 32;
  v85 = *(v225 + 32);
  v87 = v223;
  v85(&v64[v84], v28, v223);
  v88 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__secondsAheadOfPacer;
  v227 = 0;
  Published.init(initialValue:)();
  v85(&v64[v88], v28, v87);
  v89 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentPace;
  v227 = 0;
  Published.init(initialValue:)();
  v85(&v64[v89], v28, v87);
  v90 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averagePace;
  v227 = 0;
  Published.init(initialValue:)();
  v85(&v64[v90], v28, v87);
  v91 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__rollingPace;
  v227 = 0;
  Published.init(initialValue:)();
  v85(&v64[v91], v28, v87);
  v92 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__requiredPace;
  v227 = 0;
  Published.init(initialValue:)();
  v85(&v64[v92], v28, v87);
  v220 = v85;
  v225 = v86;
  v93 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__fastestPace;
  v227 = 0;
  Published.init(initialValue:)();
  v85(&v64[v93], v28, v87);
  v94 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationGain;
  v227 = 0;
  v228 = 1;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v185 = v28;
  v96 = v217;
  Published.init(initialValue:)();
  v97 = v221 + 32;
  v98 = *(v221 + 32);
  v99 = v218;
  v98(&v64[v94], v96, v218);
  v100 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentElevation;
  v227 = 0;
  v228 = 1;
  Published.init(initialValue:)();
  v98(&v64[v100], v96, v99);
  v101 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationChartData;
  v227 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  v102 = v188;
  Published.init(initialValue:)();
  (*(v189 + 32))(&v64[v101], v102, v190);
  v103 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationChartUnit;
  v227 = [objc_opt_self() meterUnit];
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  v104 = v191;
  Published.init(initialValue:)();
  (*(v192 + 32))(&v64[v103], v104, v193);
  v105 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentCadence;
  v227 = 0;
  v228 = 1;
  Published.init(initialValue:)();
  v98(&v64[v105], v96, v99);
  v106 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageCadence;
  v227 = 0;
  v228 = 1;
  v186 = v95;
  Published.init(initialValue:)();
  v98(&v64[v106], v96, v99);
  v221 = v97;
  v187 = v98;
  v107 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__flightsClimbed;
  v227 = 0;
  v108 = v185;
  Published.init(initialValue:)();
  v220(&v64[v107], v108, v223);
  v109 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__distanceGoalFinishTime;
  v227 = 0;
  v228 = 1;
  Published.init(initialValue:)();
  v98(&v64[v109], v96, v99);
  v110 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentIndex;
  v227 = 1;
  v111 = v194;
  Published.init(initialValue:)();
  v195 = *(v195 + 32);
  v112 = v196;
  (v195)(&v64[v110], v111, v196);
  v113 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentDuration;
  v227 = 0;
  Published.init(initialValue:)();
  v114 = v108;
  v115 = v108;
  v116 = v223;
  v117 = v64;
  v118 = v220;
  v220(&v64[v113], v114, v223);
  v119 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentDistance;
  v227 = 0;
  Published.init(initialValue:)();
  v118(&v64[v119], v115, v116);
  v120 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentPace;
  v227 = 0;
  Published.init(initialValue:)();
  v118(&v64[v120], v115, v116);
  v121 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentActiveEnergy;
  v227 = 0;
  Published.init(initialValue:)();
  v118(&v64[v121], v115, v116);
  v122 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentTotalEnergy;
  v227 = 0;
  Published.init(initialValue:)();
  v118(&v64[v122], v115, v116);
  v123 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentAveragePower;
  v227 = 0;
  Published.init(initialValue:)();
  v118(&v64[v123], v115, v116);
  v124 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitIndex;
  v227 = 1;
  Published.init(initialValue:)();
  (v195)(&v64[v124], v111, v112);
  v125 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitStartDate;
  v126 = type metadata accessor for Date();
  v127 = v197;
  (*(*(v126 - 8) + 56))(v197, 1, 1, v126);
  _s10Foundation4DateVSgWOcTm_11(v127, v198, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v128 = v200;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_17(v127, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v201 + 32))(&v64[v125], v128, v202);
  v129 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitDuration;
  v227 = 0;
  Published.init(initialValue:)();
  v130 = v116;
  v131 = v116;
  v132 = v220;
  v220(&v64[v129], v115, v131);
  v133 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitDistance;
  v227 = 0;
  Published.init(initialValue:)();
  v132(&v64[v133], v115, v130);
  v134 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitPace;
  v227 = 0;
  Published.init(initialValue:)();
  v132(&v64[v134], v115, v130);
  v135 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitAveragePower;
  v227 = 0;
  Published.init(initialValue:)();
  v132(&v64[v135], v115, v130);
  v136 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerRemainingTime;
  v227 = 0;
  Published.init(initialValue:)();
  v132(&v64[v136], v115, v130);
  v137 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerRemainingTimeWithOffset;
  v227 = 0;
  Published.init(initialValue:)();
  v132(&v64[v137], v115, v130);
  v138 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerDuration;
  v227 = 0;
  Published.init(initialValue:)();
  v132(&v64[v138], v115, v130);
  v139 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentStrideLength;
  v227 = 0;
  v228 = 1;
  v140 = v217;
  Published.init(initialValue:)();
  v141 = v218;
  v142 = v187;
  v187(&v117[v139], v140, v218);
  v143 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageStrideLength;
  v227 = 0;
  v228 = 1;
  Published.init(initialValue:)();
  v142(&v117[v143], v140, v141);
  v144 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentVerticalOscillation;
  v227 = 0;
  v228 = 1;
  Published.init(initialValue:)();
  v142(&v117[v144], v140, v141);
  v145 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageVerticalOscillation;
  v227 = 0;
  v228 = 1;
  Published.init(initialValue:)();
  v142(&v117[v145], v140, v141);
  v146 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentGroundContactTime;
  v227 = 0;
  v228 = 1;
  Published.init(initialValue:)();
  v142(&v117[v146], v140, v141);
  v147 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageGroundContactTime;
  v227 = 0;
  v228 = 1;
  Published.init(initialValue:)();
  v142(&v117[v147], v140, v141);
  v148 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__descent;
  v227 = 0;
  v228 = 1;
  Published.init(initialValue:)();
  v142(&v117[v148], v140, v141);
  v149 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__downhillRunCount;
  v227 = 0;
  v228 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSuSgMd, &_sSuSgMR);
  v150 = v204;
  Published.init(initialValue:)();
  (*(v205 + 32))(&v117[v149], v150, v206);
  type metadata accessor for ElapsedTimeMetricsPublisher(0);
  v151 = swift_allocObject();
  v152 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v227 = 0;
  Published.init(initialValue:)();
  v153 = v223;
  v132((v151 + v152), v115, v223);
  *(v151 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher] = v151;
  type metadata accessor for ActivitySummaryMetricsPublisher(0);
  v154 = swift_allocObject();
  v155 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v227 = closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary();
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKActivitySummary, 0x277CCCFB0);
  v156 = v207;
  Published.init(initialValue:)();
  (*(v208 + 32))(v154 + v155, v156, v209);
  v157 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  LOBYTE(v227) = 0;
  v158 = v219;
  Published.init(initialValue:)();
  v159 = v203;
  v203(v154 + v157, v158, v222);
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher] = v154;
  type metadata accessor for HeartRateMetricsPublisher(0);
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher] = HeartRateMetricsPublisher.init()();
  type metadata accessor for EnergyMetricsPublisher(0);
  v160 = swift_allocObject();
  v161 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v227 = 0;
  Published.init(initialValue:)();
  v132((v160 + v161), v115, v153);
  v162 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
  v227 = 0;
  Published.init(initialValue:)();
  v132((v160 + v162), v115, v153);
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher] = v160;
  type metadata accessor for LapsMetricsPublisher(0);
  v163 = swift_allocObject();
  v164 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v227 = 0;
  v165 = v210;
  Published.init(initialValue:)();
  (*(v211 + 32))(v163 + v164, v165, v212);
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_lapsMetricsPublisher] = v163;
  type metadata accessor for PowerMetricsPublisher(0);
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher] = PowerMetricsPublisher.init()();
  type metadata accessor for WaterTemperatureMetricsPublisher(0);
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher] = WaterTemperatureMetricsPublisher.init()();
  type metadata accessor for WorkoutStatePublisher(0);
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher] = WorkoutStatePublisher.init()();
  type metadata accessor for IntervalsMetricsPublisher(0);
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher] = IntervalsMetricsPublisher.init()();
  type metadata accessor for MultisportMetricsPublisher(0);
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher] = MultisportMetricsPublisher.init()();
  type metadata accessor for RaceInformationPublisher(0);
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher] = RaceInformationPublisher.init()();
  type metadata accessor for RacePositionStatePublisher(0);
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher] = RacePositionStatePublisher.init()();
  type metadata accessor for LocationPositionPublisher(0);
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher] = LocationPositionPublisher.init()();
  type metadata accessor for WorkoutBuddyStatePublisher(0);
  v166 = swift_allocObject();
  v167 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v159(v166 + v167, v158, v222);
  v168 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  LOBYTE(v227) = 3;
  v169 = v213;
  Published.init(initialValue:)();
  (*(v214 + 32))(v166 + v168, v169, v215);
  *&v117[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutBuddyStatePublisher] = v166;
  v226.receiver = v117;
  v226.super_class = ObjectType;
  return objc_msgSendSuper2(&v226, sel_init);
}

double MetricsPublisher.retrieveInfo(from:workoutVoiceAvailabilityProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v25[-1] - v7;
  v9 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  LOBYTE(v10) = v9[v10];
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v10;
  v11 = v2;
  static Published.subscript.setter();
  v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_11(&v9[v12], v8, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v13 = type metadata accessor for WorkoutPlan.Route();
  if ((*(*(v13 - 8) + 48))(v8, 1, v13))
  {
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = WorkoutPlan.Route.points.getter();
  }

  _s10Foundation4DateVSgWOhTm_17(v8, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v25[0] = v14;

  static Published.subscript.setter();
  type metadata accessor for RaceWorkoutConfiguration(0);
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = v9;
    RaceInformationPublisher.setRaceInfo(from:)(v16);
  }

  else
  {
    type metadata accessor for MultiSportWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v18 = specialized static MultisportTransitionsStore.read()();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v25);

      v19 = v25[0];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v25[0]) = v19;
      v11;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v25[0]) = v19;

      static Published.subscript.setter();
    }
  }

  v20 = LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)(0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v25[0]) = v20;

  static Published.subscript.setter();
  swift_getKeyPath();
  v25[0] = a2;
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v22 = *(a2 + v21);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v22 == 1)
  {
    HIBYTE(v24) = 0;
  }

  else
  {
    HIBYTE(v24) = 3;
  }

  static Published.subscript.setter();
  return result;
}

void MetricsPublisher.updatePlaceholderValues(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v91 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v86 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v89 = &v76 - v10;
  v92 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v83 = *(v92 - 8);
  v12 = MEMORY[0x28223BE20](v92, v11);
  v87 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v85 = &v76 - v15;
  v84 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  MEMORY[0x28223BE20](v84, v16);
  v90 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v81 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = (&v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  MEMORY[0x28223BE20](v33, v34);
  v82 = (&v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v39 = (&v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v95);

  v41 = *(v95 + 16);

  if (v41 < 3)
  {
    return;
  }

  PlatterPublisher.protobuf.getter(v39);
  v42 = v93;
  Apple_Workout_Core_PlatterPublisher.decodeInto(publisher:)(*(v93 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_platterPublisher));
  outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v39, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  swift_getKeyPath();
  swift_getKeyPath();
  v88 = v40;
  static Published.subscript.getter(&v97);

  if (v97 <= 1u)
  {
    if (!v97)
    {
      v46 = v82;
      *v82 = 0;
      *(v46 + 8) = 1;
      UnknownStorage.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v95);

      v47 = 0;
      if (v95 <= 3)
      {
        v47 = qword_20B451AD0[v95];
      }

      *v46 = v47;
      *(v46 + 8) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v95);

      v48 = v95;
      *(v46 + 12) = v95;
      v49 = *(v46 + 8);
      v95 = *v46;
      v96 = v49;
      v50 = Apple_Workout_Core_GoalType.decoded.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v94 = v50;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LODWORD(v95) = v48;

      static Published.subscript.setter();
      outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v46, type metadata accessor for Apple_Workout_Core_GoalPublisher);
      v43 = v88;
      goto LABEL_13;
    }

    v43 = v88;
    IntervalsMetricsPublisher.protobuf.getter(v32);
    Apple_Workout_Core_IntervalsMetricsPublisher.decodeInto(publisher:)(*(v42 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher));
    v44 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher;
    v45 = v32;
    goto LABEL_12;
  }

  if (v97 == 2)
  {
    v43 = v88;
    RaceInformationPublisher.protobuf.getter(v24);
    Apple_Workout_Core_RaceInformationPublisher.decodeInto(publisher:)(*(v42 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher));
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v24, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
    v51 = v81;
    RacePositionStatePublisher.protobuf.getter(v81);
    Apple_Workout_Core_RacePositionStatePublisher.decodeInto(publisher:)(*(v42 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher));
    v44 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher;
    v45 = v51;
    goto LABEL_12;
  }

  v43 = v88;
  if (v97 != 3)
  {
    MultisportMetricsPublisher.protobuf.getter(v28);
    Apple_Workout_Core_MultiSportMetricsPublisher.decodeInto(publisher:)(*(v93 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher));
    v44 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher;
    v45 = v28;
LABEL_12:
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v45, v44);
  }

LABEL_13:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v95);

  v52 = v95;
  v53 = *(v95 + 16);
  if (v53)
  {
    v54 = 0;
    v55 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher;
    v77 = (v83 + 56);
    v78 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher;
    v82 = (v83 + 48);
    v83 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher;
    v56 = v95 + 40;
    v79 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher;
    v76 = v53;
    while (1)
    {
      if (v54 >= *(v52 + 16))
      {
        __break(1u);
        return;
      }

      v57 = *(v56 - 8);
      if (v57 > 0xF)
      {
        break;
      }

      if (((1 << v57) & 0xCB00) == 0)
      {
        if (((1 << v57) & 0x3000) != 0)
        {

          v58 = v91;
          PowerMetricsPublisher.protobuf.getter(v91);
          Apple_Workout_Core_PowerMetricsPublisher.decodeInto(publisher:)(*(v93 + v55));

          v59 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher;
        }

        else
        {
          if (v57 != 10)
          {
            break;
          }

          v60 = v78;

          v58 = v86;
          HeartRateMetricsPublisher.protobuf.getter(v86);
          Apple_Workout_Core_HeartRateMetricsPublisher.decodeInto(publisher:)(*(v93 + v60));

          v59 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher;
        }

        outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v58, v59);
      }

LABEL_16:
      ++v54;
      v56 += 16;
      if (v53 == v54)
      {
        goto LABEL_32;
      }
    }

    if (v57 >= 7)
    {
      v61 = v84;
      v81 = *(v43 + v83);
      v62 = v90;
      *v90 = 0;

      UnknownStorage.init()();
      v63 = *(v61 + 24);
      v80 = *v77;
      v80(&v62[v63], 1, 1, v92);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v95);

      v64 = v95;
      v65 = v85;
      HKActivitySummary.protobuf.getter(v85);

      _s10Foundation4DateVSgWOhTm_17(&v62[v63], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v65, &v62[v63], type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      v66 = v92;
      v80(&v62[v63], 0, 1, v92);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v95);

      LODWORD(v80) = v95;
      *v62 = v95;
      v67 = *(v93 + v83);
      v68 = v89;
      _s10Foundation4DateVSgWOcTm_11(&v62[v63], v89, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
      v69 = *v82;
      v70 = (*v82)(v68, 1, v66);
      v81 = v67;
      if (v70 == 1)
      {
        v71 = v87;
        UnknownStorage.init()();
        v72 = *(v66 + 20);
        if (one-time initialization token for defaultInstance != -1)
        {
          swift_once();
          v66 = v92;
        }

        *(v71 + v72) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
        v73 = v89;
        v74 = v69(v89, 1, v66);

        v55 = v79;
        v53 = v76;
        if (v74 != 1)
        {
          _s10Foundation4DateVSgWOhTm_17(v73, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
        }
      }

      else
      {
        v71 = v87;
        _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v68, v87, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
        v55 = v79;
        v53 = v76;
      }

      v75 = Apple_Workout_Core_HKActivitySummary.decoded.getter();
      outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v71, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      swift_getKeyPath();
      swift_getKeyPath();
      v95 = v75;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v95) = v80;

      static Published.subscript.setter();

      outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v90, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
      v43 = v88;
    }

    goto LABEL_16;
  }

LABEL_32:
}

id MetricsPublisher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t UUID.woData.getter()
{
  v0 = UUID.uuid.getter();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v10 = HIBYTE(v0);
  v14 = v2 >> 8;
  v15 = v2 >> 16;
  v16 = v2 >> 24;
  v17 = HIDWORD(v2);
  v18 = v2 >> 40;
  v19 = HIWORD(v2);
  v20 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20B426280;
  *(v11 + 32) = v1;
  *(v11 + 33) = v4;
  *(v11 + 34) = v5;
  *(v11 + 35) = v6;
  *(v11 + 36) = v7;
  *(v11 + 37) = v8;
  *(v11 + 38) = v9;
  *(v11 + 39) = v10;
  *(v11 + 40) = v3;
  *(v11 + 41) = v14;
  *(v11 + 42) = v15;
  *(v11 + 43) = v16;
  *(v11 + 44) = v17;
  *(v11 + 45) = v18;
  *(v11 + 46) = v19;
  *(v11 + 47) = v20;
  v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v11);

  return v12;
}

uint64_t UUID.init(woData:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_11;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 == 16)
      {
        goto LABEL_8;
      }

LABEL_11:
      v11 = 1;
      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_11;
  }

LABEL_8:
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  UUID.init(uuid:)();
  v11 = 0;
LABEL_12:
  outlined consume of Data._Representation(v4, a2);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 56);

  return v13(a3, v11, 1, v12);
}

uint64_t MetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.protobuf.getter(v3);
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v3, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  return v4;
}

id static MetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(v2) init];
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
  }

  else
  {
    Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(v12);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v11, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  return v12;
}

objc_class *MetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized MetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance MetricsPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.protobuf.getter(v3);
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v3, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  return v4;
}

id protocol witness for static ProDatable.decodeProto(serializedData:) in conformance MetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = static MetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance MetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, objc_class **a3@<X8>)
{
  v7 = specialized MetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void Apple_Workout_Core_ConfigurationType.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 0;
  }

  *a1 = v3;
}

uint64_t outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HKUnit(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

objc_class *specialized MetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v3)
  {
    v4 = [objc_allocWithZone(v2) init];
    Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(v4);

    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  return v4;
}

uint64_t type metadata accessor for MetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for MetricsPublisher;
  if (!type metadata singleton initialization cache for MetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MetricsPublisher(uint64_t a1)
{
  type metadata accessor for Published<UUID>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<ConfigurationType>(319, &lazy cache variable for type metadata for Published<ConfigurationType>, &type metadata for ConfigurationType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<ConfigurationType>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<ConfigurationType>(319, &lazy cache variable for type metadata for Published<Double>, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          _s7Combine9PublishedVySdSgGMaTm_1(319, &lazy cache variable for type metadata for Published<Double?>, &_sSdSgMd, &_sSdSgMR);
          if (v5 <= 0x3F)
          {
            _s7Combine9PublishedVySdSgGMaTm_1(319, &lazy cache variable for type metadata for Published<[WorkoutChartDataElement]>, &_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Published<HKUnit>(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Published<ConfigurationType>(319, &lazy cache variable for type metadata for Published<Int>, MEMORY[0x277D83B88]);
                if (v8 <= 0x3F)
                {
                  _s7Combine9PublishedVySdSgGMaTm_1(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  if (v9 <= 0x3F)
                  {
                    _s7Combine9PublishedVySdSgGMaTm_1(319, &lazy cache variable for type metadata for Published<UInt?>, &_sSuSgMd, &_sSuSgMR);
                    if (v10 <= 0x3F)
                    {
                      swift_updateClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<UUID>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<UUID>)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<UUID>);
    }
  }
}

void type metadata accessor for Published<HKUnit>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<HKUnit>)
  {
    type metadata accessor for HKUnit(255, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<HKUnit>);
    }
  }
}

void type metadata accessor for Published<ConfigurationType>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7Combine9PublishedVySdSgGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s10Foundation4DateVSgWOcTm_11(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_17(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id static IntervalWorkout.supportedGoalTypes(for:activityMoveMode:)(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a1 activityMoveMode:a2];
  if (result)
  {
    v3 = result;
    specialized static IntervalWorkout.supportedGoalTypes(for:)(result);
    v5 = v4;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized static IntervalWorkout.supportedGoalTypes(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() fiui:a1 supportedGoalTypesForWorkoutSettingsManager:?];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  type metadata accessor for NSNumber();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_19:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 unsignedIntegerValue];
      if (v9 == 3)
      {
      }

      else
      {
        v10 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v12 = *(v6 + 2);
        v11 = *(v6 + 3);
        if (v12 >= v11 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v6);
        }

        *(v6 + 2) = v12 + 1;
        *&v6[8 * v12 + 32] = v10;
      }

      ++v5;
    }

    while (v4 != v5);
    goto LABEL_19;
  }

  __break(1u);
}

id ActivityPausedRingsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

NSObject *ActivityPausedRingsObserver.__allocating_init(isPaused:)(char a1)
{
  v3 = [objc_allocWithZone(v1) init];
  swift_getKeyPath();
  swift_getKeyPath();
  BYTE1(v11) = a1;
  v4 = v3;
  static Published.subscript.setter();
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.activityRings);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v11);

    *(v9 + 4) = v11;

    _os_log_impl(&dword_20AEA4000, v7, v8, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v9, 8u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  return v6;
}

NSObject *ActivityPausedRingsObserver.init(isPaused:)(char a1)
{
  v3 = [v1 init];
  swift_getKeyPath();
  swift_getKeyPath();
  BYTE1(v11) = a1;
  v4 = v3;
  static Published.subscript.setter();
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.activityRings);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v11);

    *(v9 + 4) = v11;

    _os_log_impl(&dword_20AEA4000, v7, v8, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v9, 8u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  return v6;
}

uint64_t ActivityPausedRingsObserver.isPaused.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void ActivityPausedRingsObserver.isPaused.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  BYTE1(v9) = a1;
  v3 = v1;
  static Published.subscript.setter();
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.activityRings);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v9);

    *(v8 + 4) = v9;

    _os_log_impl(&dword_20AEA4000, v6, v7, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v8, 8u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }
}

void ActivityPausedRingsObserver.isPaused.didset()
{
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.activityRings);
  v5 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v6);

    *(v4 + 4) = v6;

    _os_log_impl(&dword_20AEA4000, v2, v3, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v4, 8u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  else
  {
  }
}

void (*ActivityPausedRingsObserver.isPaused.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return ActivityPausedRingsObserver.isPaused.modify;
}

void ActivityPausedRingsObserver.isPaused.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v3 = *a1;
  static Published.subscript.setter();
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v4 = *a1;
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.activityRings);
  v6 = v4;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = *a1;
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((a1 + 9));

    *(v9 + 4) = *(a1 + 9);

    _os_log_impl(&dword_20AEA4000, oslog, v7, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v9, 8u);
    MEMORY[0x20F2E9420](v9, -1, -1);
    v10 = oslog;
  }

  else
  {

    v10 = *a1;
  }
}

uint64_t key path getter for ActivityPausedRingsObserver.$isPaused : ActivityPausedRingsObserver(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ActivityPausedRingsObserver.$isPaused : ActivityPausedRingsObserver(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t ActivityPausedRingsObserver.$isPaused.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ActivityPausedRingsObserver.$isPaused.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ActivityPausedRingsObserver.$isPaused.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___WOActivityPausedRingsObserver__isPaused;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPausedRingsObserver.$isPaused.modify;
}

void ActivityPausedRingsObserver.$isPaused.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ActivityPausedRingsObserver.State(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      type metadata accessor for NSObject();
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !v2;
}

Swift::Void __swiftcall ActivityPausedRingsObserver.beginObserving()()
{
  v1 = OBJC_IVAR___WOActivityPausedRingsObserver_state;
  if (!*(v0 + OBJC_IVAR___WOActivityPausedRingsObserver_state))
  {
    v2 = [objc_opt_self() fiui_sharedHealthStoreForCarousel];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x277D095A8]) initWithHealthStore_];

      v5 = *(v0 + v1);
      *(v0 + v1) = v4;
      v21 = v4;

      v6 = objc_opt_self();
      v7 = [v6 defaultCenter];
      v8 = objc_opt_self();
      v9 = [v8 initialPauseStateLoadedNotification];
      v10 = objc_opt_self();
      v11 = [v10 mainQueue];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = partial apply for closure #1 in ActivityPausedRingsObserver.beginObserving();
      v27 = v12;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
      v25 = &block_descriptor_93;
      v13 = _Block_copy(&aBlock);

      v14 = [v7 addObserverForName:v9 object:0 queue:v11 usingBlock:v13];
      _Block_release(v13);
      swift_unknownObjectRelease();

      v15 = [v6 defaultCenter];
      v16 = [v8 didUpdatePauseStateNotification];
      v17 = [v10 mainQueue];
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = partial apply for closure #2 in ActivityPausedRingsObserver.beginObserving();
      v27 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
      v25 = &block_descriptor_6_10;
      v19 = _Block_copy(&aBlock);

      v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
      _Block_release(v19);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in ActivityPausedRingsObserver.beginObserving()(uint64_t a1, uint64_t a2, const char *a3)
{
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.activityRings);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v6, a3, v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR___WOActivityPausedRingsObserver_state);
    if (v10)
    {
      v11 = v10;
      v12 = [v11 isPaused];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v17);

      if (v12 == LOBYTE(v17[0]))
      {
        v14 = v11;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v17[0]) = v12;
        v13 = v9;
        static Published.subscript.setter();
        v14 = v13;
        v9 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 67109120;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v17);

          *(v16 + 4) = LOBYTE(v17[0]);

          _os_log_impl(&dword_20AEA4000, v9, v15, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v16, 8u);
          MEMORY[0x20F2E9420](v16, -1, -1);
        }

        else
        {

          v11 = v9;
          v9 = v14;
        }
      }
    }
  }
}

id ActivityPausedRingsObserver.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR___WOActivityPausedRingsObserver__isPaused;
  v11 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v6], v5, v1);
  *&v0[OBJC_IVAR___WOActivityPausedRingsObserver_state] = 0;
  v7 = type metadata accessor for ActivityPausedRingsObserver(0);
  v10.receiver = v0;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ActivityPausedRingsObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPausedRingsObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ActivityPausedRingsObserver@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityPausedRingsObserver(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityPausedRingsObserver.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityPausedRingsObserver.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ActivityPausedRingsObserver.State(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for ActivityPausedRingsObserver.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t TimeBucketedData.__allocating_init(bucketDuration:maxBucketCount:startDate:)(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  TimeBucketedData.init(bucketDuration:maxBucketCount:startDate:)(a1, a2 & 1, a3, a4);
  return v8;
}

uint64_t TimeBucketedData.Bucket.deinit()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 32);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t TimeBucketedData.Bucket.__deallocating_deinit()
{
  TimeBucketedData.Bucket.deinit();

  return swift_deallocClassInstance();
}

uint64_t TimeBucketedData.init(bucketDuration:maxBucketCount:startDate:)(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v5 = v4;
  v33 = a3;
  v27 = a2;
  v28 = a1;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v11, v12);
  v13 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = type metadata accessor for OS_dispatch_queue();
  v29 = &unk_20B451C00;
  v30 = v15;
  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v10, *MEMORY[0x277D85260], v32);
  *(v4 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v4 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail) = 0;
  if (a4 <= 0.0)
  {
    v18 = "0@0:8B16";
    v19 = 0xD00000000000002FLL;
  }

  else
  {
    v16 = v27;
    v17 = v28;
    if ((v27 & 1) != 0 || v28 > 0)
    {
      *(v4 + 16) = a4;
      *(v4 + 24) = v17;
      *(v4 + 32) = v16 & 1;
      v23 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 32))(v5 + v23, v33, v24);
      return v5;
    }

    v18 = "e a positive non-zero duration.";
    v19 = 0xD00000000000003ELL;
  }

  v20 = v18 | 0x8000000000000000;
  lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors();
  swift_allocError();
  *v21 = v19;
  v21[1] = v20;
  swift_willThrow();
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 8))(v33, v22);

  type metadata accessor for TimeBucketedData(0);
  swift_deallocPartialClassInstance();
  return v5;
}

unint64_t lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors()
{
  result = lazy protocol witness table cache variable for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors;
  if (!lazy protocol witness table cache variable for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors);
  }

  return result;
}

uint64_t type metadata accessor for TimeBucketedData(uint64_t a1)
{
  result = type metadata singleton initialization cache for TimeBucketedData;
  if (!type metadata singleton initialization cache for TimeBucketedData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double TimeBucketedData.sum(since:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 40);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D851F0], v3);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = (*(v4 + 8))(v7, v3);
  if (v10)
  {
    v23 = 0.0;
    MEMORY[0x28223BE20](v11, v12);
    *(&v22 - 4) = &v23;
    *(&v22 - 3) = v1;
    *(&v22 - 2) = a1;
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
    swift_once();
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.dataLink);
    v14 = v9;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_20AEA4000, v15, v16, "Unable to calculate sum: %@", v17, 0xCu);
      _sSo8NSObjectCSgWOhTm_20(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    else
    {
    }
  }

  return v23;
}

void closure #1 in TimeBucketedData.sum(since:)(double *a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v56 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v54 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v54 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v55 = &v54 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v54 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v59 = &v54 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = (&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(a2 + 40);
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x277D85200], v22);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v26, v22);
  if (v29)
  {
    outlined init with copy of Date?(v57, v7);
    v30 = *(v9 + 48);
    if (v30(v7, 1, v8) == 1)
    {
      v31 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
      swift_beginAccess();
      v32 = a2 + v31;
      v33 = v59;
      (*(v9 + 16))(v59, v32, v8);
      v34 = v33;
      if (v30(v7, 1, v8) != 1)
      {
        _sSo8NSObjectCSgWOhTm_20(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      v34 = v59;
      (*(v9 + 32))(v59, v7, v8);
    }

    v35 = *(a2 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);
    v36 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
    swift_beginAccess();
    (*(v9 + 16))(v19, a2 + v36, v8);
    v37 = *(a2 + 16);

    v38 = v58;
    specialized static TimeBucketedData.indexForDate(_:startDate:duration:)(v34, v19, v37);
    if (v38)
    {

      v40 = *(v9 + 8);
      v40(v19, v8);
      v40(v34, v8);
      return;
    }

    v41 = v39;
    v42 = v19;
    v43 = *(v9 + 8);
    v43(v42, v8);
    v44 = 0.0;
    if (v35)
    {
      while (1)
      {
        v45 = *(v35 + 24);
        if (v41 >= v45)
        {
          break;
        }

        v44 = v44 + *(v35 + 16);
        v46 = *(v35 + 32);

        v35 = v46;
        if (!v46)
        {
          goto LABEL_11;
        }
      }

      if (v45 == v41)
      {

        v47 = v54;
        TimeBucketedData._queueDateForIndex(_:)(v41, v54);

        v48 = v55;
        (*(v9 + 32))(v55, v47, v8);
        v49 = v59;
        Date.timeIntervalSince(_:)();
        v51 = v50;
        v43(v48, v8);
        v43(v49, v8);
        v52 = 1.0 - v51 / v37;
        v53 = *(v35 + 16);

        *v56 = v44 + v52 * v53;
        return;
      }

      v43(v59, v8);
    }

    else
    {
LABEL_11:
      v43(v59, v8);
    }

    *v56 = v44;
    return;
  }

  __break(1u);

  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000039, 0x800000020B46E910, "WorkoutCore/TimeBucketedData.swift", 34, 2, 92, 0);
  __break(1u);
}

void *TimeBucketedData.average(since:until:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 40);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D851F0], v5);
  v10;
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    MEMORY[0x28223BE20](result, v13);
    *(&v14 - 4) = a1;
    *(&v14 - 3) = v2;
    *(&v14 - 2) = a2;
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TimeBucketedData.average(since:until:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v98 = a3;
  v89 = a4;
  v6 = type metadata accessor for DispatchPredicate();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v97 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v96 = &v84 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v84 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v87 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v88 = &v84 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v91 = &v84 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v95 = &v84 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v84 - v35;
  outlined init with copy of Date?(a1, v19);
  v37 = *(v21 + 48);
  v38 = v37(v19, 1, v20);
  v99 = a2;
  if (v38 == 1)
  {
    v39 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
    swift_beginAccess();
    (*(v21 + 16))(v36, a2 + v39, v20);
    if (v37(v19, 1, v20) != 1)
    {
      _sSo8NSObjectCSgWOhTm_20(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v21 + 32))(v36, v19, v20);
  }

  if (static Date.> infix(_:_:)())
  {
    v85 = v37;
    v40 = *(v21 + 16);
    v41 = v36;
    v42 = v96;
    v86 = v41;
    v90 = v40;
    (v40)(v96);
    (*(v21 + 56))(v42, 0, 1, v20);
    v43 = *(v99 + 40);
    v44 = v9;
    *v9 = v43;
    v45 = v93;
    v46 = v94;
    (*(v93 + 104))(v44, *MEMORY[0x277D85200], v94);
    v47 = v43;
    LOBYTE(v43) = _dispatchPreconditionTest(_:)();
    v49 = *(v45 + 8);
    v48 = (v45 + 8);
    v49(v44, v46);
    if (v43)
    {
      v50 = v97;
      outlined init with copy of Date?(v42, v97);
      v51 = v85;
      if (v85(v50, 1, v20) == 1)
      {
        v52 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
        v53 = v99;
        swift_beginAccess();
        v54 = v53 + v52;
        v55 = v97;
        v56 = v95;
        v90(v95, v54, v20);
        v57 = v56;
        if (v51(v55, 1, v20) != 1)
        {
          _sSo8NSObjectCSgWOhTm_20(v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }
      }

      else
      {
        v57 = v95;
        (*(v21 + 32))(v95, v50, v20);
      }

      v60 = v99;
      v61 = *(v99 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);
      v62 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
      swift_beginAccess();
      v63 = v60 + v62;
      v64 = v91;
      v90(v91, v63, v20);
      v65 = *(v60 + 16);

      v66 = v92;
      specialized static TimeBucketedData.indexForDate(_:startDate:duration:)(v57, v64, v65);
      if (v66)
      {

        v68 = *(v21 + 8);
        v68(v64, v20);
        v68(v57, v20);
        _sSo8NSObjectCSgWOhTm_20(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v68)(v86, v20);
      }

      else
      {
        v69 = v67;
        v70 = *(v21 + 8);
        v70(v64, v20);
        v71 = 0.0;
        if (v61)
        {
          while (1)
          {
            v72 = *(v61 + 24);
            if (v69 >= v72)
            {
              break;
            }

            v71 = v71 + *(v61 + 16);
            v73 = *(v61 + 32);

            v61 = v73;
            if (!v73)
            {
              goto LABEL_17;
            }
          }

          if (v72 == v69)
          {

            v77 = v87;
            TimeBucketedData._queueDateForIndex(_:)(v69, v87);

            v78 = v88;
            (*(v21 + 32))(v88, v77, v20);
            v79 = v95;
            Date.timeIntervalSince(_:)();
            v81 = v80;
            v70(v78, v20);
            v70(v79, v20);
            v82 = 1.0 - v81 / v65;
            v83 = *(v61 + 16);

            v71 = v71 + v82 * v83;
          }

          else
          {
            v70(v95, v20);
          }
        }

        else
        {
LABEL_17:
          v70(v95, v20);
        }

        _sSo8NSObjectCSgWOhTm_20(v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v74 = v86;
        Date.timeIntervalSince(_:)();
        v76 = v75;
        result = (v70)(v74, v20);
        *v89 = v71 / v76;
      }
    }

    else
    {
      __break(1u);

      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000039, 0x800000020B46E910, "WorkoutCore/TimeBucketedData.swift", 34, 2, 92, 0);
      __break(1u);
    }
  }

  else
  {
    lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors();
    swift_allocError();
    *v58 = 0xD00000000000002FLL;
    v58[1] = 0x800000020B46E8B0;
    swift_willThrow();
    return (*(v21 + 8))(v36, v20);
  }

  return result;
}

void TimeBucketedData.reset(newStartDate:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 40);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D851F0], v7);
  v19 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  (*(v4 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v4 + 32))(v14 + v13, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in TimeBucketedData.reset(newStartDate:);
  *(v15 + 24) = v14;
  aBlock[4] = _sIg_Ieg_TRTA_8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_94;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v19, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t closure #1 in TimeBucketedData.reset(newStartDate:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail) = 0;

  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t TimeBucketedData._queueDateForIndex(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 40);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors();
      swift_allocError();
      *v18 = 0xD00000000000001CLL;
      v18[1] = 0x800000020B46E890;
      return swift_willThrow();
    }

    else
    {
      v17 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
      swift_beginAccess();
      (*(v5 + 16))(v8, v2 + v17, v4);
      Date.addingTimeInterval(_:)();
      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TimeBucketedData.addSample(_:date:)(uint64_t a1, double a2)
{
  v27 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + 40);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D851F0], v14);
  v26 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = a2;
    (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    aBlock[4] = partial apply for closure #1 in TimeBucketedData.addSample(_:date:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_12_5;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v24 = v29;
    v25 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v24, v23);
    _Block_release(v23);
    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v9, v30);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in TimeBucketedData.addSample(_:date:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    TimeBucketedData._queueAddSample(_:date:)(a2, a3);
  }
}

void TimeBucketedData._queueAddSample(_:date:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 40);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v17 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
    swift_beginAccess();
    (*(v6 + 16))(v9, v2 + v17, v5);
    v18 = v29;
    specialized static TimeBucketedData.indexForDate(_:startDate:duration:)(a1, v9, *(v2 + 16));
    if (v18)
    {
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v20 = v19;
      (*(v6 + 8))(v9, v5);
      v21 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail;
      v22 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);
      if (v22)
      {
        v23 = 0;
        while (1)
        {
          v24 = v22;
          v25 = *(v22 + 24);
          if (v20 >= v25)
          {
            break;
          }

          v22 = *(v24 + 32);
          v23 = v24;
          if (!v22)
          {
            goto LABEL_10;
          }
        }

        if (v25 == v20)
        {
          *(v24 + 16) = *(v24 + 16) + a2;
        }

        else
        {
          type metadata accessor for TimeBucketedData.Bucket();
          v27 = swift_allocObject();
          *(v27 + 16) = a2;
          *(v27 + 24) = v20;
          *(v27 + 32) = v24;
          if (v23)
          {
            *(v23 + 32) = v27;
          }

          else
          {
            *(v2 + v21) = v27;
          }

          swift_retain_n();
        }
      }

      else
      {
        v24 = 0;
LABEL_10:
        type metadata accessor for TimeBucketedData.Bucket();
        v26 = swift_allocObject();
        *(v26 + 16) = a2;
        *(v26 + 24) = v20;
        *(v26 + 32) = 0;
        if (v24)
        {
          *(v24 + 32) = v26;
        }

        else
        {
          *(v2 + v21) = v26;
        }
      }

      TimeBucketedData._queueCullBucketsAsNecessary()();
    }
  }

  else
  {
    __break(1u);
  }
}

void TimeBucketedData._queueCullBucketsAsNecessary()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 40);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if ((*(v0 + 32) & 1) == 0)
  {
    v8 = *(v0 + 24);
    v9 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);

    if (v9)
    {
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        if (i + 1 >= v8)
        {
          *(v9 + 32) = 0;
        }

        v11 = *(v9 + 32);

        v9 = v11;
        if (!v11)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }
}

uint64_t TimeBucketedData.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TimeBucketedData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in TimeBucketedData.reset(newStartDate:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in TimeBucketedData.reset(newStartDate:)(v2, v3);
}

void partial apply for closure #1 in TimeBucketedData.addSample(_:date:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  closure #1 in TimeBucketedData.addSample(_:date:)(v2, v4, v3);
}

uint64_t type metadata completion function for TimeBucketedData(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for TimeBucketedData.TimeBucketedDataErrors(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TimeBucketedData.TimeBucketedDataErrors(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized static TimeBucketedData.indexForDate(_:startDate:duration:)(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for Date();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_8(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors();
    swift_allocError();
    *v4 = 0xD000000000000038;
    v4[1] = 0x800000020B46E850;
    swift_willThrow();
    return;
  }

  Date.timeIntervalSince(_:)();
  v6 = floor(v5 / a3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
  }
}

uint64_t Measurement<>.hkQuantity.getter()
{
  return MEMORY[0x282136770]();
}

{
  return MEMORY[0x282136778]();
}

{
  return MEMORY[0x282136780]();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t type metadata accessor for WeatherCondition()
{
  return MEMORY[0x282135680]();
}

{
  return MEMORY[0x282160B88]();
}

uint64_t static WorkoutAlert<>.power(_:unit:metric:)()
{
  return MEMORY[0x282136940]();
}

{
  return MEMORY[0x282136968]();
}

uint64_t static WorkoutAlert<>.speed(_:unit:metric:)()
{
  return MEMORY[0x282136948]();
}

{
  return MEMORY[0x282136970]();
}

uint64_t static WorkoutAlert<>.cadence(_:unit:)()
{
  return MEMORY[0x282136950]();
}

{
  return MEMORY[0x282136978]();
}

uint64_t static PortableEnum<>.== infix(_:_:)()
{
  return MEMORY[0x2821B05D8]();
}

{
  return MEMORY[0x2821B05E0]();
}

uint64_t type metadata accessor for Artwork()
{
  return MEMORY[0x2821B4880]();
}

{
  return MEMORY[0x282124F10]();
}

Swift::String __swiftcall MediaSuggesterService.hello()()
{
  v0 = MEMORY[0x28217DF08]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)()
{
  return MEMORY[0x28217E248]();
}

{
  return MEMORY[0x28217E250]();
}

uint64_t dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)()
{
  return MEMORY[0x28217E290]();
}

{
  return MEMORY[0x28217E298]();
}

uint64_t dispatch thunk of Decoder.decodeSingularInt32Field(value:)()
{
  return MEMORY[0x28217E2E0]();
}

{
  return MEMORY[0x28217E2E8]();
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)()
{
  return MEMORY[0x28217E320]();
}

{
  return MEMORY[0x28217E328]();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return MEMORY[0x28217E338]();
}

{
  return MEMORY[0x28217E340]();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)()
{
  return MEMORY[0x28217E348]();
}

{
  return MEMORY[0x28217E350]();
}

uint64_t dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)()
{
  return MEMORY[0x28217E468]();
}

{
  return MEMORY[0x28217E470]();
}

Swift::String __swiftcall BinaryFloatingPoint.formatted()()
{
  v0 = MEMORY[0x28211E6C8]();
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

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v0 = MEMORY[0x282169278]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC150]();
}

{
  return MEMORY[0x2821FC158]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1D0]();
}

{
  return MEMORY[0x2821FC1D8]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD998]();
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

{
  return MEMORY[0x2821FDA10]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA20]();
}

{
  return MEMORY[0x2821FDA40]();
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

{
  return MEMORY[0x2821FDB50]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB60]();
}

{
  return MEMORY[0x2821FDB80]();
}