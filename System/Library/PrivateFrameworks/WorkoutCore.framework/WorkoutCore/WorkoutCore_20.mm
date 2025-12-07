uint64_t SessionSensorDisconnectAnalyticsEvent.workoutIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionSensorDisconnectAnalyticsEvent(0) + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SessionSensorDisconnectAnalyticsEvent(uint64_t a1)
{
  result = type metadata singleton initialization cache for SessionSensorDisconnectAnalyticsEvent;
  if (!type metadata singleton initialization cache for SessionSensorDisconnectAnalyticsEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionSensorDisconnectAnalyticsEvent.init(devices:workoutIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = 0xD00000000000002CLL;
  *(a3 + 1) = 0x800000020B45C500;
  *(a3 + 2) = a1;
  v5 = *(type metadata accessor for SessionSensorDisconnectAnalyticsEvent(0) + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

char *SessionSensorDisconnectAnalyticsEvent.generatePayload()()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  type metadata accessor for SessionSensorDisconnectAnalyticsEvent(0);
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v7 = 0x277CCA000uLL;
  v8 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v9 = MEMORY[0x20F2E6C00](v4, v6);

  v10 = [v8 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v3;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0xD000000000000012, 0x800000020B45C530, isUniquelyReferenced_nonNull_native);
  v12 = 0;
  v13 = 0;
  v14 = *(v1 + 16);
  v15 = *(v14 + 16);
LABEL_2:
  v16 = (v14 + 104 + 80 * v12);
  while (1)
  {
    if (v15 == v12)
    {
      v33 = v2;

      specialized MutableCollection<>.sort(by:)(&v33);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;

      v27 = objc_allocWithZone(*(v7 + 3240));
      v28 = MEMORY[0x20F2E6C00](v24, v26);

      v29 = [v27 initWithString_];

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v33 = v3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, 0x7954726F736E6573, 0xEA00000000006570, v30);
      return v33;
    }

    if (v12 >= *(v14 + 16))
    {
      break;
    }

    v17 = v16 + 10;
    ++v12;
    v18 = *v16;
    v16 += 10;
    if (v18)
    {
      v32 = v13;
      v19 = *(v17 - 11);

      v20 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v22 = *(v2 + 2);
      v21 = *(v2 + 3);
      if (v22 >= v21 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v2);
      }

      *(v2 + 2) = v22 + 1;
      v23 = &v2[16 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = v18;
      v7 = 0x277CCA000;
      v3 = v20;
      v13 = v32;
      goto LABEL_2;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t protocol witness for CoreAnalyticsEvent.eventName.getter in conformance SessionSensorDisconnectAnalyticsEvent()
{
  v1 = *v0;

  return v1;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata completion function for SessionSensorDisconnectAnalyticsEvent(uint64_t a1)
{
  type metadata accessor for [WorkoutDevice]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [WorkoutDevice]()
{
  if (!lazy cache variable for type metadata for [WorkoutDevice])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [WorkoutDevice]);
    }
  }
}

uint64_t Apple_Workout_Core_LiveZone.zone.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  outlined init with copy of Apple_Workout_Core_Zone?(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Zone(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Zone?(v6, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_Zone?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_LiveZones.currentZoneIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Workout_Core_LiveZones.zones.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Workout_Core_LiveZones.currentZoneIndex.setter(int a1)
{
  result = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_LiveZones.currentZoneIndex.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return Apple_Workout_Core_LiveZones.currentZoneIndex.modify;
}

uint64_t Apple_Workout_Core_LiveZones.currentZoneIndex.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_LiveZones.clearCurrentZoneIndex()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Apple_Workout_Core_LiveZones.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_LiveZones.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_LiveZones.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  result = UnknownStorage.init()();
  v4 = a1 + *(v2 + 28);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_LiveZone.zone : Apple_Workout_Core_LiveZone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  outlined init with copy of Apple_Workout_Core_Zone?(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Zone(v7, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Zone?(v7, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_LiveZone.zone : Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Zone(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  outlined destroy of Apple_Workout_Core_Zone?(a2 + v9, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  outlined init with take of Apple_Workout_Core_Zone(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_LiveZone.zone.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  outlined destroy of Apple_Workout_Core_Zone?(v1 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  outlined init with take of Apple_Workout_Core_Zone(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Workout_Core_LiveZone.zone.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_Zone(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Zone?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Zone?(v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Zone(v8, v14);
  }

  return Apple_Workout_Core_LiveZone.zone.modify;
}

void Apple_Workout_Core_LiveZone.zone.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_Zone((*a1)[5], v4);
    outlined destroy of Apple_Workout_Core_Zone?(v9 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with take of Apple_Workout_Core_Zone(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_Zone(v5);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Zone?(v9 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with take of Apple_Workout_Core_Zone(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_Zone(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_Zone(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_LiveZone.hasZone.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  outlined init with copy of Apple_Workout_Core_Zone?(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Zone?(v4, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_LiveZone.clearZone()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  outlined destroy of Apple_Workout_Core_Zone?(v0 + v1, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_LiveZone.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_LiveZone.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_LiveZone.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Apple_Workout_Core_LiveZones.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          type metadata accessor for Apple_Workout_Core_LiveZones(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 1:
          type metadata accessor for Apple_Workout_Core_LiveZone(0);
          lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone, &protocol conformance descriptor for Apple_Workout_Core_LiveZone);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_LiveZones.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_Core_LiveZone(0), lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone, &protocol conformance descriptor for Apple_Workout_Core_LiveZone), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_LiveZones.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      if (v3[8] == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      type metadata accessor for Apple_Workout_Core_LiveZones(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_LiveZones.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_LiveZones@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 28);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_LiveZones@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones, &protocol conformance descriptor for Apple_Workout_Core_LiveZones);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_LiveZones(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones, &protocol conformance descriptor for Apple_Workout_Core_LiveZones);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones, &protocol conformance descriptor for Apple_Workout_Core_LiveZones);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_LiveZones._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_LiveZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_LiveZone.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_LiveZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_LiveZone(0);
  type metadata accessor for Apple_Workout_Core_Zone(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone, &protocol conformance descriptor for Apple_Workout_Core_Zone);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_LiveZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_LiveZone.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Apple_Workout_Core_LiveZone(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_LiveZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  outlined init with copy of Apple_Workout_Core_Zone?(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Zone?(v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Zone(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone, &protocol conformance descriptor for Apple_Workout_Core_Zone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_Zone(v13);
}

Swift::Int Apple_Workout_Core_LiveZones.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_LiveZone@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_LiveZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone, &protocol conformance descriptor for Apple_Workout_Core_LiveZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_LiveZones@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_LiveZone(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone, &protocol conformance descriptor for Apple_Workout_Core_LiveZone);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone, &protocol conformance descriptor for Apple_Workout_Core_LiveZone);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_LiveZone.== infix(_:_:)(double *a1, double *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v23 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  v18 = *(v13 + 48);
  outlined init with copy of Apple_Workout_Core_Zone?(a1 + v17, v16);
  outlined init with copy of Apple_Workout_Core_Zone?(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Zone?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
LABEL_10:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Apple_Workout_Core_Zone?(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_Zone(v12);
LABEL_7:
    outlined destroy of Apple_Workout_Core_Zone?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of Apple_Workout_Core_Zone(&v16[v18], v8);
  v21 = static Apple_Workout_Core_Zone.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_Zone(v8);
  outlined destroy of Apple_Workout_Core_Zone(v12);
  outlined destroy of Apple_Workout_Core_Zone?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  if (v21)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_LiveZones.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C9_LiveZoneV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for Apple_Workout_Core_LiveZones(uint64_t a1)
{
  type metadata accessor for [Apple_Workout_Core_LiveZone](319, &lazy cache variable for type metadata for [Apple_Workout_Core_LiveZone], type metadata accessor for Apple_Workout_Core_LiveZone, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Int32?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Int32?()
{
  if (!lazy cache variable for type metadata for Int32?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int32?);
    }
  }
}

void type metadata completion function for Apple_Workout_Core_LiveZone(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Apple_Workout_Core_LiveZone](319, &lazy cache variable for type metadata for Apple_Workout_Core_Zone?, type metadata accessor for Apple_Workout_Core_Zone, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_LiveZone](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of Apple_Workout_Core_Zone?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ActivityTypeListItem.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746144726564726FLL;
  }

  else
  {
    v3 = 0x7974697669746361;
  }

  if (v2)
  {
    v4 = 0xEC00000065707954;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x746144726564726FLL;
  }

  else
  {
    v5 = 0x7974697669746361;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xEC00000065707954;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityTypeListItem.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ActivityTypeListItem.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityTypeListItem.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ActivityTypeListItem.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActivityTypeListItem.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance ActivityTypeListItem.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x7974697669746361;
  if (*v1)
  {
    v2 = 0x746144726564726FLL;
  }

  v3 = 0xEC00000065707954;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ActivityTypeListItem.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActivityTypeListItem.CodingKeys.init(rawValue:), v3);

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

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ActivityTypeListItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ActivityTypeListItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityTypeListItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore20ActivityTypeListItemC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore20ActivityTypeListItemC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v3 + OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType);
  specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)(v10, &v18);

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v16 = v18;
  v17[0] = v19[0];
  *(v17 + 9) = *(v19 + 9);
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v12;

  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    return outlined destroy of FIUIWorkoutActivityType.ActivityType(&v18);
  }

  else
  {
    outlined destroy of FIUIWorkoutActivityType.ActivityType(&v18);
    *&v16 = v11;
    *(&v16 + 1) = v13;
    v15[15] = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v16, *(&v16 + 1));
    LOBYTE(v16) = 1;
    type metadata accessor for Date();
    _s10Foundation4DateVACSeAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v6 + 8))(v9, v5);
  }
}

id ActivityTypeListItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityTypeListItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for ActivityTypeListItem(uint64_t a1)
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

id specialized ActivityTypeListItem.init(activityType:orderDate:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType] = a1;
  _s10Foundation4DateVSgWOcTm_2(a2, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v9) == 1)
  {
    v15 = a1;
    static Date.now.getter();
    if (v14(v8, 1, v9) != 1)
    {
      _s10Foundation4DateVSgWOhTm_4(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v16 = a1;
  }

  (*(v10 + 32))(&v2[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_orderDate], v13, v9);
  v17 = type metadata accessor for ActivityTypeListItem(0);
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  _s10Foundation4DateVSgWOhTm_4(a2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v18;
}

uint64_t _s10Foundation4DateVSgWOhTm_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t key path getter for WaterTemperatureMetricsPublisher.currentWaterTemperature : WaterTemperatureMetricsPublisher@<X0>(uint64_t a4@<X8>)
{
  return key path getter for WaterTemperatureMetricsPublisher.currentWaterTemperature : WaterTemperatureMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v6 = v8;
  *a4 = v7;
  *(a4 + 8) = v6;
  return result;
}

uint64_t (*WaterTemperatureMetricsPublisher.currentWaterTemperature.modify(uint64_t *a1))()
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
  return WaterTemperatureMetricsPublisher.currentWaterTemperature.modify;
}

uint64_t (*WaterTemperatureMetricsPublisher.$currentWaterTemperature.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperature;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WaterTemperatureMetricsPublisher.$currentWaterTemperature.modify;
}

uint64_t WaterTemperatureMetricsPublisher.currentWaterTemperatureStale.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for WaterTemperatureMetricsPublisher.currentWaterTemperatureStale : WaterTemperatureMetricsPublisher@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for WaterTemperatureMetricsPublisher.currentWaterTemperatureStale : WaterTemperatureMetricsPublisher(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WaterTemperatureMetricsPublisher.currentWaterTemperatureStale.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WaterTemperatureMetricsPublisher.currentWaterTemperatureStale.modify(uint64_t *a1))()
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
  return WaterTemperatureMetricsPublisher.currentWaterTemperatureStale.modify;
}

uint64_t key path setter for WaterTemperatureMetricsPublisher.$currentWaterTemperatureStale : WaterTemperatureMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t WaterTemperatureMetricsPublisher.$currentWaterTemperatureStale.setter(uint64_t a1)
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

uint64_t (*WaterTemperatureMetricsPublisher.$currentWaterTemperatureStale.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperatureStale;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WaterTemperatureMetricsPublisher.$currentWaterTemperatureStale.modify;
}

uint64_t WaterTemperatureMetricsPublisher.currentWaterTemperature.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path setter for WaterTemperatureMetricsPublisher.currentWaterTemperature : WaterTemperatureMetricsPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WaterTemperatureMetricsPublisher.currentWaterTemperature.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WaterTemperatureMetricsPublisher.averageWaterTemperature.modify(uint64_t *a1))()
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
  return WaterTemperatureMetricsPublisher.averageWaterTemperature.modify;
}

void WaterTemperatureMetricsPublisher.currentWaterTemperature.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WaterTemperatureMetricsPublisher.$currentWaterTemperature.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WaterTemperatureMetricsPublisher.$currentWaterTemperature : WaterTemperatureMetricsPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WaterTemperatureMetricsPublisher.$currentWaterTemperature : WaterTemperatureMetricsPublisher(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t WaterTemperatureMetricsPublisher.$currentWaterTemperature.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*WaterTemperatureMetricsPublisher.$averageWaterTemperature.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__averageWaterTemperature;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WaterTemperatureMetricsPublisher.$averageWaterTemperature.modify;
}

void WaterTemperatureMetricsPublisher.$currentWaterTemperature.modify(uint64_t a1, char a2)
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

uint64_t WaterTemperatureMetricsPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  WaterTemperatureMetricsPublisher.init()();
  return v0;
}

uint64_t WaterTemperatureMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperature;
  v16 = 0;
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  Published.init(initialValue:)();
  v12 = *(v7 + 32);
  v12(v0 + v11, v10, v6);
  v13 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperatureStale;
  LOBYTE(v16) = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v13, v5, v1);
  v14 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__averageWaterTemperature;
  v16 = 0;
  v17 = 1;
  Published.init(initialValue:)();
  v12(v0 + v14, v10, v6);
  return v0;
}

uint64_t WaterTemperatureMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperature;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperatureStale;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__averageWaterTemperature, v2);
  return v0;
}

uint64_t WaterTemperatureMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperature;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperatureStale;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__averageWaterTemperature, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WaterTemperatureMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t WaterTemperatureMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WaterTemperatureMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WaterTemperatureMetricsPublisher(v3);
  return v4;
}

uint64_t WaterTemperatureMetricsPublisher.protobuf.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  UnknownStorage.init()();
  v3 = &a1[*(v2 + 24)];
  *v3 = 0;
  v3[8] = 1;
  v4 = &a1[*(v2 + 28)];
  *v4 = 0;
  v4[8] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  if ((v7 & 1) == 0)
  {
    *v3 = v6;
    v3[8] = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a1 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  if ((v7 & 1) == 0)
  {
    *v4 = v6;
    v4[8] = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.decodeInto(publisher:)(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WaterTemperatureMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static WaterTemperatureMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance WaterTemperatureMetricsPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WaterTemperatureMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WaterTemperatureMetricsPublisher(v3);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance WaterTemperatureMetricsPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static WaterTemperatureMetricsPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance WaterTemperatureMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static WaterTemperatureMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static WaterTemperatureMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WaterTemperatureMetricsPublisher(0);
  v11 = swift_allocObject();
  WaterTemperatureMetricsPublisher.init()();
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_WaterTemperatureMetricsPublisher.decodeInto(publisher:)(v11);
    outlined destroy of Apple_Workout_Core_WaterTemperatureMetricsPublisher(v10);
  }

  return v11;
}

uint64_t type metadata accessor for WaterTemperatureMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for WaterTemperatureMetricsPublisher;
  if (!type metadata singleton initialization cache for WaterTemperatureMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WaterTemperatureMetricsPublisher(uint64_t a1)
{
  type metadata accessor for Published<Double?>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Bool>();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<Double?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Double?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSdSgMd, &_sSdSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Double?>);
    }
  }
}

Swift::Void __swiftcall MetricsPublisher.activityRingsUpdated(with:)(HKActivitySummary with)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = with.super.isa;
  static Published.subscript.setter();
  if ([(objc_class *)v2 _wheelchairUse]<= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000004FLL, 0x800000020B45C6D0, "WorkoutCore/MetricsPublisherActivityRingsObserver.swift", 55, 2, 22, 0);
    __break(1u);
  }
}

uint64_t key path getter for ActivitySummaryMetricsPublisher.activitySummary : ActivitySummaryMetricsPublisher@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for ActivitySummaryMetricsPublisher.activitySummary : ActivitySummaryMetricsPublisher(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t key path getter for ActivitySummaryMetricsPublisher.isWheelchairUser : ActivitySummaryMetricsPublisher@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for ActivitySummaryMetricsPublisher.isWheelchairUser : ActivitySummaryMetricsPublisher(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

Swift::Void __swiftcall MetricsPublisher.setRoutePoints(_:)(Swift::OpaquePointer a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v13 = specialized _arrayForceCast<A, B>(_:)(a1._rawValue);
    type metadata accessor for RaceElevationChartPointProvider();
    swift_allocObject();
    v14 = *(RaceElevationChartPointProvider.init(_:numberOfPoints:)(v13, 0, 1) + 2);

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v14;

    static Published.subscript.setter();
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_10(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v20 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    v15[2]._rawValue = v1;
    v15[3]._rawValue = a1._rawValue;
    aBlock[4] = partial apply for closure #1 in MetricsPublisher.setRoutePoints(_:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_26;
    v16 = _Block_copy(aBlock);
    v17 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v20;
    MEMORY[0x20F2E7580](0, v12, v7, v16);
    _Block_release(v16);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
  }
}

uint64_t closure #1 in MetricsPublisher.setRoutePoints(_:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized _arrayForceCast<A, B>(_:)(a2);
  type metadata accessor for RaceElevationChartPointProvider();
  swift_allocObject();
  RaceElevationChartPointProvider.init(_:numberOfPoints:)(v2, 0, 1);

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id MetricsPublisher.didUpdate(_:)(void *a1)
{
  v2 = [a1 state];
  v3 = 0.0;
  if (v2 > 2)
  {
    if ((v2 - 4) >= 2)
    {
      if (v2 == 3)
      {
        v4 = 1;
        v5 = 2;
        goto LABEL_11;
      }

      if (v2 == 6)
      {
        v4 = 1;
        v5 = 4;
        goto LABEL_11;
      }
    }

LABEL_10:
    v4 = 1;
    v5 = 3;
    goto LABEL_11;
  }

  if (!v2)
  {
    goto LABEL_10;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v4 = 1;
      v5 = 1;
LABEL_11:
      v6 = v5;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  [a1 timeAhead_s];
  v6 = v10;
  [a1 currentDistance_m];
  v4 = 0;
  v3 = v11;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v6;
  v19 = v3;
  v20 = v4;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v18);

  if ((v20 & 1) == 0)
  {
    [a1 currentDistance_m];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    [a1 referenceDistance_m];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    [a1 timeAhead_s];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  result = [a1 state];
  if (result != 3)
  {
    if (result == 1)
    {
      [a1 timeAhead_s];
      [a1 currentDistance_m];
    }

    v8 = [a1 state];
    if (v8 > 2)
    {
      if (v8 != 3)
      {
        if (v8 == 6)
        {
          v9 = 6;
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      v9 = 4;
    }

    else
    {
      if (v8 != 1)
      {
        if (v8 == 2)
        {
          v9 = 3;
          goto LABEL_30;
        }

LABEL_25:
        v9 = 5;
        goto LABEL_30;
      }

      [a1 timeAhead_s];
      v13 = v12;
      [a1 currentDistance_m];
      if (v13 >= 0.0)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v18);

    if (v9 == v18)
    {
      return result;
    }

    v14 = [a1 state];
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = 4;
        goto LABEL_44;
      }

      if (v14 == 6)
      {
        v15 = 6;
        goto LABEL_44;
      }
    }

    else
    {
      if (v14 == 1)
      {
        [a1 timeAhead_s];
        v17 = v16;
        [a1 currentDistance_m];
        if (v17 >= 0.0)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        goto LABEL_44;
      }

      if (v14 == 2)
      {
        v15 = 3;
LABEL_44:
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v18) = v15;

        return static Published.subscript.setter();
      }
    }

    v15 = 5;
    goto LABEL_44;
  }

  return result;
}

Swift::Void __swiftcall MetricsPublisher.setDidWinRace(_:)(Swift::Bool a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t MetricsPublisher.updateRemainingDistance(_:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t @objc MetricsPublisher.updateRemainingDistance(_:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutDevice.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutDevice.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutDevice.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WorkoutDevice.systemImage.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t WorkoutDevice.productModel.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void __swiftcall WorkoutDevice.init(id:name:type:systemImage:productModel:isTestDevice:)(WorkoutCore::WorkoutDevice *__return_ptr retstr, Swift::String id, Swift::String name, WorkoutCore::WorkoutDeviceType type, Swift::String_optional systemImage, Swift::String_optional productModel, Swift::Bool isTestDevice)
{
  v7 = *type;
  v8 = 0xEA00000000006C6CLL;
  object = 0xEA00000000006F72;
  v10 = 0x7073646F70726961;
  v11 = 0x69662E7472616568;
  if (v7 != 2)
  {
    v11 = 0x656E6F687069;
    v8 = 0xE600000000000000;
  }

  if (!*type)
  {
    v10 = 0xD000000000000015;
    object = 0x800000020B45C750;
  }

  if (*type > 1u)
  {
    v10 = v11;
    object = v8;
  }

  if (systemImage.value._object)
  {
    countAndFlagsBits = systemImage.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = v10;
  }

  if (systemImage.value._object)
  {
    object = systemImage.value._object;
  }

  retstr->id = id;
  retstr->name = name;
  retstr->type = v7;
  retstr->systemImage._countAndFlagsBits = countAndFlagsBits;
  retstr->systemImage._object = object;
  retstr->isTestDevice = isTestDevice;
  retstr->productModel = productModel;
}

double protocol witness for Identifiable.id.getter in conformance WorkoutDevice@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t WorkoutDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  _StringGuts.grow(_:)(67);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C770);
  v8 = 0xE500000000000000;
  v9 = 0x6863746177;
  v10 = 0x800000020B45C790;
  v11 = 0x656E6F6870;
  if (v5 == 2)
  {
    v11 = 0xD000000000000010;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5)
  {
    v9 = 0xD000000000000016;
    v8 = 0x800000020B45C7B0;
  }

  if (v5 <= 1)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  if (v5 <= 1)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  MEMORY[0x20F2E6D80](v12, v13);

  MEMORY[0x20F2E6D80](0x3D656D616E20, 0xE600000000000000);
  MEMORY[0x20F2E6D80](v3, v4);
  MEMORY[0x20F2E6D80](1029990688, 0xE400000000000000);
  MEMORY[0x20F2E6D80](v1, v2);
  MEMORY[0x20F2E6D80](0x496D657473797320, 0xED00003D6567616DLL);
  MEMORY[0x20F2E6D80](v6, v7);
  MEMORY[0x20F2E6D80](0x746375646F727020, 0xEE003D6C65646F4DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v14 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v14);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

uint64_t specialized static WorkoutDevice.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v18 = a1[9];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a1 + 56);
  v15 = *(a2 + 64);
  v16 = a1[8];
  v17 = *(a2 + 72);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v12 & 1) == 0 || v4 != v9)
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    if (v20 != v19)
    {
      return 0;
    }

LABEL_16:
    if (v18)
    {
      if (!v17 || (v16 != v15 || v18 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v17)
    {
      return 0;
    }

    return 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v14 & 1) != 0 && ((v20 ^ v19) & 1) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDevice(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for WorkoutDevice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MetricsPublisher.didBeginNewStep(date:stepIndex:stepCount:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v13, v10);

  static Published.subscript.setter();
  outlined destroy of Date?(v13);
  if (a2)
  {
    v16 = [a2 integerValue];
  }

  else
  {
    v16 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v16;
  v19 = a2 == 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = a3;

  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.didRecover(lastStartDate:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v9, v6);

  static Published.subscript.setter();
  return outlined destroy of Date?(v9);
}

uint64_t MetricsPublisher.didUpdateIntervalData(thisStep:updateData:nextStep:)(void *a1, uint64_t a2, void *a3)
{
  v3 = *a2;
  v22 = *(a2 + 8);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v5;
  v24 = v6;

  static Published.subscript.setter();
  v25 = &type metadata for WorkoutFeatures;
  v26 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v23) = 3;
  v7 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v4;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v23);

  v8 = v23;
  v9 = [v23 goalTypeIdentifier];

  if (v9 > 1)
  {
    if (v9 == 3)
    {
      goto LABEL_15;
    }

    if (v9 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v23);

      v16 = v23;
      v17 = [v23 value];

      if (v17)
      {
        v18 = [objc_opt_self() secondUnit];
        [v17 doubleValueForUnit_];
        v20 = v19;

        if (v20 > 0.0)
        {
          v15 = v22 / v20;
          goto LABEL_14;
        }
      }

LABEL_15:
      swift_getKeyPath();
      swift_getKeyPath();
      v23 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    if (v9 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v23);

      v10 = v23;
      v11 = [v23 value];

      if (v11)
      {
        v12 = [objc_opt_self() meterUnit];
        [v11 doubleValueForUnit_];
        v14 = v13;

        if (v14 > 0.0)
        {
          v15 = v3 / v14;
LABEL_14:
          swift_getKeyPath();
          swift_getKeyPath();
          v23 = *&v15;
LABEL_16:

          return static Published.subscript.setter();
        }
      }

      goto LABEL_15;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000038, 0x800000020B45C810, "WorkoutCore/MetricsPublisherIntervalsObserver.swift", 51, 2, 57, 0);
  __break(1u);
  return result;
}

Swift::Void __swiftcall MetricsPublisher.didFinishIntervals(totalTime:)(Swift::Double totalTime)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

double key path getter for IntervalsMetricsPublisher.intervalProgress : IntervalsMetricsPublisher@<D0>(double *a4@<X8>)
{
  return key path getter for IntervalsMetricsPublisher.intervalProgress : IntervalsMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t key path getter for IntervalsMetricsPublisher.intervalThisStep : IntervalsMetricsPublisher@<X0>(void *a4@<X8>)
{
  return key path getter for IntervalsMetricsPublisher.intervalThisStep : IntervalsMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalThisStep : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for IntervalsMetricsPublisher.intervalStartDate : IntervalsMetricsPublisher@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalStartDate : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v12 - v9;
  outlined init with copy of Date?(a1, &v12 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v10, v7);

  static Published.subscript.setter();
  return outlined destroy of Date?(v10);
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalProgress : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for IntervalsMetricsPublisher.intervalCurrentStepIndex : IntervalsMetricsPublisher@<X0>(uint64_t a4@<X8>)
{
  return key path getter for IntervalsMetricsPublisher.intervalCurrentStepIndex : IntervalsMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v6 = v8;
  *a4 = v7;
  *(a4 + 8) = v6;
  return result;
}

uint64_t key path getter for IntervalsMetricsPublisher.intervalTotalStepCount : IntervalsMetricsPublisher@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalTotalStepCount : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalCurrentStepIndex : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.updateTimerRemainingTime(_:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t @objc MetricsPublisher.updateTimerRemainingTime(_:)(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  return static Published.subscript.setter();
}

double key path getter for MetricsPublisher.timerRemainingTime : MetricsPublisher@<D0>(double *a4@<X8>)
{
  return key path getter for MetricsPublisher.timerRemainingTime : MetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t key path setter for MetricsPublisher.timerRemainingTime : MetricsPublisher(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return static Published.subscript.setter();
}

void MetricsPublisher.didEnterNewLeg(_:date:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v33[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v33[-1] - v10;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.multisport);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Publisher has noticed that we have entered into the next leg", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  outlined init with copy of Date?(a2, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v11, v8);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_5(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v33[0]) = 0;

  v16 = static Published.subscript.setter();
  v17 = *(a1 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  LiveWorkoutConfiguration.currentMultisportDisplayedActivityType.getter(v16);
  v19 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  v33[0] = v19;

  static Published.subscript.setter();
  LiveWorkoutConfiguration.remainingMultisportLegCount.getter();
  v21 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  v33[0] = v21;

  static Published.subscript.setter();
  v22 = *(v17 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v25 = v22;
    if (LiveWorkoutConfiguration.isLastMultiSportLeg()())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v33[0] = 0;

      static Published.subscript.setter();
LABEL_14:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v33);

    v26 = v33[0] + 1;
    if (__OFADD__(v33[0], 1))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v33);

      v24 = v33[0];
      if ((v33[0] & 0xC000000000000001) == 0)
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v26 < *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v27 = *(v33[0] + 8 * v26 + 32);
LABEL_13:
          v28 = v27;

          v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
          swift_beginAccess();
          v30 = *&v28[v29];

          swift_getKeyPath();
          swift_getKeyPath();
          v32 = v30;

          v31 = v30;
          static Published.subscript.setter();

          goto LABEL_14;
        }

        __break(1u);
        return;
      }
    }

    v27 = MEMORY[0x20F2E7A20](v26, v24);
    goto LABEL_13;
  }
}

uint64_t MetricsPublisher.didRestoreActivityType(_:startDate:autoTransitionStartDate:autoTransitionUUID:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a2, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v11, v8);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_5(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  v15 = *(a1 + v14);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v22) = v15;

  v16 = static Published.subscript.setter();
  LiveWorkoutConfiguration.currentMultisportDisplayedActivityType.getter(v16);
  v18 = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v18;

  static Published.subscript.setter();
  LiveWorkoutConfiguration.remainingMultisportLegCount.getter();
  v20 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v20;

  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.didEnterManualTransition(date:)(uint64_t a1)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v24 = &v24 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v24 - v14;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.multisport);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20AEA4000, v17, v18, "Publisher has noticed that we have entered into manual transition", v19, 2u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v27 = 2;

  static Published.subscript.setter();
  v20 = *(v8 + 16);
  v21 = v25;
  v20(v15, v25, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  v20(v12, v15, v7);

  static Published.subscript.setter();
  (*(v8 + 8))(v15, v7);
  v22 = v24;
  v20(v24, v21, v7);
  (*(v8 + 56))(v22, 0, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v22, v26);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_5(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

Swift::Void __swiftcall MetricsPublisher.didCancelAutomaticTransition()()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t MetricsPublisher.didUpdateLastLegValues(_:)(void *a1)
{
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.multisport);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = v6;
    *v6 = 134218496;
    v8 = *&v3[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes];
    v9 = *(v8 + 16);
    v10 = 0;
    v11 = 0;
    if (v9)
    {
      v11 = *(v8 + 8 * v9 + 24);
    }

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    MultiSportWorkoutTracker.lastMultisportLegDistance.getter();
    *(v7 + 14) = v12;
    *(v7 + 22) = 2048;
    v13 = *&v3[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces];
    v14 = *(v13 + 16);
    if (v14)
    {
      v10 = *(v13 + 8 * v14 + 24);
    }

    *(v7 + 24) = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Publisher setting last values to T: %f D: %f P: %f", v7, 0x20u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  MultiSportWorkoutTracker.lastMultisportLegDistance.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for LiveWorkoutConfiguration.currentMultiSportLeg : LiveWorkoutConfiguration@<X0>(void *a4@<X8>)
{
  return key path getter for LiveWorkoutConfiguration.currentMultiSportLeg : LiveWorkoutConfiguration(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t key path setter for LiveWorkoutConfiguration.currentMultiSportLeg : LiveWorkoutConfiguration(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t key path getter for MultisportMetricsPublisher.currentMultisportActivity : MultisportMetricsPublisher@<X0>(void *a4@<X8>)
{
  return key path getter for MultisportMetricsPublisher.currentMultisportActivity : MultisportMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

double key path getter for MultisportMetricsPublisher.lastMultisportLegTime : MultisportMetricsPublisher@<D0>(double *a4@<X8>)
{
  return key path getter for MultisportMetricsPublisher.lastMultisportLegTime : MultisportMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t key path setter for MultisportMetricsPublisher.lastMultisportLegTime : MultisportMetricsPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for MultisportMetricsPublisher.multisportTransitionState : MultisportMetricsPublisher@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for MultisportMetricsPublisher.multisportTransitionState : MultisportMetricsPublisher(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for MultisportMetricsPublisher.multisportRemainingLegCount : MultisportMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for MultisportMetricsPublisher.currentMultisportActivity : MultisportMetricsPublisher(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return static Published.subscript.setter();
}

uint64_t specialized MetricsPublisher.enterAutomaticTransition(suggestedConfig:date:)(_BYTE *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13[-v9];
  swift_getKeyPath();
  swift_getKeyPath();
  v13[15] = 1;

  static Published.subscript.setter();
  v11 = *(v3 + 16);
  v11(v10, a1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v11(v7, v10, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(v10, v2);
}

uint64_t _s10Foundation4DateVSgWOhTm_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id ManagedConfigurationSourcePickerItem.__allocating_init(provider:viewModel:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_type] = 4;
  *&v5[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider] = a1;
  *&v5[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ManagedConfigurationSourcePickerItem.init(provider:viewModel:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_type] = 4;
  *&v2[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider] = a1;
  *&v2[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ManagedConfigurationSourcePickerItem();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ManagedConfigurationSourcePickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManagedConfigurationSourcePickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedConfigurationSourcePickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *ManagedConfigurationSourcePickerItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider);
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel);
  v5 = type metadata accessor for ManagedConfigurationSourcePickerItem();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_type] = 4;
  *&v6[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider] = v3;
  *&v6[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel] = v4;
  v8.receiver = v6;
  v8.super_class = v5;

  result = objc_msgSendSuper2(&v8, sel_init);
  a1[3] = v5;
  *a1 = result;
  return result;
}

id protocol witness for Identifiable.id.getter in conformance ManagedConfigurationSourcePickerItem@<X0>(void *a1@<X8>)
{
  result = [*v1 hash];
  *a1 = result;
  return result;
}

Swift::Int ManagedConfigurationSourcePickerItem.hash.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init()();
  swift_beginAccess();

  String.hash(into:)();

  ManagedConfigurationsViewModel.hash(into:)();
  return Hasher.finalize()();
}

BOOL ManagedConfigurationSourcePickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v10);
  if (!v11)
  {
    outlined destroy of Any?(v10);
    return 0;
  }

  type metadata accessor for ManagedConfigurationSourcePickerItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider);
  v3 = *&v9[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider];
  swift_beginAccess();
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  swift_beginAccess();
  v6 = v4 == *(v3 + 32) && v5 == *(v3 + 40);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    return 0;
  }

  v7 = specialized static ManagedConfigurationsViewModel.== infix(_:_:)(*(v1 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel), *&v9[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel]);

  return v7;
}

unint64_t instantiation function for generic protocol witness table for ManagedConfigurationSourcePickerItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem()
{
  result = lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem;
  if (!lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem)
  {
    type metadata accessor for ManagedConfigurationSourcePickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem;
  if (!lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem)
  {
    type metadata accessor for ManagedConfigurationSourcePickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem);
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

id CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = objc_opt_self();
  v15 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  result = [v14 fiui:*&a1[v15] supportedMetricsForActivityType:a2 activityMoveMode:?];
  if (result)
  {
    v17 = result;
    type metadata accessor for NSNumber();
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v25 = a1;
      v26 = a5;
      v27 = a3;
      v28 = a4;
      if (!i)
      {
        break;
      }

      v20 = 0;
      a4 = v18 & 0xF8;
      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x20F2E7A20](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        a3 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v23 = [v21 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 2) + 1, 1, a1);
        }

        a5 = *(a1 + 2);
        v24 = *(a1 + 3);
        if (a5 >= v24 >> 1)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), a5 + 1, 1, a1);
        }

        *(a1 + 2) = a5 + 1;
        *&a1[8 * a5 + 32] = v23;
        ++v20;
        if (a3 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    a1 = MEMORY[0x277D84F90];
LABEL_18:

    *v26 = a6;
    *(v26 + 8) = a7;
    *(v26 + 16) = v25;
    *(v26 + 24) = a1;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CompletedWorkoutStep.metricTypeToDisplay.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  if ((*(v1 + 16) & 0xFE) == 2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v13);

  v3 = v13;
  v4 = [v13 value];

  if (!v4)
  {
    return 0;
  }

  v5 = *(v2 + 16);
  v6 = (v2 + 32);
  while (v5)
  {
    v7 = *v6++;
    --v5;
    if (v7 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v13);

      v8 = v13;
      v9 = [v13 goalTypeIdentifier];

      if (v9 != 1)
      {
        return 1;
      }

      break;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v13);

  v10 = v13;
  v11 = [v13 goalTypeIdentifier];

  if (v11 == 2)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

id CompletedWorkoutStep.spokenString(formattingManager:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = CompletedWorkoutStep.metricTypeToDisplay.getter();
  if (v6)
  {
    return 0;
  }

  if (v5 != 1)
  {
    if (v5 == 3)
    {
      result = [a1 stringWithDuration:6 durationFormat:v4];
      if (!result)
      {
        return result;
      }

LABEL_9:
      v8 = result;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v9;
    }

    return 0;
  }

  swift_beginAccess();
  result = [a1 localizedNaturalScaleStringWithDistanceInMeters:FIUIDistanceTypeForActivityType() distanceType:3 unitStyle:0 usedUnit:v3];
  if (result)
  {
    goto LABEL_9;
  }

  return result;
}

id CompletedWorkoutStep.displayString(formattingManager:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = CompletedWorkoutStep.metricTypeToDisplay.getter();
  if (v6)
  {
    return 0;
  }

  if (v5 != 1)
  {
    if (v5 == 3)
    {
      return specialized static ElapsedTimeFormatter.stringFromElapsedTime(_:trimDoubleLeadingZero:compactHours:)(0, 0, v4);
    }

    return 0;
  }

  swift_beginAccess();
  result = [a1 localizedNaturalScaleStringWithDistanceInMeters:FIUIDistanceTypeForActivityType() distanceType:2 unitStyle:0 usedUnit:v3];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }

  return result;
}

id CompletedWorkoutStep.description.getter()
{
  v0 = WorkoutStep.description.getter();
  _StringGuts.grow(_:)(44);
  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45C920);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45C940);
  Double.write<A>(to:)();

  MEMORY[0x20F2E6D80](0, 0xE000000000000000);

  return v0;
}

uint64_t getEnumTagSinglePayload for CompletedWorkoutStep(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for CompletedWorkoutStep(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in MusicMomentHandler.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
  v4[38] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MusicMomentHandler.setDelegate(_:), a4, 0);
}

uint64_t closure #1 in MusicMomentHandler.setDelegate(_:)()
{
  v1 = objc_opt_self();
  v0[42] = v1;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = closure #1 in MusicMomentHandler.setDelegate(_:);
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
  v0[43] = v3;
  v0[25] = v3;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
  v0[21] = &block_descriptor_27;
  v0[22] = v2;
  [v1 getProactiveRouteWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 296);

  return MEMORY[0x2822009F8](closure #1 in MusicMomentHandler.setDelegate(_:), v1, 0);
}

{
  v1 = v0[37];
  v2 = v0[34];
  v3 = *(v1 + 160);
  *(v1 + 160) = v2;
  v4 = v2;
  MusicMomentHandler.observedRoute.didset(v3);

  v5 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v0[44] = lazy protocol witness table accessor for type MusicMomentHandler and conformance MusicMomentHandler(&lazy protocol witness table cache variable for type MusicMomentHandler and conformance MusicMomentHandler, v6, type metadata accessor for MusicMomentHandler, &protocol conformance descriptor for MusicMomentHandler);
  v7 = lazy protocol witness table accessor for type MusicMomentHandler and conformance MusicMomentHandler(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MusicMomentHandler.setDelegate(_:);
  v9 = v0[38];
  v10 = v0[39];

  return MEMORY[0x282200308](v9, v10, v7);
}

{
  *(*v1 + 368) = v0;

  swift_getObjectType();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in MusicMomentHandler.setDelegate(_:);
  }

  else
  {
    v4 = closure #1 in MusicMomentHandler.setDelegate(_:);
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

{
  return MEMORY[0x2822009F8](closure #1 in MusicMomentHandler.setDelegate(_:), *(v0 + 296), 0);
}

{
  v1 = v0[38];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[40] + 8))(v0[41], v0[39]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[42];
    v6 = v0[43];
    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = closure #1 in MusicMomentHandler.setDelegate(_:);
    v7 = swift_continuation_init();
    v0[33] = v6;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
    v0[29] = &block_descriptor_27_0;
    v0[30] = v7;
    [v5 getProactiveRouteWithCompletion_];

    return MEMORY[0x282200938](v0 + 10);
  }
}

{
  *(v0 + 280) = *(v0 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

{
  v1 = *(*v0 + 296);

  return MEMORY[0x2822009F8](closure #1 in MusicMomentHandler.setDelegate(_:), v1, 0);
}

{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = *(v2 + 160);
  *(v2 + 160) = v3;
  v5 = v3;
  MusicMomentHandler.observedRoute.didset(v4);

  outlined destroy of (String, MPPropertySet)(v1, &_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
  v6 = lazy protocol witness table accessor for type MusicMomentHandler and conformance MusicMomentHandler(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v7 = swift_task_alloc();
  v0[45] = v7;
  *v7 = v0;
  v7[1] = closure #1 in MusicMomentHandler.setDelegate(_:);
  v8 = v0[38];
  v9 = v0[39];

  return MEMORY[0x282200308](v8, v9, v6);
}

Swift::Void __swiftcall MusicMomentHandler.stopActiveTasks()()
{
  if (*(v0 + 152))
  {

    MEMORY[0x20F2E7170](v1, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  *(v0 + 152) = 0;

  v2 = *(v0 + 160);
  v3 = v2;
  *(v0 + 160) = 0;
  MusicMomentHandler.observedRoute.didset(v2);
}

void MusicMomentHandler.observedRoute.didset(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 160);
  if (v4)
  {
    if (a1)
    {
      type metadata accessor for MPPropertySet(0, &lazy cache variable for type metadata for MPAVRoute, 0x277CD5D38);
      v5 = v4;
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.workoutVoice);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *(v2 + 160);
    *(v11 + 4) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[MusicMomentHandler] Updated observed route: %@", v11, 0xCu);
    outlined destroy of (String, MPPropertySet)(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v15 = *(v2 + 160);
  if (v15)
  {
    v16 = *(v2 + 168);
    oslog = v15;
    v17 = [v16 request];
    v18 = [objc_opt_self() pathWithRoute:oslog bundleID:0 playerID:0];
    [v17 setPlayerPath_];

    [v16 setNeedsReloadForSignificantRequestChange];

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = [v16 request];
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_20AEA4000, v19, v20, "[MusicMomentHandler] Updated MPCPlayerRequest: %@", v21, 0xCu);
      outlined destroy of (String, MPPropertySet)(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    if (!a1)
    {
      [v16 setDelegate_];
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_20AEA4000, v24, v25, "[MusicMomentHandler] Beginning automatic player response loading", v26, 2u);
        MEMORY[0x20F2E9420](v26, -1, -1);
      }

      [v16 beginAutomaticResponseLoading];
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    [*(v2 + 168) endAutomaticResponseLoading];
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v27, "[MusicMomentHandler] Ended automatic player response loading", v28, 2u);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }
  }
}

id closure #1 in closure #1 in variable initialization expression of MusicMomentHandler.controller()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
  type metadata accessor for MusicMomentHandler();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18MusicMomentHandlerCmMd, &_s11WorkoutCore18MusicMomentHandlerCmMR);
  v2 = String.init<A>(describing:)();
  v3 = MEMORY[0x20F2E6C00](v2);

  v32 = v1;
  [v1 setLabel_];

  [v1 setQualityOfService_];
  v4 = objc_opt_self();
  v31 = [v4 emptyPropertySet];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20B423A20;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  *(v7 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 56) = v9;
  *(v7 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 72) = v10;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_20B4282E0;
  *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v11 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20B423A90;
  *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 40) = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v4 propertySetWithProperties_];

  *(v11 + 48) = v16;
  *(v11 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v11 + 64) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20B423A90;
  *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v18 + 40) = v19;
  v20 = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v4 propertySetWithProperties_];

  *(v11 + 72) = v21;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd, &_sSS_So13MPPropertySetCtMR);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v23 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for MPPropertySet(0, &lazy cache variable for type metadata for MPPropertySet, 0x277CD6018);
  v24 = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v22 initWithProperties:v23 relationships:v24];

  *(inited + 48) = v25;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, MPPropertySet)(inited + 32, &_sSS_So13MPPropertySetCtMd, &_sSS_So13MPPropertySetCtMR);
  v26 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v27 = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = [v26 initWithProperties:0 relationships:v27];

  v29 = [v31 propertySetByCombiningWithPropertySet_];
  [v32 setPlayingItemProperties_];

  return v32;
}

uint64_t closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:);

  return MusicMomentHandler.handle(replaceResponse:)(a5, a6);
}

uint64_t closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t MusicMomentHandler.handle(replaceResponse:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](MusicMomentHandler.handle(replaceResponse:), v2, 0);
}

uint64_t MusicMomentHandler.handle(replaceResponse:)()
{
  v65 = v0;
  v1 = *(v0 + 48);
  (*(v0 + 32))();
  v2 = [*(v1 + 168) response];
  *(v0 + 56) = v2;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 64) = __swift_project_value_buffer(v3, static WOLog.workoutVoice);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 138412802;
    *(v7 + 4) = v4;
    *v8 = v2;
    *(v7 + 12) = 2112;
    if (v4)
    {
      v10 = v4;
      v11 = [v10 tracklist];
      v12 = [v11 playingItem];

      *(v7 + 14) = v12;
      v9[1] = v12;
      *(v7 + 22) = 2112;
      v13 = [v10 tracklist];
      v14 = [v13 playingItem];

      if (v14)
      {
        v15 = [v14 metadataObject];

        v16 = v15;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      *(v7 + 14) = 0;
      v8[1] = 0;
      *(v7 + 22) = 2112;
    }

    *(v7 + 24) = v15;
    v9[2] = v16;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[MusicMomentHandler] Updated MPCPlayerResponse: %@ playingItem: %@ metadataObject: %@", v7, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  if (v4)
  {
    v17 = [v4 tracklist];
    v18 = [v17 playingItem];

    v19 = [v18 metadataObject];
    v20 = [v19 song];

    v21 = [v4 state] == 2;
    v22 = [v4 tracklist];
    v23 = [v22 playingItem];

    v24 = v23 == 0;
    if (v23)
    {
      [v23 duration];
      v25 = v64[4];
    }

    else
    {
      v25 = 0;
    }

    v28 = [v4 tracklist];
    v29 = [v28 playingItem];

    if (v29)
    {
      [v29 duration];
      v26 = v64[3];

      v27 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 1;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v20 = 0;
    v21 = 0;
    v27 = 1;
    v24 = 1;
  }

  *(v0 + 27) = v21;
  *(v0 + 80) = v25;
  *(v0 + 88) = v20;
  *(v0 + 26) = v24;
  *(v0 + 25) = v27;
  *(v0 + 72) = v26;
  v30 = v20;
  v31 = v4;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v64[0] = v35;
    *v34 = 136315394;
    if (v20 && (v36 = [v30 title]) != 0)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = v38;
    }

    else
    {
      v40 = 0x800000020B45CA10;
      v41 = 0xD000000000000013;
    }

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, v64);

    *(v34 + 4) = v42;
    *(v34 + 12) = 2080;
    if (v4)
    {
      v43 = [v31 state];
    }

    else
    {
      v43 = 0;
    }

    *(v0 + 16) = v43;
    *(v0 + 24) = v4 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v44 = Optional.description.getter();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v64);

    *(v34 + 14) = v46;
    _os_log_impl(&dword_20AEA4000, v32, v33, "[MusicMomentHandler] Song: %s, State: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v35, -1, -1);
    MEMORY[0x20F2E9420](v34, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v48 = Strong;
    v49 = MusicMomentHandler.handle(replaceResponse:);
LABEL_29:

    return MEMORY[0x2822009F8](v49, v48, 0);
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_20AEA4000, v50, v51, "[MusicMomentHandler] Delivered updated workout state", v52, 2u);
    MEMORY[0x20F2E9420](v52, -1, -1);
  }

  v53 = *(v0 + 48);

  if (*(v53 + 128) == 1)
  {
    v54 = *(v0 + 48);
    Current = CFAbsoluteTimeGetCurrent();
    *(v0 + 104) = Current;
    v56 = *(v54 + 112);
    *(v0 + 112) = v56;
    *(v54 + 120) = Current - v56;
    *(v53 + 128) = 0;
    v57 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 120) = v57;
    if (v57)
    {
      v48 = v57;
      v49 = MusicMomentHandler.handle(replaceResponse:);
      goto LABEL_29;
    }

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_20AEA4000, v58, v59, "[MusicMomentHandler] Delivered initial music info", v60, 2u);
      MEMORY[0x20F2E9420](v60, -1, -1);
    }
  }

  v61 = *(v0 + 88);

  v62 = *(v0 + 8);

  return v62();
}

{
  v1 = *(v0 + 48);
  WorkoutVoiceMomentCoordinator.updateWorkoutState(withSong:isPlaying:elapsedTime:duration:)(*(v0 + 88), *(v0 + 27), *(v0 + 80), *(v0 + 26), *(v0 + 72), *(v0 + 25));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](MusicMomentHandler.handle(replaceResponse:), v1, 0);
}

{
  v1 = *(v0 + 48);
  WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(*(v0 + 104) - *(v0 + 112));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](MusicMomentHandler.handle(replaceResponse:), v1, 0);
}

uint64_t MusicMomentHandler.handle(replaceResponse:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "[MusicMomentHandler] Delivered updated workout state", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v1 + 48);

  if (*(v5 + 128) == 1)
  {
    v6 = *(v1 + 48);
    Current = CFAbsoluteTimeGetCurrent();
    *(v1 + 104) = Current;
    v8 = *(v6 + 112);
    *(v1 + 112) = v8;
    *(v6 + 120) = Current - v8;
    *(v5 + 128) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v1 + 120) = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](MusicMomentHandler.handle(replaceResponse:), Strong, 0);
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v11, "[MusicMomentHandler] Delivered initial music info", v12, 2u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }
  }

  v13 = *(v1 + 88);

  v14 = *(v1 + 8);

  return v14();
}

{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "[MusicMomentHandler] Delivered initial music info", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v1 + 88);
  v6 = *(v1 + 8);

  return v6();
}

id MusicMomentHandler.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = CFAbsoluteTimeGetCurrent();
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277CD6038]) init];
  v2 = closure #1 in closure #1 in variable initialization expression of MusicMomentHandler.controller();
  [v1 setRequest_];

  *(v0 + 168) = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MusicMomentHandler();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t MusicMomentHandler.__deallocating_deinit()
{
  outlined destroy of weak MusicMomentHandlerDelegate?(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t partial apply for closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:);

  return closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for MPPropertySet(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t lazy protocol witness table accessor for type MusicMomentHandler and conformance MusicMomentHandler(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined destroy of (String, MPPropertySet)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:)(void *a1, void *a2, void *a3, int a4, char *a5)
{
  v195 = a4;
  v194 = a1;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v199 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v9);
  v192 = v166 - v10;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v198 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v11);
  v190 = v166 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v184 = v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v187 = v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v186 = v166 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = v166 - v25;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  result = MEMORY[0x28223BE20](v27, v29);
  v32 = v166 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFADD__(static MetricsPublisher.updateCount, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v183 = a2;
  v178 = v14;
  v179 = v13;
  v180 = a5;
  v182 = a3;
  ++static MetricsPublisher.updateCount;
  v181 = v5;
  v196 = v28;
  v33 = [objc_allocWithZone(v5) init];
  v34 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
  swift_beginAccess();
  v33[v34] = 1;
  v176 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher;
  v35 = *&v33[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher];
  swift_beginAccess();
  *(v35 + 16) = 1;
  v36 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher;
  swift_getKeyPath();
  v189 = v27;
  swift_getKeyPath();
  *&v207 = 300.0;

  static Published.subscript.setter();
  Date.init()();
  v197 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher;
  v185 = v36;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v207);

  v37 = v189;

  v188 = v32;
  Date.addingTimeInterval(_:)();
  v38 = *(v196 + 56);
  v38(v26, 0, 1, v37);
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v186;
  outlined init with copy of Date?(v26, v186);

  static Published.subscript.setter();
  outlined destroy of Date?(v26);
  v40 = v194;
  if ([v194 supportsDistanceSplits])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v207);

    Date.addingTimeInterval(_:)();
    v38(v26, 0, 1, v37);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of Date?(v26, v39);
    v41 = v33;
    static Published.subscript.setter();
    outlined destroy of Date?(v26);
  }

  v42 = v187;
  if (v195)
  {
    (*(v196 + 16))(v187, v188, v37);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v38(v42, v43, 1, v37);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v42, v26);

  static Published.subscript.setter();
  outlined destroy of Date?(v42);
  swift_getKeyPath();
  swift_getKeyPath();
  v207 = v40;
  swift_retain_n();
  v44 = v40;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v207);

  v45 = v207;
  [v207 identifier];

  swift_getKeyPath();
  swift_getKeyPath();
  *&v207 = 140.0;
  LOBYTE(v208) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v207 = 140.0;
  LOBYTE(v208) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v207 = 170.0;
  LOBYTE(v208) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v207) = 0;

  static Published.subscript.setter();

  specialized static MetricsPublisher.fakeHeartRateMetrics(with:)(v46);

  v47 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v207 = 100.0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v207 = 100.0;

  static Published.subscript.setter();
  v177 = v44;
  v48 = [v44 effectiveTypeIdentifier];
  v49 = v183;
  specialized static FakeValueGenerator.staticValues(activityType:formattingManager:)(&v207, v183, v48);
  v50 = v207;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = *&v50;
  v51 = v33;
  static Published.subscript.setter();
  v52 = v208;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v52;
  v53 = v51;
  static Published.subscript.setter();
  v54 = v209;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v54;
  v55 = v53;
  static Published.subscript.setter();
  v56 = v210;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v56;
  v57 = v55;
  static Published.subscript.setter();
  v58 = v211;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v58;
  v59 = v57;
  static Published.subscript.setter();
  v60 = v213;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v60;
  LOBYTE(v201) = 0;
  v61 = v59;
  static Published.subscript.setter();
  v62 = v212;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v62;
  LOBYTE(v201) = 0;
  v63 = v61;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 3.18;
  v64 = v63;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 10.0;
  v65 = v64;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&aBlock = 20;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 76.2;
  LOBYTE(v201) = 0;
  v66 = v65;
  static Published.subscript.setter();
  result = [v49 unitManager];
  if (!result)
  {
    goto LABEL_21;
  }

  v67 = result;
  v68 = [result userDistanceHKUnitForDistanceType_];

  v183 = v68;
  specialized static ChartDataProvider.fakeElevationData(unit:)(v68);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v69 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v69;
  v70 = v66;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 170.0;
  LOBYTE(v201) = 0;
  v71 = v70;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 170.0;
  LOBYTE(v201) = 0;
  v72 = v71;
  static Published.subscript.setter();

  specialized static ChartDataProvider.fakePowerData(values:)(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v73 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v73;
  static Published.subscript.setter();

  specialized static MetricsPublisher.fakePowerMetrics(with:)(v74);

  specialized static MetricsPublisher.fakeWaterTemperatureMetrics(with:)(v75);

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 27.0;
  v76 = v72;
  static Published.subscript.setter();
  v77 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&aBlock);

  v78 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v78;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&aBlock);

  if (v201 == 1)
  {
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 500.0);
    v80 = v79;
    *&static MetricsPublisher.totalPower = v79 + *&static MetricsPublisher.totalPower;
  }

  else
  {
    v80 = aBlock;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v80;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&aBlock);

  v175 = v33;
  v174 = v47;
  if (v201 == 1)
  {
    v81 = static MetricsPublisher.updateCount;
    if (static MetricsPublisher.updateCount <= 1)
    {
      v81 = 1;
    }

    v82 = *&static MetricsPublisher.totalPower / v81;
  }

  else
  {
    v82 = aBlock;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v82;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&aBlock);

  v83 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v83;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.26;

  static Published.subscript.setter();
  v176 = *&v76[v77];
  v84 = objc_opt_self();
  v187 = v84;

  v85 = [v84 minuteUnit];
  v186 = objc_opt_self();
  v86 = [v186 quantityWithUnit:v85 doubleValue:5.0];

  v87 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v86];
  v88 = v184;
  UUID.init()();
  type metadata accessor for WorkoutStep(0);
  *&v89 = COERCE_DOUBLE(swift_allocObject());
  v90 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v201 = 0;
  aBlock = 0.0;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v91 = v190;
  Published.init(initialValue:)();
  v92 = *(v198 + 32);
  v198 += 32;
  v172 = v92;
  v92(v89 + v90, v91, v191);
  *(v89 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v89 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v93 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(aBlock) = 0;
  v94 = v192;
  Published.init(initialValue:)();
  v95 = *(v199 + 32);
  v199 += 32;
  v171 = v95;
  v95(v89 + v93, v94, v193);
  *(v89 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v89 + 16) = 0;
  swift_beginAccess();
  v206 = v87;
  v170 = type metadata accessor for NLSessionActivityGoal();
  v96 = v87;
  Published.init(initialValue:)();
  swift_endAccess();
  v97 = v177;
  *(v89 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v177;
  v167 = v76;
  v98 = v178;
  v166[1] = v77;
  v99 = *(v178 + 16);
  v168 = v178 + 16;
  v169 = v99;
  v100 = v179;
  v99(v89 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v88, v179);
  swift_getKeyPath();
  swift_getKeyPath();
  v201 = 0;
  aBlock = 0.0;
  v177 = v97;

  static Published.subscript.setter();

  v178 = *(v98 + 8);
  v101 = v88;
  (v178)(v88, v100);
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = *&v89;
  static Published.subscript.setter();

  v102 = [v187 minuteUnit];
  v103 = [v186 quantityWithUnit:v102 doubleValue:5.0];

  v104 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v103];
  UUID.init()();
  *&v105 = COERCE_DOUBLE(swift_allocObject());
  v106 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v201 = 0;
  aBlock = 0.0;
  v107 = v190;
  Published.init(initialValue:)();
  v172(v105 + v106, v107, v191);
  *(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v108 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(aBlock) = 0;
  v109 = v192;
  Published.init(initialValue:)();
  v171(v105 + v108, v109, v193);
  *(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v105 + 16) = 1;
  swift_beginAccess();
  v206 = v104;
  v110 = v104;
  Published.init(initialValue:)();
  swift_endAccess();
  v111 = v177;
  *(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v177;
  v112 = v101;
  v169(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v101, v100);
  swift_getKeyPath();
  swift_getKeyPath();
  v201 = 0;
  aBlock = 0.0;
  v113 = v111;

  static Published.subscript.setter();

  (v178)(v112, v100);
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = *&v105;
  static Published.subscript.setter();
  v114 = v167;
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = *&v194;
  aBlock = *&v194;
  v116 = v113;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v115;
  v117 = v116;

  static Published.subscript.setter();
  v118 = v187;
  v119 = [v187 mileUnit];
  v120 = [v186 quantityWithUnit:v119 doubleValue:1.0];

  v121 = [v118 meterUnit];
  [v120 doubleValueForUnit_];
  v123 = v122;

  v124 = v123 * 0.125;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 57.0;
  v125 = v124;
  *&v201 = v125;
  BYTE4(v201) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 57.0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v124 + 400.0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 400.0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 4600.0;

  static Published.subscript.setter();

  *&v126 = COERCE_DOUBLE(specialized static RaceChartPoint.canonicalRoutePoints.getter());
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = *&v126;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = (v195 & 1) == 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&aBlock = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v127 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v127;
  v128 = v114;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v129 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v129;
  v130 = v128;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v131 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v131;
  v132 = v130;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v133 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v133;
  v134 = v132;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v135 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v135;
  v136 = v134;
  static Published.subscript.setter();
  v199 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher;

  v137 = COERCE_DOUBLE(specialized static HKActivitySummary.fake(activityMoveMode:)(v180));
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v137;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 90.0;
  v138 = v136;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 90.0;
  v139 = v138;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 89.9;
  v140 = v139;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&aBlock = 1;
  v141 = v140;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v142 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v142;
  v143 = v141;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v144 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v144;
  v145 = v143;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&aBlock);

  v146 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v146;
  v147 = v145;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 1.05;
  LOBYTE(v201) = 0;
  v148 = v147;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 1.05;
  LOBYTE(v201) = 0;
  v149 = v148;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.105;
  LOBYTE(v201) = 0;
  v150 = v149;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.105;
  LOBYTE(v201) = 0;
  v151 = v150;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.25;
  LOBYTE(v201) = 0;
  v152 = v151;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.25;
  LOBYTE(v201) = 0;
  v153 = v152;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 731.52;
  LOBYTE(v201) = 0;
  v154 = v153;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&aBlock = 7;
  LOBYTE(v201) = 0;
  v155 = v154;
  static Published.subscript.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
  *&v156 = COERCE_DOUBLE(swift_allocObject());
  *(v156 + 16) = xmmword_20B423A90;
  *(v156 + 32) = 0;
  *(v156 + 40) = &outlined read-only object #0 of static MetricPlatter.canonical();
  *(v156 + 33) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = *&v156;

  static Published.subscript.setter();
  v157 = objc_opt_self();
  v158 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v159 = swift_allocObject();
  v160 = v181;
  *(v159 + 16) = v158;
  *(v159 + 24) = v160;
  v204 = partial apply for closure #1 in static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:);
  v205 = v159;
  aBlock = MEMORY[0x277D85DD0];
  v201 = 1107296256;
  v202 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v203 = &block_descriptor_28;
  v161 = _Block_copy(&aBlock);

  v162 = [v157 scheduledTimerWithTimeInterval:1 repeats:v161 block:1.0];
  _Block_release(v161);

  if (v182)
  {
    v163 = v182;

    v164 = [v163 isWheelchairUser];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = v164;
    static Published.subscript.setter();
    v165 = v155;
    [v163 addObserver_];

    (*(v196 + 8))(v188, v189);
  }

  else
  {
    (*(v196 + 8))(v188, v189);
  }

  return v155;
}

void closure #1 in static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    specialized static MetricsPublisher.fakeUpdate(publisher:)(Strong);
  }
}

char *static MetricsPublisher.fake(formattingManager:wheelchairUseCache:workoutPaused:)(void *a1, void *a2, int a3)
{
  v6 = specialized static GoalWorkoutConfiguration.canonical()();
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v8 = *&v6[v7];
  v9 = static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:)(v8, a1, a2, a3, 1);

  return v9;
}

char *static MetricsPublisher.fakeDistanceGoalComplete(formattingManager:)(void *a1)
{
  v1 = static MetricsPublisher.fake(formattingManager:wheelchairUseCache:workoutPaused:)(a1, 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return v2;
}

uint64_t MetricsPublisher.wheelchairUseCharacteristicCache(_:wheelchairUsageDidChange:)(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for WorkoutStatePublisher.workoutStarted : WorkoutStatePublisher@<X0>(_BYTE *a4@<X8>)
{
  return key path getter for WorkoutStatePublisher.workoutStarted : WorkoutStatePublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t key path getter for WorkoutStatePublisher.workoutStartDate : WorkoutStatePublisher@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);
}

uint64_t key path setter for WorkoutStatePublisher.workoutStartDate : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v12 - v9;
  outlined init with copy of Date?(a1, &v12 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v10, v7);

  static Published.subscript.setter();
  return outlined destroy of Date?(v10);
}

uint64_t key path getter for WorkoutStatePublisher.segmentIndex : WorkoutStatePublisher@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for WorkoutStatePublisher.segmentIndex : WorkoutStatePublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for PlatterPublisher.metricPlatters : PlatterPublisher@<X0>(void *a4@<X8>)
{
  return key path getter for PlatterPublisher.metricPlatters : PlatterPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t key path setter for PlatterPublisher.metricPlatters : PlatterPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for WorkoutStatePublisher.workoutStarted : WorkoutStatePublisher(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for MetricsPublisher.elevationChartData : MetricsPublisher(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t key path getter for MetricsPublisher.distanceGoalFinishTime : MetricsPublisher@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t key path setter for MetricsPublisher.distanceGoalFinishTime : MetricsPublisher(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void specialized static FakeValueGenerator.staticValues(activityType:formattingManager:)(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t a3@<X0>)
{
  if (a3 <= 45)
  {
    if (a3 > 30)
    {
      if (a3 == 31)
      {
        v27 = [a2 unitManager];
        if (!v27)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v28 = v27;
        v29 = [v27 userDistancePaddleSportsHKUnit];

        LODWORD(v28) = [v29 _isMetricDistance];
        v10 = 2414.02;
        if (v28)
        {
          v10 = 3000.0;
          v12 = 1.38889;
        }

        else
        {
          v12 = 1.34112;
        }

        v8 = 0.0;
      }

      else
      {
        if (a3 != 35)
        {
          goto LABEL_65;
        }

        v14 = [a2 unitManager];
        if (!v14)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v15 = v14;
        v16 = [v14 userDistanceRowingHKUnit];

        LODWORD(v15) = [v16 _isMetricDistance];
        v10 = 2011.68;
        if (v15)
        {
          v10 = 2000.0;
        }

        v8 = 0.0;
        v12 = 4.167;
      }

      v9 = 0.0;
LABEL_58:
      v13 = 0.0;
      v11 = 0.0;
      v26 = *&v12;
LABEL_74:
      *a1 = v26;
      *(a1 + 1) = v12;
      *(a1 + 2) = v11;
      *(a1 + 3) = v13;
      *(a1 + 4) = v10;
      *(a1 + 5) = v9;
      *(a1 + 6) = v8;
      return;
    }

    if (a3 == 13)
    {
      v23 = [a2 unitManager];
      if (!v23)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v24 = v23;
      v25 = [v23 userDistanceCyclingHKUnit];

      LODWORD(v24) = [v25 _isMetricDistance];
      v20 = v24 == 0;
      v10 = 24140.2;
      if (v24)
      {
        v10 = 24000.0;
        v11 = 8.89;
      }

      else
      {
        v11 = 8.94;
      }

      v21 = 6.7056;
      v22 = 6.66667;
      goto LABEL_41;
    }

    if (a3 != 24)
    {
      goto LABEL_65;
    }

LABEL_31:
    v17 = [a2 unitManager];
    if (!v17)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v18 = v17;
    v19 = [v17 userDistanceWalkingRunningHKUnit];

    LODWORD(v18) = [v19 _isMetricDistance];
    v20 = v18 == 0;
    v10 = 2414.02;
    if (v18)
    {
      v10 = 3000.0;
      v11 = 1.67;
    }

    else
    {
      v11 = 1.68;
    }

    v21 = 1.34112;
    v22 = 1.28215128;
LABEL_41:
    if (v20)
    {
      v12 = v21;
    }

    else
    {
      v12 = v22;
    }

    v8 = 0.0;
    v9 = 0.0;
    v13 = 0.0;
    v26 = *&v12;
    goto LABEL_74;
  }

  if (a3 <= 59)
  {
    if (a3 == 46)
    {
      v34 = [a2 unitManager];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 userLapLengthHKUnit];

        LODWORD(v35) = [v36 _isMetricDistance];
        v10 = 457.2;
        if (v35)
        {
          v10 = 500.0;
          v12 = 1.0;
        }

        else
        {
          v12 = 0.9144;
        }

        v8 = 0.0;
        v9 = 0.0;
        v13 = 0.0;
        v11 = 0.0;
LABEL_64:
        v26 = 0;
        goto LABEL_74;
      }

      goto LABEL_81;
    }

    if (a3 != 52)
    {
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  if (a3 == 60)
  {
    v30 = [a2 unitManager];
    if (!v30)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v31 = v30;
    v32 = [v30 userDistanceCrossCountrySkiingHKUnit];

    v33 = [v32 _isMetricDistance];
    v9 = 2500.0;
    if (!v33)
    {
      v9 = 914.4;
    }

    v10 = 2414.02;
    if (v33)
    {
      v10 = 3000.0;
      v12 = 3.05556;
    }

    else
    {
      v12 = 3.12928;
    }

    v8 = 0.0;
    goto LABEL_58;
  }

  if (a3 == 61 || a3 == 67)
  {
    v4 = [a2 unitManager];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 userDistanceDownhillSnowSportsHKUnit];

      v7 = [v6 _isMetricDistance];
      if (v7)
      {
        v8 = 3000.0;
      }

      else
      {
        v8 = 3048.0;
      }

      v9 = 2500.0;
      if (!v7)
      {
        v9 = 2438.4;
      }

      v10 = 2414.02;
      if (v7)
      {
        v10 = 3000.0;
      }

      v11 = 11.176;
      if (v7)
      {
        v11 = 11.1111;
      }

      v12 = 4.47041;
      if (v7)
      {
        v12 = 4.44444;
      }

      v13 = 0.0;
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_65:
  v37 = [a2 unitManager];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 userDistanceWalkingRunningHKUnit];

    v40 = [v39 _isMetricDistance];
    v9 = 50.0;
    if (!v40)
    {
      v9 = 45.72;
    }

    v10 = 2414.02;
    if (v40)
    {
      v10 = 3000.0;
      v13 = 3.0303;
    }

    else
    {
      v13 = 2.98;
    }

    v11 = 3.33;
    if (!v40)
    {
      v11 = 3.83;
    }

    v8 = 0.0;
    v12 = v13;
    v26 = *&v13;
    goto LABEL_74;
  }

LABEL_82:
  __break(1u);
}

void specialized static FakeValueGenerator.liveValues(activityType:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 45)
  {
    if (a1 == 46)
    {
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.9, 0.93);
      v10 = v15;
      v8 = 0;
      v7 = 0;
      v4 = 0;
      goto LABEL_11;
    }

    if (a1 != 52)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (a1 == 13)
  {
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(6.5, 7.0);
    v4 = v14;
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(6.5, 7.0);
    v13 = &qword_20B4361E0;
    goto LABEL_9;
  }

  if (a1 == 24)
  {
LABEL_7:
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1.2, 1.4);
    v4 = v11;
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1.2, 1.4);
    v13 = &qword_20B4361B0;
LABEL_9:
    v10 = vld1q_dup_f64(v13);
    v10.f64[0] = v12;
    v8 = 0;
    v7 = 0;
    goto LABEL_11;
  }

LABEL_4:
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(2.9, 3.1);
  v4 = v3;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(2.9, 3.1);
  v16 = v5;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(2.9, 3.1);
  v7 = v6;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(3282.01, 3582.01);
  v9 = &qword_20B436210;
  v10 = vld1q_dup_f64(v9);
  v10.f64[0] = v16;
LABEL_11:
  *a2 = v4;
  *(a2 + 8) = v10;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
}

uint64_t specialized static MetricsPublisher.fakePowerMetrics(with:)(uint64_t a1)
{
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 500.0);
  v2 = v1;
  *&static MetricsPublisher.totalPower = v1 + *&static MetricsPublisher.totalPower;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v2;
  v26 = 0;

  static Published.subscript.setter();
  v3 = static MetricsPublisher.updateCount;
  if (static MetricsPublisher.updateCount <= 1)
  {
    v3 = 1;
  }

  v4 = *&static MetricsPublisher.totalPower / v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v4;
  v26 = 0;

  static Published.subscript.setter();
  v5 = static MetricsPublisher.updateCount;
  if (static MetricsPublisher.updateCount <= 1)
  {
    v5 = 1;
  }

  v6 = *&static MetricsPublisher.totalPower / v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v6;
  v26 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v25);

  if (v25 == 0.0)
  {
    v7 = specialized static LivePowerZone.canonicals()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
    *&v8 = COERCE_DOUBLE(swift_allocObject());
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 16) = v7;
    swift_beginAccess();
    *(v8 + 24) = 0;
    *(v8 + 32) = 257;
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = *&v8;

    static Published.subscript.setter();
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v23);

  v10 = v23;
  if (v23 != 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v23);

    if (v24)
    {
    }

    else
    {
      v11 = v23;
      swift_beginAccess();
      v12 = *(*&v10 + 16);
      if (v12 >> 62)
      {
        goto LABEL_39;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

      swift_beginAccess();
      if (v13)
      {
        v14 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x20F2E7A20](v14, v12);
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
LABEL_33:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v13 = __CocoaSet.count.getter();
              goto LABEL_13;
            }

            v15 = *(v12 + 8 * v14 + 32);

            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_33;
            }
          }

          v17 = *(v15 + 32);
          if (v17)
          {
            v18 = *(v15 + 16);
          }

          else
          {
            v18 = 0.0;
          }

          v19 = *(v15 + 40);
          v20 = __OFSUB__(v19, 1);
          v21 = v19 - 1;
          if (v20)
          {
            goto LABEL_37;
          }

          if (v17 == v21)
          {
            v22 = INFINITY;
          }

          else
          {
            v22 = *(v15 + 24);
          }

          if (v18 > v22)
          {
            goto LABEL_38;
          }

          if (v18 > v11 || v11 >= v22)
          {
          }

          else
          {
            swift_beginAccess();
            *(v15 + 48) = *(v15 + 48) + 3.0;

            *(*&v10 + 24) = v14;
            *(*&v10 + 32) = 0;
          }

          ++v14;
        }

        while (v16 != v13);
      }

      swift_beginAccess();
      *(*&v10 + 33) = 0;
      swift_getKeyPath();
      swift_getKeyPath();

      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t specialized static MetricsPublisher.fakeWaterTemperatureMetrics(with:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if (v6)
  {
    v1 = 19.0;
  }

  else
  {
    v1 = v5 + 1.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v1;
  v6 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v2 = LOBYTE(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v5) = (v2 & 1) == 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if (v6)
  {
    v3 = 18.0;
  }

  else
  {
    v3 = v5 + 1.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v3;
  v6 = 0;

  return static Published.subscript.setter();
}

uint64_t specialized static MetricsPublisher.fakeHeartRateMetrics(with:)(uint64_t a1)
{
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(130.0, 160.0);
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v2;
  v22 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v21);

  if (v21)
  {
  }

  else
  {
    v3 = specialized static LiveHeartRateZone.canonicals()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
    *&v4 = COERCE_DOUBLE(swift_allocObject());
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    *(v4 + 16) = v3;
    swift_beginAccess();
    *(v4 + 24) = 0;
    *(v4 + 32) = 257;
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = *&v4;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v19);

  v6 = v19;
  if (v19 != 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v19);

    if (v20)
    {
    }

    else
    {
      v7 = v19;
      swift_beginAccess();
      v8 = *(*&v6 + 16);
      if (v8 >> 62)
      {
        goto LABEL_35;
      }

      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

      swift_beginAccess();
      if (v9)
      {
        v10 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x20F2E7A20](v10, v8);
            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_29:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              v9 = __CocoaSet.count.getter();
              goto LABEL_9;
            }

            v11 = *(v8 + 8 * v10 + 32);

            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_29;
            }
          }

          v13 = *(v11 + 32);
          if (v13)
          {
            v14 = *(v11 + 16);
          }

          else
          {
            v14 = 0.0;
          }

          v15 = *(v11 + 40);
          v16 = __OFSUB__(v15, 1);
          v17 = v15 - 1;
          if (v16)
          {
            goto LABEL_33;
          }

          if (v13 == v17)
          {
            v18 = INFINITY;
          }

          else
          {
            v18 = *(v11 + 24);
          }

          if (v14 > v18)
          {
            goto LABEL_34;
          }

          if (v14 > v7 || v7 >= v18)
          {
          }

          else
          {
            swift_beginAccess();
            *(v11 + 48) = *(v11 + 48) + 5.0;

            *(*&v6 + 24) = v10;
            *(*&v6 + 32) = 0;
          }

          ++v10;
        }

        while (v12 != v9);
      }

      swift_beginAccess();
      *(*&v6 + 33) = 0;
      swift_getKeyPath();
      swift_getKeyPath();

      return static Published.subscript.setter();
    }
  }

  return result;
}

void specialized static MetricsPublisher.fakeUpdate(publisher:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = (&v101 - v4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  v6 = type metadata accessor for Date();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  outlined destroy of Date?(v5);
  if (v7 != 1)
  {
    return;
  }

  if (__OFADD__(static MetricsPublisher.updateCount, 1))
  {
    __break(1u);
    goto LABEL_32;
  }

  ++static MetricsPublisher.updateCount;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = static Published.subscript.modify();
  *v9 = *v9 + 1.0;
  v8(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = static Published.subscript.modify();
  *v11 = *v11 + 0.02;
  v10(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = static Published.subscript.modify();
  *v13 = *v13 + 1.0;
  v12(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = static Published.subscript.modify();
  *v15 = *v15 + 1.0;
  v14(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = static Published.subscript.modify();
  *v17 = *v17 + 3.0;
  v16(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v18 = static Published.subscript.modify();
  *v19 = *v19 + 3.0;
  v18(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = static Published.subscript.modify();
  *v21 = *v21 + -3.0;
  v20(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v104);

  if (fmod(v104[0], 3.0) != 0.0)
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = static Published.subscript.modify();
  *v23 = *v23 + 1.0;
  v22(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = static Published.subscript.modify();
  *v25 = *v25 + 1.0;
  v24(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v26 = static Published.subscript.modify();
  *v27 = *v27 + 7.5;
  v26(v104, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v104);

  v28 = v104[0];
  if (*&v104[0])
  {
    goto LABEL_7;
  }

  if (one-time initialization token for outdoorRun != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v28 = COERCE_DOUBLE(static FIUIWorkoutActivityType.outdoorRun);
LABEL_7:
    specialized static FakeValueGenerator.liveValues(activityType:)([*&v28 effectiveTypeIdentifier], v104);
    v29 = v104[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v29;
    v30 = a1;
    static Published.subscript.setter();
    v31 = v104[1];
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v31;
    v32 = v30;
    static Published.subscript.setter();
    v33 = v104[2];
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v33;
    v34 = v32;
    static Published.subscript.setter();
    v35 = v104[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v35;
    v36 = v34;
    static Published.subscript.setter();
    v37 = v104[5];
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v37;
    v103 = 0;
    v38 = v36;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(3.0, 3.25);
    v40 = v39;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v40;
    v41 = v38;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1.0, 6.0);
    v43 = v42;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v43;
    v44 = v41;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v102);

    if (v103)
    {
      v45 = 1.0;
    }

    else
    {
      v45 = v102 + 1.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v45;
    v103 = 0;
    v46 = v44;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v102);

    if (v103)
    {
      v47 = 1.0;
    }

    else
    {
      v47 = v102 + 1.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v47;
    v103 = 0;
    v48 = v46;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(150.0, 180.0);
    v50 = v49;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v50;
    v103 = 0;
    v51 = v48;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(150.0, 180.0);
    v53 = v52;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v53;
    v103 = 0;
    v54 = v51;
    static Published.subscript.setter();
    specialized static MetricsPublisher.fakePowerMetrics(with:)(*&v54[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher]);
    specialized static MetricsPublisher.fakeWaterTemperatureMetrics(with:)(*&v54[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher]);
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = static Published.subscript.modify();
    *v56 = *v56 + 7.5;
    v55(&v102, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v57 = static Published.subscript.modify();
    *v58 = *v58 + 7.5;
    v57(&v102, 0);

    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(3.0, 3.25);
    v60 = v59;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v60;
    v61 = v54;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = static Published.subscript.modify();
    *v63 = *v63 + 1.0;
    v62(&v102, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v64 = static Published.subscript.modify();
    *v65 = *v65 + 1.0;
    v64(&v102, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v66 = static Published.subscript.modify();
    *v67 = *v67 + 7.5;
    v66(&v102, 0);

    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(3.0, 3.25);
    v69 = v68;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v69;
    v70 = v61;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.5, 5.0);
    v72 = v71;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v72;
    v103 = 0;
    v73 = v70;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.5, 5.0);
    v75 = v74;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v75;
    v103 = 0;
    v76 = v73;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.01, 0.2);
    v78 = v77;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v78;
    v103 = 0;
    v79 = v76;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.01, 0.2);
    v81 = v80;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v81;
    v103 = 0;
    v82 = v79;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.05, 0.5);
    v84 = v83;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v84;
    v103 = 0;
    v85 = v82;
    static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.05, 0.5);
    v87 = v86;
    swift_getKeyPath();
    swift_getKeyPath();
    v102 = v87;
    v103 = 0;
    v88 = v85;
    static Published.subscript.setter();

LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v102);

    if (fmod(v102, 5.0) == 0.0)
    {
      specialized static MetricsPublisher.fakeHeartRateMetrics(with:)(*&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher]);
      v90 = MetricsPublisher.descent.modify(&v102);
      if ((*(v89 + 8) & 1) == 0)
      {
        *v89 = *v89 + 3.5;
      }

      (v90)(&v102, 0);
    }

    specialized static MetricsPublisher.fakeHeartRateMetrics(with:)(*&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher]);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v102);

    if (fmod(v102, 20.0) == 0.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v91 = static Published.subscript.modify();
      if (*v92 == -1)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      ++*v92;
      v91(&v102, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      v93 = static Published.subscript.modify();
      *v94 = *v94 + 1.0;
      v93(&v102, 0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v102);

    if (fmod(v102, 60.0) != 0.0)
    {
      goto LABEL_26;
    }

    v96 = MetricsPublisher.downhillRunCount.modify(&v102);
    if (*(v95 + 8))
    {
      (v96)(&v102, 0);
      goto LABEL_26;
    }

    if (*v95 != -1)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  ++*v95;
  (v96)(&v102, 0);
LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v102);

  if (v102 > 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v97 = static Published.subscript.modify();
    *v98 = *v98 + -1.0;
    v97(&v102, 0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v102);

  if (v102 > 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v99 = static Published.subscript.modify();
    *v100 = *v100 + -1.0;
    v99(&v102, 0);
  }
}

uint64_t getEnumTagSinglePayload for MetricSlotProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricSlotProvider(_WORD *result, int a2, int a3)
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

void LiveHeartRateZone.__allocating_init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  swift_beginAccess();
  *(v10 + 48) = a5;
  v11 = floor(a3);
  v12 = floor(a4);
  if (v11 > v12)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v11;
    *(v10 + 24) = v12;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
  }
}

uint64_t LiveHeartRateZone.isEqual(to:)(uint64_t a1)
{
  v2 = *v1;
  outlined init with copy of Any?(a1, v7);
  if (v8 == 0.0)
  {
    outlined destroy of Any?(v7);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  swift_beginAccess();
  v3 = v1[6];
  swift_beginAccess();
  if (v3 != *(v6 + 48))
  {

    goto LABEL_7;
  }

  v8 = v2;
  v7[0] = v6;

  v4 = Zone.isEqual(to:)(v7);

  __swift_destroy_boxed_opaque_existential_1Tm_5(v7);
  return v4 & 1;
}

void LiveHeartRateZone.init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 48) = a5;
  v11 = floor(a3);
  v12 = floor(a4);
  if (v11 > v12)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
    *(v5 + 24) = v12;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }
}

uint64_t LiveHeartRateZone.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  outlined init with copy of Decoder(a1, v4);
  v2 = LiveZone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm_5(a1);
  return v2;
}

uint64_t LiveHeartRateZone.init(from:)(void *a1)
{
  outlined init with copy of Decoder(a1, v4);
  v2 = LiveZone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm_5(a1);
  return v2;
}

uint64_t vtable thunk for Zone.isEqual(to:) dispatching to LiveHeartRateZone.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v3);
  v1 = LiveHeartRateZone.isEqual(to:)(v3);
  outlined destroy of Any?(v3);
  return v1 & 1;
}

uint64_t specialized static LiveHeartRateZone.canonicals()()
{
  v0 = [objc_opt_self() _countPerMinuteUnit];
  v1 = [objc_opt_self() quantityWithUnit:v0 doubleValue:178.6];

  if (one-time initialization token for defaultRestingHeartRate != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v2 = specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(v1, static HeartRateConfiguration.defaultRestingHeartRate);

    if (v2 >> 62)
    {
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
LABEL_15:

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    v13 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v3 < 0)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x20F2E7A20](v5, v2);
      }

      else
      {
        v1 = *(v2 + 8 * v5 + 32);
      }

      v6 = v1[2];
      v7 = v1[3];
      v8 = *(v1 + 4);
      v9 = *(v1 + 5);
      type metadata accessor for LiveHeartRateZone();
      v10 = swift_allocObject();
      *(v10 + 48) = 0;
      swift_beginAccess();
      *(v10 + 48) = 0;

      v11 = floor(v6);
      v12 = floor(v7);
      if (v11 > v12)
      {
        break;
      }

      ++v5;
      *(v10 + 16) = v11;
      *(v10 + 24) = v12;
      *(v10 + 32) = v8;
      *(v10 + 40) = v9;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v3 == v5)
      {

        return v13;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for NLSessionActivityGoalError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NLSessionActivityGoalError(uint64_t result, int a2, int a3)
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

uint64_t String.utf8Data.getter(uint64_t a1, unint64_t a2)
{

  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a1, a2);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ContiguousBytes?(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v34[2] = v39;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data._Representation?(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data._Representation?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t *closure #2 in Data.init<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v17, 0, 15);
      a1(&v15, v17, v17);
      return;
    }

    outlined consume of Data._Representation(v7, v6);
    v15 = v7;
    v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_20B42FB30;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v15 + 16), *(v15 + 24), a1);
    v10 = v16 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v15;
      v4[1] = v10;
      return;
    }

    *v4 = v15;
    goto LABEL_18;
  }

  if (!v8)
  {
    outlined consume of Data._Representation(v7, v6);
    v17[0] = v7;
    LOWORD(v17[1]) = v6;
    BYTE2(v17[1]) = BYTE2(v6);
    BYTE3(v17[1]) = BYTE3(v6);
    BYTE4(v17[1]) = BYTE4(v6);
    BYTE5(v17[1]) = BYTE5(v6);
    BYTE6(v17[1]) = BYTE6(v6);
    a1(&v15, v17, v17 + BYTE6(v6));
    v9 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
    *v4 = v17[0];
    v4[1] = v9;
    return;
  }

  v11 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  outlined consume of Data._Representation(v7, v6);
  *v4 = xmmword_20B42FB30;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  v12 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
    {
LABEL_22:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v11 = v13;
  }

  if (v12 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

  v10 = v11 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v10;
    return;
  }

  *v4 = v7;
  v4[1] = v10;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x20F2E42A0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined consume of Data._Representation?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void static HeartRateConfiguration.fetchConfigurationType(completion:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v5 = static HeartRateConfiguration.valueStore;
  v6 = qword_27C75FF10;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;
  v8 = v5;
  v9 = v6;

  v10 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45CA90);
  v12[4] = partial apply for closure #1 in static HeartRateConfiguration.fetchConfigurationType(completion:);
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_3_3;
  v11 = _Block_copy(v12);

  [v8 numberForKey:v10 completion:v11];
  _Block_release(v11);
}

void closure #1 in static HeartRateConfiguration.fetchConfigurationType(completion:)(void *a1, id a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = a2;
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.zones);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v11, v12))
    {

      if (a1)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v23 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v13 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = a2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_20AEA4000, v11, v12, "%s Failed to retrieve configuration type from key-value store with error: %@", v13, 0x16u);
    outlined destroy of NSObject?(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F2E9420](v15, -1, -1);
    v21 = v13;
    a3 = v23;
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  if (a1)
  {
LABEL_7:
    v22 = a1;
    v25 = [v22 integerValue] == 1;
    a3(&v25);

    return;
  }

LABEL_9:
  v26 = 0;
  a3(&v26);
}

void static HeartRateConfiguration.set(configurationType:)(unsigned __int8 *a1)
{
  v12[7] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v3 = static HeartRateConfiguration.valueStore;
  v2 = qword_27C75FF10;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45CA90);
  v12[0] = 0;
  v6 = [v3 setNumber:v4 forKey:v5 error:v12];

  v7 = v12[0];
  if (v6)
  {
    v12[4] = closure #1 in FastSyncHKKeyValueDomain.forceSync();
    v12[5] = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v12[3] = &block_descriptor_29;
    v8 = _Block_copy(v12);
    v9 = v7;
    [v2 forceNanoSyncWithOptions:0 completion:v8];

    _Block_release(v8);
  }

  else
  {
    v10 = v12[0];
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t static MusicLibraryPlaylistsModel.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

void key path getter for MusicLibraryPlaylistsModel.loadingLibraryPlaylists : MusicLibraryPlaylistsModel(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for MusicLibraryPlaylistsModel.loadingLibraryPlaylists : MusicLibraryPlaylistsModel(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t MusicLibraryPlaylistsModel.loadingLibraryPlaylists.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double MusicLibraryPlaylistsModel.loadingLibraryPlaylists.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*MusicLibraryPlaylistsModel.loadingLibraryPlaylists.modify(uint64_t *a1))()
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
  return MusicLibraryPlaylistsModel.loadingLibraryPlaylists.modify;
}

uint64_t key path setter for MusicLibraryPlaylistsModel.$loadingLibraryPlaylists : MusicLibraryPlaylistsModel(char *a1, uint64_t *a2)
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

uint64_t MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.setter(uint64_t a1)
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

uint64_t (*MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__loadingLibraryPlaylists;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.modify;
}

void key path getter for MusicLibraryPlaylistsModel.libraryPlaylistSuggestions : MusicLibraryPlaylistsModel(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for MusicLibraryPlaylistsModel.libraryPlaylistSuggestions : MusicLibraryPlaylistsModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.modify(uint64_t *a1))()
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
  return MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.modify;
}

void MusicLibraryPlaylistsModel.loadingLibraryPlaylists.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for MusicLibraryPlaylistsModel.$loadingLibraryPlaylists : MusicLibraryPlaylistsModel(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MusicLibraryPlaylistsModel.$libraryPlaylistSuggestions : MusicLibraryPlaylistsModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MusicLibraryPlaylistsModel.$libraryPlaylistSuggestions.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MusicLibraryPlaylistsModel.$libraryPlaylistSuggestions.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__libraryPlaylistSuggestions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MusicLibraryPlaylistsModel.$libraryPlaylistSuggestions.modify;
}

void MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.modify(uint64_t a1, char a2)
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

Swift::Void __swiftcall MusicLibraryPlaylistsModel.loadLibrarySuggestions()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v70 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = specialized Collection.prefix(_:)(8, v11, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel_loadCallCount;
  v22 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel_loadCallCount);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v72 = v14;
    *(v1 + OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel_loadCallCount) = v24;
    if (one-time initialization token for mediaPlayback == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static WOLog.mediaPlayback);
  swift_retain_n();

  v71 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v73 = v16;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v70 = v5;
    v31 = v30;
    v32 = swift_slowAlloc();
    v75 = v32;
    *v31 = 136315650;

    v33 = MEMORY[0x20F2E6D00](v72, v16, v18, v20);
    v34 = v18;
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, &v75);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2048;
    v38 = *(v1 + v21);

    *(v31 + 14) = v38;

    *(v31 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v74);

    v18 = v34;

    v39 = *(v74 + 16);

    *(v31 + 24) = v39;

    _os_log_impl(&dword_20AEA4000, v27, v28, "[%s] LIBRARY_STATE: loadLibrarySuggestions called (attempt #%ld) - current suggestions count: %ld", v31, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x20F2E9420](v32, -1, -1);
    v40 = v31;
    v5 = v70;
    MEMORY[0x20F2E9420](v40, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v75);

  v41 = v75[2];

  if (v41)
  {
    swift_retain_n();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v73;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v75 = v47;
      *v46 = 136315394;
      v48 = MEMORY[0x20F2E6D00](v72, v45, v18, v20);
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v75);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v74);

      v52 = *(v74 + 16);

      *(v46 + 14) = v52;

      _os_log_impl(&dword_20AEA4000, v42, v43, "[%s] LIBRARY_STATE: loadLibrarySuggestions called but suggestions already exist (%ld) - skipping", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x20F2E9420](v47, -1, -1);
      MEMORY[0x20F2E9420](v46, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v75 = v56;
      *v55 = 136315138;

      v57 = v72;
      v58 = MEMORY[0x20F2E6D00](v72, v73, v18, v20);
      v71 = v18;
      v59 = v58;
      v61 = v60;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v75);

      *(v55 + 4) = v62;
      v18 = v71;
      v63 = v54;
      v64 = v57;
      _os_log_impl(&dword_20AEA4000, v53, v63, "[%s] LIBRARY_STATE: loadLibrarySuggestions starting - setting loadingLibraryPlaylists = true", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      v65 = v73;
      MEMORY[0x20F2E9420](v56, -1, -1);
      MEMORY[0x20F2E9420](v55, -1, -1);
    }

    else
    {

      v64 = v72;
      v65 = v73;
    }

    v66 = type metadata accessor for TaskPriority();
    (*(*(v66 - 8) + 56))(v5, 1, 1, v66);
    type metadata accessor for MainActor();

    v67 = static MainActor.shared.getter();
    v68 = swift_allocObject();
    v69 = MEMORY[0x277D85700];
    v68[2] = v67;
    v68[3] = v69;
    v68[4] = v64;
    v68[5] = v65;
    v68[6] = v18;
    v68[7] = v20;
    v68[8] = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions(), v68);
  }
}

uint64_t closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A15LibraryResponseVyAA8PlaylistVGMd, &_s8MusicKit0A15LibraryResponseVyAA8PlaylistVGMR);
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryRequestVyAA8PlaylistVGMd, &_s8MusicKit0A14LibraryRequestVyAA8PlaylistVGMR);
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[21] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[22] = v13;
  v8[23] = v12;

  return MEMORY[0x2822009F8](closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions(), v13, v12);
}

uint64_t closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()()
{
  v18 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 232) = 1;

  static Published.subscript.setter();
  type metadata accessor for Playlist();
  MusicLibraryRequest.init()();
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 192) = __swift_project_value_buffer(v1, static WOLog.mediaPlayback);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = MEMORY[0x20F2E6D00](v7, v6, v5, v4);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v2, v3, "[%s] LIBRARY_REQUEST: Starting MusicKit library request - requesting playlists", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();
  v14 = *(v0 + 144);
  v15 = *(v0 + 88);

  return MEMORY[0x282124698](v15, v14);
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();
  }

  else
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v21 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  if (v3)
  {
    v8 = v0[6];
    v7 = v0[7];
    v10 = v0[4];
    v9 = v0[5];
    v19 = v0[18];
    v11 = swift_slowAlloc();
    v18 = v4;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x20F2E6D00](v10, v9, v8, v7);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20AEA4000, v1, v2, "[%s] LIBRARY_REQUEST: MusicKit library request - result: error or nil response", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  $defer #1 () in closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(v0[4], v0[5], v0[6], v0[7], v0[8]);

  v16 = v0[1];

  return v16();
}

{
  v54 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  MusicLibraryResponse.items.getter();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 32))(v1, v2, v5);
  v9 = *(v4 + 16);
  v9(v3, v1, v5);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v49 = v11;
    v12 = v0[15];
    v13 = v0[12];
    v47 = v0[13];
    v51 = v9;
    v15 = v0[6];
    v14 = v0[7];
    v17 = v0[4];
    v16 = v0[5];
    v18 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v18 = 136315394;
    v19 = MEMORY[0x20F2E6D00](v17, v16, v15, v14);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v53);

    *(v18 + 4) = v21;
    v9 = v51;
    *(v18 + 12) = 2048;
    lazy protocol witness table accessor for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>, MEMORY[0x277CD7CB8]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v22 = dispatch thunk of Collection.distance(from:to:)();
    v23 = *(v47 + 8);
    v23(v12, v13);
    *(v18 + 14) = v22;
    _os_log_impl(&dword_20AEA4000, v10, v49, "[%s] LIBRARY_REQUEST: MusicKit library request - result: success - found %ld playlists", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x20F2E9420](v46, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  else
  {
    v23 = *(v0[13] + 8);
    v23(v0[15], v0[12]);
  }

  v0[26] = v23;
  v9(v0[14], v0[17], v0[12]);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v28 = v0[13];
  v27 = v0[14];
  v29 = v0[12];
  if (v26)
  {
    v48 = v23;
    v31 = v0[6];
    v30 = v0[7];
    v52 = v25;
    v32 = v0[4];
    v33 = v0[5];
    v34 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v34 = 136315394;
    v35 = MEMORY[0x20F2E6D00](v32, v33, v31, v30);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v53);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    lazy protocol witness table accessor for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>, MEMORY[0x277CD7CC0]);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = v28 + 8;
    v48(v27, v29);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v53);

    *(v34 + 14) = v42;
    _os_log_impl(&dword_20AEA4000, v24, v52, "[%s] Library Playlists Response: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v50, -1, -1);
    MEMORY[0x20F2E9420](v34, -1, -1);
  }

  else
  {

    v41 = v28 + 8;
    v23(v27, v29);
  }

  v0[27] = v41;
  v43 = swift_task_alloc();
  v0[28] = v43;
  *v43 = v0;
  v43[1] = closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();
  v44 = v0[17];

  return MusicLibraryPlaylistsModel.createMSSuggestions(from:)(v44);
}

{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions(), v3, v2);
}

{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[12];

  v1(v5, v6);
  (*(v4 + 8))(v2, v3);
  $defer #1 () in closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(v0[4], v0[5], v0[6], v0[7], v0[8]);

  v7 = v0[1];

  return v7();
}

double $defer #1 () in closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.mediaPlayback);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x20F2E6D00](a1, a2, a3, a4);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_20AEA4000, v10, v11, "[%s] LIBRARY_STATE: loadLibrarySuggestions completing - setting loadingLibraryPlaylists = false", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = 0;

  static Published.subscript.setter();
  return result;
}

uint64_t MusicLibraryPlaylistsModel.createMSSuggestions(from:)(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = type metadata accessor for Playlist();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMR);
  v2[50] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[51] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[52] = v5;
  v2[53] = v4;

  return MEMORY[0x2822009F8](MusicLibraryPlaylistsModel.createMSSuggestions(from:), v5, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  *(*v1 + 464) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 424);
  v7 = *(v2 + 416);

  return MEMORY[0x2822009F8](MusicLibraryPlaylistsModel.createMSSuggestions(from:), v7, v6);
}

{
  v2 = *v1;
  *(*v1 + 552) = a1;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);

  return MEMORY[0x2822009F8](MusicLibraryPlaylistsModel.createMSSuggestions(from:), v4, v3);
}

uint64_t MusicLibraryPlaylistsModel.createMSSuggestions(from:)()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 352);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR);
  *(v0 + 432) = v4;
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = *(v2 + 36);
  *(v0 + 560) = v5;
  *(v0 + 440) = lazy protocol witness table accessor for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>, MEMORY[0x277CD7CB8]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v1 + v5) == *(v0 + 336))
  {
    v6 = *(v0 + 400);

    outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v6, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMR);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 344) = MEMORY[0x277D84F90];

    static Published.subscript.setter();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 448) = MEMORY[0x277D84F90];
    v10 = *(v0 + 376);
    v9 = *(v0 + 384);
    v11 = dispatch thunk of Collection.subscript.read();
    (*(v10 + 16))(v9);
    v11(v0 + 304, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v12 = swift_task_alloc();
    *(v0 + 456) = v12;
    *v12 = v0;
    v12[1] = MusicLibraryPlaylistsModel.createMSSuggestions(from:);
    v13 = *(v0 + 384);

    return specialized static LibraryPlaylistHelper.playbackIntent(from:)(v13);
  }
}

{
  v1 = v0[58];
  v2 = objc_allocWithZone(MEMORY[0x277D27FB8]);
  v3 = v1;
  v4 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
  v5 = [v2 initWithIntent:v3 bundleID:v4 suggestionSource:0];
  v0[59] = v5;

  v6 = [v5 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v0[60] = v8;
  v0[61] = v10;
  v11 = [v5 bundleID];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v0[62] = v12;
  v0[63] = v14;
  v15 = [v5 title];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v0[65] = v19;
  v0[64] = v17;
  v20 = [v5 artist];
  if (v20 && (v21 = v20, v22 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v24 = v23, v21, v24))
  {
    if (v12 == 0xD000000000000012 && 0x800000020B45A5C0 == v14)
    {
      v25 = v5;
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v31 = v5;
      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v12 == 0x6C7070612E6D6F63 && v14 == 0xEF636973754D2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v26 = v5;
    if ([v26 suggestionSource] == 1)
    {
      v27 = [v26 editorialTags];
      v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = *(v28 + 16);

      if (v29)
      {
        v22 = 0x754D20656C707041;
      }

      else
      {
        v22 = 0;
      }

      if (v29)
      {
        v24 = 0xEB00000000636973;
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v32 = v5;
  }

  v22 = 0;
  v24 = 0;
LABEL_26:
  v0[67] = v24;
  v0[66] = v22;
  v33 = swift_task_alloc();
  v0[68] = v33;
  *v33 = v0;
  v33[1] = MusicLibraryPlaylistsModel.createMSSuggestions(from:);

  return MSSuggestion.unifiedArtworkImage()();
}

{
  *(v0 + 16) = *(v0 + 480);
  v2 = *(v0 + 512);
  v1 = *(v0 + 520);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 472);
  *(v0 + 32) = *(v0 + 552);
  *(v0 + 40) = v4;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = *(v0 + 528);
  *(v0 + 88) = v5;
  *(v0 + 96) = closure #1 in MusicLibraryPlaylistsModel.createMSSuggestions(from:);
  *(v0 + 104) = 0;
  outlined init with copy of WorkoutMediaSuggestion(v0 + 16, v0 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 448);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, *(v0 + 448));
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  v31 = *(v0 + 552);
  v32 = *(v0 + 512);
  v30 = *(v0 + 504);
  v11 = *(v0 + 496);
  v12 = *(v0 + 464);
  v13 = *(v0 + 472);
  v34 = *(v0 + 560);
  v33 = *(v0 + 520);
  v14 = *(v0 + 400);
  v15 = &v7[96 * v9];
  v28 = *(v0 + 528);
  v29 = *(v0 + 480);

  *(v7 + 2) = v10;
  v16 = *(v0 + 32);
  *(v15 + 2) = *(v0 + 16);
  *(v15 + 3) = v16;
  v17 = *(v0 + 48);
  v18 = *(v0 + 64);
  v19 = *(v0 + 96);
  *(v15 + 6) = *(v0 + 80);
  *(v15 + 7) = v19;
  *(v15 + 4) = v17;
  *(v15 + 5) = v18;
  *(v0 + 208) = v29;
  *(v0 + 224) = v31;
  *(v0 + 232) = v11;
  *(v0 + 240) = v30;
  *(v0 + 248) = v32;
  *(v0 + 256) = v33;
  *(v0 + 264) = v28;
  *(v0 + 280) = v13;
  *(v0 + 288) = closure #1 in MusicLibraryPlaylistsModel.createMSSuggestions(from:);
  *(v0 + 296) = 0;
  outlined destroy of WorkoutMediaSuggestion(v0 + 208);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v14 + v34) == *(v0 + 336))
  {
    v20 = *(v0 + 400);

    outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v20, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMR);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 344) = v7;

    static Published.subscript.setter();

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    *(v0 + 448) = v7;
    v24 = *(v0 + 376);
    v23 = *(v0 + 384);
    v25 = dispatch thunk of Collection.subscript.read();
    (*(v24 + 16))(v23);
    v25(v0 + 304, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v26 = swift_task_alloc();
    *(v0 + 456) = v26;
    *v26 = v0;
    v26[1] = MusicLibraryPlaylistsModel.createMSSuggestions(from:);
    v27 = *(v0 + 384);

    return specialized static LibraryPlaylistHelper.playbackIntent(from:)(v27);
  }
}

uint64_t MusicLibraryPlaylistsModel.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__loadingLibraryPlaylists;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__libraryPlaylistSuggestions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t MusicLibraryPlaylistsModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__loadingLibraryPlaylists;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__libraryPlaylistSuggestions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MusicLibraryPlaylistsModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicLibraryPlaylistsModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();

  return closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for MusicLibraryPlaylistsModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for MusicLibraryPlaylistsModel;
  if (!type metadata singleton initialization cache for MusicLibraryPlaylistsModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MusicLibraryPlaylistsModel(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[WorkoutMediaSuggestion]>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[WorkoutMediaSuggestion]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[WorkoutMediaSuggestion]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A15MediaSuggestionVGMd, &_sSay11WorkoutCore0A15MediaSuggestionVGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[WorkoutMediaSuggestion]>);
    }
  }
}

uint64_t specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMR);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for Artwork();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:), 0, 0);
}

uint64_t specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:)()
{
  v26 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  outlined init with copy of Artwork?(v0[6], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v0[11], &_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);

    v4 = v0[1];

    return v4(0, 0xF000000000000000);
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v0[15] = __swift_project_value_buffer(v6, static WOLog.mediaPlayback);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[7];
      v9 = v0[8];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v25);
      _os_log_impl(&dword_20AEA4000, v7, v8, "[%s] NETWORK_START: MusicKit artwork loading", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v13 = v0[9];
    v14 = v0[10];
    static Artwork.CropStyle.squareCenterCrop.getter();
    v15 = type metadata accessor for Artwork.CropStyle();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    v16 = *MEMORY[0x277D2B200];
    v17 = type metadata accessor for Artwork.ImageFormat();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v13, v16, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
    v19 = swift_task_alloc();
    v0[16] = v19;
    *v19 = v0;
    v19[1] = specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:);
    v20 = v0[9];
    v21 = v0[10];
    v22.n128_u64[0] = 0x4046800000000000;
    v23.n128_u64[0] = 0.5;
    v24.n128_u64[0] = 0x4046800000000000;

    return MEMORY[0x2821E8090](v21, v20, 0, 0, v22, v24, v23);
  }
}

{
  v41 = v0;
  v1 = UIImagePNGRepresentation(*(v0 + 136));
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v40);
      _os_log_impl(&dword_20AEA4000, v6, v7, "[%s] NETWORK_END: MusicKit artwork loading - result: success", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v12 = *(v0 + 136);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 136);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v16;
      *v18 = v16;
      v19 = v16;
      _os_log_impl(&dword_20AEA4000, v13, v14, "Loaded artwork for suggestion: %@", v17, 0xCu);
      outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
      v20 = *(v0 + 136);
    }

    else
    {
      v20 = v13;
      v13 = *(v0 + 136);
    }

    v36 = *(v0 + 104);
    v35 = *(v0 + 112);
    v37 = *(v0 + 96);

    (*(v36 + 8))(v35, v37);
  }

  else
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = *(v0 + 56);
      v23 = *(v0 + 64);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v40);
      _os_log_impl(&dword_20AEA4000, v21, v22, "[%s] NETWORK_END: MusicKit artwork loading - result: png_data_failure", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 136);
    v32 = *(v0 + 104);
    v31 = *(v0 + 112);
    v33 = *(v0 + 96);
    if (v29)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20AEA4000, v27, v28, "Failed to get png image data.", v34, 2u);
      MEMORY[0x20F2E9420](v34, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v31, v33);
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v38 = *(v0 + 8);

  return v38(v3, v5);
}

{
  v22 = v0;
  v1 = *(v0 + 144);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 104);
    v20 = *(v0 + 112);
    v7 = *(v0 + 96);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v21);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[%s] NETWORK_END: MusicKit artwork loading - result: error - %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);

    (*(v6 + 8))(v20, v7);
  }

  else
  {
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 96);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18(0, 0xF000000000000000);
}

uint64_t specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v5, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMR);
  outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v4, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR);
  if (v1)
  {
    v6 = specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:);
  }

  else
  {
    v6 = specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t specialized static LibraryPlaylistHelper.playbackIntent(from:)(uint64_t a1)
{
  v1[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for MusicSiriRepresentation();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static LibraryPlaylistHelper.playbackIntent(from:), 0, 0);
}

uint64_t specialized static LibraryPlaylistHelper.playbackIntent(from:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  Playlist.siriRepresentation.getter();
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = specialized Collection.prefix(_:)(8, v4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  MusicSiriRepresentation.artwork.getter();
  v14 = MEMORY[0x20F2E6D00](v7, v9, v11, v13);
  v16 = v15;

  v0[13] = v16;
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = specialized static LibraryPlaylistHelper.playbackIntent(from:);
  v18 = v0[6];

  return specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:)(v18, v14, v16);
}

{
  v1 = v0[15];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0[3];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v2 = [objc_opt_self() imageWithImageData_];

    outlined consume of Data?(v3, v1);
  }

  v5 = MusicSiriRepresentation.id.getter();
  v7 = v6;
  v8 = MusicSiriRepresentation.title.getter();
  v10 = v9;
  v11 = v2;
  v12 = MusicSiriRepresentation.authorName.getter();
  v14 = v13;
  v15 = MEMORY[0x20F2E6C00](v5, v7);

  v16 = MEMORY[0x20F2E6C00](v8, v10);

  if (v14)
  {
    v17 = MEMORY[0x20F2E6C00](v12, v14);
  }

  else
  {
    v17 = 0;
  }

  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[10];
  *(&v28 + 1) = v0[6];
  v21 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v15 title:v16 type:5 artwork:v11 artist:v17];

  type metadata accessor for INPlayMediaIntent();
  v22 = v21;
  v31.value.super.isa = FIUIMusicIsPlaybackModeShuffle();
  v32.is_nil = 0;
  v30.value._rawValue = 0;
  v30.is_nil = v21;
  v31.is_nil = 0;
  v24 = INPlayMediaIntent.init(mediaItems:mediaContainer:playShuffled:playbackRepeatMode:resumePlayback:playbackQueueLocation:playbackSpeed:mediaSearch:)(v23, v30, v31, 2, INPlaybackRepeatModeUnknown, 0, INPlaybackQueueLocationNow, v32, v28);
  v25 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
  [(INPlayMediaIntent *)v24 _setLaunchId:v25];

  (*(v18 + 8))(v19, v20);

  v26 = v0[1];

  return v26(v24);
}

uint64_t specialized static LibraryPlaylistHelper.playbackIntent(from:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[6];
  v4[15] = a2;

  outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v5, &_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);

  return MEMORY[0x2822009F8](specialized static LibraryPlaylistHelper.playbackIntent(from:), 0, 0);
}

unint64_t type metadata accessor for INPlayMediaIntent()
{
  result = lazy cache variable for type metadata for INPlayMediaIntent;
  if (!lazy cache variable for type metadata for INPlayMediaIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPlayMediaIntent);
  }

  return result;
}