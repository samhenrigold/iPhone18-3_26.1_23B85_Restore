uint64_t specialized TargetZone.__allocating_init(dict:)(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v3 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v24), (swift_dynamicCast() & 1) == 0) || (TargetZone.ZoneType.init(rawValue:)(v23), v4 = v24[0], v24[0] == 8))
  {

    return 0;
  }

  if (*(a1 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D756D696E696DLL, 0xE700000000000000), (v7 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v6, v24), type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    [v23._countAndFlagsBits doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  if (*(a1 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D756D6978616DLL, 0xE700000000000000), (v11 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v10, v24), type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    [v23._countAndFlagsBits doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  if (*(a1 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x64656C62616E65, 0xE700000000000000), (v15 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v14, v24);

    if (swift_dynamicCast())
    {
      if (v23 == __PAIR128__(0xE400000000000000, 1702195828))
      {

LABEL_36:
        if (v9 == 0.0 && v9 != v13)
        {
          v9 = v13;
        }

        v16 = 1;
        if (v13 != 0.0)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
  }

  v16 = 0;
  if (v9 == 0.0 && v9 != v13)
  {
    v9 = v13;
  }

  if (v13 != 0.0)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (v9 != v13)
  {
    v13 = v9;
  }

LABEL_28:
  type metadata accessor for TargetZone();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v9;
  *(v17 + 32) = v13;
  v18 = v17;
  if (v4 > 6)
  {

    v20 = 0;
    v21 = v18;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = 0;
    v21 = v18;
    if ((v19 & 1) == 0)
    {
      v20 = v9 > 0.0 || v13 > 0.0;
    }
  }

  *(v21 + 40) = v20;
  swift_beginAccess();
  result = v18;
  *(v21 + 40) = v16;
  return result;
}

double specialized static TargetZoneStorage.defaultZones(activityType:)(void *a1)
{
  if (one-time initialization token for alerts != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.alerts);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v8 = [v3 localizedName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v24);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Loading alerts for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v13 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001DLL, 0x800000020B454520, v3);
  if (v13 && (v14 = specialized TargetZone.__allocating_init(dict:)(v13)) != 0)
  {
    v15 = v14;
  }

  else
  {
    type metadata accessor for TargetZone();
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
  }

  v16 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD000000000000020, 0x800000020B454540, v3);
  if (v16 && (v17 = specialized TargetZone.__allocating_init(dict:)(v16)) != 0)
  {
    v18 = v17;
  }

  else
  {
    type metadata accessor for TargetZone();
    v18 = swift_allocObject();
    *(v18 + 16) = 4;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
  }

  v19 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001ELL, 0x800000020B454570, v3);
  if (v19 && (v20 = specialized TargetZone.__allocating_init(dict:)(v19)) != 0)
  {
    v21 = v20;
  }

  else
  {
    type metadata accessor for TargetZone();
    v21 = swift_allocObject();
    *(v21 + 16) = 6;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  *&result = 3;
  *(v22 + 16) = xmmword_20B42C8E0;
  *(v22 + 32) = v15;
  *(v22 + 40) = v18;
  *(v22 + 48) = v21;
  return result;
}

uint64_t specialized static PowerZonesAlertTargetZone.alertIsEnabled(from:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 2;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    return 2;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  if (v6 == 0x746567726174 && v7 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x6974616D6F747561 && v7 == 0xE900000000000063 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x6D6F74737563 && v7 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (v6 == 6710895 && v7 == 0xE300000000000000)
  {

    return 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

void specialized HeartRateTargetZone.__allocating_init(dict:)(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v3 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v24), (swift_dynamicCast() & 1) == 0) || (v4 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateZoneType.init(rawValue:), v23), , v4 >= 3))
  {

    return;
  }

  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F427265776F6CLL, 0xEA0000000000646ELL), (v6 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v5, v24), type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    [v23._countAndFlagsBits doubleValue];
    v8 = v7;

    v9 = 0;
    v10 = v8;
  }

  else
  {
    v10 = 0.0;
    v9 = 1;
  }

  if (*(a1 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F427265707075, 0xEA0000000000646ELL), (v12 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v11, v24), type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    [v23._countAndFlagsBits doubleValue];
    v14 = v13;

    v15 = 0;
    v16 = v14;
  }

  else
  {
    v16 = 0.0;
    v15 = 1;
  }

  if (*(a1 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000020B454030), (v18 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v17, v24);

    type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v19 = [v23._countAndFlagsBits integerValue];

      v20 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v19 = 0;
  v20 = 1;
LABEL_22:
  v21 = v9 | v15;
  if (v21)
  {
    v10 = 0.0;
    v16 = 0.0;
LABEL_25:
    v24[0] = v4;
    v22 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
    HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(v24, *&v10, *&v16, v21, v19, v20, 0);
    return;
  }

  if (v10 <= v16)
  {
    goto LABEL_25;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type TargetZone.ZoneTypeKey and conformance TargetZone.ZoneTypeKey()
{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneTypeKey and conformance TargetZone.ZoneTypeKey;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneTypeKey and conformance TargetZone.ZoneTypeKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneTypeKey and conformance TargetZone.ZoneTypeKey);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetZoneStorage(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TargetZoneStorage(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TargetZone.ZoneTypeKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TargetZone.ZoneTypeKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for NSUserDefaults(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RacePosition.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E4F746559746F6ELL;
  v3 = 0x6574656C706D6F63;
  v4 = 0x6E776F6E6B6E75;
  if (v1 != 4)
  {
    v4 = 0x64657269707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574756F526E6FLL;
  if (v1 != 1)
  {
    v5 = 0x6574756F5266666FLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RacePosition.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized RacePosition.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.ExpiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.ExpiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.NotYetOnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.NotYetOnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.OffRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.OffRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RacePosition.OnRouteCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RacePosition.OnRouteCodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RacePosition.OnRouteCodingKeys()
{
  if (*v0)
  {
    return 0x65636E6174736964;
  }

  else
  {
    return 0x61656841656D6974;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RacePosition.OnRouteCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61656841656D6974 && a2 == 0xE900000000000064;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xED00006461656841)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.OnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.OnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RacePosition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v52 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v49 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v46 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v43 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17OnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17OnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v55 = &v40 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v40 = &v40 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v40 - v24;
  v26 = *v1;
  v27 = *(v1 + 8);
  v28 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v28 == 1)
  {
    v29 = v21;
    v30 = (v22 + 8);
    if (v26 <= 1)
    {
      if (v26 | v27)
      {
        v63 = 2;
        lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys();
        v31 = v43;
        v32 = v29;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v44;
        v33 = v45;
      }

      else
      {
        v59 = 0;
        lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys();
        v31 = v40;
        v32 = v29;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v41;
        v33 = v42;
      }
    }

    else if (v26 ^ 2 | v27)
    {
      if (v26 ^ 3 | v27)
      {
        v66 = 5;
        lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys();
        v31 = v52;
        v32 = v29;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v53;
        v33 = v54;
      }

      else
      {
        v65 = 4;
        lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys();
        v31 = v49;
        v32 = v29;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v50;
        v33 = v51;
      }
    }

    else
    {
      v64 = 3;
      lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys();
      v31 = v46;
      v32 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v47;
      v33 = v48;
    }

    (*(v34 + 8))(v31, v33);
    return (*v30)(v25, v32);
  }

  else
  {
    v54 = v27;
    v35 = v22;
    v62 = 1;
    lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys();
    v36 = v55;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v61 = 0;
    v38 = v57;
    v37 = v58;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v37)
    {
      v60 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v56 + 8))(v36, v38);
    return (*(v35 + 8))(v25, v21);
  }
}

uint64_t RacePosition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v3);
  v73 = &v56 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v5);
  v70 = &v56 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v7);
  v72 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v71 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17OnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17OnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v59 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v56 - v24;
  v26 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys();
  v27 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v56 = v17;
    v28 = v71;
    v57 = v16;
    v29 = v72;
    v30 = v73;
    v58 = v22;
    v31 = v74;
    v75 = v25;
    v32 = KeyedDecodingContainer.allKeys.getter();
    if (*(v32 + 16) == 1)
    {
      v33 = *(v32 + 32);
      if (v33 != 6)
      {
        if (*(v32 + 32) > 2u)
        {
          if (v33 == 3)
          {
            v82 = 3;
            lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys();
            v47 = v75;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v48 = v58;
            (*(v65 + 8))(v29, v62);
            (*(v48 + 8))(v47, v21);
            swift_unknownObjectRelease();
            v55 = 1;
            v54 = 0;
            v45 = 2;
          }

          else
          {
            v42 = v58;
            v43 = v75;
            if (v33 == 4)
            {
              v83 = 4;
              lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys();
              v44 = v70;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v66 + 8))(v44, v68);
              (*(v42 + 8))(v43, v21);
              swift_unknownObjectRelease();
              v55 = 1;
              v54 = 0;
              v45 = 3;
            }

            else
            {
              v84 = 5;
              lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys();
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v67 + 8))(v30, v69);
              (*(v42 + 8))(v43, v21);
              swift_unknownObjectRelease();
              v55 = 1;
              v54 = 0;
              v45 = 4;
            }
          }
        }

        else
        {
          if (!*(v32 + 32))
          {
            v77 = 0;
            lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys();
            v46 = v75;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v59 + 8))(v20, v56);
            (*(v58 + 8))(v46, v21);
            swift_unknownObjectRelease();
            v55 = 1;
            v54 = 0;
            v52 = 0;
            goto LABEL_18;
          }

          if (v33 == 1)
          {
            v80 = 1;
            lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys();
            v34 = v57;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v35 = v58;
            v79 = 0;
            v36 = v64;
            KeyedDecodingContainer.decode(_:forKey:)();
            v52 = v51;
            v78 = 1;
            KeyedDecodingContainer.decode(_:forKey:)();
            v54 = v53;
            (*(v63 + 8))(v34, v36);
            (*(v35 + 8))(v75, v21);
            swift_unknownObjectRelease();
            v55 = 0;
LABEL_18:
            *v31 = v52;
            *(v31 + 8) = v54;
            *(v31 + 12) = v55;
            return __swift_destroy_boxed_opaque_existential_1(v76);
          }

          v81 = 2;
          lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys();
          v49 = v75;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v50 = v58;
          (*(v61 + 8))(v28, v60);
          (*(v50 + 8))(v49, v21);
          swift_unknownObjectRelease();
          v55 = 1;
          v54 = 0;
          v45 = 1;
        }

        v52 = v45;
        goto LABEL_18;
      }
    }

    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v39 = &type metadata for RacePosition;
    v40 = v75;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v58 + 8))(v40, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

void RacePosition.racePositionState.getter(char *a1@<X8>)
{
  if (*v1 >= 0.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*(v1 + 12) == 1)
  {
    v2 = 0x605040300uLL >> (8 * *v1);
  }

  *a1 = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RacePositionState.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E4F746559746F6ELL;
  v3 = 0x6E776F6E6B6E75;
  if (v1 != 5)
  {
    v3 = 0x64657269707865;
  }

  v4 = 0x6574756F5266666FLL;
  if (v1 != 3)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x416574756F526E6FLL;
  if (v1 != 1)
  {
    v5 = 0x426574756F526E6FLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RacePositionState.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized RacePositionState.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.ExpiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.ExpiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.NotYetOnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.NotYetOnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.OffRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.OffRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.OnRouteAheadCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.OnRouteAheadCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.OnRouteBehindCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.OnRouteBehindCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RacePositionState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v57 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v54 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v51 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v48 = &v46 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO23OnRouteBehindCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO23OnRouteBehindCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v63 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v16);
  v62 = &v46 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO22OnRouteAheadCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO22OnRouteAheadCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v61 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v18);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v60 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v46 - v23;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v25 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v26);
  v28 = &v46 - v27;
  v29 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys();
  v64 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = (v25 + 8);
  if (v29 <= 2)
  {
    v36 = v60;
    v37 = v61;
    v38 = v62;
    v39 = v63;
    if (v29)
    {
      if (v29 == 1)
      {
        v67 = 1;
        lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys();
        v41 = v64;
        v40 = v65;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v37 + 8))(v20, v46);
      }

      else
      {
        v68 = 2;
        lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys();
        v45 = v38;
        v41 = v64;
        v40 = v65;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v39 + 8))(v45, v47);
      }

      return (*v30)(v41, v40);
    }

    else
    {
      v66 = 0;
      lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys();
      v42 = v64;
      v43 = v65;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v36 + 8))(v24, v21);
      return (*v30)(v42, v43);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v71 = 5;
        lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys();
        v31 = v54;
        v32 = v64;
        v33 = v65;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v55;
        v34 = v56;
      }

      else
      {
        v72 = 6;
        lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys();
        v31 = v57;
        v32 = v64;
        v33 = v65;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v58;
        v34 = v59;
      }
    }

    else if (v29 == 3)
    {
      v69 = 3;
      lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys();
      v31 = v48;
      v32 = v64;
      v33 = v65;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v49;
      v34 = v50;
    }

    else
    {
      v70 = 4;
      lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys();
      v31 = v51;
      v32 = v64;
      v33 = v65;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v52;
      v34 = v53;
    }

    (*(v35 + 8))(v31, v34);
    return (*v30)(v32, v33);
  }
}

Swift::Int RacePositionState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t RacePositionState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v76 = &v57[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v79 = &v57[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v10 = *(v9 - 8);
  v68 = v9;
  v69 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v75 = &v57[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v14 = *(v13 - 8);
  v66 = v13;
  v67 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v74 = &v57[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO23OnRouteBehindCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO23OnRouteBehindCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v78 = &v57[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO22OnRouteAheadCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO22OnRouteAheadCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v57[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v61 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v57[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v57[-v31];
  v33 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys();
  v34 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v34)
  {
    v59 = v24;
    v35 = v78;
    v36 = v79;
    v60 = v29;
    v81 = v28;
    v37 = KeyedDecodingContainer.allKeys.getter();
    if (*(v37 + 16) == 1)
    {
      v38 = *(v37 + 32);
      if (v38 != 7)
      {
        v58 = *(v37 + 32);
        if (v38 > 2)
        {
          if (v38 > 4)
          {
            v39 = v38 == 5;
            v40 = v77;
            v49 = v81;
            if (v39)
            {
              v87 = 5;
              lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys();
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v54 = v60;
              (*(v70 + 8))(v36, v71);
            }

            else
            {
              v88 = 6;
              lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys();
              v53 = v76;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v54 = v60;
              (*(v72 + 8))(v53, v73);
            }

            (*(v54 + 8))(v32, v49);
          }

          else
          {
            v39 = v38 == 3;
            v40 = v77;
            v41 = v81;
            if (v39)
            {
              v85 = 3;
              lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys();
              v42 = v74;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v52 = v60;
              (*(v67 + 8))(v42, v66);
            }

            else
            {
              v86 = 4;
              lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys();
              v51 = v75;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v52 = v60;
              (*(v69 + 8))(v51, v68);
            }

            (*(v52 + 8))(v32, v41);
          }

          swift_unknownObjectRelease();
          v55 = v80;
          goto LABEL_25;
        }

        if (v38)
        {
          if (v38 == 1)
          {
            v83 = 1;
            lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys();
            v47 = v32;
            v48 = v81;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v62 + 8))(v23, v63);
            (*(v60 + 8))(v47, v48);
LABEL_21:
            swift_unknownObjectRelease();
            v55 = v80;
            v40 = v77;
LABEL_25:
            *v40 = v58;
            return __swift_destroy_boxed_opaque_existential_1(v55);
          }

          v84 = 2;
          lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys();
          v50 = v81;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v64 + 8))(v35, v65);
        }

        else
        {
          v82 = 0;
          lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys();
          v50 = v81;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v61 + 8))(v27, v59);
        }

        (*(v60 + 8))(v32, v50);
        goto LABEL_21;
      }
    }

    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v45 = &type metadata for RacePositionState;
    v46 = v81;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v60 + 8))(v32, v46);
    swift_unknownObjectRelease();
  }

  v55 = v80;
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RacePosition.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RacePosition.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

BOOL specialized static RacePosition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 12) == 1)
  {
    if (*&v2 <= 1uLL)
    {
      if (*&v2 | LODWORD(v3))
      {
        if (*(a2 + 12) && !(*&v4 ^ 1 | v5))
        {
          return 1;
        }
      }

      else if (*(a2 + 12) && !(*&v4 | v5))
      {
        return 1;
      }
    }

    else if (*&v2 ^ 2 | LODWORD(v3))
    {
      if (*&v2 ^ 3 | LODWORD(v3))
      {
        if (*(a2 + 12) && *&v4 > 3uLL)
        {
          return 1;
        }
      }

      else if (*(a2 + 12) && !(*&v4 ^ 3 | v5))
      {
        return 1;
      }
    }

    else if (*(a2 + 12) && !(*&v4 ^ 2 | v5))
    {
      return 1;
    }
  }

  else if ((*(a2 + 12) & 1) == 0 && v2 == v4)
  {
    return v3 == *&v5;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState and conformance RacePositionState()
{
  result = lazy protocol witness table cache variable for type RacePositionState and conformance RacePositionState;
  if (!lazy protocol witness table cache variable for type RacePositionState and conformance RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState and conformance RacePositionState);
  }

  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RacePosition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RacePosition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 5) = 0;
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

  *(result + 13) = v3;
  return result;
}

uint64_t getEnumTag for RacePosition(uint64_t a1)
{
  if (*(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for RacePosition(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 12) = 1;
  }

  else
  {
    *(result + 12) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RacePositionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RacePositionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RacePosition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RacePosition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RacePosition.OnRouteCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RacePosition.OnRouteCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized RacePosition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4F746559746F6ELL && a2 == 0xED00006574756F52;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756F526E6FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574756F5266666FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64657269707865 && a2 == 0xE700000000000000)
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

uint64_t specialized RacePositionState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4F746559746F6ELL && a2 == 0xED00006574756F52;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416574756F526E6FLL && a2 == 0xEC00000064616568 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x426574756F526E6FLL && a2 == 0xED0000646E696865 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574756F5266666FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64657269707865 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

double GhostPacerAccumulator.secondsAheadOfPacer.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
  swift_beginAccess();
  return *(v0 + v1);
}

void GhostPacerAccumulator.secondsAheadOfPacer.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double GhostPacerAccumulator.requiredPaceInMetersPerSecond.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
  swift_beginAccess();
  return *(v0 + v1);
}

void GhostPacerAccumulator.requiredPaceInMetersPerSecond.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double GhostPacerAccumulator.accumulatedDistance.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

void GhostPacerAccumulator.accumulatedDistance.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double GhostPacerAccumulator.accumulatedDistanceDuration.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void GhostPacerAccumulator.accumulatedDistanceDuration.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double GhostPacerAccumulator.lastElapsedTime.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void GhostPacerAccumulator.lastElapsedTime.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id GhostPacerAccumulator.__allocating_init(activityType:goalDistance:goalFinishTime:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(a1, a2, a3);

  return v8;
}

id GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(void *a1, double a2, double a3)
{
  v4 = specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(a1, a2, a3);

  return v4;
}

Swift::Void __swiftcall GhostPacerAccumulator.updatePacer(statistics:duration:)(HKStatistics statistics, Swift::Double duration)
{
  [*(v2 + OBJC_IVAR___NLGhostPacerAccumulator_activityType) effectiveTypeIdentifier];
  v5 = _HKWorkoutDistanceTypeForActivityType();
  if (v5)
  {
    v6 = v2;
    v16 = v5;
    type metadata accessor for NSObject();
    v7 = [(objc_class *)statistics.super.isa quantityType];
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) != 0 && (v9 = [(objc_class *)statistics.super.isa sumQuantity]) != 0)
    {
      v10 = v9;
      v11 = [objc_opt_self() meterUnit];
      [v10 doubleValueForUnit_];
      v13 = v12;

      v14 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance;
      swift_beginAccess();
      if (*(v6 + v14) < v13)
      {
        *(v6 + v14) = v13;
        v15 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
        swift_beginAccess();
        *(v6 + v15) = duration;
        GhostPacerAccumulator.updateValuesWithTime(_:)(duration);
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall GhostPacerAccumulator.updateWithElapsedTime(_:)(Swift::Double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime;
  swift_beginAccess();
  if (*(v1 + v3) < a1)
  {
    *(v1 + v3) = a1;
    v4 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
    swift_beginAccess();
    if (a1 - *(v1 + v4) >= 10.0)
    {
      GhostPacerAccumulator.updateValuesWithTime(_:)(a1);
    }
  }
}

Swift::Void __swiftcall GhostPacerAccumulator.updateValuesWithTime(_:)(Swift::Double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance;
  v4 = swift_beginAccess();
  v5 = *&v1[v3];
  v6 = *&v1[OBJC_IVAR___NLGhostPacerAccumulator_goalDistance];
  if (v5 <= v6)
  {
    if (v6 <= 0.0)
    {
      v9 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
      v4 = swift_beginAccess();
      *&v1[v9] = 0;
    }

    else
    {
      v7 = v5 / v6 * *&v1[OBJC_IVAR___NLGhostPacerAccumulator_goalFinishTime] - a1;
      v8 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
      v4 = swift_beginAccess();
      *&v1[v8] = v7;
    }
  }

  v10 = *&v1[OBJC_IVAR___NLGhostPacerAccumulator_goalFinishTime];
  if (v5 >= v6 || v10 <= a1)
  {
    v12 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
    swift_beginAccess();
    *&v1[v12] = 0xC3E0000000000000;
  }

  else
  {
    v13 = MEMORY[0x20F2E8430](v4, v6 - v5, v10 - a1);
    v14 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
    swift_beginAccess();
    *&v1[v14] = v13;
  }

  v15 = [v1 updateHandler];
  if (v15)
  {
    v16 = v15;
    (*(v15 + 2))();
    _Block_release(v16);
  }
}

id GhostPacerAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GhostPacerAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GhostPacerAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(void *a1, double a2, double a3)
{
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance] = 0;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration] = 0;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime] = 0;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_kForceCalculationTimeout] = 0x4024000000000000;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_kMetricInvalidValue] = 0xC3E0000000000000;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_activityType] = a1;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_goalDistance] = a2;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_goalFinishTime] = a3;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer] = 0;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond] = MEMORY[0x20F2E8430](a1, a2, a3);
  v5.receiver = v3;
  v5.super_class = type metadata accessor for GhostPacerAccumulator();
  return objc_msgSendSuper2(&v5, sel_init);
}

double keypath_getTm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t FunctionalThresholdPowerStore.__allocating_init(with:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void FunctionalThresholdPowerStore.fetchMostRecentAppleFTP(completion:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.core);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[CyclingPowerZones] Fetching most recent Apple FTP", v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v8 = [objc_opt_self() _predicateForObjectsFromAppleWatches];
  v9 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCCD50] ascending:0];
  v10 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCDF38] ascending:0];
  type metadata accessor for HKSampleType(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  v11 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20B42FA20;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    v15 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    type metadata accessor for HKSampleType(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x277CCAC98);
    v16 = v12;
    v17 = v8;
    v18 = v9;
    v19 = v10;

    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = partial apply for closure #1 in FunctionalThresholdPowerStore.fetchMostRecentAppleFTP(completion:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_13;
    v21 = _Block_copy(aBlock);
    v22 = v15;
    v23 = v17;
    v24 = [v22 initWithSampleType:v16 predicate:v17 limit:1 sortDescriptors:isa resultsHandler:v21];

    _Block_release(v21);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = [objc_opt_self() currentThread];
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_20AEA4000, v25, v26, "[CyclingPowerZones] Fetching most recent Apple FTP, executing healthStore query, thread: %@", v27, 0xCu);
      outlined destroy of NSObject?(v28);
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    [*(v30 + 16) executeQuery_];
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000004ELL, 0x800000020B4594C0, "WorkoutCore/FunctionalThresholdPowerStore.swift", 47, 2, 29, 0);
    __break(1u);
  }
}

unint64_t closure #1 in FunctionalThresholdPowerStore.fetchMostRecentAppleFTP(completion:)(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v59 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v58 = &v57 - v13;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.core);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v57 = v8;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = [objc_opt_self() currentThread];
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&dword_20AEA4000, v15, v16, "[CyclingPowerZones] Fetching most recent Apple FTP, executed healthStore query, thread: %@", v19, 0xCu);
    outlined destroy of NSObject?(v20);
    MEMORY[0x20F2E9420](v20, -1, -1);
    v22 = v19;
    a4 = v18;
    v8 = v57;
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  if (a3)
  {
    v23 = a3;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = a3;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_20AEA4000, v24, v25, "[CyclingPowerZones] Cannot fetch most recent Apple FTP quantity sample, error: %@", v26, 0xCu);
      outlined destroy of NSObject?(v27);
      MEMORY[0x20F2E9420](v27, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    return a4(0);
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  if (!(a2 >> 62))
  {
    v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_12;
    }

LABEL_22:
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_20AEA4000, v54, v55, "[CyclingPowerZones] Most recent Apple FTP quantity sample is not available", v56, 2u);
      MEMORY[0x20F2E9420](v56, -1, -1);
    }

    return a4(0);
  }

  v30 = __CocoaSet.count.getter();
  if (!v30)
  {
    goto LABEL_22;
  }

LABEL_12:
  v31 = __OFSUB__(v30, 1);
  result = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(a2 + 8 * result + 32);
      goto LABEL_17;
    }

    __break(1u);
    return result;
  }

  v33 = MEMORY[0x20F2E7A20](result, a2);
LABEL_17:
  v34 = v33;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {

    goto LABEL_22;
  }

  v36 = v35;
  v37 = [v35 quantity];
  [v37 _value];
  v39 = v38;

  v40 = [v36 endDate];
  v41 = v58;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v59;
  static Date.now.getter();
  type metadata accessor for FunctionalThresholdPower(0);
  v43 = swift_allocObject();
  *(v43 + 16) = v39;
  *(v43 + 24) = 0;
  v44 = *(v8 + 32);
  v44(v43 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v41, v7);
  v44(v43 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v42, v7);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v60 = v48;
    *v47 = 136315138;

    v49 = FunctionalThresholdPower.description.getter();
    v51 = v50;

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v60);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_20AEA4000, v45, v46, "[CyclingPowerZones] Fetched most recent Apple FTP: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x20F2E9420](v48, -1, -1);
    MEMORY[0x20F2E9420](v47, -1, -1);
  }

  a4(v53);
}

uint64_t FunctionalThresholdPowerStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for HKSampleType(0, &lazy cache variable for type metadata for HKSample, 0x277CCD8A8);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t type metadata accessor for HKSampleType(uint64_t a1, unint64_t *a2, void *a3)
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

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11WorkoutCore16CyclingPowerZoneC_SayAFGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore16CyclingPowerZoneC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t static CyclingPowerZonesConfigurationEditor.changeFunctionalThresholdPower(to:using:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - v11;
  v13 = *(a1 + 16);
  if (v13 < 20.0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v13;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 0x4034000000000000;
      _os_log_impl(&dword_20AEA4000, v15, v16, "[CyclingPowerZones] auto correct input FTP value %f to min %f", v17, 0x16u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    v18 = *(a1 + 24);
    v19 = *(v5 + 16);
    v19(v12, a1 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v4);
    v19(v9, v12, v4);
    type metadata accessor for FunctionalThresholdPower(0);
    v20 = swift_allocObject();
    v21 = v20;
    v22 = 0x4034000000000000;
LABEL_13:
    *(v20 + 16) = v22;
    *(v20 + 24) = v18;
    v28 = *(v5 + 32);
    v28(v20 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v9, v4);
    v28(v21 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v12, v4);
    v29 = specialized static CyclingPowerZonesConfigurationEditor.changeFunctionalThresholdPowerInternal(to:using:)(v21, a2);

    return v29;
  }

  if (v13 > 1000.0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.core);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = v13;
      *(v26 + 12) = 2048;
      *(v26 + 14) = 0x408F400000000000;
      _os_log_impl(&dword_20AEA4000, v24, v25, "[CyclingPowerZones] auto correct input FTP value %f to max %f", v26, 0x16u);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    v18 = *(a1 + 24);
    v27 = *(v5 + 16);
    v27(v12, a1 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v4);
    v27(v9, v12, v4);
    type metadata accessor for FunctionalThresholdPower(0);
    v20 = swift_allocObject();
    v21 = v20;
    v22 = 0x408F400000000000;
    goto LABEL_13;
  }

  return specialized static CyclingPowerZonesConfigurationEditor.changeFunctionalThresholdPowerInternal(to:using:)(a1, a2);
}

uint64_t static CyclingPowerZonesConfigurationEditor.changeConfigurationType(to:using:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);

  static Date.now.getter();
  type metadata accessor for CyclingPowerZonesConfiguration(0);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  *(v14 + 32) = v11;
  *(v14 + 40) = v12;
  *(v14 + 48) = v13;
  (*(v5 + 32))(v14 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v8, v4);
  if (*(v14 + 16))
  {
    LOBYTE(v22) = *(a2 + 40);
    v15 = specialized static CyclingPowerZonesConfigurationEditor.recalculateManualZonesOrProvideDefault(for:using:)(&v22, v14);
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v22 = 0xD00000000000001CLL;
    v23 = 0x800000020B459580;
    if (v9)
    {
      v16 = 0x6C61756E616DLL;
    }

    else
    {
      v16 = 0x6974616D6F747561;
    }

    if (v9)
    {
      v17 = 0xE600000000000000;
    }

    else
    {
      v17 = 0xE900000000000063;
    }

    MEMORY[0x20F2E6D80](v16, v17);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v18 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v22, v23, v15, a2);
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v22 = 0xD00000000000001CLL;
    v23 = 0x800000020B459580;
    if (v9)
    {
      v19 = 0x6C61756E616DLL;
    }

    else
    {
      v19 = 0x6974616D6F747561;
    }

    if (v9)
    {
      v20 = 0xE600000000000000;
    }

    else
    {
      v20 = 0xE900000000000063;
    }

    MEMORY[0x20F2E6D80](v19, v20);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v18 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v22, v23, v14, a2);
  }

  return v18;
}

uint64_t static CyclingPowerZonesConfigurationEditor.changeZonesSize(to:using:)(_BYTE *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    LOBYTE(v8) = *a1;
    v3 = specialized static CyclingPowerZonesConfigurationEditor.recalculateManualZonesOrProvideDefault(for:using:)(&v8, a2);
    v8 = 0;
    v9 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v8 = 0xD000000000000014;
    v9 = 0x800000020B4595A0;
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v4);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v5 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v8, v9, v3, a2);
  }

  else
  {
    _StringGuts.grow(_:)(23);

    v8 = 0xD000000000000014;
    v9 = 0x800000020B4595A0;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v6);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v5 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(0xD000000000000014, 0x800000020B4595A0, a2, a2);
  }

  return v5;
}

uint64_t static CyclingPowerZonesConfigurationEditor.resetManualZones(using:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  if (v8 <= 0.0)
  {
  }

  else
  {
    v9 = *(a1 + 48);
    if ((*(a1 + 16) & 1) == 0)
    {
      v8 = *(*(a1 + 24) + 16);
    }

    v20 = *(a1 + 40);
    v10 = CyclingPowerZonesSize.automaticZonePercentages()();

    v11 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v10, v8);

    v12 = *(a1 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v9;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v12, isUniquelyReferenced_nonNull_native);
    v14 = v19;
    LOBYTE(v12) = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(a1 + 40);

    static Date.now.getter();
    type metadata accessor for CyclingPowerZonesConfiguration(0);
    v17 = swift_allocObject();
    *(v17 + 16) = v12;
    *(v17 + 24) = v15;
    *(v17 + 32) = v7;
    *(v17 + 40) = v16;
    *(v17 + 48) = v14;
    (*(v3 + 32))(v17 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v6, v2);
    a1 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(0xD000000000000010, 0x800000020B4595C0, v17, a1);
  }

  return a1;
}

BOOL static CyclingPowerZonesConfigurationEditor.isManualZonesEqualToAutomatic(using:)(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  v3 = *(*(a1 + 32) + 16);
  v4 = CyclingPowerZonesSize.automaticZonePercentages()();
  v5 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v4, v3);

  v6 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v5 >> 62)
  {
    goto LABEL_37;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!(v6 >> 62))
  {
    goto LABEL_6;
  }

LABEL_38:
  v8 = __CocoaSet.count.getter();
LABEL_7:

  if (v7 == v8)
  {
    v6 = CyclingPowerZonesConfiguration.manualZones.getter();
    v9 = v6;
    v25 = v7;
    v27 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      v10 = v6;
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v12 = 0;
    v13 = v5 & 0xC000000000000001;
    v14 = v5 & 0xFFFFFFFFFFFFFF8;
    v26 = v5;
    v15 = v5 + 32;
    while (1)
    {
      if (v10 == v11)
      {

        return v12 == v25;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2E7A20](v11, v9);
        v5 = v6;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v11 >= *(v27 + 16))
        {
          goto LABEL_33;
        }

        v5 = *(v9 + 8 * v11 + 32);

        if (__OFADD__(v11, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v24 = v6;
          v7 = __CocoaSet.count.getter();
          v6 = v24;
          if (v24 >> 62)
          {
            goto LABEL_38;
          }

LABEL_6:
          v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_7;
        }
      }

      v6 = *(v5 + 32);
      if (v13)
      {
        v16 = MEMORY[0x20F2E7A20](v6, v26);
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v6 >= *(v14 + 16))
        {
          goto LABEL_36;
        }

        v16 = *(v15 + 8 * v6);
      }

      v17 = *(v5 + 16);
      v18 = *(v5 + 24);

      v19 = *(v16 + 16);
      v20 = *(v16 + 24);

      v21 = v18 == v20 && v17 == v19;
      ++v11;
      v22 = __OFADD__(v12, v21);
      v12 += v21;
      if (v22)
      {
        goto LABEL_35;
      }
    }
  }

  return 0;
}

uint64_t static CyclingPowerZonesConfigurationEditor.createAutomaticConfiguration(for:size:)(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v24 - v11;
  v14 = *(a1 + 16);
  v25 = *a2;
  v13 = v25;
  v15 = CyclingPowerZonesSize.automaticZonePercentages()();
  v16 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v15, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore21CyclingPowerZonesSizeO_SayAC0fG4ZoneCGtGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore21CyclingPowerZonesSizeO_SayAC0fG4ZoneCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = v13;
  v18 = inited + 32;
  *(inited + 40) = v16;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore21CyclingPowerZonesSizeO_SayAC0eF4ZoneCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CyclingPowerZonesSize, [CyclingPowerZone])(v18);
  static Date.now.getter();
  (*(v5 + 16))(v9, v12, v4);
  type metadata accessor for FunctionalThresholdPower(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 1;
  v21 = *(v5 + 32);
  v21(v20 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v9, v4);
  v21(v20 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v12, v4);
  static Date.now.getter();
  type metadata accessor for CyclingPowerZonesConfiguration(0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = a1;
  *(v22 + 32) = v20;
  *(v22 + 40) = v13;
  *(v22 + 48) = v19;
  v21(v22 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v12, v4);

  return v22;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.emptyZones(size:)(unsigned __int8 *a1)
{
  v5 = MEMORY[0x277D84F90];
  v1 = *a1 + 5;
  type metadata accessor for CyclingPowerZone();
  v2 = 0;
  do
  {
    v3 = swift_allocObject();
    v3[2] = 0;
    v3[3] = 0;
    v3[6] = 0;
    v3[7] = 0;
    v3[4] = v2;
    v3[5] = v1;
    MEMORY[0x20F2E6F30]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v2;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v1 != v2);
  return v5;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (a2 <= 0.0)
  {
    v34 = byte_2822410D0;
    if (byte_2822410D0 + 5 != v2)
    {
      v34 = byte_2822410D1;
      if (byte_2822410D1 + 5 != v2)
      {
        v34 = byte_2822410D2;
        if (byte_2822410D2 + 5 != v2)
        {
          v34 = byte_2822410D3;
          if (byte_2822410D3 + 5 != v2)
          {
            v34 = 1;
          }
        }
      }
    }

    v40 = v34;
    return specialized static CyclingPowerZonesConfigurationEditor.emptyZones(size:)(&v40);
  }

  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v5 = 0;
  v39 = MEMORY[0x277D84F90];
  v6 = v2 - 1;
  v7 = (a1 + 32 + 16 * (v2 - 1));
  v35 = vdupq_lane_s64(*&a2, 0);
  v38 = a2;
  while (v5)
  {
    if (v6 == v5)
    {
      v8 = v7[1];
      v9 = round(*v7 * a2);
      v10 = round(v8 * a2);
      v11 = v8 < INFINITY;
      v12 = v8 <= INFINITY;
      v13 = 1000.0;
      if (v11)
      {
        v13 = v10;
      }

      if (v12)
      {
        v14 = v13;
      }

      else
      {
        v14 = v10;
      }

      if (v9 > v14)
      {
        goto LABEL_44;
      }

      v15 = v9 / a2;
      v16 = v14 / a2;
      if (v9 / a2 > v14 / a2)
      {
        goto LABEL_44;
      }

      type metadata accessor for CyclingPowerZone();
      result = swift_allocObject();
      *(result + 48) = v15;
      *(result + 56) = v16;
      v17 = floor(v14);
      if (v9 > v17)
      {
        goto LABEL_45;
      }

      v18 = result;
      *(result + 16) = v9;
      *(result + 24) = v17;
      *(result + 32) = v6;
LABEL_24:
      *(v18 + 40) = v2;
      goto LABEL_30;
    }

    v28 = vrndaq_f64(vmulq_n_f64(*(a1 + 32 + 16 * v5), a2));
    v29 = v28.f64[1];
    v30 = vdivq_f64(v28, v35);
    v31 = v30.f64[1];
    if (v28.f64[0] > v28.f64[1] || v30.f64[0] > v30.f64[1])
    {
      goto LABEL_43;
    }

    v36 = v30.f64[0];
    v37 = v28.f64[0];
    type metadata accessor for CyclingPowerZone();
    v33 = swift_allocObject();
    v33[6] = v36;
    v33[7] = v31;
    v33[2] = v37;
    v33[3] = v29;
    *(v33 + 4) = v5;
    *(v33 + 5) = v2;
LABEL_30:
    MEMORY[0x20F2E6F30]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    ++v5;
    a2 = v38;
    if (v2 == v5)
    {
      return v39;
    }
  }

  v19 = *(a1 + 40);
  v20 = round(*(a1 + 32) * a2);
  v21 = round(v19 * a2);
  v11 = v19 < INFINITY;
  v22 = v19 <= INFINITY;
  v23 = 1000.0;
  if (v11)
  {
    v23 = v21;
  }

  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  if (v20 <= v24)
  {
    v25 = v20 / a2;
    v26 = v24 / a2;
    if (v20 / a2 <= v24 / a2)
    {
      type metadata accessor for CyclingPowerZone();
      result = swift_allocObject();
      *(result + 48) = v25;
      *(result + 56) = v26;
      v27 = floor(v24);
      if (v20 > v27)
      {
        goto LABEL_42;
      }

      v18 = result;
      *(result + 16) = v20;
      *(result + 24) = v27;
      *(result + 32) = 0;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

BOOL specialized static CyclingPowerZonesConfigurationEditor.hasAllEmptyZones(_:)(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_20:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2E7A20](v5, a1);
      if (__OFADD__(v5, 1))
      {
LABEL_13:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }
    }

    v8 = *(v7 + 16);
    v9 = *(v7 + 24);

    v10 = v8 == v9;
    ++v5;
    v11 = __OFADD__(v6, v10);
    v6 += v10;
    if (v11)
    {
      goto LABEL_19;
    }
  }

  if (v3)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *(v2 + 16);
  }

  return v6 == v12;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.createAutomaticEmptyConfiguration()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - v7;
  static Date.now.getter();
  v9 = *(v1 + 16);
  v9(v5, v8, v0);
  type metadata accessor for FunctionalThresholdPower(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  v11 = *(v1 + 32);
  v11(v10 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v5, v0);
  v11(v10 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v8, v0);
  static Date.now.getter();
  v9(v5, v8, v0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 1;
  v11(v12 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v5, v0);
  v11(v12 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v8, v0);
  static Date.now.getter();
  type metadata accessor for CyclingPowerZonesConfiguration(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 1;
  *(v13 + 48) = MEMORY[0x277D84F98];
  v11(v13 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v8, v0);
  return v13;
}

unint64_t specialized static CyclingPowerZonesConfigurationEditor.adjustedZones(for:zones:newZone:)(unint64_t a1, uint64_t *a2, double a3)
{
  v4 = a2;
  v5 = a1;
  v7 = a2[4];
  if (a1 >> 62)
  {
    goto LABEL_119;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v9)
  {

    if (v7 >= i)
    {
      return v5;
    }

    v5 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11WorkoutCore16CyclingPowerZoneC_SayAFGTt0g5(v5);

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_129;
    }

    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v4;

    if (!v7)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v4 = v7;
      while (1)
      {
        v10 = v7 < v4;
        if (v7 < v4)
        {
          break;
        }

        v11 = (v4 - 1);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2E7A20](v4 - 1, v5);
          v9 = MEMORY[0x20F2E7A20](v4, v5);
          v15 = v9;
        }

        else
        {
          v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v10 = v11 < v12;
          if (v11 >= v12)
          {
            goto LABEL_58;
          }

          v10 = v4 < v12;
          if (v4 >= v12)
          {
            goto LABEL_60;
          }

          v13 = v5 + 8 * v4;
          v14 = *(v13 + 24);
          v15 = *(v13 + 32);
        }

        v16 = *(v15 + 16);
        if (*(v14 + 16) > v16 + -2.0)
        {
          v17 = v16 + -2.0;
        }

        else
        {
          v17 = *(v14 + 16);
        }

        v10 = v17 < v16;
        if (v17 > v16)
        {
          goto LABEL_59;
        }

        v18 = 0.0;
        v19 = 0.0;
        if (a3 > 0.0)
        {
          v18 = v17 / a3;
          v19 = v16 / a3;
          if (v17 / a3 > v16 / a3)
          {
            goto LABEL_97;
          }
        }

        if (v5 >> 62)
        {
          v3 = __CocoaSet.count.getter();
        }

        else
        {
          v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v9 = swift_allocObject();
        *(v9 + 48) = v18;
        *(v9 + 56) = v19;
        v20 = floor(v17);
        v21 = floor(v16);
        v10 = v20 < v21;
        if (v20 > v21)
        {
          goto LABEL_61;
        }

        v22 = v9;
        *(v9 + 16) = v20;
        *(v9 + 24) = v21;
        *(v9 + 32) = v11;
        *(v9 + 40) = v3;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v5 >> 62 || !isUniquelyReferenced_nonNull_bridgeObject)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
        }

        v24 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = v11 < v24;
        if (v11 >= v24)
        {
          goto LABEL_62;
        }

        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x18) = v22;

        --v4;
        if (!v11)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v25 = v7;
    while (1)
    {
      if (v7 < v25)
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        v53 = v7 + 5;
        v3 = 1 - v9;
        while (1)
        {
          v7 = v53 - 4;
          v54 = v53 - 5;
          if (__OFSUB__(v53 - 4, 1))
          {
            goto LABEL_130;
          }

          v55 = v5 & 0xFFFFFFFFFFFFFF8;
          v56 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v54 >= v56)
          {
            goto LABEL_131;
          }

          if (v7 >= v56)
          {
            goto LABEL_132;
          }

          v4 = *(v5 + 8 * v53);
          v57 = *(*(v5 + 8 * v54 + 32) + 24);
          if (v57 + 2.0 > *(v4 + 24))
          {
            v58 = v57 + 2.0;
          }

          else
          {
            v58 = *(v4 + 24);
          }

          if (v57 > v58)
          {
            goto LABEL_133;
          }

          v59 = 0.0;
          v60 = 0.0;
          if (a3 > 0.0)
          {
            v59 = v57 / a3;
            v60 = v58 / a3;
            if (v57 / a3 > v58 / a3)
            {
              goto LABEL_137;
            }
          }

          if (v5 >> 62)
          {
            v56 = __CocoaSet.count.getter();
          }

          v61 = swift_allocObject();
          *(v61 + 48) = v59;
          *(v61 + 56) = v60;
          v62 = floor(v57);
          v63 = floor(v58);
          if (v62 > v63)
          {
            goto LABEL_134;
          }

          v64 = v61;
          *(v61 + 16) = v62;
          *(v61 + 24) = v63;
          *(v61 + 32) = v7;
          *(v61 + 40) = v56;

          v65 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v5 >> 62 || !v65)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew()();

            v55 = v5 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
          }

          if (v7 >= *(v55 + 16))
          {
            goto LABEL_135;
          }

          *(v55 + 8 * v53) = v64;

          ++v53;
          if (v3 + v53 == 5)
          {
            return v5;
          }
        }
      }

      v3 = v5 & 0xFFFFFFFFFFFFFF8;
      v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25 - 1 >= v26)
      {
        goto LABEL_92;
      }

      if (v25 >= v26)
      {
        goto LABEL_93;
      }

      v27 = v5 + 8 * v25;
      v4 = *(v27 + 24);
      v28 = *(*(v27 + 32) + 16);
      if (*(v4 + 16) > v28 + -2.0)
      {
        v29 = v28 + -2.0;
      }

      else
      {
        v29 = *(v4 + 16);
      }

      if (v29 > v28)
      {
        goto LABEL_94;
      }

      v30 = 0.0;
      v31 = 0.0;
      if (a3 > 0.0)
      {
        v30 = v29 / a3;
        v31 = v28 / a3;
        if (v29 / a3 > v28 / a3)
        {
          break;
        }
      }

      if (v5 >> 62)
      {
        v26 = __CocoaSet.count.getter();
      }

      v9 = swift_allocObject();
      *(v9 + 48) = v30;
      *(v9 + 56) = v31;
      v32 = floor(v29);
      v33 = floor(v28);
      if (v32 > v33)
      {
        goto LABEL_95;
      }

      v34 = v9;
      *(v9 + 16) = v32;
      *(v9 + 24) = v33;
      v35 = v25 - 1;
      *(v9 + 32) = v25 - 1;
      *(v9 + 40) = v26;

      v36 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v5 >> 62 || !v36)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()();

        v3 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      if (v35 >= *(v3 + 16))
      {
        goto LABEL_96;
      }

      *(v3 + 8 * v25 + 24) = v34;

      --v25;
      if (!v35)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_119:
    v9 = __CocoaSet.count.getter();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_121;
    }

LABEL_141:
    ;
  }

LABEL_53:
  v3 = v7 + 1;
  if (v5 >> 62)
  {
    goto LABEL_138;
  }

  v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 < v3)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  while (1)
  {
    v10 = v3 < v9;
    if (v3 == v9)
    {
      return v5;
    }

LABEL_63:
    if (!v10)
    {
      goto LABEL_140;
    }

    if ((v5 & 0xC000000000000001) == 0)
    {
      goto LABEL_98;
    }

    v7 += 5;
    v38 = 1 - v9;
    while (1)
    {
      v4 = v7 - 4;
      v39 = v7 - 5;
      if (__OFSUB__(v7 - 4, 1))
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x20F2E7A20](v39, v5);
        v42 = MEMORY[0x20F2E7A20](v7 - 4, v5);
      }

      else
      {
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }

        v40 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39 >= v40)
        {
          goto LABEL_123;
        }

        if (v4 >= v40)
        {
          goto LABEL_125;
        }

        v41 = *(v5 + 8 * v39 + 32);
        v42 = *(v5 + 8 * v7);
      }

      v43 = *(v41 + 24);
      if (v43 + 2.0 > *(v42 + 24))
      {
        v44 = v43 + 2.0;
      }

      else
      {
        v44 = *(v42 + 24);
      }

      if (v43 > v44)
      {
        goto LABEL_124;
      }

      v45 = 0.0;
      v46 = 0.0;
      if (a3 > 0.0)
      {
        v45 = v43 / a3;
        v46 = v44 / a3;
        if (v43 / a3 > v44 / a3)
        {
          goto LABEL_136;
        }
      }

      if (v5 >> 62)
      {
        v47 = __CocoaSet.count.getter();
      }

      else
      {
        v47 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = swift_allocObject();
      *(v48 + 48) = v45;
      *(v48 + 56) = v46;
      v49 = floor(v43);
      v50 = floor(v44);
      if (v49 > v50)
      {
        goto LABEL_126;
      }

      v51 = v48;
      *(v48 + 16) = v49;
      *(v48 + 24) = v50;
      *(v48 + 32) = v4;
      *(v48 + 40) = v47;
      v52 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v5 >> 62 || !v52)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      if (v3 < 0)
      {
        goto LABEL_127;
      }

      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

      *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v51;

      ++v7;
      if (v38 + v7 == 5)
      {
        return v5;
      }
    }

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
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
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
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v9 = __CocoaSet.count.getter();
    if (v9 < v3)
    {
      goto LABEL_139;
    }
  }
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.core);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v19);
    *(v10 + 12) = 2080;
    v12 = CyclingPowerZonesConfiguration.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    v15 = CyclingPowerZonesConfiguration.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_20AEA4000, v8, v9, "[CyclingPowerZones] %s, target: %s, source: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  return a3;
}

uint64_t *specialized static CyclingPowerZonesConfigurationEditor.changeLowerBound(to:zoneIndex:using:)(unint64_t a1, uint64_t *a2, double a3)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0.0 || a3 > 10000.0)
  {
    goto LABEL_12;
  }

  v45 = v14;
  v18 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 <= a1)
  {
LABEL_12:

    return a2;
  }

  v20 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_10;
  }

LABEL_37:
  v21 = __CocoaSet.count.getter();

  if (v21 < 0)
  {
    __break(1u);
LABEL_39:
    v3 = MEMORY[0x20F2E7A20](a1, v21);
    goto LABEL_17;
  }

LABEL_10:
  if (v21 && !a1)
  {
    goto LABEL_12;
  }

  v23 = CyclingPowerZonesConfiguration.manualZones.getter();
  v21 = v23;
  if ((v23 & 0xC000000000000001) != 0)
  {
    goto LABEL_39;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    v27 = __CocoaSet.count.getter();
    goto LABEL_31;
  }

  v3 = *(v23 + 8 * a1 + 32);

LABEL_17:

  if (a1 + a1 > a3)
  {
    v4 = a1 + a1;
  }

  else
  {
    v4 = a3;
  }

  if (v4 + 2.0 > *(v3 + 24))
  {
    v5 = v4 + 2.0;
  }

  else
  {
    v5 = *(v3 + 24);
  }

  if (v4 > v5)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (*(a2 + 16) == 1)
  {
    v24 = a2[4];
  }

  else
  {
    v24 = a2[3];
  }

  v25 = *(v24 + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v25 > 0.0)
  {
    v6 = v4 / v25;
    v7 = v5 / v25;
    if (v4 / v25 > v5 / v25)
    {
      goto LABEL_44;
    }
  }

  v26 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v26 >> 62)
  {
    goto LABEL_42;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  v44[1] = v3;

  type metadata accessor for CyclingPowerZone();
  result = swift_allocObject();
  *(result + 6) = v6;
  *(result + 7) = v7;
  v28 = floor(v4);
  v29 = floor(v5);
  if (v28 <= v29)
  {
    *(result + 2) = v28;
    *(result + 3) = v29;
    result[4] = a1;
    result[5] = v27;
    v30 = 3;
    if (*(a2 + 16))
    {
      v30 = 4;
    }

    v31 = *(a2[v30] + 16);
    v32 = result;
    v44[0] = result;
    v33 = CyclingPowerZonesConfiguration.manualZones.getter();
    v34 = specialized static CyclingPowerZonesConfigurationEditor.adjustedZones(for:zones:newZone:)(v33, v32, v31);

    v35 = a2[6];
    v36 = *(a2 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v35;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v36, isUniquelyReferenced_nonNull_native);
    v38 = v47;
    v39 = *(a2 + 16);
    v40 = a2[3];
    v41 = a2[4];

    static Date.now.getter();
    v42 = swift_allocObject();
    *(v42 + 16) = v39;
    *(v42 + 24) = v40;
    *(v42 + 32) = v41;
    *(v42 + 40) = v36;
    *(v42 + 48) = v38;
    (*(v12 + 32))(v42 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v16, v45);
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B459700);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0x6E49656E6F7A202CLL, 0xEC0000003A786564);
    v46 = a1;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v43);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    a2 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v47, v48, v42, a2);

    return a2;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t *specialized static CyclingPowerZonesConfigurationEditor.changeUpperBound(to:zoneIndex:using:)(unint64_t a1, uint64_t *a2, double a3)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0.0 || a3 > 10000.0)
  {
    goto LABEL_12;
  }

  v48 = v14;
  v18 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 <= a1)
  {
LABEL_12:

    return a2;
  }

  v20 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_10;
  }

LABEL_43:
  v21 = __CocoaSet.count.getter();

  if (v21 < 0)
  {
    __break(1u);
LABEL_45:
    v3 = MEMORY[0x20F2E7A20](a1, v21);
    goto LABEL_17;
  }

LABEL_10:
  if (v21 && v21 - 1 == a1)
  {
    goto LABEL_12;
  }

  v23 = CyclingPowerZonesConfiguration.manualZones.getter();
  v21 = v23;
  if ((v23 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    v30 = __CocoaSet.count.getter();
    goto LABEL_37;
  }

  v3 = *(v23 + 8 * a1 + 32);

LABEL_17:

  v24 = (a1 + 1) + (a1 + 1);
  v25 = 10000.0 - (a1 + a1);
  v26 = v24 > a3 || v25 < a3;
  v4 = a3;
  if (v26)
  {
    v4 = (a1 + 1) + (a1 + 1);
    if (v24 <= a3)
    {
      if (v25 >= a3)
      {
        v4 = a3;
      }

      else
      {
        v4 = 10000.0 - (a1 + a1);
      }
    }
  }

  if (*(v3 + 16) > v4 + -2.0)
  {
    v5 = v4 + -2.0;
  }

  else
  {
    v5 = *(v3 + 16);
  }

  if (v5 > v4)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (*(a2 + 16) == 1)
  {
    v27 = a2[4];
  }

  else
  {
    v27 = a2[3];
  }

  v28 = *(v27 + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v28 > 0.0)
  {
    v6 = v5 / v28;
    v7 = v4 / v28;
    if (v5 / v28 > v4 / v28)
    {
      goto LABEL_50;
    }
  }

  v29 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v29 >> 62)
  {
    goto LABEL_48;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
  v47[1] = v3;

  type metadata accessor for CyclingPowerZone();
  result = swift_allocObject();
  *(result + 6) = v6;
  *(result + 7) = v7;
  v31 = floor(v5);
  v32 = floor(v4);
  if (v31 <= v32)
  {
    *(result + 2) = v31;
    *(result + 3) = v32;
    result[4] = a1;
    result[5] = v30;
    v33 = 3;
    if (*(a2 + 16))
    {
      v33 = 4;
    }

    v34 = *(a2[v33] + 16);
    v35 = result;
    v47[0] = result;
    v36 = CyclingPowerZonesConfiguration.manualZones.getter();
    v37 = specialized static CyclingPowerZonesConfigurationEditor.adjustedZones(for:zones:newZone:)(v36, v35, v34);

    v38 = a2[6];
    v39 = *(a2 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v38;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v39, isUniquelyReferenced_nonNull_native);
    v41 = v50;
    v42 = *(a2 + 16);
    v43 = a2[3];
    v44 = a2[4];

    static Date.now.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = v43;
    *(v45 + 32) = v44;
    *(v45 + 40) = v39;
    *(v45 + 48) = v41;
    (*(v12 + 32))(v45 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v16, v48);
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B4596E0);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0x6E49656E6F7A202CLL, 0xEC0000003A786564);
    v49 = a1;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v46);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    a2 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v50, v51, v45, a2);

    return a2;
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.changeAutomaticFTP(to:using:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);

  static Date.now.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = a1;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;
  *(v13 + 48) = v12;
  (*(v5 + 32))(v13 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v8, v4);
  v17 = 0;
  v18 = 0xE000000000000000;

  _StringGuts.grow(_:)(26);

  v17 = 0xD000000000000017;
  v18 = 0x800000020B4596C0;
  v14 = FunctionalThresholdPower.description.getter();
  MEMORY[0x20F2E6D80](v14);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  v15 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v17, v18, v13, a2);

  return v15;
}

uint64_t *specialized static CyclingPowerZonesConfigurationEditor.recalculateManualZonesOrProvideDefault(for:using:)(unsigned __int8 *a1, unint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = v2[6];
  if (!*(v11 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v13 & 1) == 0))
  {
    v22 = 3;
    if (*(v2 + 16))
    {
      v22 = 4;
    }

    v23 = *(v2[v22] + 16);
    LOBYTE(v74) = v10;
    v24 = CyclingPowerZonesSize.automaticZonePercentages()();

    v25 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v24, v23);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v10, isUniquelyReferenced_nonNull_native);
    v27 = v74;
    v28 = v10;
    v29 = *(v2 + 16);
    v30 = v2[3];
    v31 = v2[4];

    static Date.now.getter();
    v4 = swift_allocObject();
    *(v4 + 16) = v29;
    *(v4 + 24) = v30;
    *(v4 + 32) = v31;
    *(v4 + 40) = v28;
    *(v4 + 48) = v27;
    (*(v6 + 32))(v4 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v9, v5);
    return v4;
  }

  v73 = v11;
  v14 = *(*(v11 + 56) + 8 * v12);
  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_85;
  }

  swift_bridgeObjectRetain_n();
  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for Zone();
  v16 = v14;
LABEL_5:
  v17 = specialized static CyclingPowerZonesConfigurationEditor.hasAllEmptyZones(_:)(v16);

  if (v17)
  {
    v18 = v73;

    v19 = 3;
    if (*(v2 + 16))
    {
      v19 = 4;
    }

    v20 = *(v2[v19] + 16);
    LOBYTE(v74) = v10;
    v21 = CyclingPowerZonesSize.automaticZonePercentages()();
    v14 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v21, v20);

    goto LABEL_28;
  }

  v72 = v9;
  if (v15)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
LABEL_14:
      v68 = v10;
      v69 = v4;
      v70 = v6;
      v71 = v5;
      v74 = MEMORY[0x277D84F90];

      result = specialized ContiguousArray.reserveCapacity(_:)();
      if ((v9 & 0x8000000000000000) == 0)
      {
        v6 = 0;
        v4 = v14 & 0xC000000000000001;
        if (*(v2 + 16))
        {
          v33 = 4;
        }

        else
        {
          v33 = 3;
        }

        while (1)
        {
          if (v4)
          {
            v34 = MEMORY[0x20F2E7A20](v6, v14);
          }

          else
          {
            v34 = *(v14 + 8 * v6 + 32);
          }

          v35 = *(v2[v33] + 16);
          v36 = *(v34 + 48);
          v37 = *(v34 + 56);
          v38 = 0.0;
          v39 = 0.0;
          if (v35 > 0.0)
          {
            v38 = v35 * v36;
            v39 = v35 * v37;
            if (v35 * v36 > v35 * v37)
            {
              break;
            }
          }

          v15 = *(v34 + 32);
          v5 = *(v34 + 40);
          type metadata accessor for CyclingPowerZone();
          v16 = swift_allocObject();
          *(v16 + 48) = v36;
          *(v16 + 56) = v37;

          v40 = floor(v38);
          v41 = floor(v39);
          if (v40 > v41)
          {
            __break(1u);
            break;
          }

          ++v6;
          *(v16 + 16) = v40;
          *(v16 + 24) = v41;
          *(v16 + 32) = v15;
          *(v16 + 40) = v5;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v15 = *(v74 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v9 == v6)
          {

            v18 = v73;
            v14 = v74;
            v6 = v70;
            v5 = v71;
            v9 = v72;
            v10 = v68;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_38:
        v48 = *(MEMORY[0x20F2E7A20](v16, v14) + 24);
        swift_unknownObjectRelease();
        if (v48 < v36)
        {
LABEL_79:

          v65 = specialized static CyclingPowerZonesConfigurationEditor.changeUpperBound(to:zoneIndex:using:)(v16, v4, 2.0);
LABEL_80:
          v66 = v65;

          return v66;
        }

        while (v15 != ++v16)
        {
LABEL_40:
          v49 = *(v4 + 48);
          if (*(v49 + 16) && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(*(v4 + 40)), (v51 & 1) != 0))
          {
            v52 = *(*(v49 + 56) + 8 * v50);
          }

          else
          {
            if (*(v4 + 16))
            {
              v53 = v6;
            }

            else
            {
              v53 = v9;
            }

            v54 = *(*(v4 + v53) + 16);
            LOBYTE(v74) = *(v4 + 40);
            v55 = CyclingPowerZonesSize.automaticZonePercentages()();
            v52 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v55, v54);
          }

          if (v52 >> 62)
          {
            v10 = __CocoaSet.count.getter();

            if (v10 < 0)
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              type metadata accessor for Zone();

              v16 = _bridgeCocoaArray<A>(_:)();
              goto LABEL_5;
            }
          }

          else
          {
            v10 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v16 || !v10)
          {
            if (v2)
            {
              v64 = *(MEMORY[0x20F2E7A20](v16, v14) + 16);
              swift_unknownObjectRelease();
              if (v64 < v36)
              {
                goto LABEL_76;
              }
            }

            else
            {
              if (v16 >= *(v5 + 16))
              {
                goto LABEL_83;
              }

              if (*(*(v14 + 8 * v16 + 32) + 16) < v36)
              {
LABEL_76:

                v65 = specialized static CyclingPowerZonesConfigurationEditor.changeLowerBound(to:zoneIndex:using:)(v16, v4, 2.0);
                goto LABEL_80;
              }
            }
          }

          v56 = *(v4 + 48);
          if (*(v56 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(*(v4 + 40)), (v58 & 1) != 0))
          {
            v59 = *(*(v56 + 56) + 8 * v57);
          }

          else
          {
            if (*(v4 + 16))
            {
              v60 = v6;
            }

            else
            {
              v60 = v9;
            }

            v61 = *(*(v4 + v60) + 16);
            LOBYTE(v74) = *(v4 + 40);
            v62 = CyclingPowerZonesSize.automaticZonePercentages()();
            v59 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v62, v61);
          }

          if (v59 >> 62)
          {
            v10 = __CocoaSet.count.getter();

            if (v10 < 0)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v10 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v10)
          {
            v63 = v16 == v10 - 1;
          }

          else
          {
            v63 = 0;
          }

          if (!v63)
          {
            if (v2)
            {
              goto LABEL_38;
            }

            if (v16 >= *(v5 + 16))
            {
              goto LABEL_84;
            }

            if (*(*(v14 + 8 * v16 + 32) + 24) < v36)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_77;
      }

      goto LABEL_88;
    }
  }

  else
  {
    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_14;
    }
  }

  v18 = v73;

  v14 = MEMORY[0x277D84F90];
  v9 = v72;
LABEL_28:

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v10, v42);
  v43 = v74;
  v44 = *(v2 + 16);
  v45 = v2[3];
  v46 = v2[4];

  static Date.now.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v44;
  *(v4 + 24) = v45;
  *(v4 + 32) = v46;
  *(v4 + 40) = v10;
  *(v4 + 48) = v43;
  (*(v6 + 32))(v4 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v9, v5);
  if (*(v4 + 16) == 1)
  {
    if (*(v46 + 16) <= 0.0)
    {
      goto LABEL_77;
    }
  }

  else if (*(v45 + 16) <= 0.0)
  {
LABEL_77:

    return v4;
  }

  v47 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (!(v47 >> 62))
  {
    v15 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_34;
  }

  v15 = __CocoaSet.count.getter();

  if ((v15 & 0x8000000000000000) == 0)
  {
LABEL_34:
    if (v15)
    {
      v16 = 0;
      v2 = (v14 & 0xC000000000000001);
      v5 = v14 & 0xFFFFFFFFFFFFFF8;
      v9 = 24;
      v36 = 2.0;
      v6 = 32;
      goto LABEL_40;
    }

    goto LABEL_77;
  }

  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.changeFunctionalThresholdPowerInternal(to:using:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9 < 20.0 || v9 > 1000.0)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    MEMORY[0x20F2E6D80](0xD00000000000002ALL, 0x800000020B459620);
    v11 = FunctionalThresholdPower.description.getter();
    MEMORY[0x20F2E6D80](v11);

    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B459650);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B459670);
    v25 = 0x408F400000000000;
    v26 = 0x4034000000000000;
    v23 = 0;
    v24 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](v23, v24);

    v12 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v27, v28, a2, a2);

LABEL_10:

    return v12;
  }

  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  if ((*(a2 + 16) & 1) == 0)
  {
    v19 = *(a2 + 32);

    static Date.now.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = a1;
    *(v20 + 32) = v19;
    *(v20 + 40) = v13;
    *(v20 + 48) = v14;
    (*(v5 + 32))(v20 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v8, v4);
    v27 = 0;
    v28 = 0xE000000000000000;

    _StringGuts.grow(_:)(38);

    v27 = 0xD000000000000023;
    v28 = 0x800000020B459690;
    v21 = FunctionalThresholdPower.description.getter();
    MEMORY[0x20F2E6D80](v21);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v12 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v27, v28, v20, a2);

    goto LABEL_10;
  }

  v15 = *(a2 + 24);

  static Date.now.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = 1;
  *(v16 + 24) = v15;
  *(v16 + 32) = a1;
  *(v16 + 40) = v13;
  *(v16 + 48) = v14;
  (*(v5 + 32))(v16 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v8, v4);
  LOBYTE(v27) = *(a2 + 40);

  v17 = specialized static CyclingPowerZonesConfigurationEditor.recalculateManualZonesOrProvideDefault(for:using:)(&v27, v16);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v27 = 0xD000000000000023;
  v28 = 0x800000020B459690;
  v18 = FunctionalThresholdPower.description.getter();
  MEMORY[0x20F2E6D80](v18);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  v12 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v27, v28, v17, a2);

  swift_setDeallocating();
  (*(v5 + 8))(v16 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v4);
  swift_deallocClassInstance();
  return v12;
}

uint64_t getEnumTagSinglePayload for CyclingPowerZonesConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CyclingPowerZonesConstants(_WORD *result, int a2, int a3)
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

uint64_t static PropertyListFactory.make<A>(for:)()
{
  v14[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v4)
  {
    v9 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14[0] = 0;
    v11 = [v9 propertyListWithData:isa options:0 format:0 error:v14];

    v12 = v14[0];
    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data._Representation(v5, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v13 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return outlined consume of Data._Representation(v5, v7);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PropertyListFactory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PropertyListFactory(_WORD *result, int a2, int a3)
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

unint64_t Apple_Workout_Core_MirroredHostStartSource.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostStartSource.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_MirroredHostStartSource@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_MirroredHostStartSource()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_MirroredHostStartSource@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_MirroredHostStartSource(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostStartSource(uint64_t a1, uint64_t a2)
{
  started = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource();

  return MEMORY[0x28217E238](a1, a2, started);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_MirroredHostStartSource(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t Apple_Workout_Core_MirroredHostProtocolVersion.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostProtocolVersion.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_MirroredHostProtocolVersion@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_MirroredHostProtocolVersion()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_MirroredHostProtocolVersion@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_MirroredHostProtocolVersion(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostProtocolVersion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_MirroredHostProtocolVersion(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

unint64_t Apple_Workout_Core_MirroredBlobContentType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredBlobContentType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_MirroredHostCommand.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result != 100)
  {
    v2 = result;
  }

  if (result < 2)
  {
    v2 = result;
  }

  *a2 = v2;
  v3 = result < 2 || result == 100;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostCommand.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_20B4316A0[result];
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostCommand(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MirroredHostStartSource(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredClientCommand(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MirroredHostStartSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v6 + 24) = v8;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v9;
      v13 = *(v9 + 8);
      goto LABEL_12;
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  v12 = 0;
  v13 = 1;
LABEL_12:
  *v6 = v12;
  *(v6 + 8) = v13;
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.modify;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v13 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  UnknownStorage.init()();
  v11 = *(started + 32);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  UnknownStorage.init()();
  v3 = *(started + 32);
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v11 = *(*(started - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(started - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    UnknownStorage.init()();
    v16 = *(started + 32);
    v17 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v9, v13, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.modify;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  *a1 = 0;
  type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest : Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  *a2 = 0;
  type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  return UnknownStorage.init()();
}

uint64_t outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v11 = 0;
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v11, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest.modify;
}

uint64_t outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  *a1 = 0;
  a1[1] = 0;
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart : Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  *a2 = 0;
  a2[1] = 0;
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v11 = 0;
    v11[1] = 0;
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v11, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart.modify;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostAlertStackRequest.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostAlertStackRequest.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v11[4] = 0;
    v11[5] = 0xE000000000000000;
    v11[6] = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostAlertStackRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v11, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostAlertStackRequest.modify;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v12 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v10 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate : Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v10 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

uint64_t key path setter for Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration : Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v16 - v12;
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, &v16 - v12, a6);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v13, a2, a6);
  v14 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v3, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v3, a2);
  v6 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    UnknownStorage.init()();
    v15 = *(v9 + 20);
    v16 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
    (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate.modify;
}

void Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[3], v9, a3);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v12, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v10, a5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(**a1, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v20 - v14;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v10, &v20 - v14, a1, a2);
  v16 = a3(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    result = _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, a1, a2);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v18 = *v15;
      v19 = v15[8];
      goto LABEL_6;
    }

    result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v15, a4);
  }

  v18 = 0;
  v19 = 1;
LABEL_6:
  *a5 = v18;
  *(a5 + 8) = v19;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand : Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t (*a5)(void)@<X6>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v20 - v14;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v20 - v14, a2, a3);
  v16 = a4(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    result = _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, a2, a3);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v18 = *v15;
      v19 = v15[8];
      goto LABEL_6;
    }

    result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v15, a5);
  }

  v18 = 0;
  v19 = 1;
LABEL_6:
  *a6 = v18;
  *(a6 + 8) = v19;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand : Apple_Workout_Core_MirroredHostMessage(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = *a1;
  v10 = *(a1 + 8);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, a5, a6);
  *a2 = v9;
  *(a2 + 8) = v10;
  v11 = a7(0);
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);

  return v12(a2, 0, 1, v11);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.setter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v4, a2, a3);
  *v4 = v6;
  *(v4 + 8) = v7;
  v8 = a4(0);
  swift_storeEnumTagMultiPayload();
  v9 = *(*(v8 - 8) + 56);

  return v9(v4, 0, 1, v8);
}

void (*Apple_Workout_Core_MirroredClientMessage.mirroredClientCommand.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v6 + 24) = v8;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v9;
      v13 = *(v9 + 8);
      goto LABEL_12;
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  v12 = 0;
  v13 = 1;
LABEL_12:
  *v6 = v12;
  *(v6 + 8) = v13;
  return Apple_Workout_Core_MirroredClientMessage.mirroredClientCommand.modify;
}

void Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.modify(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v10 = *(*a1 + 8);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, a3, a4);
  *v8 = v9;
  *(v8 + 8) = v10;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 56))(v8, 0, 1, v5);
  free(v7);

  free(v4);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  *a1 = 0;
  a1[1] = 0;
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse : Apple_Workout_Core_MirroredClientMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  *a2 = 0;
  a2[1] = 0;
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse : Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.setter(uint64_t a1)
{
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  v3 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t Apple_Workout_Core_MirroredHostCountdownStart.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  *a2 = 0;
  a2[1] = 0;
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v11 = 0;
    v11[1] = 0;
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v11, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  return Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.modify;
}

void Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[3], v5, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v5, v8, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v6, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(**a1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, v8, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  *a1 = 0;
  type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart : Apple_Workout_Core_MirroredClientMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  *a2 = 0;
  type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart : Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.setter(uint64_t a1)
{
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  v3 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t Apple_Workout_Core_MirroredHostMachTimestampRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a1(0);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v11 = 0;
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v11, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  return Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.modify;
}

void Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[3], v5, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v5, v8, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v6, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(**a1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, v8, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse : Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.setter(uint64_t a1)
{
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  v3 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t Apple_Workout_Core_MirroredClientAlertStackResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 20) = 0;
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v11, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  return Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.modify;
}

void Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[3], v5, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v5, v8, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v6, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(**a1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, v8, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static Apple_Workout_Core_MirroredHostCountdownStart.== infix(_:_:)(double *a1, double *a2, uint64_t (*a3)(void))
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static Apple_Workout_Core_MirroredHostMachTimestampRequest.== infix(_:_:)(double *a1, double *a2, uint64_t (*a3)(void, double))
{
  if (*a1 != *a2)
  {
    return 0;
  }

  a3(0, *a1);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_MirroredClientMachTimestampResponse.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_MirroredClientMachTimestampResponse.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void Apple_Workout_Core_MirroredBlob.contentType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_MirroredBlob.contentType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredBlob.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t Apple_Workout_Core_MirroredBlob.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredBlob.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_20B42FB30;
  type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1 + *(started + 32), v6, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, a1, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_20B42FB30;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v6, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob : Apple_Workout_Core_MirroredHostStartConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1 + *(started + 32), v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_20B42FB30;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob : Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v9 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2 + v9, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1 + v3, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = xmmword_20B42FB30;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v14, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  return Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.modify;
}

BOOL Apple_Workout_Core_MirroredHostStartConfiguration.hasWorkoutConfigurationBlob.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v0 + *(started + 32), v4, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v4, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_MirroredHostStartConfiguration.clearWorkoutConfigurationBlob()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v0 + v1, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Apple_Workout_Core_MirroredHostStartConfiguration.protocolVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.protocolVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.alertTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.alertTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.alertMessage.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.alertMessage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.continueOptionTitles.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1 + *(v7 + 20), v6, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, a1, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_20B42FB30;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v6, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob : Apple_Workout_Core_MirroredHostSummaryUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1 + *(v8 + 20), v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_20B42FB30;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob : Apple_Workout_Core_MirroredHostSummaryUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v9 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2 + v9, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1 + v3, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = xmmword_20B42FB30;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v14, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  return Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob.modify;
}

void Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_MirroredHostSummaryUpdate.hasHkWorkoutBlob.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v0 + *(v5 + 20), v4, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v4, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_MirroredHostSummaryUpdate.clearHkWorkoutBlob()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v0 + v1, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          closure #4 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 5:
          closure #5 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 6:
          closure #6 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          closure #1 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 2:
          closure #2 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 3:
          closure #3 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v17 = 0;
  v18 = 256;
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand();
  result = dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (!v4 && (v18 & 0x100) == 0)
  {
    v19 = 0;
    v16 = v17;
    HIDWORD(v15) = v18;
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a2, v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v9, 1, v11);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    if (v13 != 1)
    {
      v14 = v19;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v14)
      {
        return result;
      }

      v19 = 0;
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    *a2 = v16;
    *(a2 + 8) = BYTE4(v15) & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v6 = *(started - 8);
  v8 = MEMORY[0x28223BE20](started, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = started;
  v33 = started;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v15, v24, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v24, v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostStartConfiguration);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, v39, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v39, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v45, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #3 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v15, v24, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v24, v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, v39, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v39, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v45, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #4 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v15, v24, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v24, v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostCountdownStart);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, v39, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v39, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v45, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #5 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v15, v24, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v24, v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, v39, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v39, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v45, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #6 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v15, v24, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v24, v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, v39, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v39, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v45, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v3, &v15 - v10, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        closure #4 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 4)
      {
        closure #5 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #6 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

LABEL_14:
      result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v11, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      if (v4)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        closure #2 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #3 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      goto LABEL_14;
    }

    result = closure #1 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }
  }

LABEL_15:
  type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12 - v7;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v12 - v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v10 = v8[8];
    v12 = *v8;
    v13 = v10;
    lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  MEMORY[0x28223BE20](started, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostStartConfiguration);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostCountdownStart);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #5 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #6 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredHostMessage(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostMessage);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        closure #3 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        closure #4 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      closure #1 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 3)
    {
      closure #2 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v17 = 0;
  v18 = 256;
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand();
  result = dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (!v4 && (v18 & 0x100) == 0)
  {
    v19 = 0;
    v16 = v17;
    HIDWORD(v15) = v18;
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a2, v9, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    v11 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v9, 1, v11);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    if (v13 != 1)
    {
      v14 = v19;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v14)
      {
        return result;
      }

      v19 = 0;
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    *a2 = v16;
    *(a2 + 8) = BYTE4(v15) & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v15, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v15, v24, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v24, v21, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, v39, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v39, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v45, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #3 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v15, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v15, v24, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v24, v21, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientPrecisionStart);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, v39, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v39, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v45, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #4 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v15, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v15, v24, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v24, v21, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, v39, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v39, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v31, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v45, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v3, &v15 - v10, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        closure #3 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #4 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        result = closure #1 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      closure #2 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v11, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12 - v7;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v12 - v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v10 = v8[8];
    v12 = *v8;
    v13 = v10;
    lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  __break(1u);
  return result;
}