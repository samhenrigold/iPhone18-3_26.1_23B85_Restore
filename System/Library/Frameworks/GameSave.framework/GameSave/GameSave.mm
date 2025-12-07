uint64_t getEnumTagSinglePayload for GameSaveFF(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GameSaveFF(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type GameSaveFF and conformance GameSaveFF()
{
  result = lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF;
  if (!lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF;
  if (!lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GameSaveFF()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameSaveFF(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](0);
  return Hasher._finalize()();
}

BOOL _sSo35NSFileManagerItemReplacementOptionsVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EE6B6E0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSProgressUserInfoKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x23EE6B770](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSProgressUserInfoKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSProgressUserInfoKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSProgressUserInfoKey(void *a1, uint64_t *a2)
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

uint64_t _sSo21NSProgressUserInfoKeyaSYSCSY8rawValue03RawF0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSProgressUserInfoKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey, &protocol conformance descriptor for NSProgressUserInfoKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey, &protocol conformance descriptor for NSProgressUserInfoKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSURLResourceKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x23EE6B6E0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, &protocol conformance descriptor for NSKeyValueChangeKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, &protocol conformance descriptor for NSKeyValueChangeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void type metadata accessor for CFErrorRef(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static EntitlementsUtils.getEntitledContainerIdentifiers(for:logger:)(__SecTask *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v2 = MEMORY[0x23EE6B6E0](0xD000000000000023, 0x800000023898BCF0);
  v3 = SecTaskCopyValueForEntitlement(a1, v2, error);

  if (v3)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v17[0] = 0;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    swift_unknownObjectRelease();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238952000, v13, v14, "Couldn't convert cloudServicesArray to Array of Strings", v15, 2u);
      MEMORY[0x23EE6C260](v15, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = error[0];
    v5 = error[0];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000023898BCF0, v17);
      *(v8 + 12) = 2082;
      v17[2] = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CFErrorRefaSgMd, "j#");
      v10 = Optional.debugDescription.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v17);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_238952000, v6, v7, "Couldn't lookup %s: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE6C260](v9, -1, -1);
      MEMORY[0x23EE6C260](v8, -1, -1);
    }

    else
    {
    }
  }

  return 0;
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

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GameSaveSyncedDirectoryError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameSaveSyncedDirectoryError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](v2);
  return Hasher._finalize()();
}

id RemoteProgressObserver.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_remoteProgress];
  v2 = v0;
  v3 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898C250);
  [v1 removeObserver:v2 forKeyPath:v3];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for RemoteProgressObserver();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id MyObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MyObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GameSaveSyncedDirectory.State.description.getter()
{
  v1 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GameSaveSyncedDirectory.State(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined destroy of GameSaveSyncedDirectory.State(v3, type metadata accessor for GameSaveSyncedDirectory.State);
        return 0x656E696C66666FLL;
      }

      else
      {
        outlined destroy of GameSaveSyncedDirectory.State(v3, type metadata accessor for GameSaveSyncedDirectory.State);
        return 0x6C61636F6CLL;
      }
    }

    else
    {
      outlined destroy of GameSaveSyncedDirectory.State(v3, type metadata accessor for GameSaveSyncedDirectory.State);
      return 0x7964616572;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0x676E69636E7973;
    }

    else
    {
      return 0x6465736F6C63;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v3, type metadata accessor for GameSaveSyncedDirectory.State);
    return 0x7463696C666E6F63;
  }

  else
  {
    outlined destroy of GameSaveSyncedDirectory.State(v3, type metadata accessor for GameSaveSyncedDirectory.State);
    return 0x726F727265;
  }
}

BOOL GameSaveSyncedDirectory.State.hasSameStateAs(_:)(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v30 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v30 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v30 - v25;
  outlined init with copy of GameSaveSyncedDirectory.State(v2, &v30 - v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of GameSaveSyncedDirectory.State(v31, v21);
        v28 = swift_getEnumCaseMultiPayload() == 1;
        outlined destroy of GameSaveSyncedDirectory.State(v21, type metadata accessor for GameSaveSyncedDirectory.State);
      }

      else
      {
        outlined init with copy of GameSaveSyncedDirectory.State(v31, v18);
        v28 = swift_getEnumCaseMultiPayload() == 2;
        outlined destroy of GameSaveSyncedDirectory.State(v18, type metadata accessor for GameSaveSyncedDirectory.State);
      }
    }

    else
    {
      outlined init with copy of GameSaveSyncedDirectory.State(v31, v24);
      v28 = swift_getEnumCaseMultiPayload() == 0;
      outlined destroy of GameSaveSyncedDirectory.State(v24, type metadata accessor for GameSaveSyncedDirectory.State);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      outlined init with copy of GameSaveSyncedDirectory.State(v31, v15);
      v28 = swift_getEnumCaseMultiPayload() == 5;
      v26 = v15;
    }

    else
    {
      outlined init with copy of GameSaveSyncedDirectory.State(v31, v6);
      v28 = swift_getEnumCaseMultiPayload() == 6;
      v26 = v6;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v26, type metadata accessor for GameSaveSyncedDirectory.State);
    outlined init with copy of GameSaveSyncedDirectory.State(v31, v12);
    v28 = swift_getEnumCaseMultiPayload() == 3;
    v26 = v12;
  }

  else
  {
    outlined destroy of GameSaveSyncedDirectory.State(v26, type metadata accessor for GameSaveSyncedDirectory.State);
    outlined init with copy of GameSaveSyncedDirectory.State(v31, v9);
    v28 = swift_getEnumCaseMultiPayload() == 4;
    v26 = v9;
  }

  outlined destroy of GameSaveSyncedDirectory.State(v26, type metadata accessor for GameSaveSyncedDirectory.State);
  return v28;
}

uint64_t GameSaveSyncedDirectory.Version.localizedNameOfSavingComputer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);

  return v1;
}

uint64_t key path setter for GameSaveSyncedDirectory.Version.modifiedDate : GameSaveSyncedDirectory.Version(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  return (*(v5 + 40))(*a2 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v7, v4);
}

uint64_t GameSaveSyncedDirectory.Version.modifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GameSaveSyncedDirectory.Version.modifiedDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GameSaveSyncedDirectory.Version.url.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_version);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    static UTType.directory.getter();
    URL.appendingPathComponent(_:conformingTo:)();

    v3 = v11;
LABEL_5:
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v3, v8);
  }

  outlined init with copy of URL?(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = (*(v9 + 48))(v3, 1, v8);
  if (result != 1)
  {
    static UTType.directory.getter();
    URL.appendingPathComponent(_:conformingTo:)();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t GameSaveSyncedDirectory.Version.description.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(98);
  MEMORY[0x23EE6B750](0x203A6C7275, 0xE500000000000000);
  GameSaveSyncedDirectory.Version.url.getter();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EE6B750](v9);

  (*(v6 + 8))(v8, v5);
  MEMORY[0x23EE6B750](0xD000000000000011, 0x800000023898BD60);
  if (*(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x23EE6B750](v10, v11);

  MEMORY[0x23EE6B750](0xD000000000000021, 0x800000023898BD80);
  v12 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
  v13 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer + 8);

  MEMORY[0x23EE6B750](v12, v13);

  MEMORY[0x23EE6B750](0xD000000000000010, 0x800000023898BDB0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v1);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EE6B750](v14);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x23EE6B750](0xD000000000000011, 0x800000023898BDD0);
  v15 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol);
  v16 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol + 8);

  MEMORY[0x23EE6B750](v15, v16);

  return v18[0];
}

char *GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(uint64_t a1, void *a2, uint64_t countAndFlagsBits, void *a4, unint64_t a5)
{
  v72 = a5;
  v69 = a4;
  v9 = type metadata accessor for UTType();
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v60 - v14;
  v70 = type metadata accessor for Date();
  v15 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_version;
  v19 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v5 + v19, 1, 1, v20);
  v65 = v21;
  v66 = v20;
  (*(v21 + 16))(v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL, a1, v20);
  *(v5 + v18) = a2;
  v22 = a2;
  *(v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion) = 0;
  v68 = a1;
  if (a2 && (v23 = a2, (v24 = [v23 localizedNameOfSavingComputer]) != 0))
  {
    v25 = v24;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v26;

    v28 = (v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
    *v28 = countAndFlagsBits;
    v28[1] = object;
    v29 = v17;
    v31 = v70;
    v30 = v71;
  }

  else
  {
    v30 = v71;
    v29 = v17;
    if (v69)
    {
      object = v69;
      v31 = v70;
    }

    else
    {
      v31 = v70;
      if (one-time initialization token for bundleForGameSave != -1)
      {
        swift_once();
      }

      v73._object = 0x800000023898C2B0;
      v32._countAndFlagsBits = 0x7665442073696854;
      v32._object = 0xEB00000000656369;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v73._countAndFlagsBits = 0xD00000000000003DLL;
      v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, countAndFlagsBits, static GameSaveSyncedDirectory.bundleForGameSave, v33, v73);
      countAndFlagsBits = v34._countAndFlagsBits;
      object = v34._object;
    }

    v35 = (v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
    *v35 = countAndFlagsBits;
    v35[1] = object;
    if (!v22)
    {
      (*(v15 + 56))(v30, 1, 1, v31);

      goto LABEL_17;
    }

    v23 = v22;
  }

  v36 = [v23 modificationDate];
  v37 = v64;
  if (v36)
  {
    v38 = v36;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v15 + 56))(v37, 0, 1, v31);
  }

  else
  {
    (*(v15 + 56))(v64, 1, 1, v31);
  }

  outlined init with take of URL?(v37, v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v15 + 48))(v30, 1, v31) != 1)
  {
    (*(v15 + 32))(v29, v30, v31);
    goto LABEL_19;
  }

LABEL_17:
  Date.init()();
  if ((*(v15 + 48))(v30, 1, v31) != 1)
  {
    outlined destroy of URL?(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_19:
  (*(v15 + 32))(v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v29, v31);
  v39 = v72;
  v67 = v22;
  if (v72 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x23EE6BAE0](v59))
  {
    v71 = v5;
    v5 = v72;
    if (!i)
    {
      break;
    }

    v41 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x23EE6BA40](v41, v5);
      }

      else
      {
        if (v41 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v42 = *(v5 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v45 = *&v42[OBJC_IVAR___DeviceInfo_name] == countAndFlagsBits && *&v42[OBJC_IVAR___DeviceInfo_name + 8] == object;
      if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        (*(v65 + 8))(v68, v66);

        v54 = *&v43[OBJC_IVAR___DeviceInfo_symbol];
        v56 = *&v43[OBJC_IVAR___DeviceInfo_symbol + 8];

        v51 = v71;
        goto LABEL_37;
      }

      ++v41;
      if (v44 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    if (v39 < 0)
    {
      v59 = v39;
    }

    else
    {
      v59 = v39 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_35:

  v46 = v61;
  static UTType._currentDevice.getter();
  v47 = UTType.identifier.getter();
  v49 = v48;
  (*(v62 + 8))(v46, v63);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for ISSymbol, 0x277D1B1D8);
  v50 = @nonobjc ISSymbol.__allocating_init(forTypeIdentifier:)(v47, v49);
  v51 = v71;
  v52 = v50;
  v53 = [v50 name];

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  (*(v65 + 8))(v68, v66);
LABEL_37:
  v57 = &v51[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol];
  *v57 = v54;
  v57[1] = v56;
  return v51;
}

id @nonobjc ISSymbol.__allocating_init(forTypeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x23EE6B6E0](a1);

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

void GameSaveSyncedDirectory.Version.resolve()()
{
  v2 = v1;
  v3 = v0;
  v102[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for UTType();
  v96 = *(v4 - 1);
  v97 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v98 = (&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = &v94 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v101 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v100 = &v94 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v94 - v18;
  outlined init with copy of URL?(v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v20 = (*(v13 + 48))(v11, 1, v12);
  v21 = &unk_27DF44000;
  v99 = v3;
  if (v20 != 1)
  {
    v32 = *(v13 + 32);
    v95 = v19;
    v32(v19, v11, v12);
    if (one-time initialization token for common == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

  v97 = v1;
  outlined destroy of URL?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion) & 1) != 0 || (v22 = *(v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_version)) == 0)
  {
    while (1)
    {
      while (1)
      {
LABEL_17:
        v2 = objc_opt_self();
        v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL;
        v6 = v99;
        v73 = v101;
        v98 = *(v13 + 16);
        v98(v101, &v99[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL], v12);
        URL._bridgeToObjectiveC()(v74);
        v76 = v75;
        v96 = *(v13 + 8);
        (v96)(v73, v12);
        v102[0] = 0;
        v100 = v2;
        v77 = [v2 removeOtherVersionsOfItemAtURL:v76 error:v102];

        v78 = v102[0];
        if (!v77)
        {
          v87 = v102[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v98(v73, &v6[v3], v12);
        v79 = v78;
        URL._bridgeToObjectiveC()(v80);
        v82 = v81;
        (v96)(v73, v12);
        v83 = [v100 unresolvedConflictVersionsOfItemAtURL_];

        if (!v83)
        {
          return;
        }

        type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSFileVersion, 0x277CCAA18);
        v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v84 >> 62)
        {
          if (v84 < 0)
          {
            v93 = v84;
          }

          else
          {
            v93 = v84 & 0xFFFFFFFFFFFFFF8;
          }

          v12 = MEMORY[0x23EE6BAE0](v93);
          if (!v12)
          {
LABEL_41:

            return;
          }
        }

        else
        {
          v12 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v12)
          {
            goto LABEL_41;
          }
        }

        v85 = 0;
        v13 = v84 & 0xC000000000000001;
        v21 = (v84 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v13)
          {
            v86 = MEMORY[0x23EE6BA40](v85, v84);
          }

          else
          {
            if (v85 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v86 = *(v84 + 8 * v85 + 32);
          }

          v6 = v86;
          v3 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
            break;
          }

          [v86 setResolved_];

          ++v85;
          if (v3 == v12)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        swift_once();
LABEL_7:
        v33 = type metadata accessor for Logger();
        v94 = __swift_project_value_buffer(v33, static Logger.common);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        v36 = v2;
        if (os_log_type_enabled(v34, v35))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_238952000, v34, v35, "Resolving local version as main version", v37, 2u);
          v38 = v37;
          v36 = v2;
          v21 = &unk_27DF44000;
          MEMORY[0x23EE6C260](v38, -1, -1);
        }

        v39 = v101;
        (*(v13 + 16))(v101, v3 + v21[34], v12);
        static UTType.directory.getter();
        v40 = v13;
        v41 = v100;
        URL.appendingPathComponent(_:conformingTo:)();
        (*(v96 + 8))(v6, v97);
        v96 = v40;
        v42 = *(v40 + 8);
        v42(v39, v12);
        v97 = objc_opt_self();
        v43 = [v97 defaultManager];
        v44 = v98;
        v45 = v95;
        v46 = v36;
        NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
        if (v36)
        {
          break;
        }

        v97 = 0;

        outlined destroy of URL?(v44, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v42(v41, v12);
        v42(v45, v12);
        v13 = v96;
      }

      v98 = v42;

      v47 = v36;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v46;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_238952000, v48, v49, "Got error %@ replacing local version with live one", v50, 0xCu);
        outlined destroy of URL?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x23EE6C260](v51, -1, -1);
        MEMORY[0x23EE6C260](v50, -1, -1);
      }

      else
      {
      }

      v13 = v96;
      v54 = v97;
      v55 = [v97 defaultManager];
      v56 = v100;
      URL._bridgeToObjectiveC()(v57);
      v59 = v58;
      v102[0] = 0;
      v60 = [v55 removeItemAtURL:v58 error:v102];

      if (!v60)
      {
        break;
      }

      v61 = v102[0];
      v62 = [v54 defaultManager];
      v63 = v95;
      URL._bridgeToObjectiveC()(v64);
      v66 = v65;
      URL._bridgeToObjectiveC()(v67);
      v69 = v68;
      v102[0] = 0;
      v70 = [v62 moveItemAtURL:v66 toURL:v68 error:v102];

      if (!v70)
      {
        v91 = v102[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v89 = v98;
        (v98)(v56, v12);
        v90 = v63;
        goto LABEL_32;
      }

      v71 = v102[0];
      v72 = v98;
      (v98)(v56, v12);
      v72(v63, v12);
      v97 = 0;
    }

    v88 = v102[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v89 = v98;
    (v98)(v56, v12);
    v90 = v95;
LABEL_32:
    v89(v90, v12);
    return;
  }

  v23 = v101;
  (*(v13 + 16))(v101, v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL, v12);
  v24 = v22;
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v28 = *(v13 + 8);
  v28(v23, v12);
  v102[0] = 0;
  v29 = [v24 replaceItemAtURL:v27 options:0 error:v102];

  v30 = v102[0];
  if (v29)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v28(v23, v12);
    goto LABEL_17;
  }

  v92 = v102[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

uint64_t GameSaveSyncedDirectory.Version.deinit()
{
  v1 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t GameSaveSyncedDirectory.Version.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t GameSaveSyncedDirectory._state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return outlined init with copy of GameSaveSyncedDirectory.State(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, a1);
}

uint64_t key path getter for GameSaveSyncedDirectory._state : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, a2);
}

uint64_t key path setter for GameSaveSyncedDirectory._state : GameSaveSyncedDirectory(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of GameSaveSyncedDirectory.State(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of GameSaveSyncedDirectory.State(v6, type metadata accessor for GameSaveSyncedDirectory.State);
}

id key path getter for GameSaveSyncedDirectory.state : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v4 lock];
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, a2);
  return [v4 unlock];
}

uint64_t key path setter for GameSaveSyncedDirectory.state : GameSaveSyncedDirectory(uint64_t a1)
{
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GameSaveSyncedDirectory.State(a1, v4);
  return GameSaveSyncedDirectory.state.setter(v4);
}

uint64_t GameSaveSyncedDirectory.state.setter(uint64_t a1)
{
  v3 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  swift_getKeyPath();
  v16 = v1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v8);
  v9 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v9 lock];
  outlined init with copy of GameSaveSyncedDirectory.State(a1, v6);
  swift_getKeyPath();
  v14 = v1;
  v15 = v6;
  v16 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of GameSaveSyncedDirectory.State(v6, type metadata accessor for GameSaveSyncedDirectory.State);
  [v9 unlock];
  v10 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange + 8);

    if (!GameSaveSyncedDirectory.State.hasSameStateAs(_:)(a1))
    {
      v10(a1);
    }

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(v10, v11);
  }

  outlined destroy of GameSaveSyncedDirectory.State(a1, type metadata accessor for GameSaveSyncedDirectory.State);
  return outlined destroy of GameSaveSyncedDirectory.State(v8, type metadata accessor for GameSaveSyncedDirectory.State);
}

id GameSaveSyncedDirectory.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v3 lock];
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, a1);
  return [v3 unlock];
}

void GameSaveSyncedDirectory.progress.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t GameSaveSyncedDirectory.alertPresentedState.getter@<X0>(void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return outlined init with copy of URL?(v5 + *a2, a5, a3, a4);
}

uint64_t key path getter for GameSaveSyncedDirectory.alertPresentedState : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return outlined init with copy of URL?(v10 + *a3, a6, a4, a5);
}

id GameSaveSyncedDirectory.progress.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

id key path getter for GameSaveSyncedDirectory.progress : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void GameSaveSyncedDirectory.gameSyncedDirectoryPresenter.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
  type metadata accessor for GameSyncedDirectoryHolder(0);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void GameSaveSyncedDirectory.remoteProgressObserver.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for RemoteProgressObserver();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t GameSaveSyncedDirectory.accountSigningInObserver.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t key path getter for GameSaveSyncedDirectory.accountSigningInObserver : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver);
  return swift_unknownObjectRetain();
}

void GameSaveSyncedDirectory.lastResponse.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for GameSyncedDirectoryResponse(0);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t GameSaveSyncedDirectory.id.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);

  return v1;
}

uint64_t key path getter for GameSaveSyncedDirectory.containerIdentifier : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  a2[1] = v4;
}

uint64_t sub_2389588FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return GameSaveSyncedDirectory.containerIdentifier.setter(v1, v2);
}

uint64_t GameSaveSyncedDirectory.containerIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier) == a1 && *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t GameSaveSyncedDirectory.init(containerIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock;
  *(v2 + v6) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v7 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter) = [objc_allocWithZone(type metadata accessor for GameSyncedDirectoryHolder(0)) init];
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse) = 0;
  v9 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__showSyncAlertAfterTimeHeuristic) = 0x4010000000000000;
  v10 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alertPresentedState;
  v11 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  ObservationRegistrar.init()();
  *(v2 + v9) = CFAbsoluteTimeGetCurrent();
  v12 = [objc_opt_self() progressWithTotalUnitCount_];
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  *v13 = a1;
  v13[1] = a2;
  return v2;
}

void *GameSaveSyncedDirectory.directorySyncStartTime.setter(void *result, uint64_t a2, uint64_t a3, double a4)
{
  if (*(v4 + *result) == a4)
  {
    *(v4 + *result) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GameSaveSyncedDirectory.init(error:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v5 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter) = [objc_allocWithZone(type metadata accessor for GameSyncedDirectoryHolder(0)) init];
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__showSyncAlertAfterTimeHeuristic) = 0x4010000000000000;
  v7 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alertPresentedState;
  v8 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  ObservationRegistrar.init()();
  v9 = [objc_opt_self() progressWithTotalUnitCount_];
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) = v9;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state) = a1;
  swift_storeEnumTagMultiPayload();
  v10 = (v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v1;
}

id one-time initialization function for loadedDirectorysLock()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  static GameSaveSyncedDirectory.loadedDirectorysLock = result;
  return result;
}

void *one-time initialization function for loadedDirectorys()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8GameSave0cD15SyncedDirectoryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static GameSaveSyncedDirectory.loadedDirectorys = result;
  return result;
}

uint64_t static GameSaveSyncedDirectory._openDirectory(containerIdentifier:fetchLatestData:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for CocoaError();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = &type metadata for GameSaveFF;
  v31[4] = lazy protocol witness table accessor for type GameSaveFF and conformance GameSaveFF();
  v11 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v31);
  if ((v11 & 1) == 0)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.common);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_238952000, v19, v20, "Feature is disabled", v21, 2u);
      MEMORY[0x23EE6C260](v21, -1, -1);
    }

    MEMORY[0x23EE6AD60]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = CocoaError._nsError.getter();
    (*(v8 + 8))(v10, v7);
    type metadata accessor for GameSaveSyncedDirectory(0);
    swift_allocObject();
    v23 = v22;
    return GameSaveSyncedDirectory.init(error:)(v23);
  }

  v12 = specialized static GameSaveSyncedDirectory._resolveContainerIdentifier(_:)(a1, a2);
  if (!v13)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.common);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_238952000, v25, v26, "Can't request Game Synced Directory without a valid containerIdentifier", v27, 2u);
      MEMORY[0x23EE6C260](v27, -1, -1);
    }

    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v28 = swift_allocError();
    *v29 = 3;
    type metadata accessor for GameSaveSyncedDirectory(0);
    swift_allocObject();
    v23 = v28;
    return GameSaveSyncedDirectory.init(error:)(v23);
  }

  v14 = v12;
  v15 = v13;
  if (one-time initialization token for loadedDirectorysLock != -1)
  {
    swift_once();
  }

  v16 = static GameSaveSyncedDirectory.loadedDirectorysLock;
  [static GameSaveSyncedDirectory.loadedDirectorysLock lock];
  closure #1 in static GameSaveSyncedDirectory._openDirectory(containerIdentifier:fetchLatestData:)(v14, v15, a3 & 1, v31);

  [v16 unlock];
  return v31[0];
}

void closure #1 in static GameSaveSyncedDirectory._openDirectory(containerIdentifier:fetchLatestData:)(uint64_t a1@<X1>, unint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X8>)
{
  v36 = a3;
  v8 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (one-time initialization token for loadedDirectorys != -1)
  {
    swift_once();
  }

  v14 = static GameSaveSyncedDirectory.loadedDirectorys;
  if (!*(static GameSaveSyncedDirectory.loadedDirectorys + 2))
  {
    goto LABEL_7;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  v34 = a4;
  v35 = v4;
  v17 = *(v14[7] + 8 * v15);
  v18 = *(v17 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);

  [v18 lock];
  swift_getKeyPath();
  v37 = v17;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v17 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v13);
  [v18 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v13, v11);
  if (swift_getEnumCaseMultiPayload() == 6)
  {

    a4 = v34;
LABEL_7:
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.common);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = a4;
      v24 = swift_slowAlloc();
      v37 = v24;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v37);
      _os_log_impl(&dword_238952000, v20, v21, "Starting Game Synced Directory request for containerIdentifier %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v25 = v24;
      a4 = v23;
      MEMORY[0x23EE6C260](v25, -1, -1);
      MEMORY[0x23EE6C260](v22, -1, -1);
    }

    type metadata accessor for GameSaveSyncedDirectory(0);
    swift_allocObject();

    v17 = GameSaveSyncedDirectory.init(containerIdentifier:)(a1, a2);
    if (v36)
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }

    GameSaveSyncedDirectory.startSyncing(mode:)(v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = static GameSaveSyncedDirectory.loadedDirectorys;
    static GameSaveSyncedDirectory.loadedDirectorys = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a1, a2, isUniquelyReferenced_nonNull_native);

    static GameSaveSyncedDirectory.loadedDirectorys = v37;
    goto LABEL_15;
  }

  outlined destroy of GameSaveSyncedDirectory.State(v11, type metadata accessor for GameSaveSyncedDirectory.State);
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.common);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v31 = 136315138;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v37);
    _os_log_impl(&dword_238952000, v29, v30, "Returning an existing directory for containerIdentifier %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x23EE6C260](v32, -1, -1);
    MEMORY[0x23EE6C260](v31, -1, -1);
  }

  a4 = v34;
LABEL_15:
  *a4 = v17;
}

uint64_t GameSaveSyncedDirectory.moveToLocalState()()
{
  v1 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for CocoaError();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v0;
  GameSaveSyncedDirectory.getAndCreateLocalURL()(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = outlined destroy of URL?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    MEMORY[0x23EE6AD70](v15);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = CocoaError._nsError.getter();
    (*(v18 + 8))(v4, v2);
    *v7 = v16;
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v7);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v7);
    return outlined destroy of GameSaveSyncedDirectory.State(v7, type metadata accessor for GameSaveSyncedDirectory.State);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 16))(v7, v14, v11);
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v7);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v7);
    outlined destroy of GameSaveSyncedDirectory.State(v7, type metadata accessor for GameSaveSyncedDirectory.State);
    return (*(v12 + 8))(v14, v11);
  }
}

void GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(uint64_t a1)
{
  v3 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  swift_getKeyPath();
  aBlock = v1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime);
  outlined init with copy of GameSaveSyncedDirectory.State(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 5)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v5, type metadata accessor for GameSaveSyncedDirectory.State);
  }

  else
  {
    v9 = EnumCaseMultiPayload;
    outlined destroy of GameSaveSyncedDirectory.State(v5, type metadata accessor for GameSaveSyncedDirectory.State);
    v10 = MEMORY[0x23EE6B6E0](0xD000000000000021, 0x800000023898C590);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v20 = partial apply for closure #1 in GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:);
    v21 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    v19 = &block_descriptor_339;
    v12 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v12);

    v13 = MEMORY[0x23EE6B6E0](0xD00000000000001BLL, 0x800000023898C5E0);
    v14 = swift_allocObject();
    *(v14 + 16) = Current - v7;
    v20 = partial apply for closure #2 in GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:);
    v21 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    v19 = &block_descriptor_345;
    v15 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v15);
  }
}

unint64_t closure #1 in GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238987820;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x800000023898C600;
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(inited + 48) = NSNumber.init(integerLiteral:)(a1);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of URL?(inited + 32, &_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  return v3;
}

unint64_t closure #2 in GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(Swift::Double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238987820;
  *(inited + 32) = 0x656D695464616F4CLL;
  *(inited + 40) = 0xE800000000000000;
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(inited + 48) = NSNumber.init(floatLiteral:)(a1);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of URL?(inited + 32, &_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  return v3;
}

uint64_t GameSaveSyncedDirectory._moveToState(_:)(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v4 = &v53 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v63 = &v53 - v10;
  v11 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v12 = MEMORY[0x28223BE20](v11);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = &v53 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v24 lock];
  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v65 = v2;
  v26 = lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  v55 = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v23);
  v61 = v24;
  [v24 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v23, v21);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    return result;
  }

  outlined destroy of GameSaveSyncedDirectory.State(v21, type metadata accessor for GameSaveSyncedDirectory.State);
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.common);
  outlined init with copy of GameSaveSyncedDirectory.State(v60, v18);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v53 = v26;
  v54 = v4;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v65 = v33;
    *v32 = 136315138;
    v34 = GameSaveSyncedDirectory.State.description.getter();
    v36 = v35;
    outlined destroy of GameSaveSyncedDirectory.State(v18, type metadata accessor for GameSaveSyncedDirectory.State);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v65);
    v38 = v62;

    *(v32 + 4) = v37;
    _os_log_impl(&dword_238952000, v29, v30, "Moving to state %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23EE6C260](v33, -1, -1);
    MEMORY[0x23EE6C260](v32, -1, -1);
  }

  else
  {

    outlined destroy of GameSaveSyncedDirectory.State(v18, type metadata accessor for GameSaveSyncedDirectory.State);
    v38 = v62;
  }

  v39 = *(v38 + 56);
  v39(v63, 1, 1, v64);
  [v61 lock];
  v40 = v60;
  v41 = v57;
  outlined init with copy of GameSaveSyncedDirectory.State(v60, v57);
  GameSaveSyncedDirectory.state.setter(v41);
  v42 = v40;
  v43 = v58;
  outlined init with copy of GameSaveSyncedDirectory.State(v42, v58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 5)
  {
    if (EnumCaseMultiPayload == 5)
    {
      outlined destroy of GameSaveSyncedDirectory.State(v43, type metadata accessor for GameSaveSyncedDirectory.State);
      v48 = v54;
      v45 = v63;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of GameSaveSyncedDirectory.State(v43, type metadata accessor for GameSaveSyncedDirectory.State);
  }

  swift_getKeyPath();
  v65 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = v63;
  outlined destroy of URL?(v63, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  outlined init with copy of URL?(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation, v45, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v46 = v56;
  v39(v56, 1, 1, v64);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v53 - 2) = v2;
  *(&v53 - 1) = v46;
  v65 = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of URL?(v46, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v48 = v54;
LABEL_10:
  [v61 unlock];
  v49 = v59;
  outlined init with copy of URL?(v45, v59, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v50 = v62;
  if ((*(v62 + 48))(v49, 1, v64) == 1)
  {
    outlined destroy of URL?(v45, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
    v45 = v49;
  }

  else
  {
    v51 = v49;
    v52 = v64;
    (*(v50 + 32))(v48, v51, v64);
    CheckedContinuation.resume(returning:)();
    (*(v50 + 8))(v48, v52);
  }

  return outlined destroy of URL?(v45, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
}

id one-time initialization function for connectionLock()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  static GameSaveSyncedDirectory.connectionLock = result;
  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(a1, a2);
}

{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t GameSaveSyncedDirectory.getLocalURL()@<X0>(uint64_t a1@<X8>)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for URL();
  v40 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  if (_xpc_runtime_is_app_sandboxed())
  {
    v18 = [objc_opt_self() defaultManager];
    v41[0] = 0;
    v19 = [v18 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:v41];

    v20 = v41[0];
    if (v19)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = 0;
    }

    else
    {
      v29 = v41[0];
      v30 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v22 = 1;
    }

    v39 = *(v40 + 56);
    v39(v17, v22, 1, v3);
    outlined init with copy of URL?(v17, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v40 + 48))(v15, 1, v3) == 1)
    {
      outlined destroy of URL?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of URL?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v31 = a1;
      v32 = 1;
    }

    else
    {
      v37 = v11;
      URL.appendingPathComponent(_:)();
      v38 = a1;
      v33 = *(v40 + 8);
      v40 += 8;
      v33(v15, v3);
      swift_getKeyPath();
      v41[0] = v1;
      lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      URL.appendingPathComponent(_:)();

      v33(v6, v3);
      v34 = v37;
      URL.appendingPathComponent(_:)();
      v33(v9, v3);
      v35 = v38;
      URL.appendingPathComponent(_:)();
      v33(v34, v3);
      outlined destroy of URL?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v31 = v35;
      v32 = 0;
    }

    return (v39)(v31, v32, 1, v3);
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.common);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_238952000, v24, v25, "App is not sandboxed, we can't return a local URL for the directory", v26, 2u);
      MEMORY[0x23EE6C260](v26, -1, -1);
    }

    v27 = *(v40 + 56);

    return v27(a1, 1, 1, v3);
  }
}

id GameSaveSyncedDirectory.getAndCreateLocalURL()@<X0>(char *a1@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  GameSaveSyncedDirectory.getLocalURL()(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of URL?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v9 = *(v6 + 32);
  v9(v8, v4, v5);
  v10 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v20[0] = 0;
  v14 = [v10 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v20];

  v19[0] = v20[0];
  if (!v14)
  {
    v17 = v19[0];
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v6 + 8))(v8, v5);

    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v9(a1, v8, v5);
  (*(v6 + 56))(a1, 0, 1, v5);
  v15 = v19[0];

  return v15;
}

void GameSaveSyncedDirectory.startSyncing(mode:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for CocoaError();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = &type metadata for GameSaveFF;
  v49 = lazy protocol witness table accessor for type GameSaveFF and conformance GameSaveFF();
  v12 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v12 & 1) == 0)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.common);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_238952000, v40, v41, "Feature is disabled", v42, 2u);
      MEMORY[0x23EE6C260](v42, -1, -1);
    }

    MEMORY[0x23EE6AD60]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = CocoaError._nsError.getter();
    (*(v6 + 8))(v8, v5);
    *v11 = v43;
    goto LABEL_14;
  }

  v13 = specialized static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)(partial apply for closure #1 in GameSaveSyncedDirectory.startSyncing(mode:), v2);

  if (!v13)
  {
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v44 = swift_allocError();
    *v45 = 0;
    *v11 = v44;
LABEL_14:
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v11);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v11);
    outlined destroy of GameSaveSyncedDirectory.State(v11, type metadata accessor for GameSaveSyncedDirectory.State);
    return;
  }

  v14 = one-time initialization token for common;
  swift_unknownObjectRetain();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.common);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_238952000, v16, v17, "Calling getSyncedDirectory", v18, 2u);
    MEMORY[0x23EE6C260](v18, -1, -1);
  }

  swift_getKeyPath();
  aBlock[0] = v2;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  v19 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);
  v21 = type metadata accessor for GameSyncedDirectoryRequest();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR___GameSyncedDirectoryRequest_mode] = a1;
  v23 = &v22[OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier];
  *v23 = v20;
  *(v23 + 1) = v19;
  v51.receiver = v22;
  v51.super_class = v21;

  v24 = objc_msgSendSuper2(&v51, sel_init);
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = v13;
  v49 = partial apply for closure #2 in GameSaveSyncedDirectory.startSyncing(mode:);
  v50 = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed GameSyncedDirectoryResponse?, @guaranteed Error?) -> ();
  v48 = &block_descriptor_246;
  v26 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v27 = [v13 getSyncedDirectoryWithRequest:v24 completion:v26];
  _Block_release(v26);

  swift_getKeyPath();
  aBlock[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress;
  [*(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) addChild:v27 withPendingUnitCount:80];
  swift_getKeyPath();
  aBlock[0] = v2;
  v29 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v2 + v28);
  v31 = type metadata accessor for RemoteProgressObserver();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_remoteProgress] = v29;
  *&v32[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_localProgress] = v30;
  v46.receiver = v32;
  v46.super_class = v31;
  v33 = v30;
  v34 = v29;
  v35 = v33;
  v36 = objc_msgSendSuper2(&v46, sel_init);
  v37 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898C250);
  [v34 addObserver:v36 forKeyPath:v37 options:1 context:0];

  v38 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898C250);
  [v36 observeValueForKeyPath:v38 ofObject:v34 change:0 context:0];

  GameSaveSyncedDirectory.remoteProgressObserver.setter(v36);
  swift_unknownObjectRelease_n();
}

uint64_t closure #1 in GameSaveSyncedDirectory.startSyncing(mode:)(void *a1)
{
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  v5 = a1;
  GameSaveSyncedDirectory._moveToState(_:)(v4);
  GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v4);
  return outlined destroy of GameSaveSyncedDirectory.State(v4, type metadata accessor for GameSaveSyncedDirectory.State);
}

void closure #2 in GameSaveSyncedDirectory.startSyncing(mode:)(void *a1, void *a2, char *a3, uint64_t a4)
{
  v8 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  if (!a1)
  {
    if (a2)
    {
      v30 = a2;
    }

    else
    {
      lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
      v30 = swift_allocError();
      *v34 = 2;
    }

    v35 = a2;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.common);
    v37 = v30;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v30;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_238952000, v38, v39, "Got nil url. Error: %@", v40, 0xCu);
      outlined destroy of URL?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x23EE6C260](v41, -1, -1);
      MEMORY[0x23EE6C260](v40, -1, -1);
    }

    swift_getKeyPath();
    v55 = a3;
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*&a3[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress] setCompletedUnitCount_];
    if (!a2)
    {
      goto LABEL_24;
    }

    v55 = a2;
    v44 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    v45 = v57;
    v46 = [v57 domain];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v47 == 0xD000000000000013 && 0x800000023898C270 == v49)
    {
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v50 & 1) == 0)
      {
LABEL_23:

LABEL_24:
        *v10 = v30;
        swift_storeEnumTagMultiPayload();
        v51 = v30;
        GameSaveSyncedDirectory._moveToState(_:)(v10);
        GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v10);

        outlined destroy of GameSaveSyncedDirectory.State(v10, type metadata accessor for GameSaveSyncedDirectory.State);
        return;
      }
    }

    if ([v45 code] == 1)
    {
      GameSaveSyncedDirectory.moveToLocalState()();

      return;
    }

    goto LABEL_23;
  }

  v14 = one-time initialization token for common;
  v15 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.common);
  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = a3;
    v57 = v53;
    *v20 = 138412802;
    v22 = *&v17[OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL];
    *(v20 + 4) = v22;
    *v21 = v22;
    *(v20 + 12) = 1024;
    v23 = v17[OBJC_IVAR___GameSyncedDirectoryResponse_isOnline];
    v24 = v22;

    *(v20 + 14) = v23;
    *(v20 + 18) = 2080;
    v25 = v17[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts + 8];
    v55 = *&v17[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts];
    v56 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v57);

    *(v20 + 20) = v28;
    _os_log_impl(&dword_238952000, v18, v19, "Got url: %@. Is online: %{BOOL}d. Number of conflicts: %s", v20, 0x1Cu);
    outlined destroy of URL?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE6C260](v21, -1, -1);
    v29 = v53;
    __swift_destroy_boxed_opaque_existential_0(v53);
    a3 = v54;
    MEMORY[0x23EE6C260](v29, -1, -1);
    MEMORY[0x23EE6C260](v20, -1, -1);
  }

  else
  {
  }

  v31 = v17;
  GameSaveSyncedDirectory.lastResponse.setter(a1);
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = a3;
  v33[5] = v31;
  v33[6] = a4;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #2 in GameSaveSyncedDirectory.startSyncing(mode:), v33);
}

uint64_t closure #1 in closure #2 in GameSaveSyncedDirectory.startSyncing(mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return specialized GameSaveSyncedDirectory.checkForConflicts(_:_:)(a5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of URL?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of URL?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of URL?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of URL?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_guaranteed (@guaranteed GameSyncedDirectoryResponse?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t GameSaveSyncedDirectory.moveToLoadedState(response:)(uint64_t a1)
{
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  [v9 removeObjectForKey_];

  v11 = [*(a1 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL) url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v4, v8, v5);
  swift_storeEnumTagMultiPayload();
  GameSaveSyncedDirectory._moveToState(_:)(v4);
  GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v4);
  outlined destroy of GameSaveSyncedDirectory.State(v4, type metadata accessor for GameSaveSyncedDirectory.State);
  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #1 in GameSaveSyncedDirectory.checkForConflicts(_:_:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  v20 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = *a1;
  v15 = *(v8 + 16);
  v15(&v19 - v12, a2, v7);
  v15(v11, v13, v7);
  type metadata accessor for GameSaveSyncedDirectory.Version(0);
  swift_allocObject();
  v16 = v14;

  v17 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v11, v14, 0, 0, a3);
  result = (*(v8 + 8))(v13, v7);
  *v20 = v17;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo13NSFileVersionCG_8GameSave0fG15SyncedDirectoryC0E0Cs5NeverOTg5(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x23EE6BAE0](v12))
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_22:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EE6BA40](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_22;
      }

      v5 = 0;

      v4 = v15;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    if ((a3 & 0x8000000000000000) != 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return result;
}

uint64_t GameSaveSyncedDirectory.triggerPendingUpload()()
{
  v1[4] = v0;
  v1[5] = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory.triggerPendingUpload(), 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v4 lock];
  swift_getKeyPath();
  v0[2] = v3;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v2);
  [v4 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v2, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of GameSaveSyncedDirectory.State(v1, type metadata accessor for GameSaveSyncedDirectory.State);
  if (EnumCaseMultiPayload > 1)
  {

    v10 = v0[1];

    return v10(0);
  }

  else
  {
    v6 = v0[4];
    swift_getKeyPath();
    v0[3] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v6 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
    v0[8] = v7;
    v7;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = GameSaveSyncedDirectory.triggerPendingUpload();

    return GameSyncedDirectoryHolder.allowReaders(for:)(5000000000000000000, 0);
  }
}

uint64_t GameSaveSyncedDirectory.triggerPendingUpload()(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t GameSaveSyncedDirectory.resolveConflicts(with:)(char *a1)
{
  v77 = a1;
  v81[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = v68 - v3;
  v80 = type metadata accessor for URL();
  v75 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v72 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v73 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = v68 - v9;
  MEMORY[0x28223BE20](v8);
  v74 = v68 - v10;
  v11 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v12 = MEMORY[0x28223BE20](v11);
  v78 = (v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v68 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v68 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v68 - v20;
  v22 = *&v1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock];
  [v22 lock];
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v81[0] = v1;
  v24 = lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  outlined init with copy of GameSaveSyncedDirectory.State(&v1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state], v21);
  [v22 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v21, v19);
  result = swift_getEnumCaseMultiPayload();
  if (result != 6)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v19, type metadata accessor for GameSaveSyncedDirectory.State);
    [v22 lock];
    swift_getKeyPath();
    v81[0] = v1;
    v70 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v69 = v1;
    outlined init with copy of GameSaveSyncedDirectory.State(&v1[v25], v16);
    [v22 0x278A5B178];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      return outlined destroy of GameSaveSyncedDirectory.State(v16, type metadata accessor for GameSaveSyncedDirectory.State);
    }

    v27 = v23;
    v71 = *v16;
    if (one-time initialization token for common != -1)
    {
LABEL_30:
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.common);
    v29 = v77;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v27;
      v34 = swift_slowAlloc();
      v81[0] = v34;
      *v32 = 136315138;
      v35 = GameSaveSyncedDirectory.Version.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v81);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_238952000, v30, v31, "resolving conflict %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      v38 = v34;
      v27 = v33;
      MEMORY[0x23EE6C260](v38, -1, -1);
      MEMORY[0x23EE6C260](v32, -1, -1);
    }

    v39 = v69;
    swift_getKeyPath();
    v81[0] = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*&v39[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse])
    {
      String.utf8CString.getter();
    }

    v40 = sandbox_extension_consume();
    swift_unknownObjectRelease();
    GameSaveSyncedDirectory.Version.resolve()();
    v42 = v74;
    outlined init with copy of URL?(&v29[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL], v74, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v77 = *(v75 + 48);
    if ((v77)(v42, 1, v80) == 1)
    {
      outlined destroy of URL?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v43 = v71;
      v68[2] = v27;
      v68[3] = v11;
      v69 = v40;
      v68[1] = 0;
      if (v71 >> 62)
      {
        v61 = v71;
        if (v71 >= 0)
        {
          v43 = v71 & 0xFFFFFFFFFFFFFF8;
        }

        v74 = MEMORY[0x23EE6BAE0](v43);
        v43 = v61;
        if (v74)
        {
LABEL_12:
          v44 = 0;
          v11 = v43 & 0xC000000000000001;
          v40 = v43 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v11)
            {
              v27 = MEMORY[0x23EE6BA40](v44, v43);
              v42 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }
            }

            else
            {
              if (v44 >= *(v40 + 16))
              {
                __break(1u);
                goto LABEL_30;
              }

              v27 = *(v43 + 8 * v44 + 32);

              v42 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                goto LABEL_21;
              }
            }

            v45 = v79;
            outlined init with copy of URL?(v27 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v79, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            if ((v77)(v45, 1, v80) != 1)
            {
              break;
            }

            outlined destroy of URL?(v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            ++v44;
            v43 = v71;
            if (v42 == v74)
            {
              goto LABEL_34;
            }
          }

          outlined destroy of URL?(v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          if (!v27)
          {
            goto LABEL_35;
          }

          v47 = v73;
          outlined init with copy of URL?(v27 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v48 = v80;
          v49 = (v77)(v47, 1, v80);
          v40 = v69;
          v50 = v75;
          if (v49 == 1)
          {

            v46 = v78;
            goto LABEL_36;
          }

          v51 = v72;
          (*(v75 + 32))(v72, v47, v48);
          v52 = [objc_opt_self() defaultManager];
          URL._bridgeToObjectiveC()(v53);
          v55 = v54;
          v81[0] = 0;
          v56 = [v52 removeItemAtURL:v54 error:v81];

          if (v56)
          {
            v57 = *(v50 + 8);
            v58 = v81[0];
            v57(v51, v48);

            v46 = v78;
            goto LABEL_37;
          }

          v59 = v81[0];
          v60 = _convertNSErrorToError(_:)();

          swift_willThrow();

          (*(v50 + 8))(v51, v48);
          v46 = v78;
          *v78 = v60;
          swift_storeEnumTagMultiPayload();
          v41 = v60;
          GameSaveSyncedDirectory._moveToState(_:)(v46);
          GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v46);

          goto LABEL_41;
        }
      }

      else
      {
        v74 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v74)
        {
          goto LABEL_12;
        }
      }

LABEL_34:

LABEL_35:
      v47 = v73;
      (*(v75 + 56))(v73, 1, 1, v80);
      v46 = v78;
      v40 = v69;
LABEL_36:
      outlined destroy of URL?(v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
LABEL_22:

      outlined destroy of URL?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v46 = v78;
    }

LABEL_37:
    Current = CFAbsoluteTimeGetCurrent();
    if (*&v39[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime] == Current)
    {
      *&v39[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime] = Current;
    }

    else
    {
      v63 = Current;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v68[-2] = v39;
      *&v68[-1] = v63;
      v81[0] = v39;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v46 = v78;
    }

    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v46);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v46);
LABEL_41:
    outlined destroy of GameSaveSyncedDirectory.State(v46, type metadata accessor for GameSaveSyncedDirectory.State);
    v65 = type metadata accessor for TaskPriority();
    v66 = v76;
    (*(*(v65 - 8) + 56))(v76, 1, 1, v65);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = v39;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v66, &async function pointer to partial apply for closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:), v67);

    if (v40 != -1)
    {
      return sandbox_extension_release();
    }
  }

  return result;
}

uint64_t closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:), 0, 0);
}

uint64_t closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:)()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:);

  return specialized Clock.sleep(for:tolerance:)(100000000000000000, 0, 0, 0, 1);
}

{
  v2 = *v1;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:);
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  swift_getKeyPath();
  v0[2] = v3;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
  v5 = *&v4[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock];
  v6 = v4;
  [v5 lock];
  v7 = *&v6[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers];
  *&v6[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers] = MEMORY[0x277D84F90];
  [v5 unlock];
  specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726564616572, 0xE600000000000000, v7, 1);

  v8 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v8 lock];
  swift_getKeyPath();
  v0[3] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v2);
  [v8 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v2, v1);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v9 = v0[5];
    outlined destroy of GameSaveSyncedDirectory.State(v0[7], type metadata accessor for GameSaveSyncedDirectory.State);
    swift_getKeyPath();
    v0[4] = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v9 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse);
    if (v10)
    {
      v11 = v10;
      GameSaveSyncedDirectory.moveToLoadedState(response:)(v11);
    }

    else
    {
      GameSaveSyncedDirectory.retry(options:)(0);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22[0] = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v22[0]);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  aBlock[0] = v2;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver);
  if (v8)
  {
    v9 = objc_opt_self();
    swift_unknownObjectRetain();
    v10 = [v9 defaultCenter];
    [v10 removeObserver_];
    swift_unknownObjectRelease();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = [objc_opt_self() defaultCenter];
  v13 = *MEMORY[0x277CFAB58];
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v3;
  v14[4] = a1;
  v14[5] = a2;
  aBlock[4] = partial apply for closure #1 in GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  v16 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v15];
  _Block_release(v15);

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v22[-2] = v3;
  v22[-1] = v16;
  aBlock[0] = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
  [objc_opt_self() startAccountTokenChangeObserverIfNeeded];

  v18 = specialized static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)(partial apply for closure #2 in GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:), v3);

  if (v18)
  {
    [v18 openICloudDriveSettingsPage];

    return swift_unknownObjectRelease();
  }

  else
  {
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v20 = swift_allocError();
    *v21 = 0;
    *v7 = v20;
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v7);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v7);
    outlined destroy of GameSaveSyncedDirectory.State(v7, type metadata accessor for GameSaveSyncedDirectory.State);
  }
}

void closure #1 in GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  if ((*(a2 + 16) & 1) == 0)
  {
    v13 = *(a3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
    [v13 lock];
    swift_getKeyPath();
    v15[1] = a3;
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(a3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v12);
    [v13 unlock];
    outlined init with take of GameSaveSyncedDirectory.State(v12, v10);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      v14 = outlined destroy of GameSaveSyncedDirectory.State(v10, type metadata accessor for GameSaveSyncedDirectory.State);
      *(a2 + 16) = 1;
      a4(v14);
      GameSaveSyncedDirectory.retry(options:)(1);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #2 in GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)()
{
  v0 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
  v3 = swift_allocError();
  *v4 = 0;
  *v2 = v3;
  swift_storeEnumTagMultiPayload();
  GameSaveSyncedDirectory._moveToState(_:)(v2);
  GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v2);
  return outlined destroy of GameSaveSyncedDirectory.State(v2, type metadata accessor for GameSaveSyncedDirectory.State);
}

void GameSaveSyncedDirectory.retry(options:)(uint64_t a1)
{
  v3 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v12 lock];
  swift_getKeyPath();
  v15 = v1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v11);
  [v12 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v11, v9);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v9, type metadata accessor for GameSaveSyncedDirectory.State);
    v13 = [objc_opt_self() progressWithTotalUnitCount_];
    GameSaveSyncedDirectory.progress.setter(v13);
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v6);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v6);
    outlined destroy of GameSaveSyncedDirectory.State(v6, type metadata accessor for GameSaveSyncedDirectory.State);
    GameSaveSyncedDirectory.startSyncing(mode:)(a1);
  }
}

uint64_t GameSaveSyncedDirectory._waitForDirectorySync(ui:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x2822009F8](GameSaveSyncedDirectory._waitForDirectorySync(ui:), 0, 0);
}

uint64_t GameSaveSyncedDirectory._waitForDirectorySync(ui:)()
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.common);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238952000, v2, v3, "Waiting for directory sync", v4, 2u);
    MEMORY[0x23EE6C260](v4, -1, -1);
  }

  v5 = *(v0 + 16);
  v6 = *(v0 + 40);

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = GameSaveSyncedDirectory._waitForDirectorySync(ui:);
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, 0, 0, 0xD00000000000001ALL, 0x800000023898C330, partial apply for closure #1 in GameSaveSyncedDirectory._waitForDirectorySync(ui:), v7, v9);
}

{

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory._waitForDirectorySync(ui:), 0, 0);
}

{
  return (*(v0 + 8))();
}

id closure #1 in GameSaveSyncedDirectory._waitForDirectorySync(ui:)(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *&a2[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock];
  [v6 lock];
  closure #1 in closure #1 in GameSaveSyncedDirectory._waitForDirectorySync(ui:)(a2, v3, a1);

  return [v6 unlock];
}

uint64_t closure #1 in closure #1 in GameSaveSyncedDirectory._waitForDirectorySync(ui:)(char *a1, int a2, uint64_t a3)
{
  v32 = a3;
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v8 = MEMORY[0x28223BE20](v7);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = *&a1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock];
  [v18 lock];
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v33 = a1;
  v30 = lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  v31 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  outlined init with copy of GameSaveSyncedDirectory.State(&a1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state], v17);
  [v18 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v17, v15);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    goto LABEL_2;
  }

  outlined destroy of GameSaveSyncedDirectory.State(v15, type metadata accessor for GameSaveSyncedDirectory.State);
  if (v29)
  {
    [v18 lock];
    swift_getKeyPath();
    v33 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(&a1[v20], v12);
    [v18 0x278A5B178];
    v25 = v28;
    outlined init with copy of GameSaveSyncedDirectory.State(v12, v28);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v27 = specialized static GameSaveSyncedDirectory.shouldDismissSignedOutError()();
        outlined destroy of GameSaveSyncedDirectory.State(v12, type metadata accessor for GameSaveSyncedDirectory.State);
        outlined destroy of GameSaveSyncedDirectory.State(v25, type metadata accessor for GameSaveSyncedDirectory.State);
        if ((v27 & 1) == 0)
        {
          goto LABEL_2;
        }

        break;
      case 5:
        v25 = v12;
        goto LABEL_9;
      case 3:
        outlined destroy of GameSaveSyncedDirectory.State(v12, type metadata accessor for GameSaveSyncedDirectory.State);
LABEL_9:
        outlined destroy of GameSaveSyncedDirectory.State(v25, type metadata accessor for GameSaveSyncedDirectory.State);
LABEL_2:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
        v22 = *(v21 - 8);
        (*(v22 + 16))(v6, v32, v21);
        (*(v22 + 56))(v6, 0, 1, v21);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v28 - 2) = a1;
        *(&v28 - 1) = v6;
        v33 = a1;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return outlined destroy of URL?(v6, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
      default:
        outlined destroy of GameSaveSyncedDirectory.State(v12, type metadata accessor for GameSaveSyncedDirectory.State);
        outlined destroy of GameSaveSyncedDirectory.State(v25, type metadata accessor for GameSaveSyncedDirectory.State);
        break;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t GameSaveSyncedDirectory.stateObserver.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for GameSaveSyncedDirectory.stateObserver : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver);
}

uint64_t key path setter for GameSaveSyncedDirectory.accountSigningInObserver : GameSaveSyncedDirectory(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void GameSaveSyncedDirectory.window.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for UIWindow, 0x277D75DA0);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void *GameSaveSyncedDirectory.remoteProgressObserver.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

void GameSaveSyncedDirectory.alert.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for UIAlertController, 0x277D75110);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

double GameSaveSyncedDirectory.directorySyncStartTime.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

double key path getter for GameSaveSyncedDirectory.directorySyncStartTime : GameSaveSyncedDirectory@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, double *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v6 + *a3);
  *a4 = result;
  return result;
}

uint64_t GameSaveSyncedDirectory.StateObserver.selectedVersion.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::Void __swiftcall GameSaveSyncedDirectory.StateObserver.cancel()()
{
  v1 = v0;
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory;
  v9 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory);
  v10 = *(v9 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);

  [v10 lock];
  swift_getKeyPath();
  v17 = v9;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v9 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v7);
  [v10 unlock];

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = [objc_opt_self() standardUserDefaults];
      v13 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
      [v12 setBool:1 forKey:v13];

      v14 = *(v1 + v8);
      v15 = *(v14 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);

      [v15 lock];
      swift_getKeyPath();
      v17 = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      outlined init with copy of GameSaveSyncedDirectory.State(v14 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v5);
      [v15 unlock];
      GameSaveSyncedDirectory._moveToState(_:)(v5);

      outlined destroy of GameSaveSyncedDirectory.State(v5, type metadata accessor for GameSaveSyncedDirectory.State);
    }

    else
    {

      GameSaveSyncedDirectory.cancel()();
    }
  }

  outlined destroy of GameSaveSyncedDirectory.State(v7, type metadata accessor for GameSaveSyncedDirectory.State);
}

uint64_t GameSaveSyncedDirectory.StateObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__selectedVersion;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMd, &_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__alertAction;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17UIAlertControllerCSgGMd, &_s7Combine9PublishedVySo17UIAlertControllerCSgGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GameSaveSyncedDirectory.StateObserver@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GameSaveSyncedDirectory.StateObserver(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for GameSaveSyncedDirectory.continuation : GameSaveSyncedDirectory(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17[-v13];
  outlined init with copy of URL?(a1, &v17[-v13], a5, a6);
  v15 = *a2;
  swift_getKeyPath();
  v18 = v15;
  v19 = v14;
  v20 = v15;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of URL?(v14, a5, a6);
}

BOOL GameSaveSyncedDirectory.checkSameAlertState(as:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  swift_getKeyPath();
  v15 = v0;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of URL?(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alertPresentedState, v3, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of URL?(v3, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
    return 0;
  }

  else
  {
    outlined init with take of GameSaveSyncedDirectory.State(v3, v10);
    v12 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
    [v12 lock];
    swift_getKeyPath();
    v15 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v8);
    [v12 unlock];
    v11 = GameSaveSyncedDirectory.State.hasSameStateAs(_:)(v8);
    outlined destroy of GameSaveSyncedDirectory.State(v8, type metadata accessor for GameSaveSyncedDirectory.State);
    outlined destroy of GameSaveSyncedDirectory.State(v10, type metadata accessor for GameSaveSyncedDirectory.State);
  }

  return v11;
}

void static GameSaveSyncedDirectory.showedDismissSignedOutError()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  [v0 setBool:1 forKey:v1];
}

void static GameSaveSyncedDirectory.clearDismissSignedOutErrorState()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  [v0 removeObjectForKey_];
}

id one-time initialization function for bundleForGameSave()
{
  type metadata accessor for GameSaveSyncedDirectory(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static GameSaveSyncedDirectory.bundleForGameSave = result;
  return result;
}

void one-time initialization function for syncSaveDataTitleLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C480;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.syncSaveDataTitleLocalized = v3;
}

void one-time initialization function for syncingContinueButtonTitleLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C460;
  v1._countAndFlagsBits = 0xD000000000000018;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.syncingContinueButtonTitleLocalized = v3;
}

void one-time initialization function for turnOnICloudDriveTitleLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C4F0;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.turnOnICloudDriveTitleLocalized = v3;
}

void one-time initialization function for turnOnICloudDriveInfoLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C4A0;
  v1._countAndFlagsBits = 0xD00000000000004DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.turnOnICloudDriveInfoLocalized = v3;
}

void one-time initialization function for chooseSaveDataLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C570;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.chooseSaveDataLocalized = v3;
}

void one-time initialization function for chooseSaveDataInfoLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C510;
  v1._countAndFlagsBits = 0xD000000000000057;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.chooseSaveDataInfoLocalized = v3;
}

void one-time initialization function for notNowButtonTitleLocalized(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5)
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v9 = static GameSaveSyncedDirectory.bundleForGameSave;
  v13._object = 0xE000000000000000;
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v13);

  *a4 = v12._countAndFlagsBits;
  *a5 = v12._object;
}

Swift::Void __swiftcall GameSaveSyncedDirectory.drawStateUI(window:)(UIWindow *window)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = window;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v2;
  v11[5] = v9;
  v11[6] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)partial apply, v11);
}

uint64_t closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17UIAlertControllerCSgGMd, &_s7Combine9PublishedVySo17UIAlertControllerCSgGMR);
  v6[69] = v7;
  v6[70] = *(v7 - 8);
  v6[71] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMd, &_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMR);
  v6[72] = v8;
  v6[73] = *(v8 - 8);
  v6[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  v6[75] = swift_task_alloc();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v6[76] = v9;
  v6[77] = *(v9 - 8);
  v6[78] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[79] = v10;
  v6[80] = *(v10 - 8);
  v6[81] = swift_task_alloc();
  v11 = type metadata accessor for DispatchTime();
  v6[82] = v11;
  v6[83] = *(v11 - 8);
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();
  v12 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v6[86] = v12;
  v6[87] = *(v12 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[92] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in GameSaveSyncedDirectory.drawStateUI(window:), v14, v13);
}

id closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)()
{
  v147 = v0;
  v1 = v0[91];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v2;
  GameSaveSyncedDirectory.window.setter(v2);
  v5 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v5 lock];
  swift_getKeyPath();
  v0[50] = v3;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v1);
  [v5 unlock];
  LOBYTE(v2) = GameSaveSyncedDirectory.checkSameAlertState(as:)();
  outlined destroy of GameSaveSyncedDirectory.State(v1, type metadata accessor for GameSaveSyncedDirectory.State);
  if ((v2 & 1) == 0)
  {
    v7 = v0[66];
    swift_getKeyPath();
    v0[65] = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v7 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert);
    if (v8)
    {
      v9 = v0[67];
      v10 = v0[66];
      v11 = v8;

      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = v9;
      v0[13] = partial apply for closure #1 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
      v0[14] = v12;
      v0[9] = MEMORY[0x277D85DD0];
      v0[10] = 1107296256;
      v0[11] = thunk for @escaping @callee_guaranteed () -> ();
      v0[12] = &block_descriptor_302;
      v13 = _Block_copy(v0 + 9);
      v14 = v9;

      [v11 dismissViewControllerAnimated:0 completion:v13];
      _Block_release(v13);

      goto LABEL_5;
    }

    v141 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert;
    v143 = v7;
    v17 = v0[90];
    v18 = v0[66];
    [v5 lock];
    swift_getKeyPath();
    v0[63] = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(v3 + v6, v17);
    [v5 unlock];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v36 = v0[90];

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v21 = v0[84];
        v22 = v0[83];
        v23 = v0[82];
        v118 = v0[85];
        v121 = v0[81];
        v139 = v0[80];
        v142 = v0[79];
        v135 = v0[77];
        v129 = v0[78];
        v132 = v0[76];
        v24 = v0[66];
        v144 = *(v0 + 67);

        type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        v126 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        swift_getKeyPath();
        v0[62] = v24;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        + infix(_:_:)();
        v25 = *(v22 + 8);
        v25(v21, v23);
        v26 = swift_allocObject();
        *(v26 + 16) = v24;
        *(v26 + 24) = v144;
        v0[25] = partial apply for closure #2 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
        v0[26] = v26;
        v0[21] = MEMORY[0x277D85DD0];
        v0[22] = 1107296256;
        v0[23] = thunk for @escaping @callee_guaranteed () -> ();
        v0[24] = &block_descriptor_296;
        v27 = _Block_copy(v0 + 21);
        v28 = v144;

        static DispatchQoS.unspecified.getter();
        v0[64] = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x23EE6B950](v118, v121, v129, v27);
        _Block_release(v27);

        (*(v135 + 8))(v129, v132);
        (*(v139 + 8))(v121, v142);
        v25(v118, v23);

        goto LABEL_5;
      }

LABEL_15:
      v29 = v0[90];

      v30 = v29;
LABEL_57:
      outlined destroy of GameSaveSyncedDirectory.State(v30, type metadata accessor for GameSaveSyncedDirectory.State);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        v146 = specialized Array._copyToContiguousArray()(v20);
        specialized MutableCollection<>.sort(by:)(&v146);
        v37 = v0[87];
        v38 = v0[75];
        v122 = v0[86];
        v124 = v0[74];
        v127 = v0[73];
        v130 = v0[72];
        v133 = v0[71];
        v137 = v0[70];
        v140 = v0[69];
        v39 = v0[66];
        v119 = v146;
        [v5 lock];
        swift_getKeyPath();
        v0[61] = v39;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        outlined init with copy of GameSaveSyncedDirectory.State(v3 + v6, v38);
        [v5 unlock];
        (*(v37 + 56))(v38, 0, 1, v122);
        swift_getKeyPath();
        v40 = swift_task_alloc();
        *(v40 + 16) = v39;
        *(v40 + 24) = v38;
        v0[60] = v39;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        outlined destroy of URL?(v38, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
        type metadata accessor for GameSaveSyncedDirectory.StateObserver(0);
        v41 = swift_allocObject();
        v42 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__selectedVersion;
        v0[51] = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC7VersionCSgMd, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMR);
        Published.init(initialValue:)();
        (*(v127 + 32))(v41 + v42, v124, v130);
        v43 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__alertAction;
        v0[48] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17UIAlertControllerCSgMd, &_sSo17UIAlertControllerCSgMR);
        Published.init(initialValue:)();
        (*(v137 + 32))(v41 + v43, v133, v140);
        *(v41 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory) = v39;
        swift_getKeyPath();
        v44 = swift_task_alloc();
        *(v44 + 16) = v39;
        *(v44 + 24) = v41;
        v0[46] = v39;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        if (one-time initialization token for chooseSaveDataLocalized != -1)
        {
          swift_once();
        }

        if (one-time initialization token for chooseSaveDataInfoLocalized != -1)
        {
          swift_once();
        }

        v45 = v0[66];
        v46 = static GameSaveSyncedDirectory.chooseSaveDataInfoLocalized;
        v47 = MEMORY[0x23EE6B6E0]();
        v48 = MEMORY[0x23EE6B6E0](v46, *(&v46 + 1));
        v49 = [objc_opt_self() alertControllerWithTitle:v47 message:v48 preferredStyle:1];

        GameSaveSyncedDirectory.alert.setter(v49);
        swift_getKeyPath();
        v0[44] = v45;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v50 = *(v143 + v141);
        if (!v50)
        {
          goto LABEL_28;
        }

        result = [v50 view];
        if (result)
        {
          v51 = result;
          v52 = MEMORY[0x23EE6B6E0](0xD000000000000019, 0x800000023898C350);
          [v51 setAccessibilityIdentifier_];

LABEL_28:
          v53 = v0[66];
          swift_getKeyPath();
          v0[45] = v53;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v54 = *(v143 + v141);
          if (!v54)
          {

            goto LABEL_5;
          }

          v55 = v54;
          result = [v55 view];
          if (result)
          {
            v56 = result;

            [v56 setTranslatesAutoresizingMaskIntoConstraints_];

            if (one-time initialization token for conflictContinueButtonTitleLocalized != -1)
            {
              swift_once();
            }

            v57 = v0[66];
            v58 = static GameSaveSyncedDirectory.conflictContinueButtonTitleLocalized;
            v59 = *algn_27DF41F78;

            v60 = MEMORY[0x23EE6B6E0](v58, v59);
            v0[19] = partial apply for closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
            v0[20] = v57;
            v0[15] = MEMORY[0x277D85DD0];
            v0[16] = 1107296256;
            v0[17] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
            v0[18] = &block_descriptor_282;
            v61 = _Block_copy(v0 + 15);

            v62 = [objc_opt_self() actionWithTitle:v60 style:0 handler:v61];
            _Block_release(v61);

            v63 = MEMORY[0x23EE6B6E0](0xD00000000000001BLL, 0x800000023898C390);
            [v62 setAccessibilityIdentifier_];

            [v62 setEnabled_];
            [v55 addAction_];
            swift_getKeyPath();
            v0[47] = v57;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            if (*(v57 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver))
            {
              v145 = v0[67];
              lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory.StateObserver and conformance GameSaveSyncedDirectory.StateObserver, type metadata accessor for GameSaveSyncedDirectory.StateObserver, &protocol conformance descriptor for GameSaveSyncedDirectory.StateObserver);
              swift_retain_n();
              v64 = v62;
              v65 = ObservedObject.init(wrappedValue:)();
              v67 = v66;
              v0[49] = v119;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR);
              State.init(wrappedValue:)();
              v68 = v0[41];
              v69 = v0[42];
              v0[43] = 0;
              State.init(wrappedValue:)();
              v71 = v0[39];
              v70 = v0[40];
              v0[2] = v65;
              v0[3] = v67;
              v0[4] = v68;
              v0[5] = v69;
              v0[6] = v71;
              v0[7] = v70;
              v0[8] = v64;
              specialized GameSaveSyncedDirectory._customizeAlert<A>(_:with:)(v55, v0 + 1);

              v72 = [v145 rootViewController];
              if (v72)
              {
                v73 = v72;
                [v72 presentViewController:v55 animated:1 completion:0];
              }

              else
              {
              }
            }

            else
            {
            }

            goto LABEL_5;
          }

LABEL_64:
          __break(1u);
          return result;
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      goto LABEL_15;
    }

    v136 = v0 + 89;
    v31 = v0[89];
    v32 = v0 + 88;
    v33 = v0[88];
    v34 = v0[66];
    [v5 lock];
    swift_getKeyPath();
    v0[52] = v34;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(v3 + v6, v31);
    [v5 unlock];
    outlined init with copy of GameSaveSyncedDirectory.State(v31, v33);
    v35 = swift_getEnumCaseMultiPayload();
    if (v35 == 2)
    {
      v113 = *v136;
      v114 = *v32;
      v115 = specialized static GameSaveSyncedDirectory.shouldDismissSignedOutError()();
      outlined destroy of GameSaveSyncedDirectory.State(v113, type metadata accessor for GameSaveSyncedDirectory.State);
      outlined destroy of GameSaveSyncedDirectory.State(v114, type metadata accessor for GameSaveSyncedDirectory.State);
      if (v115)
      {
LABEL_53:

LABEL_56:
        v30 = v0[90];
        goto LABEL_57;
      }
    }

    else
    {
      if (v35 == 5)
      {
        v32 = v0 + 89;
      }

      else
      {
        if (v35 != 3)
        {
          v116 = v0[89];
          v117 = v0[88];

          outlined destroy of GameSaveSyncedDirectory.State(v116, type metadata accessor for GameSaveSyncedDirectory.State);
          outlined destroy of GameSaveSyncedDirectory.State(v117, type metadata accessor for GameSaveSyncedDirectory.State);
          goto LABEL_56;
        }

        outlined destroy of GameSaveSyncedDirectory.State(*v136, type metadata accessor for GameSaveSyncedDirectory.State);
      }

      outlined destroy of GameSaveSyncedDirectory.State(*v32, type metadata accessor for GameSaveSyncedDirectory.State);
    }

    v74 = v0[87];
    v75 = v0[75];
    v120 = v0[86];
    v123 = v0[74];
    v125 = v0[73];
    v128 = v0[72];
    v131 = v0[71];
    v134 = v0[70];
    v138 = v0[69];
    v76 = v0[66];
    [v5 lock];
    swift_getKeyPath();
    v0[53] = v76;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(v3 + v6, v75);
    [v5 unlock];
    (*(v74 + 56))(v75, 0, 1, v120);
    swift_getKeyPath();
    v77 = swift_task_alloc();
    *(v77 + 16) = v76;
    *(v77 + 24) = v75;
    v0[54] = v76;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of URL?(v75, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
    type metadata accessor for GameSaveSyncedDirectory.StateObserver(0);
    v78 = swift_allocObject();
    v79 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__selectedVersion;
    v0[55] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC7VersionCSgMd, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMR);
    Published.init(initialValue:)();
    (*(v125 + 32))(v78 + v79, v123, v128);
    v80 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__alertAction;
    v0[56] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17UIAlertControllerCSgMd, &_sSo17UIAlertControllerCSgMR);
    Published.init(initialValue:)();
    (*(v134 + 32))(v78 + v80, v131, v138);
    *(v78 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory) = v76;
    swift_getKeyPath();
    v81 = swift_task_alloc();
    *(v81 + 16) = v76;
    *(v81 + 24) = v78;
    v0[57] = v76;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (one-time initialization token for turnOnICloudDriveTitleLocalized != -1)
    {
      swift_once();
    }

    if (one-time initialization token for turnOnICloudDriveInfoLocalized != -1)
    {
      swift_once();
    }

    v82 = v0[66];
    v83 = static GameSaveSyncedDirectory.turnOnICloudDriveInfoLocalized;
    v84 = MEMORY[0x23EE6B6E0]();
    v85 = MEMORY[0x23EE6B6E0](v83, *(&v83 + 1));
    v86 = [objc_opt_self() alertControllerWithTitle:v84 message:v85 preferredStyle:1];

    GameSaveSyncedDirectory.alert.setter(v86);
    swift_getKeyPath();
    v0[58] = v82;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v87 = *(v143 + v141);
    if (v87)
    {
      result = [v87 view];
      if (!result)
      {
        __break(1u);
        goto LABEL_62;
      }

      v88 = result;
      v89 = MEMORY[0x23EE6B6E0](0xD000000000000023, 0x800000023898C3B0);
      [v88 setAccessibilityIdentifier_];
    }

    v90 = v0[66];
    swift_getKeyPath();
    v0[59] = v90;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v91 = *(v143 + v141);
    if (v91)
    {
      v92 = v91;
      result = [v92 view];
      if (result)
      {
        v93 = result;

        [v93 setTranslatesAutoresizingMaskIntoConstraints_];

        if (one-time initialization token for notNowButtonTitleLocalized != -1)
        {
          swift_once();
        }

        v94 = v0[66];
        v95 = static GameSaveSyncedDirectory.notNowButtonTitleLocalized;
        v96 = *algn_27DF41F38;

        v97 = MEMORY[0x23EE6B6E0](v95, v96);
        v0[37] = partial apply for closure #3 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
        v0[38] = v94;
        v0[33] = MEMORY[0x277D85DD0];
        v0[34] = 1107296256;
        v0[35] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        v0[36] = &block_descriptor_287;
        v98 = _Block_copy(v0 + 33);

        v99 = objc_opt_self();
        v100 = [v99 actionWithTitle:v97 style:0 handler:v98];
        _Block_release(v98);

        v101 = MEMORY[0x23EE6B6E0](0xD00000000000001ELL, 0x800000023898C3E0);
        [v100 setAccessibilityIdentifier_];

        if (one-time initialization token for settingsButtonTitleLocalized != -1)
        {
          swift_once();
        }

        v102 = v0[67];
        v103 = v0[66];
        v104 = static GameSaveSyncedDirectory.settingsButtonTitleLocalized;
        v105 = *algn_27DF41F48;

        v106 = MEMORY[0x23EE6B6E0](v104, v105);
        v0[31] = partial apply for closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
        v0[32] = v103;
        v0[27] = MEMORY[0x277D85DD0];
        v0[28] = 1107296256;
        v0[29] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        v0[30] = &block_descriptor_290;
        v107 = _Block_copy(v0 + 27);

        v108 = [v99 actionWithTitle:v106 style:0 handler:v107];
        _Block_release(v107);

        v109 = MEMORY[0x23EE6B6E0](0xD000000000000017, 0x800000023898C400);
        [v108 setAccessibilityIdentifier_];

        v110 = MEMORY[0x23EE6B6E0](0xD00000000000001ELL, 0x800000023898C3E0);
        [v100 setAccessibilityIdentifier_];

        [v92 addAction_];
        [v92 addAction_];
        [v92 setPreferredAction_];
        v111 = [v102 rootViewController];
        if (v111)
        {
          v112 = v111;
          [v111 presentViewController:v92 animated:1 completion:0];
        }

        else
        {
        }

        goto LABEL_56;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    goto LABEL_53;
  }

LABEL_5:

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, UIWindow *a2)
{
  v11 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v10 - 2) = a1;
  *(&v10 - 1) = v5;
  v12 = a1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of URL?(v5, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  if (*(a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert))
  {
    v8 = swift_getKeyPath();
    MEMORY[0x28223BE20](v8);
    *(&v10 - 2) = a1;
    *(&v10 - 1) = 0;
    v12 = a1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  GameSaveSyncedDirectory.drawStateUI(window:)(v11);
}

void closure #2 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(char *a1, void *a2)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17UIAlertControllerCSgGMd, &_s7Combine9PublishedVySo17UIAlertControllerCSgGMR);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMd, &_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMR);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v47 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *&a1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock];
  [v13 lock];
  swift_getKeyPath();
  aBlock[0] = a1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  outlined init with copy of GameSaveSyncedDirectory.State(&a1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state], v12);
  [v13 unlock];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of GameSaveSyncedDirectory.State(v12, type metadata accessor for GameSaveSyncedDirectory.State);
  if (EnumCaseMultiPayload != 5)
  {

    return;
  }

  [v13 lock];
  swift_getKeyPath();
  aBlock[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(&a1[v14], v9);
  [v13 unlock];
  (*(v40 + 56))(v9, 0, 1, v10);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v39 - 2) = a1;
  *(&v39 - 1) = v9;
  aBlock[0] = a1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of URL?(v9, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  type metadata accessor for GameSaveSyncedDirectory.StateObserver(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__selectedVersion;
  aBlock[0] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC7VersionCSgMd, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMR);
  v19 = v41;
  Published.init(initialValue:)();
  (*(v42 + 32))(&v17[v18], v19, v43);
  v20 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__alertAction;
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17UIAlertControllerCSgMd, &_sSo17UIAlertControllerCSgMR);
  v21 = v44;
  Published.init(initialValue:)();
  (*(v45 + 32))(&v17[v20], v21, v46);
  *&v17[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory] = a1;
  v22 = swift_getKeyPath();
  MEMORY[0x28223BE20](v22);
  *(&v39 - 2) = a1;
  *(&v39 - 1) = v17;
  aBlock[0] = a1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (one-time initialization token for syncSaveDataTitleLocalized != -1)
  {
    swift_once();
  }

  v23 = MEMORY[0x23EE6B6E0](static GameSaveSyncedDirectory.syncSaveDataTitleLocalized, *(&static GameSaveSyncedDirectory.syncSaveDataTitleLocalized + 1));
  v24 = MEMORY[0x23EE6B6E0](0, 0xE000000000000000);
  v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

  GameSaveSyncedDirectory.alert.setter(v25);
  swift_getKeyPath();
  aBlock[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert;
  v27 = *&a1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert];
  if (v27)
  {
    v28 = [v27 view];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v28;
    v30 = MEMORY[0x23EE6B6E0](0xD000000000000017, 0x800000023898C440);
    [v29 setAccessibilityIdentifier_];
  }

  if (one-time initialization token for syncingContinueButtonTitleLocalized != -1)
  {
    swift_once();
  }

  v31 = static GameSaveSyncedDirectory.syncingContinueButtonTitleLocalized;

  v32 = MEMORY[0x23EE6B6E0](v31, *(&v31 + 1));
  aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_309;
  v33 = _Block_copy(aBlock);

  v34 = [objc_opt_self() actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  swift_getKeyPath();
  aBlock[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*&a1[v26] addAction_];
  swift_getKeyPath();
  aBlock[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *&a1[v26];
  if (v35)
  {
    v36 = v35;
    specialized GameSaveSyncedDirectory._customizeAlert<A>(_:with:)(v36);
    v37 = [v39 rootViewController];
    if (v37)
    {
      v38 = v37;
      [v37 presentViewController:v36 animated:1 completion:0];
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t closure #1 in closure #2 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver))
  {

    GameSaveSyncedDirectory.StateObserver.cancel()();
  }
}

uint64_t closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:), v6, v5);
}

uint64_t closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver))
  {
    v2 = objc_opt_self();

    v3 = [v2 standardUserDefaults];
    v4 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
    [v3 setBool:1 forKey:v4];

    GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)(destructiveProjectEnumData for GameSaveFF, 0);
  }

  v5 = v0[1];

  return v5();
}

uint64_t closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v10 = MEMORY[0x277D85700];
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v10;
  v13[4] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, a5, v13);
}

uint64_t closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:), v6, v5);
}

uint64_t closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v2 = v0[2];
    if (v2)
    {

      GameSaveSyncedDirectory.resolveConflicts(with:)(v2);
    }
  }

  v3 = v0[1];

  return v3();
}

uint64_t GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory.finishSyncing(statusDisplay:), 0, 0);
}

uint64_t GameSaveSyncedDirectory.finishSyncing(statusDisplay:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = v4;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v3;
  v8[5] = v6;
  v8[6] = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in GameSaveSyncedDirectory.drawStateUI(window:), v8);

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v6;
  v11 = (v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  v12 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  v13 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange + 8);
  *v11 = partial apply for closure #1 in GameSaveSyncedDirectory.showUI(window:);
  v11[1] = v10;

  v14 = v6;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(v12, v13);
  v15 = swift_task_alloc();
  v0[6] = v15;
  *v15 = v0;
  v15[1] = GameSaveSyncedDirectory.finishSyncing(statusDisplay:);

  return GameSaveSyncedDirectory.waitWithUI()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t GameSaveSyncedDirectory.waitWithUI()()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v1[6] = swift_task_alloc();
  v2 = swift_task_alloc();
  v3 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v1[7] = v2;
  v1[8] = v4;
  v1[9] = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  v1[10] = *(v0 + v3);
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = GameSaveSyncedDirectory.waitWithUI();

  return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(1);
}

{

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory.waitWithUI(), 0, 0);
}

{
  v1 = v0[10];
  v3 = v0 + 7;
  v2 = v0[7];
  v5 = v0 + 6;
  v4 = v0[6];
  v21 = v0[9];
  v6 = v0[3];
  [v1 lock];
  swift_getKeyPath();
  v0[2] = v6;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v6 + v21, v2);
  [v1 unlock];
  outlined init with copy of GameSaveSyncedDirectory.State(v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10 = *v3;
      v11 = *v5;
      v12 = specialized static GameSaveSyncedDirectory.shouldDismissSignedOutError()();
      outlined destroy of GameSaveSyncedDirectory.State(v10, type metadata accessor for GameSaveSyncedDirectory.State);
      outlined destroy of GameSaveSyncedDirectory.State(v11, type metadata accessor for GameSaveSyncedDirectory.State);
      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }

      break;
    case 3:
      outlined destroy of GameSaveSyncedDirectory.State(*v3, type metadata accessor for GameSaveSyncedDirectory.State);
      goto LABEL_6;
    case 5:
      v5 = v0 + 7;
LABEL_6:
      outlined destroy of GameSaveSyncedDirectory.State(*v5, type metadata accessor for GameSaveSyncedDirectory.State);
LABEL_7:
      v8 = swift_task_alloc();
      v0[11] = v8;
      *v8 = v0;
      v8[1] = GameSaveSyncedDirectory.waitWithUI();

      return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(1);
    default:
      v13 = *v5;
      outlined destroy of GameSaveSyncedDirectory.State(*v3, type metadata accessor for GameSaveSyncedDirectory.State);
      outlined destroy of GameSaveSyncedDirectory.State(v13, type metadata accessor for GameSaveSyncedDirectory.State);
      break;
  }

  v15 = v0[3];
  v14 = v0[4];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in GameSaveSyncedDirectory.waitWithUI(), v18);

  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in GameSaveSyncedDirectory.waitWithUI()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  v4[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in GameSaveSyncedDirectory.waitWithUI(), v6, v5);
}

uint64_t closure #1 in GameSaveSyncedDirectory.waitWithUI()()
{
  v1 = v0[6];

  swift_getKeyPath();
  v0[2] = v1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert;
  v2 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:0 completion:0];
  }

  v3 = v0[6];
  v4 = v0[7];
  v5 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v0[3] = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of URL?(v4, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  if (*(v1 + v13))
  {
    v7 = v0[6];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[5] = v7;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v9 = v0[6];
  if (*(v9 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window))
  {
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    v0[4] = v9;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v11 = v0[1];

  return v11();
}

uint64_t GameSaveSyncedDirectory.finishSyncing()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = GameSaveSyncedDirectory.finishSyncing();

  return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(0);
}

Swift::Void __swiftcall GameSaveSyncedDirectory.cancel()()
{
  v1 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v7 lock];
  swift_getKeyPath();
  v9 = v0;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v6);
  [v7 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v6, v4);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    swift_getKeyPath();
    v9 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) cancel];
  }

  else
  {
    outlined destroy of GameSaveSyncedDirectory.State(v4, type metadata accessor for GameSaveSyncedDirectory.State);
  }
}

Swift::Void __swiftcall GameSaveSyncedDirectory.close()()
{
  v1 = v0;
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v11 lock];
  swift_getKeyPath();
  v28 = v0;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v10);
  v12 = 0x278A5B000uLL;
  [v11 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v10, v8);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v8, type metadata accessor for GameSaveSyncedDirectory.State);
    GameSaveSyncedDirectory.cancel()();
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.common);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_238952000, v14, v15, "Close GameSaveSyncedDirectory", v16, 2u);
      MEMORY[0x23EE6C260](v16, -1, -1);
    }

    swift_getKeyPath();
    v28 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver);
    if (v17)
    {
      v18 = objc_opt_self();
      swift_unknownObjectRetain();
      v19 = [v18 defaultCenter];
      [v19 removeObserver_];

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v27 - 2) = v1;
      *(&v27 - 1) = 0;
      v28 = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_unknownObjectRelease();
      v12 = 0x278A5B000;
    }

    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v5);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v5);
    outlined destroy of GameSaveSyncedDirectory.State(v5, type metadata accessor for GameSaveSyncedDirectory.State);
    if (*(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse))
    {
      v21 = swift_getKeyPath();
      MEMORY[0x28223BE20](v21);
      *(&v27 - 2) = v1;
      *(&v27 - 1) = 0;
      v28 = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    v28 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
    v23 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
    v24 = *&v23[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock];
    v25 = v23;
    [v24 lock];
    closure #1 in GameSyncedDirectoryHolder.stopAccessingSecurityScopedResource()(v25);
    [v24 *(v12 + 2040)];

    swift_getKeyPath();
    v28 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v1 + v22);
    GameSyncedDirectoryHolder.stopHoldingItem()();
  }
}

uint64_t static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)(a1, a2);
}

uint64_t static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:), 0, 0);
}

uint64_t GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:)()
{
  if (!os_variant_has_internal_content())
  {
    goto LABEL_21;
  }

  v1 = v0[8];
  v2 = v0[6];
  v3 = *(v0[10] + 56);
  v3(v0[15], 1, 1, v0[9]);
  v4 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v4 lock];
  swift_getKeyPath();
  v0[2] = v2;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v1);
  [v4 unlock];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = *v0[8];
      if (v12 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x23EE6BAE0](v32))
      {
        v14 = 0;
        v33 = v3;
        while ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x23EE6BA40](v14, v12);
          v3 = (v14 + 1);
          if (__OFADD__(v14, 1))
          {
            goto LABEL_30;
          }

LABEL_14:
          if (*(v15 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion))
          {
            v20 = v0[15];
            v22 = v0[9];
            v21 = v0[10];
            v23 = v15;
            outlined destroy of URL?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

            (*(v21 + 16))(v20, v23 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL, v22);

            v33(v20, 0, 1, v22);
            goto LABEL_19;
          }

          ++v14;
          if (v3 == i)
          {
            goto LABEL_16;
          }
        }

        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v3 = (v14 + 1);
        if (!__OFADD__(v14, 1))
        {
          goto LABEL_14;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        if (v12 < 0)
        {
          v32 = v12;
        }

        else
        {
          v32 = v12 & 0xFFFFFFFFFFFFFF8;
        }
      }

LABEL_16:
      __break(1u);
    }

    v16 = v0[15];
    v17 = v0[8];
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
    outlined destroy of URL?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of GameSaveSyncedDirectory.State(v17, type metadata accessor for GameSaveSyncedDirectory.State);

    v19 = v0[1];
LABEL_22:

    return v19();
  }

  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v9 = v3;
  v11 = v0[9];
  v10 = v0[10];
  (*(v10 + 32))(v8, v0[8], v11);
  URL.deletingLastPathComponent()();
  (*(v10 + 8))(v8, v11);
  outlined destroy of URL?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9(v7, 0, 1, v11);
  outlined init with take of URL?(v7, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_19:
  v24 = v0[13];
  v26 = v0[9];
  v25 = v0[10];
  outlined init with copy of URL?(v0[15], v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v25 + 48))(v24, 1, v26) == 1)
  {
    outlined destroy of URL?(v0[15], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of URL?(v0[13], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_21:

    v19 = v0[1];
    goto LABEL_22;
  }

  v28 = v0[6];
  (*(v0[10] + 32))(v0[11], v0[13], v0[9]);
  swift_getKeyPath();
  v0[3] = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v28 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse))
  {
    String.utf8CString.getter();
  }

  v29 = v0[4];
  v0[16] = sandbox_extension_consume();
  swift_unknownObjectRelease();
  v34 = (v29 + *v29);
  v30 = swift_task_alloc();
  v0[17] = v30;
  *v30 = v0;
  v30[1] = GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:);
  v31 = v0[11];

  return v34(v31);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:);
  }

  else
  {
    v2 = GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (v0[16] != -1)
  {
    sandbox_extension_release();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  outlined destroy of URL?(v0[15], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v1 = v0[1];

  return v1();
}

{
  if (v0[16] != -1)
  {
    sandbox_extension_release();
  }

  v1 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  outlined destroy of URL?(v1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v2 = v0[1];

  return v2();
}

uint64_t GameSaveSyncedDirectory.deinit()
{
  outlined destroy of GameSaveSyncedDirectory.State(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, type metadata accessor for GameSaveSyncedDirectory.State);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(*(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange), *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange + 8));

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  swift_unknownObjectRelease();

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alertPresentedState, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  v1 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GameSaveSyncedDirectory.__deallocating_deinit()
{
  GameSaveSyncedDirectory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance GameSaveSyncedDirectory@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);
  *a1 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  a1[1] = v4;
}

uint64_t key path getter for GameSaveSyncedDirectory.StateObserver.selectedVersion : GameSaveSyncedDirectory.StateObserver@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for GameSaveSyncedDirectory.StateObserver.selectedVersion : GameSaveSyncedDirectory.StateObserver(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8GameSave0hI15SyncedDirectoryC7VersionC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
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

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
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
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
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

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMd, &_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMR);
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

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMd, &_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMR);
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

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for GameSaveSyncedDirectory.Version(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for Date();
  v8 = *(v35 - 8);
  v9 = MEMORY[0x28223BE20](v35);
  v37 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v36 = &v27 - v12;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v14 = type metadata accessor for MainActor();
    v33 = (v8 + 16);
    v34 = v14;
    v32 = (v8 + 8);
    v38 = v13;
    v15 = (v13 + 8 * a3 - 8);
    v16 = a1 - a3;
LABEL_5:
    v30 = v15;
    v31 = a3;
    v17 = *(v38 + 8 * a3);
    v29 = v16;
    while (1)
    {
      v18 = *v15;

      v40 = static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v19 = *v33;
      v20 = v35;
      v21 = v36;
      (*v33)(v36, v17 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v35);
      v22 = v18 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
      v39 = v18;
      v23 = v37;
      v19(v37, v22, v20);
      LOBYTE(v19) = static Date.< infix(_:_:)();
      v24 = *v32;
      (*v32)(v23, v20);
      v24(v21, v20);

      if ((v19 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v15 = v30 + 1;
        v16 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v25 = *v15;
      v17 = v15[1];
      *v15 = v17;
      v15[1] = v25;
      --v15;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v127 = type metadata accessor for Date();
  v10 = MEMORY[0x28223BE20](v127);
  v126 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v125 = &v109 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_128:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v17 = result;
    }

    v130 = v17;
    v105 = *(v17 + 2);
    if (v105 >= 2)
    {
      while (*a3)
      {
        v106 = *&v17[16 * v105];
        v107 = *&v17[16 * v105 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v106), (*a3 + 8 * *&v17[16 * v105 + 16]), (*a3 + 8 * v107), v5);
        if (v6)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        }

        if (v105 - 2 >= *(v17 + 2))
        {
          goto LABEL_122;
        }

        v108 = &v17[16 * v105];
        *v108 = v106;
        *(v108 + 1) = v107;
        v130 = v17;
        result = specialized Array.remove(at:)(v105 - 1);
        v17 = v130;
        v105 = *(v130 + 2);
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v110 = a4;
  v16 = 0;
  v124 = (v13 + 16);
  v17 = MEMORY[0x277D84F90];
  v123 = (v13 + 8);
  v111 = a3;
  v114 = a1;
  while (1)
  {
    v18 = v16 + 1;
    if (v16 + 1 < v15)
    {
      v120 = v16 + 1;
      v121 = v15;
      v112 = v17;
      v19 = *(*a3 + 8 * v18);
      v128 = *a3;
      v20 = *(v128 + 8 * v16);
      v21 = type metadata accessor for MainActor();
      v5 = v19;

      v129 = v20;

      v22 = static MainActor.shared.getter();
      v118 = v21;
      v119 = v22;
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v23 = v125;
      v24 = *v124;
      v25 = v127;
      (*v124)(v125, &v19[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate], v127);
      v26 = v126;
      v117 = v24;
      v24(v126, v129 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v25);
      LODWORD(v122) = static Date.< infix(_:_:)();
      a3 = v123;
      v27 = *v123;
      (*v123)(v26, v25);
      v116 = v27;
      (v27)(v23, v25);

      v113 = v16;
      v28 = 8 * v16;
      v29 = (v128 + 8 * v16 + 16);
      v128 = v28;
      v30 = (v28 + 8);
      v18 = v120;
      do
      {
        v37 = v18;
        v17 = v30;
        ++v18;
        v115 = v37;
        if (v18 >= v121)
        {
          break;
        }

        v119 = v6;
        v120 = v18;
        v38 = *(v29 - 1);
        v5 = *v29;

        v129 = static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v31 = v125;
        v32 = v127;
        v33 = v117;
        (v117)(v125, &v5[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate], v127);
        v34 = v126;
        v33(v126, v38 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v32);
        v35 = static Date.< infix(_:_:)() & 1;
        a3 = v116;
        (v116)(v34, v32);
        (a3)(v31, v32);

        ++v29;
        v30 = v17 + 8;
        v36 = (v122 & 1) == v35;
        v6 = v119;
        v18 = v120;
      }

      while (v36);
      if (v122)
      {
        v16 = v113;
        if (v18 < v113)
        {
          goto LABEL_125;
        }

        a3 = v111;
        if (v113 >= v18)
        {
          v17 = v112;
          a1 = v114;
        }

        else
        {
          v39 = v113;
          a1 = v114;
          v40 = v115;
          do
          {
            if (v39 != v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v41 = *(v43 + v128);
              *(v43 + v128) = *&v17[v43];
              *&v17[v43] = v41;
            }

            ++v39;
            v17 -= 8;
            v128 += 8;
          }

          while (v39 < v40--);
          v17 = v112;
        }
      }

      else
      {
        a3 = v111;
        v17 = v112;
        v16 = v113;
        a1 = v114;
      }
    }

    v44 = a3[1];
    if (v18 < v44)
    {
      if (__OFSUB__(v18, v16))
      {
        goto LABEL_124;
      }

      if (v18 - v16 < v110)
      {
        if (__OFADD__(v16, v110))
        {
          goto LABEL_126;
        }

        if (v16 + v110 >= v44)
        {
          v45 = a3[1];
        }

        else
        {
          v45 = v16 + v110;
        }

        if (v45 < v16)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v45)
        {
          break;
        }
      }
    }

LABEL_45:
    if (v18 < v16)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      v17 = result;
    }

    v60 = *(v17 + 2);
    v59 = *(v17 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = v61;
    v62 = &v17[16 * v60];
    *(v62 + 4) = v16;
    *(v62 + 5) = v18;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    v16 = v18;
    if (v60)
    {
      while (1)
      {
        v63 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v64 = *(v17 + 4);
          v65 = *(v17 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_65:
          if (v67)
          {
            goto LABEL_112;
          }

          v80 = &v17[16 * v61];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_115;
          }

          v86 = &v17[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_119;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v61 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        v90 = &v17[16 * v61];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_79:
        if (v85)
        {
          goto LABEL_114;
        }

        v93 = &v17[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_117;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_86:
        v101 = v63 - 1;
        if (v63 - 1 >= v61)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v102 = *&v17[16 * v101 + 32];
        v103 = *&v17[16 * v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v102), (*a3 + 8 * *&v17[16 * v63 + 32]), (*a3 + 8 * v103), v5);
        if (v6)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        }

        if (v101 >= *(v17 + 2))
        {
          goto LABEL_109;
        }

        v104 = &v17[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        v130 = v17;
        result = specialized Array.remove(at:)(v63);
        v17 = v130;
        v61 = *(v130 + 2);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v17[16 * v61 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_110;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_111;
      }

      v75 = &v17[16 * v61];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_113;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_116;
      }

      if (v79 >= v71)
      {
        v97 = &v17[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_120;
        }

        if (v66 < v100)
        {
          v63 = v61 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_3:
    v15 = a3[1];
    a1 = v114;
    if (v16 >= v15)
    {
      goto LABEL_96;
    }
  }

  v112 = v17;
  v119 = v6;
  v46 = *a3;
  v121 = type metadata accessor for MainActor();
  v122 = v46;
  v47 = (v46 + 8 * v18 - 8);
  v113 = v16;
  v48 = (v16 - v18);
  v116 = v45;
LABEL_36:
  v120 = v18;
  v49 = *(v122 + 8 * v18);
  v117 = v48;
  v118 = v47;
  v50 = v48;
  while (1)
  {
    v128 = v50;
    v51 = *v47;

    v129 = static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v52 = v125;
    v53 = *v124;
    v54 = v127;
    (*v124)(v125, v49 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v127);
    v5 = v126;
    v53(v126, v51 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v54);
    LOBYTE(v53) = static Date.< infix(_:_:)();
    v55 = *v123;
    (*v123)(v5, v54);
    v55(v52, v54);

    if ((v53 & 1) == 0)
    {
LABEL_35:
      v18 = v120 + 1;
      v47 = v118 + 1;
      v48 = v117 - 1;
      if ((v120 + 1) != v116)
      {
        goto LABEL_36;
      }

      v18 = v116;
      v6 = v119;
      a3 = v111;
      v17 = v112;
      v16 = v113;
      a1 = v114;
      goto LABEL_45;
    }

    v56 = v128;
    if (!v122)
    {
      break;
    }

    v57 = *v47;
    v49 = v47[1];
    *v47 = v49;
    v47[1] = v57;
    --v47;
    v58 = __CFADD__(v56, 1);
    v50 = (v56 + 1);
    if (v58)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v9 = type metadata accessor for Date();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v44 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  v57 = a4;
  if (v14 >= v15 >> 3)
  {
    v55 = a1;
    v17 = a4;
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
      v17 = v57;
    }

    v58 = &v17[8 * v16];
    if (a3 - a2 < 8)
    {
      a1 = a2;
    }

    else
    {
      a1 = a2;
      if (a2 > v55)
      {
        v29 = type metadata accessor for MainActor();
        v47 = (v51 + 16);
        v48 = v29;
        v45 = v4;
        v46 = (v51 + 8);
LABEL_28:
        v51 = a1;
        v30 = a1 - 8;
        v31 = a3 - 8;
        v32 = v58;
        v49 = a1 - 8;
        do
        {
          v56 = v31;
          v34 = *(v32 - 1);
          v32 -= 8;
          v33 = v34;
          v35 = *v30;

          v50 = static MainActor.shared.getter();
          dispatch thunk of Actor.unownedExecutor.getter();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v36 = *v47;
          v37 = v52;
          v38 = v53;
          (*v47)(v53, v33 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v52);
          v39 = v54;
          v36(v54, v35 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v37);
          LOBYTE(v36) = static Date.< infix(_:_:)();
          v40 = *v46;
          (*v46)(v39, v37);
          v40(v38, v37);

          if (v36)
          {
            a3 = v56;
            v17 = v57;
            v42 = v49;
            if (v56 + 8 != v51)
            {
              *v56 = *v49;
            }

            if (v58 <= v17 || (a1 = v42, v42 <= v55))
            {
              a1 = v42;
              goto LABEL_42;
            }

            goto LABEL_28;
          }

          v41 = v56;
          v17 = v57;
          if (v56 + 8 != v58)
          {
            *v56 = *v32;
          }

          v31 = v41 - 8;
          v58 = v32;
          v30 = v49;
        }

        while (v32 > v17);
        v58 = v32;
        a1 = v51;
      }
    }
  }

  else
  {
    v17 = a4;
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
      v17 = v57;
    }

    v58 = &v17[8 * v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v56 = a3;
      v45 = v4;
      v18 = type metadata accessor for MainActor();
      v17 = v57;
      v49 = v51 + 16;
      v50 = v18;
      v19 = (v51 + 8);
      while (1)
      {
        v55 = a1;
        v51 = a2;
        v20 = *a2;
        v57 = v17;
        v21 = *v17;

        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v22 = *v49;
        v24 = v52;
        v23 = v53;
        (*v49)(v53, v20 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v52);
        v25 = v54;
        v22(v54, v21 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v24);
        LOBYTE(v22) = static Date.< infix(_:_:)();
        v26 = *v19;
        (*v19)(v25, v24);
        v26(v23, v24);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = v51;
        a2 = v51 + 8;
        v28 = v55;
        v17 = v57;
        if (v55 != v51)
        {
          goto LABEL_18;
        }

LABEL_19:
        a1 = v28 + 8;
        if (v17 >= v58 || a2 >= v56)
        {
          goto LABEL_42;
        }
      }

      v27 = v57;
      v17 = v57 + 8;
      v28 = v55;
      a2 = v51;
      if (v55 == v57)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v28 = *v27;
      goto LABEL_19;
    }
  }

LABEL_42:
  if (a1 != v17 || a1 >= &v17[(v58 - v17 + (v58 - v17 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, v17, 8 * ((v58 - v17) / 8));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v3 = MEMORY[0x23EE6BAE0](a1);
  if (!v3)
  {
LABEL_9:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8GameSave0hI15SyncedDirectoryC7VersionC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, v2);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x23EE6BAE0](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x23EE6BAE0](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [GameSaveSyncedDirectory.Version] and conformance [A], &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GameSaveSyncedDirectory.Version(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE6BA40](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id specialized closure #1 in closure #1 in static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)()
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.common);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238952000, v1, v2, "Interruption handler called", v3, 2u);
    MEMORY[0x23EE6C260](v3, -1, -1);
  }

  v4 = static GameSaveSyncedDirectory.connectionToService;

  return [v4 invalidate];
}

void specialized closure #2 in closure #1 in static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)()
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.common);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238952000, v1, v2, "Invalidation handler called", v3, 2u);
    MEMORY[0x23EE6C260](v3, -1, -1);
  }

  v4 = static GameSaveSyncedDirectory.connectionToService;
  static GameSaveSyncedDirectory.connectionToService = 0;
}

uint64_t specialized static GameSaveSyncedDirectory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v5 == *(a2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier) && v4 == *(a2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t outlined init with copy of GameSaveSyncedDirectory.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void specialized RemoteProgressObserver.observeValue(forKeyPath:of:change:context:)()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_remoteProgress] userInfo];
  type metadata accessor for NSProgressUserInfoKey(0);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey, &protocol conformance descriptor for NSProgressUserInfoKey);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CCAED8]), (v5 & 1) != 0))
  {
    outlined init with copy of Any(*(v3 + 56) + 32 * v4, v21);

    if (swift_dynamicCast())
    {
      v6 = *&v1[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_localProgress];
      v7 = MEMORY[0x23EE6B6E0]();

      [v6 setLocalizedDescription_];
    }
  }

  else
  {
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.common);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_12;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v21[0] = v13;
  *v12 = 136315394;
  v14 = *&v9[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_localProgress];
  v15 = [v14 localizedDescription];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v21);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2048;
    [v14 fractionCompleted];
    *(v12 + 14) = v20;
    _os_log_impl(&dword_238952000, v10, v11, "Progress %s %f%%", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EE6C260](v13, -1, -1);
    MEMORY[0x23EE6C260](v12, -1, -1);
LABEL_12:

    return;
  }

  __break(1u);
}

uint64_t specialized static GameSaveSyncedDirectory._resolveContainerIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = SecTaskCreateFromSelf(0);
    if (v3)
    {
      v4 = v3;
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.common);
      v6 = specialized static EntitlementsUtils.getEntitledContainerIdentifiers(for:logger:)(v4);
      if (v6)
      {
        if (*(v6 + 16))
        {
          a1 = *(v6 + 32);

          goto LABEL_11;
        }
      }
    }

    a1 = 0;
  }

LABEL_11:

  return a1;
}

uint64_t specialized static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for connectionLock != -1)
  {
    swift_once();
  }

  v4 = static GameSaveSyncedDirectory.connectionLock;
  [static GameSaveSyncedDirectory.connectionLock lock];
  if (!static GameSaveSyncedDirectory.connectionToService)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v6 = MEMORY[0x23EE6B6E0](0xD000000000000013, 0x800000023898C1D0);
    v7 = [v5 initWithMachServiceName:v6 options:0];

    v8 = static GameSaveSyncedDirectory.connectionToService;
    static GameSaveSyncedDirectory.connectionToService = v7;
    v9 = v7;

    if (v9)
    {
      isa = gameSaveXPCInterface()().super.isa;
      [v9 setRemoteObjectInterface_];
      v23 = specialized closure #1 in closure #1 in static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:);
      v24 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = thunk for @escaping @callee_guaranteed () -> ();
      v22 = &block_descriptor_237;
      v11 = _Block_copy(&aBlock);

      [v9 setInterruptionHandler_];
      _Block_release(v11);
      v23 = specialized closure #2 in closure #1 in static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:);
      v24 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = thunk for @escaping @callee_guaranteed () -> ();
      v22 = &block_descriptor_240;
      v12 = _Block_copy(&aBlock);

      [v9 setInvalidationHandler_];
      _Block_release(v12);
      [v9 resume];
    }
  }

  [v4 unlock];
  v13 = static GameSaveSyncedDirectory.connectionToService;
  if (!static GameSaveSyncedDirectory.connectionToService)
  {
    return 0;
  }

  v23 = a1;
  v24 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v22 = &block_descriptor_234;
  v14 = _Block_copy(&aBlock);
  v15 = v13;

  v16 = [v15 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB14DaemonProtocol_pMd, &_s8GameSave0aB14DaemonProtocol_pMR);
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of URL?(v4, &v13, &_sSS_yptMd, _sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError()
{
  result = lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError;
  if (!lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError;
  if (!lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError);
  }

  return result;
}

uint64_t outlined init with take of GameSaveSyncedDirectory.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_238969C68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GameSaveSyncedDirectory.lastResponse.setter(v1);
}

uint64_t partial apply for closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:)(a1, v4, v5, v6);
}

double partial apply for closure #1 in GameSaveSyncedDirectory.directorySyncStartTime.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime) = result;
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized GameSaveSyncedDirectory.checkForConflicts(_:_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for URLResourceValues();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized GameSaveSyncedDirectory.checkForConflicts(_:_:), 0, 0);
}

void specialized GameSaveSyncedDirectory.checkForConflicts(_:_:)()
{
  v222 = v0;
  v1 = v0;
  v221 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 336);
  v212 = *(v1 + 328);
  v3 = *(v1 + 264);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  v204 = v4;
  v206 = *(v1 + 256);
  *(v1 + 344) = v1;
  swift_getKeyPath();
  *(v1 + 352) = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  *(v1 + 88) = v5;
  *(v1 + 360) = lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
  v209 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
  *(v1 + 368) = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
  v7 = *(v4 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL);
  v8 = *(v5 + v6);
  v9 = [v7 url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = *&v8[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock];
  [v10 lock];
  v8[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_shouldStopAccessingSecurityScopedResource] = URL.startAccessingSecurityScopedResource()();
  v11 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL;
  outlined destroy of URL?(&v8[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = v3[2];
  *(v1 + 376) = v12;
  *(v1 + 384) = (v3 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13 = v206;
  v12(&v8[v11], v2, v206);
  v14 = v3[7];
  *(v1 + 392) = v14;
  *(v1 + 400) = (v3 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(&v8[v11], 0, 1, v206);
  [v10 unlock];
  v15 = v3[1];
  *(v1 + 408) = v15;
  *(v1 + 416) = (v3 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v202 = v15;
  v15(v2, v206);

  String.utf8CString.getter();
  v200 = sandbox_extension_consume();
  *(v1 + 424) = v200;

  v207 = v12;
  v12(v212, v204 + OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL, v13);
  swift_getKeyPath();
  *(v1 + 96) = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v5 + v209);
  v17 = *&v16[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock];
  v18 = v16;
  [v17 lock];
  closure #1 in GameSyncedDirectoryHolder.startHoldingItem(at:)(v18, v212);
  *(v1 + 432) = 0;
  v213 = v1 + 96;
  v19 = *(v1 + 256);
  v20 = *(v1 + 264);
  v21 = *(v1 + 248);
  [v17 unlock];

  GameSaveSyncedDirectory.getLocalURL()(v21);
  v22 = *(v20 + 48);
  *(v1 + 440) = v22;
  *(v1 + 448) = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v23 = v1;
  if (v22(v21, 1, v19) != 1)
  {
    (*(*(v1 + 264) + 32))(*(v1 + 320), *(v1 + 248), *(v1 + 256));
    *(v1 + 504) = 0;
    v27 = objc_opt_self();
    v28 = [v27 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
    v30 = MEMORY[0x23EE6B6E0](countAndFlagsBits);

    v31 = [v28 fileExistsAtPath:v30 isDirectory:v1 + 504];

    v26 = v1 + 96;
    if (!v31 || *(v1 + 504) != 1)
    {
      v25 = v202;
      v202(*(v1 + 320), *(v1 + 256));
      v24 = 0;
      goto LABEL_9;
    }

    v32 = (v1 + 56);
    v33 = [v27 defaultManager];
    v34 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

    v35 = v200;
    if (v34)
    {
      v36 = [v34 nextObject];
      v37 = v23[40];
      v38 = v23[32];
      if (v36)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        v25 = v202;
        v202(v37, v38);
      }

      else
      {
        v25 = v202;
        v202(v23[40], v23[32]);

        v219 = 0u;
        v220 = 0u;
      }

      v157 = v220;
      *v32 = v219;
      *(v213 - 24) = v157;
      if (v23[10])
      {
        v24 = 1;
LABEL_73:
        outlined destroy of URL?(v213 - 40, &_sypSgMd, &_sypSgMR);
        goto LABEL_10;
      }
    }

    else
    {
      v25 = v202;
      v202(v23[40], v23[32]);
      *v32 = 0u;
      *(v213 - 24) = 0u;
    }

    v24 = 0;
    goto LABEL_73;
  }

  outlined destroy of URL?(*(v1 + 248), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v24 = 0;
  v25 = v202;
  v26 = v1 + 96;
LABEL_9:
  v35 = v200;
LABEL_10:
  *(v26 + 409) = v24;
  v39 = v23[18] + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts;
  v40 = *v39;
  v23[57] = *v39;
  v41 = *(v39 + 8);
  *(v26 + 410) = v41;
  if ((v24 & 1) == 0 && (v41 & 1) == 0 && !v40)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.common);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "No conflicts for for directory";
LABEL_17:
      _os_log_impl(&dword_238952000, v43, v44, v46, v45, 2u);
      MEMORY[0x23EE6C260](v45, -1, -1);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v51 = v23[19];
  swift_getKeyPath();
  v23[13] = v51;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress;
  v23[58] = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress;
  if ([*(v51 + v52) isCancelled] && (*(v23[18] + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline) & 1) == 0)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    __swift_project_value_buffer(v108, static Logger.common);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "User canceled the sync";
      goto LABEL_17;
    }

LABEL_18:
    v47 = v23[41];
    v48 = v23[32];
    v49 = v23[18];

    GameSaveSyncedDirectory.moveToLoadedState(response:)(v49);
    v25(v47, v48);
    v217 = v23;
    if (v35 == -1)
    {
LABEL_20:

      v50 = v217[1];

      v50();
      return;
    }

LABEL_19:
    sandbox_extension_release();
    goto LABEL_20;
  }

  v53 = v23[19];
  swift_getKeyPath();
  v23[14] = v53;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v54 = *(v51 + v52);
  v55 = MEMORY[0x23EE6B6E0](0xD000000000000018, 0x800000023898C290);
  [v54 setLocalizedDescription_];

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v56 = v23[41];
  v57 = v23[39];
  v58 = v23[32];
  v59 = type metadata accessor for Logger();
  v23[59] = __swift_project_value_buffer(v59, static Logger.common);
  v207(v57, v56, v58);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v23[39];
  v64 = v23[32];
  if (v62)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v219 = v66;
    *v65 = 136315138;
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v25;
    v69 = v67;
    v71 = v70;
    v68(v63, v64);
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v219);

    *(v65 + 4) = v72;
    _os_log_impl(&dword_238952000, v60, v61, "Checking for conflicts at %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x23EE6C260](v66, -1, -1);
    MEMORY[0x23EE6C260](v65, -1, -1);
  }

  else
  {

    v25(v63, v64);
  }

  v73 = objc_opt_self();
  v23[60] = v73;
  URL._bridgeToObjectiveC()(v74);
  v76 = v75;
  v77 = [v73 unresolvedConflictVersionsOfItemAtURL_];

  if (!v77)
  {
    v101 = v23[53];
    v102 = v23[51];
    v103 = v23[41];
    v104 = v23[32];
    v105 = v23[29];
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v106 = swift_allocError();
    *v107 = 1;
    *v105 = v106;
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v105);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v105);
    outlined destroy of GameSaveSyncedDirectory.State(v105, type metadata accessor for GameSaveSyncedDirectory.State);
    v102(v103, v104);
    v217 = v23;
    if (v101 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v78 = *(v213 + 410);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSFileVersion, 0x277CCAA18);
  v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = v79 >> 62;
  if (v78 == 1)
  {
    v81 = v23[43];
    goto LABEL_33;
  }

  if (v80)
  {
    if (v79 < 0)
    {
      v198 = v79;
    }

    else
    {
      v198 = v79 & 0xFFFFFFFFFFFFFF8;
    }

    v199 = MEMORY[0x23EE6BAE0](v198);
    v81 = v23;
    if (v199)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v81 = v23;
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }
  }

  v81 = v23;
  if (v23[57] < 1)
  {
LABEL_33:
    v217 = v81;
    if (v80)
    {
      if (v79 < 0)
      {
        v197 = v79;
      }

      else
      {
        v197 = v79 & 0xFFFFFFFFFFFFFF8;
      }

      v82 = MEMORY[0x23EE6BAE0](v197);
    }

    else
    {
      v82 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = *(v213 + 409);
    v84 = (v23[57] == 0) & ~*(v213 + 410);
    if (!v82)
    {
      v84 = 1;
    }

    v85 = v23[47];
    v86 = v23[41];
    v87 = v23[32];
    if (!v82 && (v83 & 1) == 0)
    {
      v88 = v23[38];

      v85(v88, v86, v87);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();
      v91 = os_log_type_enabled(v89, v90);
      v92 = v23[51];
      v93 = v23[38];
      v94 = v23[32];
      if (v91)
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v219 = v96;
        *v95 = 136315138;
        lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v97 = dispatch thunk of CustomStringConvertible.description.getter();
        v99 = v98;
        v92(v93, v94);
        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, &v219);

        *(v95 + 4) = v100;
        _os_log_impl(&dword_238952000, v89, v90, "No conflicts found for %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
        MEMORY[0x23EE6C260](v96, -1, -1);
        MEMORY[0x23EE6C260](v95, -1, -1);
      }

      else
      {

        v92(v93, v94);
      }

      v154 = v23[58];
      v156 = v23[18];
      v155 = v23[19];
      swift_getKeyPath();
      v23[16] = v155;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [*(v155 + v154) setCompletedUnitCount_];
      GameSaveSyncedDirectory.moveToLoadedState(response:)(v156);
      goto LABEL_87;
    }

    v214 = v83 | v84;
    v85(v23[37], v86, v87);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();
    v118 = os_log_type_enabled(v116, v117);
    v119 = v23[51];
    v120 = v23[37];
    v121 = v23[32];
    if (v118)
    {
      v122 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      *&v219 = v210;
      *v122 = 136315138;
      lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v123 = dispatch thunk of CustomStringConvertible.description.getter();
      v125 = v124;
      v119(v120, v121);
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, &v219);

      *(v122 + 4) = v126;
      _os_log_impl(&dword_238952000, v116, v117, "Found conflicts for %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v210);
      MEMORY[0x23EE6C260](v210, -1, -1);
      MEMORY[0x23EE6C260](v122, -1, -1);
    }

    else
    {

      v119(v120, v121);
    }

    v127 = v23[54];
    v128 = v23[41];
    if (*(v23[18] + OBJC_IVAR___GameSyncedDirectoryResponse_devices))
    {
      v129 = *(v23[18] + OBJC_IVAR___GameSyncedDirectoryResponse_devices);
    }

    else
    {
      v129 = MEMORY[0x277D84F90];
    }

    v130 = swift_task_alloc();
    *(v130 + 16) = v128;
    *(v130 + 24) = v129;

    v131 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo13NSFileVersionCG_8GameSave0fG15SyncedDirectoryC0E0Cs5NeverOTg5(partial apply for closure #1 in GameSaveSyncedDirectory.checkForConflicts(_:_:), v130, v79);

    v218 = v131;
    if (v214)
    {
      v132 = v23[55];
      v133 = v23[32];
      v134 = v23[30];
      (v23[47])(v23[36], v23[41], v133);
      GameSaveSyncedDirectory.getLocalURL()(v134);
      if (v132(v134, 1, v133) == 1)
      {
        goto LABEL_99;
      }

      v135 = v23[49];
      v136 = v23[47];
      v137 = v23[42];
      v138 = v23[36];
      v139 = v23[32];
      v140 = v23[30];

      v136(v137, v138, v139);
      type metadata accessor for GameSaveSyncedDirectory.Version(0);
      swift_allocObject();

      v141 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v137, 0, 0, 0, v129);
      v142 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL;

      outlined destroy of URL?(v143 + v142, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v136(&v141[v142], v140, v139);
      v135(&v141[v142], 0, 1, v139);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238987820;
      v145 = *MEMORY[0x277CBE7B0];
      *(inited + 32) = *MEMORY[0x277CBE7B0];
      v146 = v145;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of GameSaveSyncedDirectory.State(inited + 32, type metadata accessor for NSURLResourceKey);
      URL.resourceValues(forKeys:)();
      v147 = v127;
      v148 = v23[51];
      v211 = v23[36];
      v149 = v23[32];
      v215 = v23[30];
      if (v147)
      {
        v150 = v23[25];
        v151 = v23[26];
        v152 = v23[24];

        v148(v211, v149);
        v148(v215, v149);
        (*(v151 + 56))(v152, 1, 1, v150);
        v153 = outlined destroy of URL?(v152, &_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
      }

      else
      {
        v201 = v129;
        v159 = v23[26];
        v158 = v23[27];
        v160 = v23[24];
        v161 = v23[25];
        v205 = v23[22];
        v208 = v23[21];
        v203 = v23[20];

        (*(v159 + 56))(v160, 0, 1, v161);
        (*(v159 + 32))(v158, v160, v161);
        URLResourceValues.contentModificationDate.getter();
        (*(v159 + 8))(v158, v161);
        v148(v211, v149);
        v148(v215, v149);
        if ((*(v205 + 48))(v203, 1, v208) == 1)
        {
          v153 = outlined destroy of URL?(v23[20], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v163 = v23[22];
          v162 = v23[23];
          v164 = v23[21];
          (*(v163 + 32))(v162, v23[20], v164);
          v153 = (*(v163 + 40))(&v141[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate], v162, v164);
        }

        v129 = v201;
      }

      MEMORY[0x23EE6B780](v153);
      if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }

    v165 = v23[60];
    v166 = v23[47];
    v168 = v23[34];
    v167 = v23[35];
    v169 = v23[32];
    v170 = v23[18];
    v166(v167, v23[41], v169);
    v171 = v170 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName;
    v172 = *(v170 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName);
    v173 = *(v171 + 8);
    v166(v168, v167, v169);

    URL._bridgeToObjectiveC()(v174);
    v176 = v175;
    v177 = [v165 currentVersionOfItemAtURL_];

    if (v177)
    {
      v178 = v23[51];
      v180 = v23[34];
      v179 = v23[35];
      v181 = v23[32];
      v216 = type metadata accessor for GameSaveSyncedDirectory.Version(0);
      swift_allocObject();
      v182 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v180, v177, v172, v173, v129);
      v183 = v178(v179, v181);
      v182[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion] = 1;
      MEMORY[0x23EE6B780](v183);
      if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v184 = Logger.logObject.getter();
      v185 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        *&v219 = v187;
        *v186 = 136315138;

        v189 = MEMORY[0x23EE6B7C0](v188, v216);
        v191 = v190;

        v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v191, &v219);

        *(v186 + 4) = v192;
        _os_log_impl(&dword_238952000, v184, v185, "Versions: %s", v186, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v187);
        MEMORY[0x23EE6C260](v187, -1, -1);
        MEMORY[0x23EE6C260](v186, -1, -1);
      }

      v193 = v23[58];
      v194 = v23[29];
      v195 = v23[19];
      swift_getKeyPath();
      v23[15] = v195;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [*(v195 + v193) setCompletedUnitCount_];
      *v194 = v218;
      swift_storeEnumTagMultiPayload();

      GameSaveSyncedDirectory._moveToState(_:)(v194);
      GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v194);
      outlined destroy of GameSaveSyncedDirectory.State(v194, type metadata accessor for GameSaveSyncedDirectory.State);

LABEL_87:
      v196 = v23[53];
      (v23[51])(v23[41], v23[32]);
      if (v196 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_99:
    __break(1u);
    return;
  }

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_238952000, v109, v110, "Waiting for conflicting version to be populated...", v111, 2u);
    MEMORY[0x23EE6C260](v111, -1, -1);
  }

  v112 = v23[46];
  v113 = v23[19];

  swift_getKeyPath();
  v23[17] = v113;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v114 = *(v113 + v112);
  v23[61] = v114;
  v114;
  v115 = swift_task_alloc();
  v23[62] = v115;
  *v115 = v23;
  v115[1] = specialized GameSaveSyncedDirectory.checkForConflicts(_:_:);

  GameSyncedDirectoryHolder.waitForGainedVersion()();
}

{
  v148 = v0;
  v147 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 480);
  URL._bridgeToObjectiveC()(v147);
  v3 = v2;
  v4 = [v1 unresolvedConflictVersionsOfItemAtURL_];

  if (!v4)
  {
    v9 = *(v0 + 424);
    v10 = *(v0 + 408);
    v11 = *(v0 + 328);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v14 = swift_allocError();
    *v15 = 1;
    *v13 = v14;
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v13);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v13);
    outlined destroy of GameSaveSyncedDirectory.State(v13, type metadata accessor for GameSaveSyncedDirectory.State);
    v10(v11, v12);
    v144 = v0;
    if (v9 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v5 = *(v0 + 506);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSFileVersion, 0x277CCAA18);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6 >> 62;
  if (v5 == 1)
  {
    v8 = *(v0 + 344);
    goto LABEL_13;
  }

  if (v7)
  {
    if (v6 < 0)
    {
      v135 = v6;
    }

    else
    {
      v135 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = MEMORY[0x23EE6BAE0](v135);
  }

  else
  {
    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(v0 + 456) < 1;
  }

  v8 = v0;
  if (v17)
  {
LABEL_13:
    v144 = v8;
    if (v7)
    {
      if (v6 < 0)
      {
        v134 = v6;
      }

      else
      {
        v134 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = MEMORY[0x23EE6BAE0](v134);
    }

    else
    {
      v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = *(v0 + 505);
    v20 = (*(v0 + 456) == 0) & ~*(v0 + 506);
    if (!v18)
    {
      v20 = 1;
    }

    v21 = *(v0 + 376);
    v22 = *(v0 + 328);
    v23 = *(v0 + 256);
    if (!v18 && (v19 & 1) == 0)
    {
      v24 = *(v0 + 304);

      v21(v24, v22, v23);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 408);
      v29 = *(v0 + 304);
      v30 = *(v0 + 256);
      if (v27)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v146 = v32;
        *v31 = 136315138;
        lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v28(v29, v30);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v146);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_238952000, v25, v26, "No conflicts found for %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x23EE6C260](v32, -1, -1);
        MEMORY[0x23EE6C260](v31, -1, -1);
      }

      else
      {

        v28(v29, v30);
      }

      v89 = *(v0 + 464);
      v91 = *(v0 + 144);
      v90 = *(v0 + 152);
      swift_getKeyPath();
      *(v0 + 128) = v90;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [*(v90 + v89) setCompletedUnitCount_];
      GameSaveSyncedDirectory.moveToLoadedState(response:)(v91);
      goto LABEL_51;
    }

    v37 = v19 | v20;
    v21(*(v0 + 296), *(v0 + 328), *(v0 + 256));
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 408);
    v42 = *(v0 + 296);
    v43 = *(v0 + 256);
    if (v40)
    {
      v44 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v146 = v142;
      *v44 = 136315138;
      lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v45 = v37;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v140 = v39;
      v48 = v47;
      v41(v42, v43);
      v49 = v46;
      v37 = v45;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, &v146);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_238952000, v38, v140, "Found conflicts for %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v142);
      MEMORY[0x23EE6C260](v142, -1, -1);
      MEMORY[0x23EE6C260](v44, -1, -1);
    }

    else
    {

      v41(v42, v43);
    }

    v59 = *(v0 + 432);
    v60 = *(v0 + 328);
    if (*(*(v0 + 144) + OBJC_IVAR___GameSyncedDirectoryResponse_devices))
    {
      v61 = *(*(v0 + 144) + OBJC_IVAR___GameSyncedDirectoryResponse_devices);
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
    }

    v62 = swift_task_alloc();
    *(v62 + 16) = v60;
    *(v62 + 24) = v61;
    v143 = v61;

    v63 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo13NSFileVersionCG_8GameSave0fG15SyncedDirectoryC0E0Cs5NeverOTg5(partial apply for closure #1 in GameSaveSyncedDirectory.checkForConflicts(_:_:), v62, v6);

    v145 = v63;
    if (!v37)
    {

LABEL_45:
      v97 = *(v0 + 480);
      v98 = *(v0 + 376);
      v100 = *(v0 + 272);
      v99 = *(v0 + 280);
      v101 = *(v0 + 256);
      v102 = *(v0 + 144);
      v98(v99, *(v0 + 328), v101);
      v103 = v102 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName;
      v104 = *(v102 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName);
      v105 = *(v103 + 8);
      v98(v100, v99, v101);

      URL._bridgeToObjectiveC()(v106);
      v108 = v107;
      v109 = [v97 currentVersionOfItemAtURL_];

      if (v109)
      {
        v110 = *(v0 + 408);
        v112 = *(v0 + 272);
        v111 = *(v0 + 280);
        v113 = *(v0 + 256);
        v114 = type metadata accessor for GameSaveSyncedDirectory.Version(0);
        swift_allocObject();
        v115 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v112, v109, v104, v105, v143);
        v116 = v110(v111, v113);
        v115[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion] = 1;
        MEMORY[0x23EE6B780](v116);
        if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v146 = v120;
          *v119 = 136315138;

          v122 = MEMORY[0x23EE6B7C0](v121, v114);
          v124 = v123;

          v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v146);

          *(v119 + 4) = v125;
          _os_log_impl(&dword_238952000, v117, v118, "Versions: %s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v120);
          MEMORY[0x23EE6C260](v120, -1, -1);
          MEMORY[0x23EE6C260](v119, -1, -1);
        }

        v126 = *(v0 + 464);
        v127 = *(v0 + 232);
        v128 = *(v0 + 152);
        swift_getKeyPath();
        *(v0 + 120) = v128;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [*(v128 + v126) setCompletedUnitCount_];
        *v127 = v145;
        swift_storeEnumTagMultiPayload();

        GameSaveSyncedDirectory._moveToState(_:)(v127);
        GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v127);
        outlined destroy of GameSaveSyncedDirectory.State(v127, type metadata accessor for GameSaveSyncedDirectory.State);

LABEL_51:
        v129 = *(v0 + 424);
        (*(v0 + 408))(*(v0 + 328), *(v0 + 256));
        if (v129 == -1)
        {
LABEL_53:

          v130 = *(v144 + 8);

          v130();
          return;
        }

LABEL_52:
        sandbox_extension_release();
        goto LABEL_53;
      }

      __break(1u);
LABEL_66:
      __break(1u);
      return;
    }

    v64 = *(v0 + 440);
    v65 = *(v0 + 256);
    v66 = *(v0 + 240);
    (*(v0 + 376))(*(v0 + 288), *(v0 + 328), v65);
    GameSaveSyncedDirectory.getLocalURL()(v66);
    if (v64(v66, 1, v65) == 1)
    {
      goto LABEL_66;
    }

    v67 = *(v0 + 392);
    v68 = *(v0 + 376);
    v69 = *(v0 + 336);
    v70 = *(v0 + 288);
    v71 = *(v0 + 256);
    v72 = *(v0 + 240);

    v68(v69, v70, v71);
    type metadata accessor for GameSaveSyncedDirectory.Version(0);
    swift_allocObject();

    v73 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v69, 0, 0, 0, v143);
    v74 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL;

    outlined destroy of URL?(v75 + v74, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v68(&v73[v74], v72, v71);
    v67(&v73[v74], 0, 1, v71);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238987820;
    v77 = *MEMORY[0x277CBE7B0];
    *(inited + 32) = *MEMORY[0x277CBE7B0];
    v78 = v77;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of GameSaveSyncedDirectory.State(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.resourceValues(forKeys:)();
    v79 = v59;
    v80 = *(v0 + 408);
    v141 = *(v0 + 288);
    v81 = *(v0 + 256);
    v82 = *(v0 + 240);
    if (v79)
    {
      v83 = *(v0 + 200);
      v84 = *(v0 + 208);
      v85 = *(v0 + 192);

      v80(v141, v81);
      v80(v82, v81);
      (*(v84 + 56))(v85, 1, 1, v83);
      v86 = &_s10Foundation17URLResourceValuesVSgMd;
      v87 = &_s10Foundation17URLResourceValuesVSgMR;
      v88 = v85;
    }

    else
    {
      v93 = *(v0 + 208);
      v92 = *(v0 + 216);
      v137 = *(v0 + 240);
      v95 = *(v0 + 192);
      v94 = *(v0 + 200);
      v138 = *(v0 + 176);
      v139 = *(v0 + 168);
      v136 = *(v0 + 160);

      (*(v93 + 56))(v95, 0, 1, v94);
      (*(v93 + 32))(v92, v95, v94);
      URLResourceValues.contentModificationDate.getter();
      (*(v93 + 8))(v92, v94);
      v80(v141, v81);
      v80(v137, v81);
      if ((*(v138 + 48))(v136, 1, v139) != 1)
      {
        v132 = *(v0 + 176);
        v131 = *(v0 + 184);
        v133 = *(v0 + 168);
        (*(v132 + 32))(v131, *(v0 + 160), v133);
        v96 = (*(v132 + 40))(&v73[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate], v131, v133);
        goto LABEL_42;
      }

      v88 = *(v0 + 160);
      v86 = &_s10Foundation4DateVSgMd;
      v87 = &_s10Foundation4DateVSgMR;
    }

    v96 = outlined destroy of URL?(v88, v86, v87);
LABEL_42:
    MEMORY[0x23EE6B780](v96);
    if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_45;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_238952000, v51, v52, "Waiting for conflicting version to be populated...", v54, 2u);
    MEMORY[0x23EE6C260](v54, -1, -1);
  }

  v55 = *(v0 + 368);
  v56 = *(v0 + 152);

  swift_getKeyPath();
  *(v0 + 136) = v56;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v56 + v55);
  *(v0 + 488) = v57;
  v57;
  v58 = swift_task_alloc();
  *(v0 + 496) = v58;
  *v58 = v0;
  v58[1] = specialized GameSaveSyncedDirectory.checkForConflicts(_:_:);

  GameSyncedDirectoryHolder.waitForGainedVersion()();
}

uint64_t specialized GameSaveSyncedDirectory.checkForConflicts(_:_:)()
{
  v1 = *(*v0 + 488);

  return MEMORY[0x2822009F8](specialized GameSaveSyncedDirectory.checkForConflicts(_:_:), 0, 0);
}

id specialized static GameSaveSyncedDirectory.shouldDismissSignedOutError()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  v2 = [v0 BOOLForKey_];

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.common);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_238952000, v4, v5, "Did show iCloud Drive signed out error before: %{BOOL}d", v6, 8u);
    MEMORY[0x23EE6C260](v6, -1, -1);
  }

  return v2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void partial apply for closure #1 in GameSaveSyncedDirectory.lastResponse.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse) = v2;
  v4 = v2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.accountSigningInObserver.setter()
{
  return partial apply for closure #1 in GameSaveSyncedDirectory.accountSigningInObserver.setter();
}

{
  *(*(v0 + 16) + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void specialized GameSaveSyncedDirectory._customizeAlert<A>(_:with:)(void *a1, __int128 *a2)
{
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = a2[1];
  v12 = *a2;
  v13 = v5;
  v14 = a2[2];
  v15 = *(a2 + 6);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy8GameSave18ConflictScrollViewVGMd, &_s7SwiftUI19UIHostingControllerCy8GameSave18ConflictScrollViewVGMR));
  outlined init with copy of ConflictScrollView(a2, v11);
  v6 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v7 = v6;
  v8 = [v7 view];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];

    [a1 setContentViewController_];
  }

  else
  {
    __break(1u);
  }
}