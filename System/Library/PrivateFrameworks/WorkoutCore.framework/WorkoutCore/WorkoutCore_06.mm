uint64_t specialized static HeartRateTargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = 0xE900000000000063;
  v5 = 0x6974616D6F747561;
  if (*(a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v6 = 0xE600000000000000;
      v7 = 0x6D6F74737563;
      if (!*(a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0xE300000000000000;
      v7 = 6710895;
      if (!*(a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = 0x6974616D6F747561;
    v6 = 0xE900000000000063;
    if (!*(a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
    {
LABEL_10:
      if (v7 != v5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  if (*(a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
  {
    v4 = 0xE600000000000000;
    v5 = 0x6D6F74737563;
    goto LABEL_10;
  }

  v4 = 0xE300000000000000;
  if (v7 != 6710895)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v6 == v4)
  {

    goto LABEL_16;
  }

LABEL_15:
  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v9 = a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  swift_beginAccess();
  if ((v12 & 1) == 0)
  {
    if ((*(v13 + 16) & 1) == 0 && v10 == *v13 && v11 == *(v13 + 8))
    {
      goto LABEL_26;
    }

    return 0;
  }

  if ((*(v13 + 16) & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v16 = a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  swift_beginAccess();
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  v18 = a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  swift_beginAccess();
  result = *(v18 + 8);
  if ((v16 & 1) == 0)
  {
    return (v17 == *v18) & ~result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateTargetZone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateTargetZone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t Int.localizedString.getter(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v10._object = 0x800000020B456470;
  v3._countAndFlagsBits = 1684827173;
  v3._object = 0xE400000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D83B88];
  *(v5 + 16) = xmmword_20B423A90;
  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  v8 = static String.localizedStringWithFormat(_:_:)();

  return v8;
}

void Apple_Workout_Core_MultisportTransitionState.decoded.getter(_BYTE *a1@<X8>)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZonesAlertTargetZone.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZonesAlertTargetZone.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PowerZonesAlertTargetZone.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance PowerZonesAlertTargetZone.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertTargetZone.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertTargetZone.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t key path getter for PowerZonesAlertTargetZone.type : PowerZonesAlertTargetZone@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return outlined copy of PowerZonesAlertZoneType(v4, v5, v6);
}

uint64_t key path setter for PowerZonesAlertTargetZone.type : PowerZonesAlertTargetZone(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v8 = *(v4 + 16);
  *(v4 + 16) = v5;
  outlined copy of PowerZonesAlertZoneType(v2, v3, v5);
  outlined copy of PowerZonesAlertZoneType(v6, v7, v8);
  outlined consume of PowerZonesAlertZoneType(v6, v7, v8);
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = v8;
  PowerZonesAlertTargetZone.type.didset(&v10);
  return outlined consume of PowerZonesAlertZoneType(v6, v7, v8);
}

uint64_t PowerZonesAlertTargetZone.type.didset(__int128 *a1)
{
  v2 = *(a1 + 16);
  v13 = *a1;
  v14 = v2;
  v3 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = v3[16];
  v10 = *v3;
  v11 = v4;
  v12 = v5;
  outlined copy of PowerZonesAlertZoneType(v10, v4, v5);
  v6 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v13, &v10);
  result = outlined consume of PowerZonesAlertZoneType(v10, v11, v12);
  if (!v6 && (v3[16] & 0xC0) == 0x40)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = v1;
    CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v8);
  }

  return result;
}

uint64_t PowerZonesAlertTargetZone.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return outlined copy of PowerZonesAlertZoneType(v4, v5, v6);
}

uint64_t PowerZonesAlertTargetZone.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = v5[16];
  *v5 = v2;
  *(v5 + 1) = v3;
  v5[16] = v4;
  outlined copy of PowerZonesAlertZoneType(v6, v7, v8);
  outlined consume of PowerZonesAlertZoneType(v6, v7, v8);
  v17[0] = v6;
  v17[1] = v7;
  v18 = v8;
  v9 = *(v5 + 1);
  v10 = v5[16];
  v14 = *v5;
  v15 = v9;
  v16 = v10;
  outlined copy of PowerZonesAlertZoneType(v14, v9, v10);
  LOBYTE(v2) = specialized static PowerZonesAlertZoneType.== infix(_:_:)(v17, &v14);
  outlined consume of PowerZonesAlertZoneType(v14, v15, v16);
  if ((v2 & 1) == 0 && (v5[16] & 0xC0) == 0x40)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v12 = v1;
    CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(partial apply for closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously(), v11);
  }

  return outlined consume of PowerZonesAlertZoneType(v6, v7, v8);
}

void (*PowerZonesAlertTargetZone.type.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  outlined copy of PowerZonesAlertZoneType(v7, v8, v9);
  return PowerZonesAlertTargetZone.type.modify;
}

void PowerZonesAlertTargetZone.type.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 48) + *(v3 + 56);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v9 = *v5;
  v8 = *(v5 + 8);
  v10 = *(v5 + 16);
  *v5 = v4;
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  v11 = *(v3 + 48) + *(v3 + 56);
  if (a2)
  {
    outlined copy of PowerZonesAlertZoneType(v4, v6, v7);
    outlined copy of PowerZonesAlertZoneType(v9, v8, v10);
    outlined consume of PowerZonesAlertZoneType(v9, v8, v10);
    v27 = v9;
    v28 = v8;
    v29 = v10;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v30 = *v11;
    v31 = v12;
    v32 = v13;
    outlined copy of PowerZonesAlertZoneType(v30, v12, v13);
    v14 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v27, &v30);
    outlined consume of PowerZonesAlertZoneType(v30, v31, v32);
    if (!v14 && (*(*(v3 + 48) + *(v3 + 56) + 16) & 0xC0) == 0x40)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (one-time initialization token for healthStore != -1)
      {
        swift_once();
      }

      v15 = *(v3 + 48);
      specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      v17 = v15;
      CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v16);
    }

    outlined consume of PowerZonesAlertZoneType(v9, v8, v10);
    v18 = *(v3 + 24);
    v19 = *(v3 + 32);
    v20 = *(v3 + 40);
  }

  else
  {
    outlined copy of PowerZonesAlertZoneType(v9, v8, v10);
    outlined consume of PowerZonesAlertZoneType(v9, v8, v10);
    v27 = v9;
    v28 = v8;
    v29 = v10;
    v21 = *(v11 + 8);
    v22 = *(v11 + 16);
    v30 = *v11;
    v31 = v21;
    v32 = v22;
    outlined copy of PowerZonesAlertZoneType(v30, v21, v22);
    v23 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v27, &v30);
    outlined consume of PowerZonesAlertZoneType(v30, v31, v32);
    if (!v23 && (*(*(v3 + 48) + *(v3 + 56) + 16) & 0xC0) == 0x40)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (one-time initialization token for healthStore != -1)
      {
        swift_once();
      }

      v24 = *(v3 + 48);
      specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      v26 = v24;
      CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v25);
    }

    v18 = v9;
    v19 = v8;
    v20 = v10;
  }

  outlined consume of PowerZonesAlertZoneType(v18, v19, v20);

  free(v3);
}

uint64_t key path getter for PowerZonesAlertTargetZone.defaultZonesDidLoad : PowerZonesAlertTargetZone@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIeg_ytIegr_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AEC7080(v4, v5);
}

uint64_t key path setter for PowerZonesAlertTargetZone.defaultZonesDidLoad : PowerZonesAlertTargetZone(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20AEC7080(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t PowerZonesAlertTargetZone.defaultZonesDidLoad.getter()
{
  v1 = (v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v2 = *v1;
  sub_20AEC7080(*v1, v1[1]);
  return v2;
}

uint64_t PowerZonesAlertTargetZone.defaultZonesDidLoad.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

uint64_t PowerZonesAlertTargetZone.applicableRange.getter()
{
  v1 = v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (!v5)
    {
      return result;
    }

    if (!v3)
    {
      return 0;
    }

    v6 = *v1;
    if (v3 >> 62)
    {
      type metadata accessor for Zone();

      v7 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for Zone();
      v7 = v3;
    }

    v8 = specialized static CyclingPowerZonesConfigurationEditor.hasAllEmptyZones(_:)(v7);

    if (v8)
    {
      outlined consume of PowerZonesAlertZoneType(v6, v3, v4);
      return 0;
    }

    result = v6;
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x20F2E7A20](v6, v3);
      v9 = *(result + 32);
      if (v9)
      {
LABEL_17:
        v10 = *(result + 16);
        goto LABEL_21;
      }
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v9 = *(result + 32);
      if (v9)
      {
        goto LABEL_17;
      }
    }

    v10 = 0.0;
LABEL_21:
    v11 = *(result + 40);
    v12 = __OFSUB__(v11, 1);
    v13 = v11 - 1;
    if (!v12)
    {
      if (v9 == v13)
      {
        v14 = INFINITY;
      }

      else
      {
        v14 = *(result + 24);
      }

      if (v10 <= v14)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F2E7A20](v6, v3);
        }

        else
        {
          v15 = *(v3 + 8 * v6 + 32);
        }

        result = outlined consume of PowerZonesAlertZoneType(v6, v3, v4);
        v16 = *(v15 + 32);
        if (v16)
        {
          v17 = *(v15 + 16);
        }

        else
        {
          v17 = 0.0;
        }

        v18 = *(v15 + 40);
        v12 = __OFSUB__(v18, 1);
        v19 = v18 - 1;
        if (!v12)
        {
          if (v16 == v19)
          {
            v20 = INFINITY;
          }

          else
          {
            v20 = *(v15 + 24);
          }

          if (v17 <= v20 && v10 <= v20)
          {
            return *&v10;
          }

          goto LABEL_44;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v5 != 2)
  {
    return 0;
  }

  return result;
}

uint64_t *PowerZonesAlertTargetZone.init(type:)(uint64_t *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  v15 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v16 = v12;
  *(v16 + 1) = v13;
  v16[16] = v14;
  outlined copy of PowerZonesAlertZoneType(v12, v13, v14);
  v17 = type metadata accessor for PowerZonesAlertTargetZone();
  v26.receiver = v1;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, sel_init);
  if ((v14 & 0xC0) == 0x40 && !v13)
  {
    type metadata accessor for OS_dispatch_queue();
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in PowerZonesAlertTargetZone.init(type:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_2;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v11, v6, v22);
    _Block_release(v22);

    (*(v24 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    outlined consume of PowerZonesAlertZoneType(v12, v13, v14);
  }

  return v18;
}

void *closure #1 in PowerZonesAlertTargetZone.init(type:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = v2;
    CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v3);
  }

  return result;
}

Swift::Void __swiftcall PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v1);
}

uint64_t closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_49;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void closure #1 in closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    PowerZonesAlertTargetZone._mainThread_handleConfigurationLoad(_:)(a2);
  }
}

uint64_t PowerZonesAlertTargetZone._mainThread_handleConfigurationLoad(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v35[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v11 = v6 + 8;
  v12(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  result = swift_beginAccess();
  if ((*(v5 + 16) & 0xC0) != 0x40)
  {
    return result;
  }

  v2 = *v5;
  v14 = CyclingPowerZonesConfiguration.zones.getter();
  if (v14 >> 62)
  {
LABEL_28:
    v33 = __CocoaSet.count.getter();

    if (!v33)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_5:
  v16 = CyclingPowerZonesConfiguration.zones.getter();
  if (v16 >> 62)
  {
    v23 = v16;
    v17 = __CocoaSet.count.getter();

    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 0)
  {
    goto LABEL_17;
  }

  if (v2 >= v17)
  {
    CyclingPowerZonesConfiguration.zones.getter();

    v18 = CyclingPowerZonesConfiguration.zones.getter();
    v19 = v18 >> 62 ? __CocoaSet.count.getter() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2 >= v19)
    {
      v20 = CyclingPowerZonesConfiguration.zones.getter();
      v21 = v20 >> 62 ? __CocoaSet.count.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v2 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        __break(1u);
LABEL_17:
        CyclingPowerZonesConfiguration.zones.getter();

        CyclingPowerZonesConfiguration.zones.getter();

        v2 = 0;
      }
    }
  }

LABEL_18:
  v22 = CyclingPowerZonesConfiguration.zones.getter();
  a1 = *v5;
  v23 = *(v5 + 8);
  v11 = *(v5 + 16);
  *v5 = v2;
  *(v5 + 8) = v22;
  *(v5 + 16) = 64;
  outlined copy of PowerZonesAlertZoneType(a1, v23, v11);
  outlined consume of PowerZonesAlertZoneType(a1, v23, v11);
  v35[0] = a1;
  v35[1] = v23;
  v36 = v11;
  v24 = *(v5 + 8);
  v25 = *(v5 + 16);
  v37 = *v5;
  v38 = v24;
  v39 = v25;
  outlined copy of PowerZonesAlertZoneType(v37, v24, v25);
  v26 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(v35, &v37);
  outlined consume of PowerZonesAlertZoneType(v37, v38, v39);
  if (!v26 && (*(v5 + 16) & 0xC0) == 0x40)
  {
    if (one-time initialization token for shared == -1)
    {
LABEL_21:
      if (one-time initialization token for healthStore != -1)
      {
        swift_once();
      }

      specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
      v27 = swift_allocObject();
      *(v27 + 16) = v3;
      v28 = v3;
      CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v27);

      goto LABEL_24;
    }

LABEL_32:
    swift_once();
    goto LABEL_21;
  }

LABEL_24:
  outlined consume of PowerZonesAlertZoneType(a1, v23, v11);
  v29 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  result = swift_beginAccess();
  v30 = *v29;
  if (*v29)
  {
    v31 = *(v29 + 1);

    v30(v32);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v30, v31);
  }

  return result;
}

char *PowerZonesAlertTargetZone.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore25PowerZonesAlertTargetZoneC10CodingKeys33_AEC41C644FB5AF931BECF82E7830C478LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore25PowerZonesAlertTargetZoneC10CodingKeys33_AEC41C644FB5AF931BECF82E7830C478LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  v10 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*v10, v10[1]);
    type metadata accessor for PowerZonesAlertTargetZone();
    swift_deallocPartialClassInstance();
  }

  else
  {
    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v22;
    v14 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    *v14 = v21;
    v14[16] = v13;
    v15 = type metadata accessor for PowerZonesAlertTargetZone();
    v23.receiver = v3;
    v23.super_class = v15;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    v16 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    swift_beginAccess();
    if ((v16[16] & 0xC0) == 0x40)
    {
      v17 = one-time initialization token for shared;
      v18 = v3;
      if (v17 != -1)
      {
        swift_once();
      }

      if (one-time initialization token for healthStore != -1)
      {
        swift_once();
      }

      specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      v20 = v18;
      CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v19);
    }

    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return v3;
}

uint64_t PowerZonesAlertTargetZone.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore25PowerZonesAlertTargetZoneC10CodingKeys33_AEC41C644FB5AF931BECF82E7830C478LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore25PowerZonesAlertTargetZoneC10CodingKeys33_AEC41C644FB5AF931BECF82E7830C478LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v13 = *v9;
  v14 = v10;
  v15 = v11;
  outlined copy of PowerZonesAlertZoneType(v13, v10, v11);
  lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of PowerZonesAlertZoneType(v13, v14, v15);
  return (*(v5 + 8))(v8, v4);
}

WorkoutCore::TargetZone::State __swiftcall PowerZonesAlertTargetZone.state(currentValue:)(Swift::Double currentValue)
{
  v3 = v1;
  v4 = COERCE_DOUBLE(PowerZonesAlertTargetZone.applicableRange.getter());
  if (v4 > currentValue)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v5 > currentValue)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3;
  }

  if (v6)
  {
    v8 = 0;
  }

  *v3 = v8;
  return LOBYTE(v4);
}

id PowerZonesAlertTargetZone.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PowerZonesAlertTargetZone.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PowerZonesAlertTargetZone();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance PowerZonesAlertTargetZone@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
  result = PowerZonesAlertTargetZone.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static PowerZonesAlertTargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 16);
  v13 = v4;
  v14 = v5;
  v15 = v3;
  v6 = a2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  LOBYTE(v6) = *(v6 + 16);
  v10 = v7;
  v11 = v8;
  v12 = v6;
  outlined copy of PowerZonesAlertZoneType(v4, v5, v3);
  outlined copy of PowerZonesAlertZoneType(v7, v8, v6);
  LOBYTE(v6) = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v13, &v10);
  outlined consume of PowerZonesAlertZoneType(v10, v11, v12);
  outlined consume of PowerZonesAlertZoneType(v13, v14, v15);
  return v6 & 1;
}

BOOL PowerZonesAlertTargetZone.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v18);
  if (!v19)
  {
    outlined destroy of Any?(v18);
    return 0;
  }

  type metadata accessor for PowerZonesAlertTargetZone();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v14;
  v3 = v1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 16);
  v15 = v4;
  v16 = v5;
  v17 = v3;
  v6 = &v14[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v6) = v6[16];
  v11 = v7;
  v12 = v8;
  v13 = v6;
  outlined copy of PowerZonesAlertZoneType(v4, v5, v3);
  outlined copy of PowerZonesAlertZoneType(v7, v8, v6);
  v9 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v15, &v11);

  outlined consume of PowerZonesAlertZoneType(v11, v12, v13);
  outlined consume of PowerZonesAlertZoneType(v15, v16, v17);
  return v9;
}

unint64_t PowerZonesAlertTargetZone.description.getter()
{
  v1 = v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  outlined copy of PowerZonesAlertZoneType(*v1, v5, v6);
  v2 = PowerZonesAlertZoneType.description.getter();
  outlined consume of PowerZonesAlertZoneType(v4, v5, v6);
  return v2;
}

uint64_t static PowerZonesAlertTargetZone.canonical()(uint64_t a1)
{
  v1 = type metadata accessor for PowerZonesAlertTargetZone();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v2[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v4 = xmmword_20B427B60;
  v4[16] = -123;
  v6.receiver = v2;
  v6.super_class = v1;
  objc_msgSendSuper2(&v6, sel_init);
  return swift_dynamicCastClassUnconditional();
}

uint64_t protocol witness for static Canonical.canonical() in conformance PowerZonesAlertTargetZone@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for PowerZonesAlertTargetZone();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v6 = xmmword_20B427B60;
  v6[16] = -123;
  v8.receiver = v4;
  v8.super_class = v3;
  objc_msgSendSuper2(&v8, sel_init);
  result = swift_dynamicCastClassUnconditional();
  *a2 = result;
  return result;
}

uint64_t PowerZonesAlertTargetZone.targetZoneRepresentation.getter()
{
  v1 = v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  result = 0;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v5 >> 6;
  if (v5 >> 6 > 1)
  {
    if (v6 != 2)
    {
      return result;
    }

    v9 = v5 & 0x3F;
    type metadata accessor for TargetZone();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v3;
    *(v10 + 32) = v4;
    v11 = v10;
    if (v9 <= 3 || v9 <= 5 || v9 == 6)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        result = v11;
        v13 = v3 > 0.0 || v4 > 0.0;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v13 = 0;
    result = v11;
  }

  else
  {
    if (v6)
    {
      return result;
    }

    type metadata accessor for TargetZone();
    v7 = swift_allocObject();
    *(v7 + 16) = LOBYTE(v4);
    *(v7 + 24) = v3;
    *(v7 + 32) = v3;
    if (LOBYTE(v4) > 3u)
    {
      if (LOBYTE(v4) > 5u)
      {
        if (LOBYTE(v4) != 6)
        {
          v15 = v7;

          result = v15;
          v13 = 0;
          goto LABEL_23;
        }

        v8 = v7;
      }

      else
      {
        v8 = v7;
      }
    }

    else
    {
      v8 = v7;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = (v3 > 0.0) & ~v12;
    result = v8;
  }

LABEL_23:
  *(result + 40) = v13;
  return result;
}

uint64_t outlined copy of PowerZonesAlertZoneType(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return result;
}

uint64_t outlined consume of PowerZonesAlertZoneType(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PowerZonesAlertTargetZone.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PowerZonesAlertTargetZone.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t WorkoutConfiguration.isWorkoutExtendedModeEnabled(domainAccessor:)(void *a1)
{
  if (([a1 isWorkoutExtendedModeEnabled] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.core);
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v6))
    {
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "[UltraMode] Not enabled, returning false";
    goto LABEL_13;
  }

  type metadata accessor for GoalWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
LABEL_5:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v6))
    {
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "[UltraMode] WorkoutConfiguration not goal type, returning false";
LABEL_13:
    _os_log_impl(&dword_20AEA4000, v2, v6, v8, v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
LABEL_14:

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter(v66);

  v3 = v66[0];
  v4 = [v66[0] goalTypeIdentifier];

  if (v4)
  {

    goto LABEL_5;
  }

  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if ([*(&v2->isa + v11) isIndoor])
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.core);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20AEA4000, v13, v14, "[UltraMode] Workout is indoor, returning false", v15, 2u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }

    goto LABEL_14;
  }

  v16 = [*(&v2->isa + v11) workoutActivityType];
  v17 = [v16 identifier];

  if (v17 > 0x34 || ((1 << v17) & 0x10002001000000) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static WOLog.core);
    v42 = v2;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65 = v46;
      *v45 = 136315138;
      v47 = [*(&v2->isa + v11) workoutActivityType];
      [v47 identifier];

      v48 = _HKWorkoutActivityNameForActivityType();
      if (v48)
      {
        v49 = v48;
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        v53._object = 0x800000020B456540;
        v53._countAndFlagsBits = 0xD000000000000015;
        if (String.hasPrefix(_:)(v53))
        {
          v54 = String.count.getter();
          v55 = specialized Collection.dropFirst(_:)(v54, v50, v52);
          v57 = v56;
          v59 = v58;
          v61 = v60;

          v50 = MEMORY[0x20F2E6D00](v55, v57, v59, v61);
          v52 = v62;
        }
      }

      else
      {
        v52 = 0x800000020B456520;
        v50 = 0xD000000000000010;
      }

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v65);

      *(v45 + 4) = v64;
      _os_log_impl(&dword_20AEA4000, v43, v44, "[UltraMode] Workout Activity Type (%s) is not supported, returning false", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x20F2E9420](v46, -1, -1);
      MEMORY[0x20F2E9420](v45, -1, -1);
    }

    return 0;
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.core);
  v20 = v2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v65 = v24;
    *v23 = 136315138;
    v25 = [*(&v2->isa + v11) workoutActivityType];
    [v25 identifier];

    v26 = _HKWorkoutActivityNameForActivityType();
    if (v26)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31._object = 0x800000020B456540;
      v31._countAndFlagsBits = 0xD000000000000015;
      if (String.hasPrefix(_:)(v31))
      {
        v32 = String.count.getter();
        v33 = specialized Collection.dropFirst(_:)(v32, v28, v30);
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v28 = MEMORY[0x20F2E6D00](v33, v35, v37, v39);
        v30 = v40;
      }
    }

    else
    {
      v30 = 0x800000020B456520;
      v28 = 0xD000000000000010;
    }

    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v65);

    *(v23 + 4) = v63;
    _os_log_impl(&dword_20AEA4000, v21, v22, "[UltraMode] Workout Activity Type (%s) supported, returning true", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x20F2E9420](v24, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  return 1;
}

uint64_t WorkoutConfiguration.isUltraModeEnabledOnWatch(domainAccessor:)(void *a1)
{
  if ([a1 isPowerSavingModeEnabled])
  {

    return WorkoutConfiguration.isWorkoutExtendedModeEnabled(domainAccessor:)(a1);
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.core);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[UltraMode] Low power mode not configured for workout, returning false", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    return 0;
  }
}

uint64_t specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)()
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.core);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, v1, v2, "[UltraMode] Not supported for hardware, returning false", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  return 0;
}

uint64_t specialized WorkoutConfiguration.trackRunningIsSuspended(domainAccessor:)()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v2 = [*(v0 + v1) supportsTrackRunning];
  if (!v2)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.core);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      v2 = 0;
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[UltraMode] Track running not supported with activity type";
LABEL_11:
    _os_log_impl(&dword_20AEA4000, v4, v5, v7, v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
LABEL_15:

    return v2;
  }

  if (specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)())
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.core);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      v2 = 1;
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[UltraMode] ultra mode enabled, track running is suspended";
    goto LABEL_11;
  }

  return 0;
}

void *key path getter for ZonesAccumulator.elapsedTimes : ZonesAccumulator@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v4;
  return result;
}

uint64_t ZonesAccumulator.elapsedTimes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t ZonesAccumulator.elapsedTimes.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in ZonesAccumulator.elapsedTimes.setter;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v7, v12, v14);
  _Block_release(v14);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in ZonesAccumulator.elapsedTimes.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes) = a2;
}

uint64_t partial apply for closure #1 in ZonesAccumulator.elapsedTimes.setter()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes) = *(v0 + 24);
}

uint64_t (*ZonesAccumulator.elapsedTimes.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  *a1 = a1[1];
  return ZonesAccumulator.elapsedTimes.modify;
}

uint64_t ZonesAccumulator.elapsedTimes.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return ZonesAccumulator.elapsedTimes.setter(*a1);
  }

  ZonesAccumulator.elapsedTimes.setter(v2);
}

uint64_t key path setter for ZonesAccumulator.lastProcessedEntryDate : ZonesAccumulator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  outlined init with copy of Date?(a1, &v7 - v4);
  return ZonesAccumulator.lastProcessedEntryDate.setter(v5);
}

uint64_t closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate;
  swift_beginAccess();
  return outlined init with copy of Date?(a1 + v4, a2);
}

uint64_t partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v3 + v4, a1);
}

uint64_t ZonesAccumulator.lastProcessedEntryDate.setter(uint64_t a1)
{
  v23 = type metadata accessor for DispatchQoS();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
  static DispatchWorkItemFlags.barrier.getter();
  outlined init with copy of Date?(a1, v11);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  outlined init with take of Date?(v11, v18 + v17);
  aBlock[4] = partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.setter;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_7;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v6, v16, v19);
  _Block_release(v19);
  outlined destroy of Date?(a1);
  (*(v3 + 8))(v6, v23);
  (*(v13 + 8))(v16, v12);
}

uint64_t closure #1 in ZonesAccumulator.lastProcessedEntryDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Date?(a2, &v10 - v6);
  v8 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.setter()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in ZonesAccumulator.lastProcessedEntryDate.setter(v2, v3);
}

void (*ZonesAccumulator.lastProcessedEntryDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  MEMORY[0x28223BE20](v4, v5);
  OS_dispatch_queue.sync<A>(execute:)();
  return ZonesAccumulator.lastProcessedEntryDate.modify;
}

void ZonesAccumulator.lastProcessedEntryDate.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of Date?(v3, v2);
    ZonesAccumulator.lastProcessedEntryDate.setter(v2);
    outlined destroy of Date?(v3);
  }

  else
  {
    ZonesAccumulator.lastProcessedEntryDate.setter(v3);
  }

  free(v3);

  free(v2);
}

void *key path getter for ZonesAccumulator.currentZoneIndex : ZonesAccumulator@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t ZonesAccumulator.currentZoneIndex.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t closure #1 in ZonesAccumulator.currentZoneIndex.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex + 8);
  *a2 = *(result + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex);
  *(a2 + 8) = v2;
  return result;
}

void partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t ZonesAccumulator.currentZoneIndex.setter(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2 & 1;
  aBlock[4] = partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.setter;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14;
  v16 = _Block_copy(aBlock);
  v17 = v2;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v9, v14, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.setter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void (*ZonesAccumulator.currentZoneIndex.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v5 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x28223BE20](v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v6 = *(v5 + 24);
  *v5 = *(v5 + 16);
  *(v5 + 8) = v6;
  return ZonesAccumulator.currentZoneIndex.modify;
}

void ZonesAccumulator.currentZoneIndex.modify(uint64_t **a1)
{
  v1 = *a1;
  ZonesAccumulator.currentZoneIndex.setter(**a1, *(*a1 + 8));

  free(v1);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for ZonesAccumulator.activeStartDate : ZonesAccumulator(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  outlined init with copy of Date?(a1, &v15 - v10);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  outlined assign with take of Date?(v11, v12 + v13);
  return swift_endAccess();
}

uint64_t ZonesAccumulator.activeStartDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v2 + v4, a2);
}

uint64_t ZonesAccumulator.activeStartDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t ZonesAccumulator.disabledForSession.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ZonesAccumulator.disabledForSession.setter(char a1)
{
  v3 = a1 & 1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  result = swift_beginAccess();
  v11 = *(v1 + v9);
  *(v1 + v9) = a1;
  if (v11 != v3)
  {
    if (a1)
    {
      return ZonesAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      ZonesAccumulator.startQuery(startDate:)();
      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

uint64_t key path setter for ZonesAccumulator.disabledForSession : ZonesAccumulator(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  v11 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  result = swift_beginAccess();
  v13 = *(v10 + v11);
  *(v10 + v11) = v9;
  if (v9 != v13)
  {
    if (v9)
    {
      return ZonesAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      ZonesAccumulator.startQuery(startDate:)();
      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

void (*ZonesAccumulator.disabledForSession.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Date();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  swift_beginAccess();
  *(v5 + 64) = *(v1 + v9);
  return ZonesAccumulator.disabledForSession.modify;
}

void ZonesAccumulator.disabledForSession.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[3];
  v5 = *(*a1 + 64);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!v5)
    {
LABEL_4:
      v8 = v2[5];
      v7 = v2[6];
      v9 = v2[4];
      Date.init()();
      ZonesAccumulator.startQuery(startDate:)();
      (*(v8 + 8))(v7, v9);
      goto LABEL_8;
    }
  }

  ZonesAccumulator.stopQuery()();
LABEL_8:
  free(v2[6]);

  free(v2);
}

uint64_t ZonesAccumulator.elapsedTimeInZone.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v12)
  {
    return 0;
  }

  v7 = v11;
  static Date.now.getter();
  v8 = ZonesAccumulator.elapsedTime(at:ending:)(v7, v5);
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t ZonesAccumulator.zonesSnapshotString.getter()
{
  v2 = v0;
  v3 = type metadata accessor for Date();
  v56 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v55 - v12;
  v57 = v0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v15 = 0;
  v16 = 1 << *(v60 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v60 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = 0.0;
  if (v18)
  {
    while (1)
    {
      v21 = v15;
LABEL_9:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v20 = v20 + *(*(v60 + 56) + ((v21 << 9) | (8 * v22)));
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v60 + 64 + 8 * v21);
    ++v15;
    if (v18)
    {
      v15 = v21;
      goto LABEL_9;
    }
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(104);
  v62 = v60;
  v63 = v61;
  v23 = MEMORY[0x20F2E6D80](0x5464657370616C65, 0xEE00203A73656D69);
  MEMORY[0x28223BE20](v23, v24);
  *(&v55 - 2) = v0;
  OS_dispatch_queue.sync<A>(execute:)();
  v25 = Dictionary.description.getter();
  v27 = v26;

  MEMORY[0x20F2E6D80](v25, v27);

  MEMORY[0x20F2E6D80](0x203A6C61746F7420, 0xE800000000000000);
  Double.write<A>(to:)();
  v28 = MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B4568B0);
  MEMORY[0x28223BE20](v28, v29);
  *(&v55 - 2) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v30 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v30);

  v31 = MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4568D0);
  MEMORY[0x28223BE20](v31, v32);
  *(&v55 - 2) = v0;
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = v56;
  v14 = *(v56 + 48);
  if (v14(v13, 1, v3))
  {
    outlined destroy of Date?(v13);
    v33 = 0;
    v34 = 0;
    goto LABEL_15;
  }

  v6 = v55;
  (*(v1 + 16))(v55, v13, v3);
  outlined destroy of Date?(v13);
  if (one-time initialization token for logDateFormatter != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v35 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v37 = [v35 stringFromDate_];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v38;

  (*(v1 + 8))(v6, v3);
LABEL_15:
  v60 = v33;
  v61 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v39 = Optional.description.getter();
  v41 = v40;

  MEMORY[0x20F2E6D80](v39, v41);

  MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4568F0);
  v42 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v2[v42], v10);
  if (v14(v10, 1, v3))
  {
    outlined destroy of Date?(v10);
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v46 = v55;
    v45 = v56;
    (*(v56 + 16))(v55, v10, v3);
    outlined destroy of Date?(v10);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v47 = static WOLog.logDateFormatter;
    v48 = Date._bridgeToObjectiveC()().super.isa;
    v49 = [v47 stringFromDate_];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v50;

    (*(v45 + 8))(v46, v3);
  }

  v58 = v43;
  v59 = v44;
  v51 = Optional.description.getter();
  v53 = v52;

  MEMORY[0x20F2E6D80](v51, v53);

  return v62;
}

uint64_t ZonesAccumulator.stateSnapshotString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v57 - v16;
  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  v68 = v66;
  v69 = v67;
  MEMORY[0x20F2E6D80](0x6465737561507369, 0xEA0000000000203ALL);
  if (*(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v18, v19);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B456990);
  v20 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate;
  swift_beginAccess();
  outlined init with copy of Date?(v1 + v20, v17);
  v61 = *(v3 + 48);
  v21 = v61(v17, 1, v2);
  v59 = v6;
  v60 = v3;
  if (v21)
  {
    outlined destroy of Date?(v17);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    (*(v3 + 16))(v6, v17, v2);
    outlined destroy of Date?(v17);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v24 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v26 = [v24 stringFromDate_];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v27;

    (*(v3 + 8))(v6, v2);
  }

  v64 = v22;
  v65 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v28 = Optional.description.getter();
  v30 = v29;

  MEMORY[0x20F2E6D80](v28, v30);

  v31 = MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4568D0);
  MEMORY[0x28223BE20](v31, v32);
  *(&v57 - 2) = v1;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v61(v14, 1, v2))
  {
    outlined destroy of Date?(v14);
    v33 = 0;
    v34 = 0;
    v36 = v59;
    v35 = v60;
  }

  else
  {
    v36 = v59;
    v35 = v60;
    (*(v60 + 16))(v59, v14, v2);
    outlined destroy of Date?(v14);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v37 = static WOLog.logDateFormatter;
    v38 = Date._bridgeToObjectiveC()().super.isa;
    v39 = [v37 stringFromDate_];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v40;

    (*(v35 + 8))(v36, v2);
  }

  v64 = v33;
  v65 = v34;
  v41 = Optional.description.getter();
  v43 = v42;

  MEMORY[0x20F2E6D80](v41, v43);

  MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4568F0);
  v44 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
  swift_beginAccess();
  v45 = v1 + v44;
  v46 = v58;
  outlined init with copy of Date?(v45, v58);
  if (v61(v46, 1, v2))
  {
    outlined destroy of Date?(v46);
    v47 = 0;
    v48 = 0;
  }

  else
  {
    (*(v35 + 16))(v36, v46, v2);
    outlined destroy of Date?(v46);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v49 = static WOLog.logDateFormatter;
    v50 = Date._bridgeToObjectiveC()().super.isa;
    v51 = [v49 stringFromDate_];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v52;

    (*(v35 + 8))(v36, v2);
  }

  v62 = v47;
  v63 = v48;
  v53 = Optional.description.getter();
  v55 = v54;

  MEMORY[0x20F2E6D80](v53, v55);

  return v68;
}

void ZonesAccumulator.startQuery(startDate:)()
{
  swift_getObjectType();
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.zones);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &aBlock);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v34 = (*((*v6 & *v2) + 0x200))(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore12ZoneProtocol_pGSgMd, &_sSay11WorkoutCore12ZoneProtocol_pGSgMR);
    v13 = Optional.description.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &aBlock);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_20AEA4000, v3, v4, "%s running with zones: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  (*((*v6 & *v2) + 0x208))();
  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier);
  v19 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  if (v19)
  {
    v20 = v19;
    v21 = [v2 builder];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = objc_allocWithZone(MEMORY[0x277CCDC10]);
    v32 = partial apply for closure #1 in ZonesAccumulator.startQuery(startDate:);
    v33 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutBuilderSampleQuery, @guaranteed [HKWorkoutBuilderQuantity]?, @guaranteed Error?) -> ();
    v31 = &block_descriptor_112;
    v24 = _Block_copy(&aBlock);

    v25 = [v23 initWithQuantityType:v20 workoutBuilder:v21 quantitiesAddedHandler:v24];

    _Block_release(v24);

    [*(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore) executeQuery_];

    v26 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query);
    *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query) = v25;
  }

  else
  {
    aBlock = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    v27 = _typeName(_:qualified:)();
    MEMORY[0x20F2E6D80](v27);

    MEMORY[0x20F2E6D80](0xD00000000000002DLL, 0x800000020B4569B0);
    v34 = v18;
    type metadata accessor for HKQuantityTypeIdentifier(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, aBlock, v29, "WorkoutCore/ZonesAccumulator.swift", 34, 2, 174, 0);
    __break(1u);
  }
}

uint64_t closure #1 in ZonesAccumulator.startQuery(startDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v14;
  aBlock[4] = partial apply for closure #1 in closure #1 in ZonesAccumulator.startQuery(startDate:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_119;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v17);
  _Block_release(v17);

  (*(v21 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v20);
}

void closure #1 in closure #1 in ZonesAccumulator.startQuery(startDate:)(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_beginAccess();

      specialized Array.append<A>(contentsOf:)(v4);
      swift_endAccess();
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      ZonesAccumulator.processIfReady()();
    }
  }
}

uint64_t ZonesAccumulator.stopQuery()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query;
  v13 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query);
  if (v13)
  {
    v14 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore);
    v15 = v13;
    [v14 stopQuery_];
    v16 = *(v1 + v12);
    *(v1 + v12) = 0;

    MEMORY[0x28223BE20](v17, v18);
    *(&v28 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    if ((v31 & 1) == 0)
    {
      v29 = v15;
      v19 = v30;
      static Date.now.getter();
      v28 = ZonesAccumulator.elapsedTime(at:ending:)(v19, v11);
      v21 = v20;
      v22 = (*(v7 + 8))(v11, v6);
      MEMORY[0x28223BE20](v22, v23);
      *(&v28 - 2) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
      OS_dispatch_queue.sync<A>(execute:)();
      v24 = v19;
      v15 = v29;
      specialized Dictionary.subscript.setter(v28, v21 & 1, v24);
      ZonesAccumulator.elapsedTimes.setter(v30);
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    v25 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate;
    swift_beginAccess();
    outlined assign with take of Date?(v5, v1 + v25);
    v26 = swift_endAccess();
    MEMORY[0x28223BE20](v26, v27);
    *(&v28 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    (*((*MEMORY[0x277D85000] & *v1) + 0x218))(v30);
  }

  return result;
}

Swift::Void __swiftcall ZonesAccumulator.workoutBuilderDidCollectEvent()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ZonesAccumulator.workoutBuilderDidCollectEvent();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v7, v3, v10);
  _Block_release(v10);

  (*(v12 + 8))(v3, v0);
  (*(v4 + 8))(v7, v11);
}

void closure #1 in ZonesAccumulator.workoutBuilderDidCollectEvent()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ZonesAccumulator.processIfReady()();
  }
}

uint64_t ZonesAccumulator.processIfReady()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v51 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v19 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = v51 - v22;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x200))(v21);
  if (result)
  {

    v25 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate;
    swift_beginAccess();
    outlined init with copy of Date?(&v1[v25], v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      return outlined destroy of Date?(v13);
    }

    v55 = *(v15 + 32);
    v56 = v23;
    v55();
    v26 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples;
    swift_beginAccess();
    v27 = *&v1[v26];
    if (v27 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v54 = v26;
      if (v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] != 1)
      {
        v52 = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue];
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        ObjectType = v15;
        (*(v15 + 16))(v19, v56, v14);
        v39 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = v53;
        *(v40 + 24) = v27;
        (v55)(v40 + v39, v19, v14);
        v67 = partial apply for closure #2 in ZonesAccumulator.processIfReady();
        v68 = v40;
        aBlock = MEMORY[0x277D85DD0];
        v64 = 1107296256;
        v65 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v66 = &block_descriptor_87;
        v41 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v62 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v42 = v61;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x20F2E7580](0, v9, v5, v41);
        _Block_release(v41);
        (*(v60 + 8))(v5, v42);
        (*(v58 + 8))(v9, v59);

        v36 = MEMORY[0x277D84F90];
        goto LABEL_10;
      }

      v52 = v5;

      v28 = [v1 builder];
      v29 = [v28 currentWorkoutActivity];

      v53 = v29;
      if (v29)
      {
        v51[1] = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue];
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v15 + 16))(v19, v56, v14);
        v31 = *(v15 + 80);
        ObjectType = v15;
        v32 = (v31 + 40) & ~v31;
        v33 = swift_allocObject();
        v51[0] = v30;
        v33[2] = v30;
        v33[3] = v27;
        v34 = v53;
        v33[4] = v53;
        (v55)(v33 + v32, v19, v14);
        v67 = partial apply for closure #1 in ZonesAccumulator.processIfReady();
        v68 = v33;
        aBlock = MEMORY[0x277D85DD0];
        v64 = 1107296256;
        v65 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v66 = &block_descriptor_94;
        v35 = _Block_copy(&aBlock);

        v55 = v34;
        static DispatchQoS.unspecified.getter();
        v36 = MEMORY[0x277D84F90];
        v62 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v37 = v52;
        v38 = v61;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x20F2E7580](0, v9, v37, v35);
        _Block_release(v35);

        (*(v60 + 8))(v37, v38);
        (*(v58 + 8))(v9, v59);

LABEL_10:
        (*(ObjectType + 8))(v56, v14);
        *&v1[v54] = v36;
      }

      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static WOLog.zones);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock = v47;
        *v46 = 136315138;
        v48 = _typeName(_:qualified:)();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &aBlock);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_20AEA4000, v44, v45, "%s currentWorkoutActivity is nil, skipping update", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x20F2E9420](v47, -1, -1);
        MEMORY[0x20F2E9420](v46, -1, -1);
      }
    }

    return (*(v15 + 8))(v56, v14);
  }

  return result;
}

unint64_t closure #1 in ZonesAccumulator.processIfReady()(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v41 = a3;
  v40 = type metadata accessor for DateInterval();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v7);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Date();
  v9 = *(v39 - 8);
  v11 = MEMORY[0x28223BE20](v39, v10);
  v37 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v32 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v42 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v32 = v17;
      v33 = a4;
      v17 = 0;
      v35 = a2 & 0xFFFFFFFFFFFFFF8;
      v36 = a2 & 0xC000000000000001;
      v34 = (v6 + 8);
      v19 = v9 + 1;
      while (1)
      {
        if (v36)
        {
          v20 = MEMORY[0x20F2E7A20](v17, a2);
        }

        else
        {
          if (v17 >= *(v35 + 16))
          {
            goto LABEL_16;
          }

          v20 = *(a2 + 8 * v17 + 32);
        }

        v9 = v20;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        a4 = a2;
        v22 = [v20 dateInterval];
        v23 = v38;
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.start.getter();
        (*v34)(v23, v40);
        v24 = [v41 startDate];
        v25 = v37;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v6 = static Date.> infix(_:_:)();
        v26 = *v19;
        v27 = v25;
        v28 = v39;
        (*v19)(v27, v39);
        v26(v15, v28);
        if (v6)
        {
          v6 = &v42;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        a2 = a4;
        ++v17;
        if (v21 == i)
        {
          v29 = v42;
          v17 = v32;
          a4 = v33;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_19:
    v30 = [v41 workoutEvents];
    _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(v29, v31, a4);
  }

  return result;
}

void *closure #2 in ZonesAccumulator.processIfReady()(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [result builder];
    v8 = [v7 workoutEvents];

    _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(a2, v9, a3);
  }

  return result;
}

uint64_t ZonesAccumulator.Entry.logString.getter(void *a1, char a2)
{
  v66 = type metadata accessor for Date();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateInterval();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v13 + 8);
  v64 = v10;
  v65 = v13 + 8;
  if (a2)
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v69 = 0x282020746E657665;
    v70 = 0xEF203A7472617473;
    v15 = [a1 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.start.getter();
    v62 = *v14;
    v63 = a1;
    v62(v12, v8);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v16 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [v16 stringFromDate_];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v4[1];
    v23 = v66;
    v22(v7, v66);
    MEMORY[0x20F2E6D80](v19, v21);

    MEMORY[0x20F2E6D80](0x203A646E65202CLL, 0xE700000000000000);
    v24 = v63;
    v25 = [v63 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.end.getter();
    v62(v12, v64);
    v26 = Date._bridgeToObjectiveC()().super.isa;
    v27 = [v16 stringFromDate_];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v22(v7, v23);
    MEMORY[0x20F2E6D80](v28, v30);

    MEMORY[0x20F2E6D80](0x203A65707974202CLL, 0xE800000000000000);
    [v24 type];
    v31 = _HKWorkoutEventTypeName();
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v67 = v33;
    v68 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v57 = Optional.description.getter();
    v59 = v58;

    MEMORY[0x20F2E6D80](v57, v59);
  }

  else
  {
    v63 = v4;
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v69 = 0x2820656C706D6173;
    v70 = 0xEF203A7472617473;
    v36 = [a1 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.start.getter();
    v62 = *v14;
    v62(v12, v8);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v37 = static WOLog.logDateFormatter;
    v38 = Date._bridgeToObjectiveC()().super.isa;
    v39 = [v37 stringFromDate_];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = v63[1];
    v44 = v66;
    v43(v7, v66);
    MEMORY[0x20F2E6D80](v40, v42);

    MEMORY[0x20F2E6D80](0x203A646E65202CLL, 0xE700000000000000);
    v45 = a1;
    v46 = [a1 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.end.getter();
    v62(v12, v64);
    v47 = Date._bridgeToObjectiveC()().super.isa;
    v48 = [v37 stringFromDate_];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v43(v7, v44);
    MEMORY[0x20F2E6D80](v49, v51);

    MEMORY[0x20F2E6D80](0x69746E617571202CLL, 0xEC000000203A7974);
    v52 = [v45 quantity];
    v53 = [v52 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    MEMORY[0x20F2E6D80](v54, v56);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  }

  return v69;
}

void ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v302 = a3;
  ObjectType = swift_getObjectType();
  v298 = type metadata accessor for DispatchWorkItemFlags();
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298, v8);
  v295 = &v290 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = type metadata accessor for DispatchQoS();
  v294 = *(v296 - 8);
  MEMORY[0x28223BE20](v296, v10);
  v293 = &v290 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = MEMORY[0x28223BE20](v316, v12);
  v292 = &v290 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v301 = &v290 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v319 = &v290 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v304 = &v290 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v313 = &v290 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v290 - v28;
  v30 = type metadata accessor for DateInterval();
  v335 = *(v30 - 8);
  v336 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v337 = &v290 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = type metadata accessor for Date();
  v334 = *(v330 - 8);
  v34 = MEMORY[0x28223BE20](v330, v33);
  v291 = &v290 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v300 = &v290 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v290 - v41;
  v44 = MEMORY[0x28223BE20](v40, v43);
  v303 = &v290 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v312 = &v290 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v325 = &v290 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v311 = &v290 - v54;
  MEMORY[0x28223BE20](v53, v55);
  v324 = &v290 - v56;
  v57 = type metadata accessor for DispatchPredicate();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v59);
  v61 = (&v290 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v340 = v4;
  v62 = *&v4[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue];
  *v61 = v62;
  (*(v58 + 104))(v61, *MEMORY[0x277D85200], v57);
  v63 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  (*(v58 + 8))(v61, v57);
  if ((v62 & 1) == 0)
  {
    goto LABEL_129;
  }

  v333 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_130;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v65 = MEMORY[0x277D84F90];
    v299 = v42;
    v339 = a1;
    if (i)
    {
      aBlock = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      v66 = ObjectType;
      v65 = aBlock;
      v67 = v339;
      if ((v339 & 0xC000000000000001) != 0)
      {
        v68 = 0;
        do
        {
          v69 = MEMORY[0x20F2E7A20](v68, v67);
          aBlock = v65;
          v71 = *(v65 + 2);
          v70 = *(v65 + 3);
          if (v71 >= v70 >> 1)
          {
            v73 = v69;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
            v67 = v339;
            v69 = v73;
            v65 = aBlock;
          }

          ++v68;
          *(v65 + 2) = v71 + 1;
          v72 = &v65[16 * v71];
          *(v72 + 4) = v69;
          v72[40] = 0;
        }

        while (i != v68);
      }

      else
      {
        v74 = (v339 + 32);
        do
        {
          v75 = *v74;
          aBlock = v65;
          v77 = *(v65 + 2);
          v76 = *(v65 + 3);
          v78 = v75;
          if (v77 >= v76 >> 1)
          {
            v80 = v78;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
            v78 = v80;
            v65 = aBlock;
          }

          *(v65 + 2) = v77 + 1;
          v79 = &v65[16 * v77];
          *(v79 + 4) = v78;
          v79[40] = 0;
          ++v74;
          --i;
        }

        while (i);
      }

      ObjectType = v66;
    }

    if (a2 >> 62)
    {
      v81 = __CocoaSet.count.getter();
    }

    else
    {
      v81 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = MEMORY[0x277D84F90];
    v322 = ObjectType;
    v332 = a2 >> 62;
    if (v81)
    {
      aBlock = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81 & ~(v81 >> 63), 0);
      if (v81 < 0)
      {
        goto LABEL_133;
      }

      v82 = aBlock;
      if ((a2 & 0xC000000000000001) != 0)
      {
        ObjectType = 0;
        do
        {
          v83 = MEMORY[0x20F2E7A20](ObjectType, a2);
          aBlock = v82;
          v85 = *(v82 + 2);
          v84 = *(v82 + 3);
          if (v85 >= v84 >> 1)
          {
            v87 = v83;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1);
            v83 = v87;
            v82 = aBlock;
          }

          ++ObjectType;
          *(v82 + 2) = v85 + 1;
          v86 = &v82[16 * v85];
          *(v86 + 4) = v83;
          v86[40] = 1;
        }

        while (v81 != ObjectType);
      }

      else
      {
        v88 = (a2 + 32);
        do
        {
          v89 = *v88;
          aBlock = v82;
          v91 = *(v82 + 2);
          v90 = *(v82 + 3);
          ObjectType = (v91 + 1);
          v92 = v89;
          if (v91 >= v90 >> 1)
          {
            v94 = v92;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
            v92 = v94;
            v82 = aBlock;
          }

          *(v82 + 2) = ObjectType;
          v93 = &v82[16 * v91];
          *(v93 + 4) = v92;
          v93[40] = 1;
          ++v88;
          --v81;
        }

        while (v81);
      }
    }

    aBlock = v65;
    specialized Array.append<A>(contentsOf:)(v82);

    specialized MutableCollection<>.sort(by:)(&aBlock);
    v338 = 0;
    v317 = v29;

    a1 = aBlock;
    v341 = *&v340[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator];
    if (!v341)
    {
      goto LABEL_43;
    }

    v29 = *(aBlock + 2);
    if (!v29)
    {
      break;
    }

    aBlock = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
    v95 = 0;
    v96 = aBlock;
    v42 = (a1 + 40);
    while (v95 < *(a1 + 16))
    {
      v97 = a2;
      v98 = v96;
      ObjectType = *(v42 - 1);
      v99 = *v42;
      v100 = ObjectType;
      v101 = v100;
      if (v99)
      {
        v102 = v100;
      }

      else
      {
        ObjectType = static ZonesAccumulator.threeSecondAverageSample(for:with:)(v100, v341);
      }

      v96 = v98;
      aBlock = v98;
      v103 = *(v98 + 2);
      v104 = *(v96 + 3);
      if (v103 >= v104 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v103 + 1, 1);
        v96 = aBlock;
      }

      ++v95;
      *(v96 + 2) = v103 + 1;
      v105 = &v96[16 * v103];
      *(v105 + 4) = ObjectType;
      v105[40] = v99;
      v42 += 16;
      a2 = v97;
      if (v29 == v95)
      {
        v106 = v96;

        a1 = v106;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    ;
  }

  a1 = MEMORY[0x277D84F90];
LABEL_43:
  v305 = a1;
  v107 = v337;
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  v109 = __swift_project_value_buffer(v108, static WOLog.zones);
  v110 = v305;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v111 = v340;
  v327 = v109;
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  v114 = os_log_type_enabled(v112, v113);
  v340 = v111;
  if (v114)
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    aBlock = v116;
    *v115 = 136316418;
    v117 = _typeName(_:qualified:)();
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &aBlock);

    *(v115 + 4) = v119;
    *(v115 + 12) = 2048;
    v120 = *(v110 + 16);

    *(v115 + 14) = v120;

    *(v115 + 22) = 2080;
    v121 = ZonesAccumulator.zonesSnapshotString.getter();
    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &aBlock);

    *(v115 + 24) = v123;
    *(v115 + 32) = 2048;
    if (v333)
    {
      v124 = __CocoaSet.count.getter();
    }

    else
    {
      v124 = *((v339 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v115 + 34) = v124;

    *(v115 + 42) = 2048;
    v107 = v337;
    if (v332)
    {
      v125 = __CocoaSet.count.getter();
    }

    else
    {
      v125 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v115 + 44) = v125;

    *(v115 + 52) = 2080;
    v126 = ZonesAccumulator.stateSnapshotString.getter();
    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, &aBlock);

    *(v115 + 54) = v128;
    _os_log_impl(&dword_20AEA4000, v112, v113, "%s begin processing %ld sorted entries by date, %s (%ld samples, %ld events), state (%s)", v115, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v116, -1, -1);
    MEMORY[0x20F2E9420](v115, -1, -1);

    v110 = v305;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v129 = *(v110 + 16);
  v130 = v317;
  ObjectType = v330;
  if (v129)
  {
    v131 = v107;
    v323 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
    v306 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate;
    v308 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused;
    v320 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    v315 = 0;
    v314 = 0;
    v309 = 0;
    v307 = 0;
    ++v335;
    v132 = v334 + 48;
    v318 = (v334 + 32);
    v329 = v334 + 8;
    v290 = v334 + 16;
    v321 = (v334 + 56);
    v341 = (v110 + 40);
    *&v133 = 136315650;
    v310 = v133;
    v326 = v334 + 48;
    while (1)
    {
      v339 = v129;
      v29 = *v341;
      v334 = *(v341 - 1);
      v42 = v334;
      v135 = [v42 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      if (v29)
      {
        LODWORD(v332) = v29;
        DateInterval.end.getter();
        v29 = *v335;
        (*v335)(v131, v336);
        v136 = v313;
        outlined init with copy of Date?(&v340[v320], v313);
        v137 = *v132;
        if ((*v132)(v136, 1, ObjectType) == 1)
        {
          v138 = v130;
          v139 = v312;
          static Date.distantPast.getter();
          a1 = v137;
          if (v137(v136, 1, ObjectType) != 1)
          {
            outlined destroy of Date?(v136);
          }
        }

        else
        {
          a1 = v137;
          v138 = v130;
          v139 = v312;
          (*v318)(v312, v136, ObjectType);
        }

        v146 = v325;
        v147 = static Date.> infix(_:_:)();
        a2 = v329;
        v148 = v139;
        v149 = *v329;
        (*v329)(v148, ObjectType);
        v328 = v149;
        v149(v146, ObjectType);
        if (v147)
        {
          v333 = v29;
          LODWORD(v150) = v332;
          goto LABEL_71;
        }

        if (__OFADD__(v315, 1))
        {
          goto LABEL_128;
        }

        ++v315;
        v134 = v339;
        v132 = v326;
        v130 = v138;
      }

      else
      {
        DateInterval.end.getter();
        v333 = *v335;
        v140 = v333(v131, v336);
        MEMORY[0x28223BE20](v140, v141);
        *(&v290 - 2) = v142;
        v143 = v338;
        OS_dispatch_queue.sync<A>(execute:)();
        a1 = *v132;
        v144 = (*v132)(v130, 1, ObjectType);
        v338 = v143;
        if (v144 == 1)
        {
          v145 = v311;
          static Date.distantPast.getter();
          if ((a1)(v130, 1, ObjectType) != 1)
          {
            outlined destroy of Date?(v130);
          }
        }

        else
        {
          v145 = v311;
          (*v318)(v311, v130, ObjectType);
        }

        v151 = v324;
        v152 = static Date.> infix(_:_:)();
        a2 = v329;
        v153 = *v329;
        (*v329)(v145, ObjectType);
        v328 = v153;
        v153(v151, ObjectType);
        v131 = v337;
        if (v152)
        {
          LODWORD(v150) = v29;
LABEL_71:
          v154 = v340;
          v155 = v340;
          v156 = v42;
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.default.getter();

          v331 = v156;
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            aBlock = v160;
            *v159 = v310;
            v161 = _typeName(_:qualified:)();
            v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v162, &aBlock);

            *(v159 + 4) = v163;
            *(v159 + 12) = 2080;
            v164 = ZonesAccumulator.Entry.logString.getter(v334, v150);
            v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v165, &aBlock);

            *(v159 + 14) = v166;
            *(v159 + 22) = 2080;
            v167 = v155;
            v168 = ZonesAccumulator.stateSnapshotString.getter();
            v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v169, &aBlock);

            *(v159 + 24) = v170;
            _os_log_impl(&dword_20AEA4000, v157, v158, "%s begin process %s, state (%s)", v159, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v160, -1, -1);
            v171 = v159;
            v154 = v340;
            MEMORY[0x20F2E9420](v171, -1, -1);

            if ((v150 & 1) == 0)
            {
              goto LABEL_73;
            }

LABEL_83:
            v196 = [v331 type];
            v198 = v330;
            if (v196 == 1)
            {
              LODWORD(v332) = v150;
              MEMORY[0x28223BE20](1, v197);
              v174 = v167;
              *(&v290 - 2) = v167;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
              v203 = v338;
              OS_dispatch_queue.sync<A>(execute:)();
              v338 = v203;
              if (v343)
              {
                v179 = v331;
              }

              else
              {
                v216 = aBlock;
                v179 = v331;
                v217 = [v331 dateInterval];
                v218 = v337;
                static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

                v219 = v303;
                DateInterval.end.getter();
                v333(v218, v336);
                v220 = ZonesAccumulator.elapsedTime(at:ending:)(v216, v219);
                v222 = v221;
                v223 = v328(v219, v198);
                MEMORY[0x28223BE20](v223, v224);
                *(&v290 - 2) = v167;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
                v225 = v338;
                OS_dispatch_queue.sync<A>(execute:)();
                v338 = v225;
                v174 = v167;
                v226 = v222 & 1;
                v154 = v340;
                specialized Dictionary.subscript.setter(v220, v226, v216);
                ZonesAccumulator.elapsedTimes.setter(aBlock);
              }

              v227 = 1;
              v228 = v319;
              (*v321)(v319, 1, 1, v198);
              v150 = v306;
              swift_beginAccess();
              outlined assign with take of Date?(v228, &v154[v150]);
              swift_endAccess();
              LOBYTE(v150) = v332;
              goto LABEL_117;
            }

            if (v196 == 2)
            {
              v199 = v150;
              MEMORY[0x28223BE20](2, v197);
              *(&v290 - 2) = v167;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
              v200 = v338;
              OS_dispatch_queue.sync<A>(execute:)();
              if (v343)
              {
                v338 = v200;
                v201 = 1;
                v202 = v301;
                v174 = v167;
              }

              else
              {
                v210 = [v331 dateInterval];
                v211 = v337;
                static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

                DateInterval.end.getter();
                v212 = v333(v211, v336);
                MEMORY[0x28223BE20](v212, v213);
                v174 = v167;
                *(&v290 - 2) = v167;
                v214 = v292;
                OS_dispatch_queue.sync<A>(execute:)();
                v338 = v200;
                if ((a1)(v214, 1, v198) == 1)
                {
                  v215 = v291;
                  (*v290)(v291, v302, v198);
                  if ((a1)(v214, 1, v198) != 1)
                  {
                    outlined destroy of Date?(v214);
                  }
                }

                else
                {
                  v215 = v291;
                  (*v318)(v291, v214, v198);
                }

                lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
                v238 = v300;
                v239 = dispatch thunk of static Comparable.>= infix(_:_:)();
                v240 = (v239 & 1) == 0;
                if (v239)
                {
                  v241 = v238;
                }

                else
                {
                  v241 = v215;
                }

                if (!v240)
                {
                  v238 = v215;
                }

                v328(v241, v198);
                v202 = v301;
                (*v318)(v301, v238, v198);
                v201 = 0;
              }

              v179 = v331;
              (*v321)(v202, v201, 1, v198);
              v242 = v306;
              swift_beginAccess();
              outlined assign with take of Date?(v202, &v154[v242]);
              swift_endAccess();
              v227 = 0;
              LOBYTE(v150) = v199;
LABEL_117:
              v154[v308] = v227;
              v309 = 1;
              v307 = 1;
            }

            else
            {
              v174 = v167;
              v179 = v331;
            }

            v243 = [v179 dateInterval];
            v244 = v337;
            static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

            v245 = v319;
            DateInterval.end.getter();
            v333(v244, v336);
            (*v321)(v245, 0, 1, v198);
            v246 = v320;
            swift_beginAccess();
            outlined assign with take of Date?(v245, &v154[v246]);
            swift_endAccess();
LABEL_119:
            v247 = v174;
            v248 = v179;
            v249 = Logger.logObject.getter();
            v250 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v249, v250))
            {
              v251 = swift_slowAlloc();
              v252 = swift_slowAlloc();
              aBlock = v252;
              *v251 = v310;
              v253 = _typeName(_:qualified:)();
              v255 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v253, v254, &aBlock);

              *(v251 + 4) = v255;
              *(v251 + 12) = 2080;
              v256 = ZonesAccumulator.Entry.logString.getter(v334, v150);
              v258 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v256, v257, &aBlock);

              *(v251 + 14) = v258;
              *(v251 + 22) = 2080;
              v259 = ZonesAccumulator.stateSnapshotString.getter();
              v261 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v259, v260, &aBlock);

              *(v251 + 24) = v261;
              _os_log_impl(&dword_20AEA4000, v249, v250, "%s end   process %s, state (%s)", v251, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v252, -1, -1);
              MEMORY[0x20F2E9420](v251, -1, -1);
            }

            v130 = v317;
            ObjectType = v330;
            v134 = v339;
            v132 = v326;
            v131 = v337;
            goto LABEL_57;
          }

          v167 = v155;

          if (v150)
          {
            goto LABEL_83;
          }

LABEL_73:
          LODWORD(v332) = v150;
          MEMORY[0x28223BE20](v172, v173);
          v174 = v167;
          *(&v290 - 2) = v167;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
          v175 = v338;
          OS_dispatch_queue.sync<A>(execute:)();
          v176 = aBlock;
          v177 = v154;
          v178 = v343;
          v179 = v331;
          v180 = ZonesAccumulator.zoneIndex(for:)(v331);
          v182 = ZonesAccumulator.currentZoneIndex.setter(v180, v181 & 1);
          if ((v177[v308] & 1) == 0)
          {
            if ((v178 & 1) == 0)
            {
              v184 = [v179 dateInterval];
              v185 = v337;
              static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

              v186 = v176;
              v187 = v174;
              v188 = v303;
              DateInterval.end.getter();
              v333(v185, v336);
              v338 = ZonesAccumulator.elapsedTime(at:ending:)(v186, v188);
              v190 = v189;
              v191 = v328(v188, v330);
              MEMORY[0x28223BE20](v191, v192);
              *(&v290 - 2) = v187;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
              OS_dispatch_queue.sync<A>(execute:)();
              v174 = v187;
              v176 = v186;
              specialized Dictionary.subscript.setter(v338, v190 & 1, v186);
              v182 = ZonesAccumulator.elapsedTimes.setter(aBlock);
            }

            MEMORY[0x28223BE20](v182, v183);
            *(&v290 - 2) = v174;
            OS_dispatch_queue.sync<A>(execute:)();
            if (v343)
            {
              v193 = 1;
              v194 = v304;
              v195 = v330;
            }

            else
            {
              v204 = v179;
              v205 = v174;
              v206 = [v204 dateInterval];
              v207 = v337;
              static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

              v208 = v299;
              DateInterval.end.getter();
              v333(v207, v336);
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
              v209 = v302;
              v195 = v330;
              if (dispatch thunk of static Comparable.>= infix(_:_:)())
              {
                v328(v208, v195);
                v194 = v304;
                (*v290)(v304, v209, v195);
              }

              else
              {
                v194 = v304;
                (*v318)(v304, v208, v195);
              }

              v193 = 0;
              v174 = v205;
              v179 = v331;
            }

            (*v321)(v194, v193, 1, v195);
            v229 = v340;
            v230 = v306;
            swift_beginAccess();
            outlined assign with take of Date?(v194, &v229[v230]);
            swift_endAccess();
            v182 = (*((*MEMORY[0x277D85000] & *v174) + 0x210))(v179);
          }

          MEMORY[0x28223BE20](v182, v183);
          *(&v290 - 2) = v174;
          OS_dispatch_queue.sync<A>(execute:)();
          v338 = v175;
          if (v343)
          {
            v231 = v330;
            LOBYTE(v150) = v332;
            v232 = v333;
            if (v178)
            {
              goto LABEL_108;
            }
          }

          else
          {
            if (aBlock == v176)
            {
              v233 = v178;
            }

            else
            {
              v233 = 1;
            }

            v231 = v330;
            LOBYTE(v150) = v332;
            v232 = v333;
            if ((v233 & 1) == 0)
            {
              goto LABEL_108;
            }
          }

          v307 = 1;
LABEL_108:
          v234 = [v179 dateInterval];
          v235 = v337;
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          v236 = v319;
          DateInterval.end.getter();
          v232(v235, v336);
          v237 = *v321;
          v309 = 1;
          v237(v236, 0, 1, v231);
          ZonesAccumulator.lastProcessedEntryDate.setter(v236);
          goto LABEL_119;
        }

        if (__OFADD__(v314, 1))
        {
          goto LABEL_127;
        }

        ++v314;
        v134 = v339;
        v132 = v326;
      }

LABEL_57:
      v341 += 16;
      v129 = v134 - 1;
      if (!v129)
      {
        goto LABEL_122;
      }
    }
  }

  v315 = 0;
  v314 = 0;
  v309 = 0;
  v307 = 0;
LABEL_122:
  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v262 = static OS_dispatch_queue.main.getter();
  v263 = swift_allocObject();
  v264 = v340;
  swift_unknownObjectWeakInit();
  v265 = swift_allocObject();
  *(v265 + 16) = v307 & 1;
  *(v265 + 24) = v263;
  *(v265 + 32) = v309 & 1;
  *(v265 + 40) = v322;
  v346 = partial apply for specialized closure #5 in ZonesAccumulator.process(samples:workoutEvents:activityStartDate:);
  v347 = v265;
  aBlock = MEMORY[0x277D85DD0];
  v343 = 1107296256;
  v344 = thunk for @escaping @callee_guaranteed () -> ();
  v345 = &block_descriptor_71;
  v266 = _Block_copy(&aBlock);

  v267 = v293;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v268 = v295;
  v269 = v298;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v267, v268, v266);
  _Block_release(v266);

  (*(v297 + 8))(v268, v269);
  (*(v294 + 8))(v267, v296);
  v270 = v305;

  v271 = v264;
  v272 = Logger.logObject.getter();
  v273 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v272, v273))
  {

    swift_bridgeObjectRelease_n();
    return;
  }

  v274 = swift_slowAlloc();
  v275 = swift_slowAlloc();
  aBlock = v275;
  *v274 = 136316674;
  v276 = _typeName(_:qualified:)();
  v278 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v276, v277, &aBlock);

  *(v274 + 4) = v278;
  *(v274 + 12) = 2048;
  v279 = *(v270 + 16);

  *(v274 + 14) = v279;

  *(v274 + 22) = 2080;
  v280 = ZonesAccumulator.zonesSnapshotString.getter();
  v282 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v280, v281, &aBlock);

  *(v274 + 24) = v282;
  *(v274 + 32) = 2048;
  v283 = v314;
  *(v274 + 34) = v314;
  *(v274 + 42) = 2048;
  v284 = v315;
  *(v274 + 44) = v315;
  *(v274 + 52) = 2048;
  v285 = __OFADD__(v283, v284);
  v286 = v283 + v284;
  if (!v285)
  {
    *(v274 + 54) = v286;
    *(v274 + 62) = 2080;
    v287 = ZonesAccumulator.stateSnapshotString.getter();
    v289 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v288, &aBlock);

    *(v274 + 64) = v289;
    _os_log_impl(&dword_20AEA4000, v272, v273, "%s end   processing %ld sorted entries by date, %s, dropped (samples: %ld, events: %ld, total: %ld), state (%s)", v274, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v275, -1, -1);
    MEMORY[0x20F2E9420](v274, -1, -1);

    return;
  }

LABEL_134:
  __break(1u);

  __break(1u);
}

uint64_t closure #3 in ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(id *a1, void **a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - v16;
  v18 = *a2;
  v19 = [*a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.end.getter();
  v20 = *(v5 + 8);
  v20(v8, v4);
  v21 = [v18 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.end.getter();
  v20(v8, v4);
  LOBYTE(v8) = static Date.< infix(_:_:)();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v22(v17, v9);
  return v8 & 1;
}

id static ZonesAccumulator.threeSecondAverageSample(for:with:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = objc_opt_self();
  v14 = [v54 wattUnit];
  v15 = [a1 quantity];
  [v15 doubleValueForUnit_];
  v17 = v16;

  v18 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.end.getter();
  v19 = *(v5 + 8);
  v19(v8, v4);
  Date.timeIntervalSinceReferenceDate.getter();
  WindowedAccumulator.add(_:position:)(v17, v20);
  (*(v10 + 8))(v13, v9);
  if (*(a2 + 24))
  {
    v22 = *(*(a2 + 48) + 16);
    if (v22)
    {
      v23 = *(a2 + 56) / v22;
    }

    else
    {
      v23 = 0.0;
    }
  }

  else
  {
    WindowedAccumulator.positionWindowMean()(v21);
    if (v25)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v24;
    }
  }

  v26 = [v54 wattUnit];
  v27 = [objc_opt_self() quantityWithUnit:v26 doubleValue:v23];

  v28 = v27;
  v29 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = objc_allocWithZone(MEMORY[0x277CCDC08]);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v32 = [v30 initWithQuantity:v28 dateInterval:isa];

  v19(v8, v4);
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static WOLog.zones);
  v34 = a1;
  v35 = v32;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v39;
    *v38 = 136315650;
    v40 = _typeName(_:qualified:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v55);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2048;
    v43 = [v34 quantity];
    v44 = v54;
    v45 = [v54 wattUnit];
    [v43 doubleValueForUnit_];
    v47 = v46;

    *(v38 + 14) = v47;
    *(v38 + 22) = 2048;
    v48 = [v35 quantity];
    v49 = [v44 wattUnit];
    [v48 doubleValueForUnit_];
    v51 = v50;

    *(v38 + 24) = v51;
    _os_log_impl(&dword_20AEA4000, v36, v37, "%s converted sample (%f W) to 3s average sample (%f W)", v38, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x20F2E9420](v39, -1, -1);
    MEMORY[0x20F2E9420](v38, -1, -1);
  }

  return v35;
}

void specialized closure #5 in ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong update];
    }
  }

  if (a3)
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      (*((*MEMORY[0x277D85000] & v7->isa) + 0x220))();
    }

    else
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static WOLog.zones);
      v8 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v16 = v12;
        *v11 = 136315138;
        v13 = _typeName(_:qualified:)();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v16);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_20AEA4000, v8, v10, "%s deallocated before needsMetadataUpdate processed", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x20F2E9420](v12, -1, -1);
        MEMORY[0x20F2E9420](v11, -1, -1);
      }
    }
  }
}

unint64_t ZonesAccumulator.zoneIndex(for:)(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x200))();
  if (!result)
  {
    return 0;
  }

  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
LABEL_10:

    return 0;
  }

  v6 = 0;
  v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit);
  v8 = result + 32;
  while (v6 < *(v4 + 16))
  {
    outlined init with copy of ZoneProtocol(v8, v17);
    v9 = v18;
    v10 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    v14 = [a1 quantity];
    [v14 doubleValueForUnit_];
    v16 = v15;

    if (v11 > v16)
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
      if (v16 < v13)
      {

        return v6;
      }
    }

    ++v6;
    v8 += 40;
    if (v5 == v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t ZonesAccumulator.elapsedTime(at:ending:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v59[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v59[-v17];
  v65 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = v69;
  v20 = *(v69 + 16);
  v21 = 0.0;
  v64 = a1;
  if (v20 && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v23 & 1) != 0))
  {
    v24 = 0;
    v21 = *(*(v19 + 56) + 8 * v22);
  }

  else
  {
    v24 = 1;
  }

  v25 = a2;

  v26 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v3[v26], v18);
  v27 = (*(v7 + 48))(v18, 1, v6);
  if (v27)
  {
    outlined destroy of Date?(v18);
    v28 = 0.0;
    v29 = v21;
    if (v24)
    {
      return 0;
    }
  }

  else
  {
    (*(v7 + 16))(v14, v18, v6);
    outlined destroy of Date?(v18);
    Date.distance(to:)();
    v28 = v31;
    (*(v7 + 8))(v14, v6);
    v32 = 0.0;
    if (v24)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v21;
    }

    if (v28 >= 0.0)
    {
      v32 = v28;
    }

    if (*&v3[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] < v32)
    {
      v32 = *&v3[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout];
    }

    v29 = v33 + v32;
  }

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static WOLog.zones);
  (*(v7 + 16))(v11, v25, v6);
  v35 = v3;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v62 = v37;
    v60 = v27 != 0;
    v38 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v68 = v61;
    *v38 = 136316674;
    v39 = _typeName(_:qualified:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v68);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2048;
    *(v38 + 14) = v64;
    *(v38 + 22) = 2048;
    *(v38 + 24) = v29;
    *(v38 + 32) = 2080;
    v66 = v21;
    v67 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v42 = Optional.description.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v68);

    *(v38 + 34) = v44;
    *(v38 + 42) = 2080;
    v66 = v28;
    v67 = v60;
    v45 = Optional.description.getter();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v68);

    *(v38 + 44) = v47;
    *(v38 + 52) = 2080;
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v48 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v50 = [v48 stringFromDate_];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    (*(v7 + 8))(v11, v6);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v68);

    *(v38 + 54) = v54;
    *(v38 + 62) = 2080;
    v55 = ZonesAccumulator.stateSnapshotString.getter();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v68);

    *(v38 + 64) = v57;
    _os_log_impl(&dword_20AEA4000, v36, v62, "%s zone %ld elapsedTime: %f (previous elapsedTime: %s, distance %s to: %s) state (%s)", v38, 0x48u);
    v58 = v61;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v58, -1, -1);
    MEMORY[0x20F2E9420](v38, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  return *&v29;
}

uint64_t ZonesAccumulator.update<A>(liveZones:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v54 = a2;
  v50 = a1;
  v52 = type metadata accessor for Date();
  v51 = *(v52 - 8);
  v5 = MEMORY[0x28223BE20](v52, v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v45 - v15;
  v58 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v17 = v59;
  v57 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = v59;
  v19 = v60;
  v56 = v3;
  v49 = v16;
  OS_dispatch_queue.sync<A>(execute:)();
  v55 = v3;
  OS_dispatch_queue.sync<A>(execute:)();
  v47 = v3;
  v45 = v9;
  v20 = v50;
  if (v60)
  {
    v21 = 0;
    v22 = 1;
  }

  else
  {
    v23 = v59;
    static Date.now.getter();
    v21 = ZonesAccumulator.elapsedTime(at:ending:)(v23, v9);
    v22 = v24;
    (*(v51 + 8))(v9, v52);
  }

  v25 = 1 << *(v17 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v17 + 64);
  v28 = (v25 + 63) >> 6;

  v30 = 0;
  if (v27)
  {
    while (1)
    {
      v31 = v30;
LABEL_12:
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      result = closure #1 in ZonesAccumulator.update<A>(liveZones:)(*(*(v17 + 48) + ((v31 << 9) | (8 * v32))), *(*(v17 + 56) + ((v31 << 9) | (8 * v32))), v20, v18, v19, v21, v22 & 1, v54, v53);
      if (!v27)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return result;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *(v17 + 64 + 8 * v31);
    ++v30;
    if (v27)
    {
      v30 = v31;
      goto LABEL_12;
    }
  }

  v33 = v53;
  v34 = v54;
  (*(v53 + 56))(v18, v19, v54, v53);
  v35 = v49;
  v36 = v48;
  outlined init with copy of Date?(v49, v48);
  v37 = v51;
  v38 = v52;
  if ((*(v51 + 48))(v36, 1, v52) == 1)
  {
    outlined destroy of Date?(v36);
    (*(v33 + 80))(1, v34, v33);
  }

  else
  {
    v39 = v46;
    (*(v37 + 32))(v46, v36, v38);
    v40 = v45;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v42 = v41;
    v43 = *(v37 + 8);
    v43(v40, v38);
    Date.timeIntervalSinceReferenceDate.getter();
    (*(v33 + 80))(*(v47 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout) < v42 - v44, v34, v33);
    v43(v39, v38);
  }

  return outlined destroy of Date?(v35);
}

uint64_t closure #1 in ZonesAccumulator.update<A>(liveZones:)(Swift::Int a1, double a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v24 = (*(a9 + 24))(a8, a9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();

  v23 = v21[0];
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  result = Range.contains(_:)();
  if (result)
  {
    if ((a5 & 1) == 0 && a1 == a4 && (a7 & 1) == 0)
    {
      a2 = *&a6;
    }

    v17 = (*(a9 + 40))(v21, a8, a9);
    Array._makeMutableAndUnique()();
    Array._checkSubscript_mutating(_:)(a1);
    _swift_isClassOrObjCExistentialType();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness, a2);
    return v17(v21, 0);
  }

  return result;
}

id ZonesAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id ZonesAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ZonesAccumulator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a1 + 5);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, KnownPublishers.rawValue.getter, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x20F2E7FD0](*(v1 + 40), *&v4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  a3();
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey();
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
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
      v7 = 0xEC00000065707954;
      v8 = 0x7974697669746361;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x800000020B454CC0;
          break;
        case 2:
          v8 = 0x6E6F697461636F6CLL;
          v7 = 0xEC00000065707954;
          break;
        case 3:
          v8 = 0x7954746E656D6F4DLL;
          v7 = 0xEA00000000006570;
          break;
        case 4:
          v8 = 0xD00000000000001ELL;
          v7 = 0x800000020B454CE0;
          break;
        case 5:
          v8 = 0x7275446C61746F74;
          v7 = 0xED00006E6F697461;
          break;
        case 6:
          v8 = 0xD000000000000018;
          v7 = 0x800000020B454D00;
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B454D20;
          break;
        case 8:
          v8 = 0xD000000000000017;
          v7 = 0x800000020B454D40;
          break;
        case 9:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000020B454D60;
          break;
        case 0xA:
          v8 = 0xD000000000000011;
          v7 = 0x800000020B454CA0;
          break;
        case 0xB:
          v8 = 0x65636E756F6E6E61;
          v7 = 0xEF79636E6574614CLL;
          break;
        case 0xC:
          v8 = 0x65636E756F6E6E61;
          v7 = 0xEE00656372756F53;
          break;
        case 0xD:
          v8 = 0xD000000000000015;
          v7 = 0x800000020B454DA0;
          break;
        case 0xE:
          v8 = 0xD000000000000016;
          v7 = 0x800000020B454DC0;
          break;
        case 0xF:
          v8 = 0xD000000000000013;
          v7 = 0x800000020B454DE0;
          break;
        case 0x10:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B454E00;
          break;
        case 0x11:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000020B454E20;
          break;
        case 0x12:
          v8 = 0xD000000000000013;
          v7 = 0x800000020B454E40;
          break;
        case 0x13:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B454E60;
          break;
        default:
          break;
      }

      v9 = 0x7974697669746361;
      v10 = 0xEC00000065707954;
      switch(a1)
      {
        case 1:
          v10 = 0x800000020B454CC0;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 2:
          v10 = 0xEC00000065707954;
          if (v8 != 0x6E6F697461636F6CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 3:
          v10 = 0xEA00000000006570;
          if (v8 != 0x7954746E656D6F4DLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 4:
          v10 = 0x800000020B454CE0;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 5:
          v10 = 0xED00006E6F697461;
          if (v8 != 0x7275446C61746F74)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 6:
          v10 = 0x800000020B454D00;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 7:
          v10 = 0x800000020B454D20;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 8:
          v9 = 0xD000000000000017;
          v10 = 0x800000020B454D40;
          goto LABEL_59;
        case 9:
          v10 = 0x800000020B454D60;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 10:
          v10 = 0x800000020B454CA0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 11:
          v10 = 0xEF79636E6574614CLL;
          if (v8 != 0x65636E756F6E6E61)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 12:
          v10 = 0xEE00656372756F53;
          if (v8 != 0x65636E756F6E6E61)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 13:
          v10 = 0x800000020B454DA0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 14:
          v10 = 0x800000020B454DC0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 15:
          v10 = 0x800000020B454DE0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 16:
          v10 = 0x800000020B454E00;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 17:
          v10 = 0x800000020B454E20;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 18:
          v10 = 0x800000020B454E40;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 19:
          v10 = 0x800000020B454E60;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        default:
LABEL_59:
          if (v8 != v9)
          {
            goto LABEL_61;
          }

LABEL_60:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_61:
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00007265687369;
      v8 = 0x6C6275506C616F67;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000020B4541D0;
          break;
        case 2:
          v8 = 0xD000000000000016;
          v7 = 0x800000020B4541F0;
          break;
        case 3:
          break;
        case 4:
          v8 = 0xD000000000000019;
          v7 = 0x800000020B454220;
          break;
        case 5:
          v8 = 0xD000000000000019;
          v7 = 0x800000020B454240;
          break;
        case 6:
          v8 = 0xD000000000000014;
          v7 = 0x800000020B454260;
          break;
        case 7:
          v8 = 0xD000000000000019;
          v7 = 0x800000020B454280;
          break;
        case 8:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B4542A0;
          break;
        case 9:
          v8 = 0xD000000000000010;
          v7 = 0x800000020B4542C0;
          break;
        case 0xA:
          v8 = 0xD000000000000015;
          v7 = 0x800000020B4542E0;
          break;
        case 0xB:
          v8 = 0xD000000000000020;
          v7 = 0x800000020B454300;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x800000020B454330;
          break;
        case 0xD:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B454350;
          break;
        case 0xE:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000020B454370;
          break;
        case 0xF:
          v7 = 0xE800000000000000;
          v8 = 0x6C6576654C706F54;
          break;
        case 0x10:
          v8 = 0xD000000000000015;
          v7 = 0x800000020B4543A0;
          break;
        case 0x11:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B4543C0;
          break;
        default:
          v8 = 0xD00000000000001FLL;
          v7 = 0x800000020B4541B0;
          break;
      }

      v9 = 0x6C6275506C616F67;
      v10 = 0xED00007265687369;
      switch(a1)
      {
        case 1:
          v10 = 0x800000020B4541D0;
          if (v8 == 0xD00000000000001BLL)
          {
            goto LABEL_54;
          }

          goto LABEL_55;
        case 2:
          v10 = 0x800000020B4541F0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 3:
          goto LABEL_53;
        case 4:
          v10 = 0x800000020B454220;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 5:
          v10 = 0x800000020B454240;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 6:
          v10 = 0x800000020B454260;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 7:
          v10 = 0x800000020B454280;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 8:
          v10 = 0x800000020B4542A0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 9:
          v10 = 0x800000020B4542C0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 10:
          v9 = 0xD000000000000015;
          v10 = 0x800000020B4542E0;
LABEL_53:
          if (v8 == v9)
          {
            goto LABEL_54;
          }

          goto LABEL_55;
        case 11:
          v10 = 0x800000020B454300;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 12:
          v10 = 0x800000020B454330;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 13:
          v10 = 0x800000020B454350;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 14:
          v10 = 0x800000020B454370;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 15:
          v10 = 0xE800000000000000;
          if (v8 != 0x6C6576654C706F54)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 16:
          v10 = 0x800000020B4543A0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 17:
          v10 = 0x800000020B4543C0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        default:
          v10 = 0x800000020B4541B0;
          if (v8 != 0xD00000000000001FLL)
          {
            goto LABEL_55;
          }

LABEL_54:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_55:
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    _sSo17OS_dispatch_queueCMaTm_1(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(v3 + 48) + 16 * result);
      if (a2)
      {
        switch(a1)
        {
          case 0:
            if (!v8)
            {
              return result;
            }

            goto LABEL_4;
          case 1:
            if (v8 == 1)
            {
              return result;
            }

            goto LABEL_4;
          case 2:
            if (v8 == 2)
            {
              return result;
            }

            goto LABEL_4;
          case 3:
            if (v8 == 3)
            {
              return result;
            }

            goto LABEL_4;
          case 4:
            if (v8 == 4)
            {
              return result;
            }

            goto LABEL_4;
          case 5:
            if (v8 == 5)
            {
              return result;
            }

            goto LABEL_4;
          case 6:
            if (v8 == 6)
            {
              return result;
            }

            goto LABEL_4;
          case 7:
            if (v8 == 7)
            {
              return result;
            }

            goto LABEL_4;
          case 8:
            if (v8 == 8)
            {
              return result;
            }

            goto LABEL_4;
          case 9:
            if (v8 == 9)
            {
              return result;
            }

            goto LABEL_4;
          case 10:
            if (v8 == 10)
            {
              return result;
            }

            goto LABEL_4;
          case 11:
            if (v8 == 11)
            {
              return result;
            }

            goto LABEL_4;
          case 12:
            if (v8 == 12)
            {
              return result;
            }

            goto LABEL_4;
          case 13:
            if (v8 == 13)
            {
              return result;
            }

            goto LABEL_4;
          case 14:
            if (v8 == 14)
            {
              return result;
            }

            goto LABEL_4;
          case 15:
            if (v8 == 15)
            {
              return result;
            }

            goto LABEL_4;
          case 16:
            if (v8 == 16)
            {
              return result;
            }

            goto LABEL_4;
          case 17:
            if (v8 == 17)
            {
              return result;
            }

            goto LABEL_4;
          case 18:
            if (v8 == 18)
            {
              return result;
            }

            goto LABEL_4;
          default:
            JUMPOUT(0);
        }
      }

      if (v8 == a1)
      {
        break;
      }

LABEL_4:
      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v147 = type metadata accessor for DateInterval();
  v7 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v8);
  v145 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for Date();
  v11 = MEMORY[0x28223BE20](v146, v10);
  v142 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v141 = &v127 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v135 = &v127 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v134 = &v127 - v21;
  v137 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_93:
    v25 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_95;
  }

  v128 = a4;
  v23 = 0;
  v143 = (v20 + 8);
  v144 = (v7 + 8);
  v24 = MEMORY[0x277D84F90];
  v129 = a1;
  while (1)
  {
    v25 = v23;
    if (v23 + 1 >= v22)
    {
      v22 = v23 + 1;
    }

    else
    {
      v26 = *v137;
      v27 = *v137 + 16 * (v23 + 1);
      v28 = *v27;
      LOBYTE(v27) = *(v27 + 8);
      v152 = v28;
      v153 = v27;
      v29 = v26 + 16 * v23;
      v30 = *v29;
      LOBYTE(v29) = *(v29 + 8);
      v150 = v30;
      v151 = v29;
      v31 = v30;
      v32 = v28;
      v33 = v139;
      LODWORD(v136) = closure #3 in ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(&v152, &v150);
      v139 = v33;
      if (v33)
      {

        return;
      }

      v131 = v24;

      v34 = v23 + 2;
      v130 = v23;
      v140 = 16 * v23;
      v35 = (v26 + 16 * v23 + 32);
      v138 = v22;
      while (v22 != v34)
      {
        v36 = *v35;
        v37 = *(v35 - 2);
        v148 = v37;
        v149 = v36;
        v38 = [v149 dateInterval];
        v39 = v145;
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v40 = v134;
        DateInterval.end.getter();
        v41 = *v144;
        v42 = v147;
        (*v144)(v39, v147);
        v43 = [v37 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = v135;
        DateInterval.end.getter();
        v45 = v39;
        v22 = v138;
        v41(v45, v42);
        LODWORD(v43) = static Date.< infix(_:_:)() & 1;
        v46 = *v143;
        v47 = v146;
        (*v143)(v44, v146);
        v46(v40, v47);

        ++v34;
        v35 += 2;
        if ((v136 & 1) != v43)
        {
          v22 = v34 - 1;
          break;
        }
      }

      v24 = v131;
      a1 = v129;
      v25 = v130;
      if (v136)
      {
        if (v22 < v130)
        {
          goto LABEL_125;
        }

        if (v130 < v22)
        {
          v48 = 16 * v22 - 16;
          v49 = v22;
          v50 = v130;
          do
          {
            if (v50 != --v49)
            {
              v52 = *v137;
              if (!*v137)
              {
                goto LABEL_129;
              }

              v53 = (v52 + v140);
              v54 = (v52 + v48);
              v55 = *(v52 + v140);
              v56 = *(v52 + v140 + 8);
              if (v140 != v48 || v53 >= v54 + 1)
              {
                *v53 = *v54;
              }

              v51 = v52 + v48;
              *v51 = v55;
              *(v51 + 8) = v56;
            }

            ++v50;
            v48 -= 16;
            v140 += 16;
          }

          while (v50 < v49);
        }
      }
    }

    v57 = v137[1];
    if (v22 < v57)
    {
      if (__OFSUB__(v22, v25))
      {
        goto LABEL_122;
      }

      if (v22 - v25 < v128)
      {
        if (__OFADD__(v25, v128))
        {
          goto LABEL_123;
        }

        if (v25 + v128 >= v57)
        {
          v58 = v137[1];
        }

        else
        {
          v58 = v25 + v128;
        }

        if (v58 < v25)
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
LABEL_95:
          v154 = v24;
          v122 = *(v24 + 2);
          if (v122 >= 2)
          {
            while (*v137)
            {
              v123 = *&v24[16 * v122];
              v124 = *&v24[16 * v122 + 24];
              v125 = v139;
              specialized _merge<A>(low:mid:high:buffer:by:)((*v137 + 16 * v123), (*v137 + 16 * *&v24[16 * v122 + 16]), (*v137 + 16 * v124), v25);
              v139 = v125;
              if (v125)
              {
                goto LABEL_103;
              }

              if (v124 < v123)
              {
                goto LABEL_119;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
              }

              if (v122 - 2 >= *(v24 + 2))
              {
                goto LABEL_120;
              }

              v126 = &v24[16 * v122];
              *v126 = v123;
              *(v126 + 1) = v124;
              v154 = v24;
              specialized Array.remove(at:)(v122 - 1);
              v24 = v154;
              v122 = *(v154 + 2);
              if (v122 <= 1)
              {
                goto LABEL_103;
              }
            }

            goto LABEL_130;
          }

LABEL_103:

          return;
        }

        if (v22 != v58)
        {
          break;
        }
      }
    }

    v23 = v22;
    if (v22 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    }

    v60 = *(v24 + 2);
    v59 = *(v24 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v24);
    }

    *(v24 + 2) = v61;
    v62 = &v24[16 * v60];
    *(v62 + 4) = v25;
    *(v62 + 5) = v23;
    v63 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v60)
    {
      while (1)
      {
        v25 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v64 = *(v24 + 4);
          v65 = *(v24 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_52:
          if (v67)
          {
            goto LABEL_110;
          }

          v80 = &v24[16 * v61];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_113;
          }

          v86 = &v24[16 * v25 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_117;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v25 = v61 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v90 = &v24[16 * v61];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_66:
        if (v85)
        {
          goto LABEL_112;
        }

        v93 = &v24[16 * v25];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_115;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_73:
        v101 = v25 - 1;
        if (v25 - 1 >= v61)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_124;
        }

        if (!*v137)
        {
          goto LABEL_128;
        }

        v102 = *&v24[16 * v101 + 32];
        v103 = *&v24[16 * v25 + 40];
        v104 = v139;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v137 + 16 * v102), (*v137 + 16 * *&v24[16 * v25 + 32]), (*v137 + 16 * v103), v63);
        v139 = v104;
        if (v104)
        {
          goto LABEL_103;
        }

        if (v103 < v102)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
        }

        if (v101 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v105 = &v24[16 * v101];
        *(v105 + 4) = v102;
        *(v105 + 5) = v103;
        v154 = v24;
        specialized Array.remove(at:)(v25);
        v24 = v154;
        v61 = *(v154 + 2);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v24[16 * v61 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_108;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_109;
      }

      v75 = &v24[16 * v61];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_111;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_114;
      }

      if (v79 >= v71)
      {
        v97 = &v24[16 * v25 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_118;
        }

        if (v66 < v100)
        {
          v25 = v61 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = v137[1];
    if (v23 >= v22)
    {
      goto LABEL_93;
    }
  }

  v131 = v24;
  v140 = *v137;
  v106 = v140 + 16 * v22;
  v130 = v25;
  v107 = v25 - v22;
  v132 = v58;
LABEL_84:
  v138 = v22;
  v133 = v107;
  v136 = v106;
  while (1)
  {
    v108 = *v106;
    v109 = *(v106 - 16);
    v148 = v109;
    v149 = v108;
    v110 = [v149 dateInterval];
    v111 = v145;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v112 = v141;
    DateInterval.end.getter();
    v113 = *v144;
    v114 = v147;
    (*v144)(v111, v147);
    v115 = [v109 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v116 = v142;
    DateInterval.end.getter();
    v113(v111, v114);
    LOBYTE(v111) = static Date.< infix(_:_:)();
    v117 = *v143;
    v118 = v146;
    (*v143)(v116, v146);
    v117(v112, v118);

    if ((v111 & 1) == 0)
    {
LABEL_83:
      v22 = v138 + 1;
      v106 = v136 + 16;
      v107 = v133 - 1;
      v23 = v132;
      if (v138 + 1 != v132)
      {
        goto LABEL_84;
      }

      v24 = v131;
      a1 = v129;
      v25 = v130;
      if (v132 < v130)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v140)
    {
      break;
    }

    v119 = *v106;
    v120 = *(v106 + 8);
    *v106 = *(v106 - 16);
    *(v106 - 8) = v120;
    *(v106 - 16) = v119;
    v106 -= 16;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_83;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, void **a2, void **a3, id *a4)
{
  v74 = type metadata accessor for DateInterval();
  v8 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Date();
  v12 = *(v73 - 8);
  v14 = MEMORY[0x28223BE20](v73, v13);
  v69 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v68 = &v63 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v67 = (&v63 - v21);
  MEMORY[0x28223BE20](v20, v22);
  v66 = &v63 - v23;
  v24 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v24 = a2 - a1;
  }

  v25 = v24 >> 4;
  v26 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v26 = a3 - a2;
  }

  v27 = v26 >> 4;
  if (v25 >= v27)
  {
    v43 = v12;
    v44 = 2 * v27;
    if (a4 != a2 || &a2[v44] <= a4)
    {
      memmove(a4, a2, 16 * v27);
    }

    v76 = &a4[v44];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v65 = a4;
      v66 = (v8 + 8);
      v64 = (v43 + 8);
      v72 = a1;
LABEL_26:
      v63 = a2;
      v45 = a2 - 2;
      v46 = (a3 - 2);
      v47 = v76;
      v67 = a2 - 2;
      do
      {
        v48 = *(v47 - 2);
        v47 -= 2;
        v75 = v46;
        v49 = (v46 + 16);
        v50 = *v45;
        v70 = v50;
        v71 = v48;
        v51 = [v71 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = v68;
        DateInterval.end.getter();
        v53 = *v66;
        v54 = v74;
        (*v66)(v11, v74);
        v55 = [v50 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = v69;
        DateInterval.end.getter();
        v53(v11, v54);
        LOBYTE(v55) = static Date.< infix(_:_:)();
        v57 = *v64;
        v58 = v73;
        (*v64)(v56, v73);
        v57(v52, v58);

        if (v55)
        {
          a3 = v75;
          v60 = v67;
          if (v49 != v63)
          {
            *v75 = *v67;
          }

          a4 = v65;
          if (v76 <= v65 || (a2 = v60, v60 <= v72))
          {
            a2 = v60;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v59 = v75;
        if (v49 != v76)
        {
          *v75 = *v47;
        }

        v46 = v59 - 16;
        v76 = v47;
        a4 = v65;
        v45 = v67;
      }

      while (v47 > v65);
      v76 = v47;
      a2 = v63;
    }
  }

  else
  {
    v28 = 2 * v25;
    if (a4 != a1 || &a1[v28] <= a4)
    {
      memmove(a4, a1, v28 * 8);
    }

    v76 = &a4[v28];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v75 = a3;
      v68 = (v12 + 8);
      v69 = (v8 + 8);
      while (1)
      {
        v72 = a1;
        v29 = a2;
        v30 = *a2;
        v31 = *a4;
        v70 = v31;
        v71 = v30;
        v32 = [v71 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = v66;
        DateInterval.end.getter();
        v34 = *v69;
        v35 = v74;
        (*v69)(v11, v74);
        v36 = [v31 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = v67;
        DateInterval.end.getter();
        v34(v11, v35);
        LOBYTE(v36) = static Date.< infix(_:_:)();
        v38 = *v68;
        v39 = v73;
        (*v68)(v37, v73);
        v38(v33, v39);

        if ((v36 & 1) == 0)
        {
          break;
        }

        v40 = v29;
        a2 = v29 + 2;
        v41 = v72;
        if (v72 != v29)
        {
          goto LABEL_16;
        }

LABEL_17:
        a1 = v41 + 2;
        if (a4 >= v76 || a2 >= v75)
        {
          goto LABEL_19;
        }
      }

      v40 = a4;
      v41 = v72;
      v42 = v72 == a4;
      a4 += 2;
      a2 = v29;
      if (v42)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v41 = *v40;
      goto LABEL_17;
    }

LABEL_19:
    a2 = a1;
  }

LABEL_37:
  v61 = (v76 - a4 + (v76 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (a2 != a4 || a2 >= (a4 + v61))
  {
    memmove(a2, a4, v61);
  }

  return 1;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

id specialized ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)(uint64_t a1, void *a2, int a3, void *a4, void *a5, double a6)
{
  v64 = a5;
  v65 = a2;
  v66 = a4;
  v67 = a3;
  v68 = a1;
  v8 = v6;
  v55[1] = swift_getObjectType();
  v69 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v10);
  v58 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v63 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v63, v14);
  v15 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate;
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v56 = v8;
  v17(&v8[v15], 1, 1, v16);
  v18 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples] = MEMORY[0x277D84F90];
  v57 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v60 = _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v59 = *MEMORY[0x277D85260];
  v19 = *(v9 + 104);
  v61 = v9 + 104;
  v62 = v19;
  v20 = v58;
  v19(v58);
  v21 = v56;
  *&v21[v57] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes;
  *&v21[v22] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(v18);
  v17(&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate], 1, 1, v16);
  v23 = &v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex];
  *v23 = 0;
  v23[8] = 1;
  v17(&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate], 1, 1, v16);
  v17(&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate], 1, 1, v16);
  v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused] = 0;
  v24 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue;
  static DispatchQoS.unspecified.getter();
  v71[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v25 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v62(v20, v59, v69);
  v26 = v65;
  *&v21[v24] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = v66;
  v28 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator] = 0;
  v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession] = 0;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query] = 0;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore] = v26;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] = a6;
  v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] = v67;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier] = v27;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit] = v25;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {
    v33 = v26;
    v34 = v27;
    v35 = v25;
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v37 = v26;
    v38 = v27;
    v39 = v25;

    if ((v36 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  type metadata accessor for WindowedAccumulator();
  v40 = swift_allocObject();
  *(v40 + 48) = MEMORY[0x277D84F90];
  *(v40 + 56) = 0;
  *(v40 + 16) = 0x4010000000000000;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 40) = 1;
  *&v21[v28] = v40;

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static WOLog.zones);
  v42 = v27;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v71[0] = v46;
    *v45 = 136315394;
    v47 = _typeName(_:qualified:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v71);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v71);

    *(v45 + 14) = v52;
    _os_log_impl(&dword_20AEA4000, v43, v44, "%s using 3s average accumulator for processing %s samples", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v46, -1, -1);
    MEMORY[0x20F2E9420](v45, -1, -1);
  }

LABEL_10:
  v53 = type metadata accessor for ZonesAccumulator(0);
  v70.receiver = v21;
  v70.super_class = v53;
  return objc_msgSendSuper2(&v70, sel_initWithBuilder_, v68);
}

void specialized ZonesAccumulator.accumulatorDidStart(withStart:handler:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v83 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v85 = &v77 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v87 = &v77 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v77 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v77 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v77 - v28;
  outlined init with copy of Date?(a1, v26);
  v30 = *(v5 + 48);
  if (v30(v26, 1, v4) == 1)
  {
    Date.init()();
    if (v30(v26, 1, v4) != 1)
    {
      outlined destroy of Date?(v26);
    }
  }

  else
  {
    (*(v5 + 32))(v29, v26, v4);
  }

  (*(v5 + 56))(v29, 0, 1, v4);
  v31 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate;
  swift_beginAccess();
  v84 = v31;
  outlined assign with take of Date?(v29, v2 + v31);
  swift_endAccess();
  v32 = [v2 builder];
  v33 = [v32 workoutSession];

  if (v33)
  {
    v34 = [v33 state];

    *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused) = v34 == 4;
  }

  v88 = v30;
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static WOLog.zones);
  outlined init with copy of Date?(a1, v22);
  v36 = v2;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v80 = v38;
    v81 = v37;
    v82 = v12;
    v39 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v89[0] = v79;
    *v39 = 136316674;
    v40 = _typeName(_:qualified:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v89);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    v43 = v87;
    outlined init with copy of Date?(v22, v87);
    ObjectType = v5 + 48;
    LODWORD(v43) = v88(v43, 1, v4);

    if (v43 == 1)
    {
      goto LABEL_21;
    }

    v78 = a1;
    v44 = v5;
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v45 = static WOLog.logDateFormatter;
    v46 = v87;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v77 = v45;
    v48 = [v45 stringFromDate_];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    outlined destroy of Date?(v22);
    v52 = *(v44 + 8);
    v52(v46, v4);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v89);

    *(v39 + 14) = v53;
    *(v39 + 22) = 2080;
    v54 = v85;
    outlined init with copy of Date?(v2 + v84, v85);
    if (v88(v54, 1, v4))
    {
      outlined destroy of Date?(v54);
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v57 = v83;
      (*(v44 + 16))(v83, v54, v4);
      outlined destroy of Date?(v54);
      v58 = Date._bridgeToObjectiveC()().super.isa;
      v59 = v52;
      v60 = [v77 stringFromDate_];

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v61;

      v59(v57, v4);
    }

    v5 = v44;
    a1 = v78;
    v89[1] = v55;
    v89[2] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v62 = Optional.description.getter();
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v89);

    *(v39 + 24) = v65;
    *(v39 + 32) = 1024;
    LODWORD(v65) = v36[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity];

    *(v39 + 34) = v65;
    *(v39 + 38) = 2080;
    v66 = ZonesAccumulator.zonesSnapshotString.getter();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v89);

    *(v39 + 40) = v68;
    *(v39 + 48) = 2080;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v89);

    *(v39 + 50) = v71;
    *(v39 + 58) = 2080;
    v72 = ZonesAccumulator.stateSnapshotString.getter();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v89);

    *(v39 + 60) = v74;
    v75 = v81;
    _os_log_impl(&dword_20AEA4000, v81, v80, "%s accumulatorDidStart with startDate %s, activityStartDate: %s, shouldSplitByActivity: %{BOOL}d, zones: (%s), quantityTypeIdentifier: %s, state (%s)", v39, 0x44u);
    v76 = v79;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v76, -1, -1);
    MEMORY[0x20F2E9420](v39, -1, -1);

    v12 = v82;
  }

  else
  {

    outlined destroy of Date?(v22);
  }

  outlined init with copy of Date?(a1, v12);
  if (v88(v12, 1, v4) != 1)
  {
    ZonesAccumulator.startQuery(startDate:)();
    (*(v5 + 8))(v12, v4);
    return;
  }

  __break(1u);
LABEL_21:

  __break(1u);
}

uint64_t type metadata accessor for ZonesAccumulator(uint64_t a1)
{
  result = type metadata singleton initialization cache for ZonesAccumulator;
  if (!type metadata singleton initialization cache for ZonesAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_34Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return outlined init with copy of Date?(v4 + v5, a3);
}

void type metadata completion function for ZonesAccumulator(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey);
  }

  return result;
}

uint64_t outlined init with copy of ZoneProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *partial apply for closure #2 in ZonesAccumulator.processIfReady()()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return closure #2 in ZonesAccumulator.processIfReady()(v2, v3, v4);
}

unint64_t partial apply for closure #1 in ZonesAccumulator.processIfReady()()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #1 in ZonesAccumulator.processIfReady()(v2, v3, v4, v5);
}

unint64_t lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected()
{
  result = lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected()
{
  result = lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZonesAccumulator.Entry(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ZonesAccumulator.Entry(uint64_t result, unsigned int a2, unsigned int a3)
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

void closure #1 in ZonesAccumulator.currentZoneIndex.getterpartial apply(uint64_t a1@<X8>)
{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

uint64_t closure #1 in ZonesAccumulator.elapsedTimes.getterpartial apply@<X0>(void *a1@<X8>)
{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_1(a1);
}

uint64_t closure #1 in ZonesAccumulator.lastProcessedEntryDate.getterpartial apply@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_1(a1);
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, type metadata accessor for WorkoutConfiguration);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, type metadata accessor for GoalWorkoutConfiguration);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for HKQuantitySample, 0x277CCD800, &protocol witness table for HKQuantitySample);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for HKWorkoutBuilderQuantity, 0x277CCDC08, &protocol witness table for HKWorkoutBuilderQuantity);
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v19 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x20F2E7A20](v7, a1);
        v19 = v5;
        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v5 = v19;
        }

        ++v7;
        v17 = a2(0);
        v18 = &protocol witness table for WorkoutConfiguration;
        *&v16 = v8;
        *(v5 + 16) = v10 + 1;
        _s11WorkoutCore12ZoneProtocol_pWOb_0(&v16, v5 + 40 * v10 + 32);
      }

      while (v4 != v7);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *v11;
        v19 = v5;
        v13 = *(v5 + 16);
        v14 = *(v5 + 24);
        v15 = v12;
        if (v13 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
          v5 = v19;
        }

        v17 = a2(0);
        v18 = &protocol witness table for WorkoutConfiguration;
        *&v16 = v15;
        *(v5 + 16) = v13 + 1;
        _s11WorkoutCore12ZoneProtocol_pWOb_0(&v16, v5 + 40 * v13 + 32);
        ++v11;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1, unint64_t *a2, void *a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v23 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x20F2E7A20](v11, a1);
        v23 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v9 = v23;
        }

        ++v11;
        v21 = _sSo17OS_dispatch_queueCMaTm_2(0, a2, a3);
        v22 = a4;
        *&v20 = v12;
        *(v9 + 16) = v14 + 1;
        _s11WorkoutCore12ZoneProtocol_pWOb_0(&v20, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v23 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v16;
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v9 = v23;
        }

        v21 = _sSo17OS_dispatch_queueCMaTm_2(0, a2, a3);
        v22 = a4;
        *&v20 = v19;
        *(v9 + 16) = v18 + 1;
        _s11WorkoutCore12ZoneProtocol_pWOb_0(&v20, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ElevationSample(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      outlined init with copy of ElevationSample(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &protocol witness table for ElevationSample;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      outlined init with copy of ElevationSample(v6, boxed_opaque_existential_1);
      *(v8 + 16) = v12 + 1;
      _s11WorkoutCore12ZoneProtocol_pWOb_0(&v15, v8 + 40 * v12 + 32);
      outlined destroy of ElevationSample(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      outlined init with take of Any(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, unint64_t))
{
  if (a1 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v25 = MEMORY[0x277D84F90];
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v21 = a2;
    v11 = v25;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = MEMORY[0x20F2E7A20](v13, a1);
        v25 = v11;
        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          v21(v15 > 1, v16 + 1, 1);
          v11 = v25;
        }

        ++v13;
        v23 = a3(0);
        v24 = a4;
        v22[0] = v14;
        *(v11 + 16) = v16 + 1;
        a5(v22, v11 + 40 * v16 + 32);
      }

      while (v10 != v13);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v25 = v11;
        v19 = *(v11 + 16);
        v20 = *(v11 + 24);

        if (v19 >= v20 >> 1)
        {
          v21(v20 > 1, v19 + 1, 1);
          v11 = v25;
        }

        v23 = a3(0);
        v24 = a4;
        v22[0] = v18;
        *(v11 + 16) = v19 + 1;
        a5(v22, v11 + 40 * v19 + 32);
        ++v17;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x20F2E7A20](i, a1);
        _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x20F2E7A20](i, a1);
        type metadata accessor for StandardWorkoutAddWorkoutRow();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for StandardWorkoutAddWorkoutRow();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void specialized ZonesAccumulator.update<A>(liveZones:)(uint64_t *a1)
{
  v66 = a1;
  v2 = type metadata accessor for Date();
  v61 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v54 - v14;
  v70 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v16 = v71;
  v69 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v65 = v71;
  v64 = v72;
  v68 = v1;
  v58 = v15;
  OS_dispatch_queue.sync<A>(execute:)();
  v67 = v1;
  OS_dispatch_queue.sync<A>(execute:)();
  v62 = v8;
  v56 = v1;
  v59 = v2;
  v54 = 0;
  if (v72)
  {
    v60 = 0;
    v63 = 1;
  }

  else
  {
    v17 = v71;
    static Date.now.getter();
    v60 = ZonesAccumulator.elapsedTime(at:ending:)(v17, v8);
    v63 = v18;
    (*(v61 + 8))(v8, v2);
  }

  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
LABEL_7:
  v24 = v65;
  while (v21)
  {
LABEL_14:
    v27 = (v23 << 9) | (8 * __clz(__rbit64(v21)));
    v28 = *(*(v16 + 48) + v27);
    v29 = *(*(v16 + 56) + v27);
    v30 = *v66;
    swift_beginAccess();
    v31 = *(v30 + 16);
    if (v31 >> 62)
    {
      v32 = __CocoaSet.count.getter();
      if ((v32 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 &= v21 - 1;
    if (v28 < v32)
    {
      v33 = v64;
      if (v28 != v24)
      {
        v33 = 1;
      }

      if ((v33 | v63))
      {
        swift_beginAccess();
        v38 = *(v30 + 16);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v30 + 16) = v38;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v38 < 0 || (v38 & 0x4000000000000000) != 0)
        {

          v40 = specialized _ArrayBuffer._consumeAndCreateNew()();
          *(v30 + 16) = v40;

          v38 = v40;
        }

        if (v28 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 8 * v28 + 0x20);
          swift_beginAccess();
          *(v41 + 48) = v29;
          *(v30 + 16) = v38;
          swift_endAccess();
          goto LABEL_7;
        }

        goto LABEL_40;
      }

      swift_beginAccess();
      v34 = *(v30 + 16);
      v35 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v30 + 16) = v34;
      if (!v35 || v34 < 0 || (v34 & 0x4000000000000000) != 0)
      {

        v36 = specialized _ArrayBuffer._consumeAndCreateNew()();
        *(v30 + 16) = v36;

        v34 = v36;
        v24 = v65;
      }

      if (v24 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v24 + 0x20);
      swift_beginAccess();
      *(v37 + 48) = v60;
      v24 = v65;
      *(v30 + 16) = v34;
      swift_endAccess();
    }
  }

  v25 = v62;
  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = *(v16 + 64 + 8 * v26);
    ++v23;
    if (v21)
    {
      v23 = v26;
      goto LABEL_14;
    }
  }

  v42 = *v66;
  swift_beginAccess();
  *(v42 + 24) = v24;
  *(v42 + 32) = v64;
  v43 = v57;
  v44 = v58;
  outlined init with copy of Date?(v58, v57);
  v45 = v61;
  v46 = v59;
  if ((*(v61 + 48))(v43, 1, v59) == 1)
  {
    outlined destroy of Date?(v44);
    outlined destroy of Date?(v43);
    swift_beginAccess();
    *(v42 + 33) = 1;
  }

  else
  {
    v47 = v55;
    (*(v45 + 32))(v55, v43, v46);
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v49 = v48;
    v50 = *(v45 + 8);
    v50(v25, v46);
    Date.timeIntervalSinceReferenceDate.getter();
    v52 = v51;
    v50(v47, v46);
    outlined destroy of Date?(v44);
    v53 = *(v56 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout) < v49 - v52;
    swift_beginAccess();
    *(v42 + 33) = v53;
  }
}

{
  v66 = a1;
  v2 = type metadata accessor for Date();
  v61 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v54 - v14;
  v70 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v16 = v71;
  v69 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v65 = v71;
  v64 = v72;
  v68 = v1;
  v58 = v15;
  OS_dispatch_queue.sync<A>(execute:)();
  v67 = v1;
  OS_dispatch_queue.sync<A>(execute:)();
  v62 = v8;
  v56 = v1;
  v59 = v2;
  v54 = 0;
  if (v72)
  {
    v60 = 0;
    v63 = 1;
  }

  else
  {
    v17 = v71;
    static Date.now.getter();
    v60 = ZonesAccumulator.elapsedTime(at:ending:)(v17, v8);
    v63 = v18;
    (*(v61 + 8))(v8, v2);
  }

  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
LABEL_7:
  v24 = v65;
  while (v21)
  {
LABEL_14:
    v27 = (v23 << 9) | (8 * __clz(__rbit64(v21)));
    v28 = *(*(v16 + 48) + v27);
    v29 = *(*(v16 + 56) + v27);
    v30 = *v66;
    swift_beginAccess();
    v31 = *(v30 + 16);
    if (v31 >> 62)
    {
      v32 = __CocoaSet.count.getter();
      if ((v32 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 &= v21 - 1;
    if (v28 < v32)
    {
      v33 = v64;
      if (v28 != v24)
      {
        v33 = 1;
      }

      if ((v33 | v63))
      {
        swift_beginAccess();
        v38 = *(v30 + 16);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v30 + 16) = v38;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v38 < 0 || (v38 & 0x4000000000000000) != 0)
        {

          v40 = specialized _ArrayBuffer._consumeAndCreateNew()();
          *(v30 + 16) = v40;

          v38 = v40;
        }

        if (v28 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 8 * v28 + 0x20);
          swift_beginAccess();
          *(v41 + 48) = v29;
          *(v30 + 16) = v38;
          swift_endAccess();
          goto LABEL_7;
        }

        goto LABEL_40;
      }

      swift_beginAccess();
      v34 = *(v30 + 16);
      v35 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v30 + 16) = v34;
      if (!v35 || v34 < 0 || (v34 & 0x4000000000000000) != 0)
      {

        v36 = specialized _ArrayBuffer._consumeAndCreateNew()();
        *(v30 + 16) = v36;

        v34 = v36;
        v24 = v65;
      }

      if (v24 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v24 + 0x20);
      swift_beginAccess();
      *(v37 + 48) = v60;
      v24 = v65;
      *(v30 + 16) = v34;
      swift_endAccess();
    }
  }

  v25 = v62;
  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = *(v16 + 64 + 8 * v26);
    ++v23;
    if (v21)
    {
      v23 = v26;
      goto LABEL_14;
    }
  }

  v42 = *v66;
  swift_beginAccess();
  *(v42 + 24) = v24;
  *(v42 + 32) = v64;
  v43 = v57;
  v44 = v58;
  outlined init with copy of Date?(v58, v57);
  v45 = v61;
  v46 = v59;
  if ((*(v61 + 48))(v43, 1, v59) == 1)
  {
    outlined destroy of Date?(v44);
    outlined destroy of Date?(v43);
    swift_beginAccess();
    *(v42 + 33) = 1;
  }

  else
  {
    v47 = v55;
    (*(v45 + 32))(v55, v43, v46);
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v49 = v48;
    v50 = *(v45 + 8);
    v50(v25, v46);
    Date.timeIntervalSinceReferenceDate.getter();
    v52 = v51;
    v50(v47, v46);
    outlined destroy of Date?(v44);
    v53 = *(v56 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout) < v49 - v52;
    swift_beginAccess();
    *(v42 + 33) = v53;
  }
}

uint64_t HeartRateZonesAccumulator.liveHeartRateZones.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal);
  if (!v1)
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v5 = *(v1 + 33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 16) = v2;
  swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 33) = v5;
  v8 = v6;

  specialized ZonesAccumulator.update<A>(liveZones:)(&v8);

  return v6;
}

uint64_t HeartRateZonesAccumulator.zones.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
    swift_beginAccess();
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    swift_beginAccess();
    v5 = *(v1 + 33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    *(inited + 16) = v2;
    swift_beginAccess();
    *(inited + 24) = v3;
    *(inited + 32) = v4;
    *(inited + 33) = v5;
    v8 = inited;

    specialized ZonesAccumulator.update<A>(liveZones:)(&v8);

    swift_beginAccess();
    v1 = specialized _arrayForceCast<A, B>(_:)(*(inited + 16), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for LiveHeartRateZone, &protocol witness table for Zone, outlined init with take of ZoneProtocol);
  }

  return v1;
}

void HeartRateZonesAccumulator.oldZoneState.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void HeartRateZonesAccumulator.oldZoneState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t (*HeartRateZonesAccumulator.workoutAlertDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_workoutAlertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return HeartRateZonesAccumulator.workoutAlertDelegate.modify;
}

id @objc HeartRateZonesAccumulator.workoutAlertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t HeartRateZonesAccumulator.workoutAlertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*HeartRateZonesAccumulator.heartRateZoneConfigurationDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateZoneConfigurationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return HeartRateZonesAccumulator.heartRateZoneConfigurationDelegate.modify;
}

void HeartRateZonesAccumulator.workoutAlertDelegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t key path setter for HeartRateZonesAccumulator.lastAlertFiredAtDate : HeartRateZonesAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Date?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t HeartRateZonesAccumulator.lastAlertFiredAtDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t HeartRateZonesAccumulator.lastAlertFiredAtDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

id HeartRateZonesAccumulator.__allocating_init(builder:healthStore:staleTimeout:alertHoldoffTime:shouldSplitByActivity:targetZone:)(void *a1, void *a2, int a3, void *a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = 0;
  v13[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  *&v13[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone] = a4;
  *&v13[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime] = a6;
  v16 = *MEMORY[0x277CCCB90];
  v17 = objc_opt_self();
  v18 = a4;
  v19 = a1;
  v20 = a2;
  v21 = v16;
  v22 = [v17 _countPerMinuteUnit];
  v23 = specialized ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)(v19, v20, a3, v21, v22, a5);

  v24 = v23;
  HeartRateZonesAccumulator.loadHeartRateZones()();

  return v24;
}

id HeartRateZonesAccumulator.init(builder:healthStore:staleTimeout:alertHoldoffTime:shouldSplitByActivity:targetZone:)(void *a1, void *a2, int a3, void *a4, double a5, double a6)
{
  v7 = v6;
  v79 = a3;
  v77 = a2;
  v67[1] = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  v82 = v12;
  v83 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v76 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v78 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v78, v18);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = 0;
  v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(&v7[v21], 1, 1, v22);
  v69 = v23;
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone] = a4;
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime] = a6;
  v24 = *MEMORY[0x277CCCB90];
  v25 = objc_opt_self();
  v81 = a4;
  v80 = a1;
  v75 = v77;
  v77 = v24;
  v74 = [v25 _countPerMinuteUnit];
  v23(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate], 1, 1, v22);
  v26 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples] = MEMORY[0x277D84F90];
  v68 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v72 = _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v70 = v20;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v71 = *MEMORY[0x277D85260];
  v27 = *(v83 + 104);
  v83 += 104;
  v73 = v27;
  v28 = v76;
  v27(v76);
  *&v7[v68] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes;
  *&v7[v29] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(v26);
  v30 = v69;
  v69(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate], 1, 1, v22);
  v31 = &v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex];
  *v31 = 0;
  v31[8] = 1;
  v30(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate], 1, 1, v22);
  v30(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate], 1, 1, v22);
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused] = 0;
  v32 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue;
  static DispatchQoS.unspecified.getter();
  v85[0] = v26;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v33 = v74;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v34 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v73(v28, v71, v82);
  v35 = v77;
  *&v7[v32] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v36 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator] = 0;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore] = v34;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] = a5;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] = v79;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier] = v35;
  v37 = v33;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit] = v33;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
  {
    v42 = v34;
    v43 = v35;
    v44 = v33;
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v46 = v34;
    v47 = v35;
    v48 = v33;

    if ((v45 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  type metadata accessor for WindowedAccumulator();
  v49 = swift_allocObject();
  *(v49 + 48) = MEMORY[0x277D84F90];
  *(v49 + 56) = 0;
  *(v49 + 16) = 0x4010000000000000;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 40) = 1;
  *&v7[v36] = v49;

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static WOLog.zones);
  v51 = v35;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v85[0] = v55;
    *v54 = 136315394;
    implicit closure #1 in ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)();
    v56 = _typeName(_:qualified:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v85);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v85);

    *(v54 + 14) = v61;
    _os_log_impl(&dword_20AEA4000, v52, v53, "%s using 3s average accumulator for processing %s samples", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v55, -1, -1);
    MEMORY[0x20F2E9420](v54, -1, -1);
  }

LABEL_10:
  v62 = type metadata accessor for ZonesAccumulator(0);
  v84.receiver = v7;
  v84.super_class = v62;
  v63 = v80;
  v64 = objc_msgSendSuper2(&v84, sel_initWithBuilder_, v80);

  v65 = v64;
  HeartRateZonesAccumulator.loadHeartRateZones()();

  return v65;
}

id HeartRateZonesAccumulator.__allocating_init(builder:healthStore:staleTimeout:liveWorkoutConfiguration:shouldSplitByActivity:targetZone:)(void *a1, void *a2, char *a3, int a4, void *a5, double a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = 0;
  v14[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  *&v14[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone] = a5;
  type metadata accessor for IntervalWorkoutConfiguration(0);
  v17 = swift_dynamicCastClass();
  v18 = 60.0;
  if (v17)
  {
    v18 = 10.0;
  }

  *&v14[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime] = v18;
  v19 = *MEMORY[0x277CCCB90];
  v20 = objc_opt_self();
  v21 = a5;
  v22 = a1;
  v23 = a2;
  v24 = v19;
  v25 = [v20 _countPerMinuteUnit];
  v26 = specialized ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)(v22, v23, a4, v24, v25, a6);

  v27 = v26;
  HeartRateZonesAccumulator.loadHeartRateZones()();

  return v27;
}

id HeartRateZonesAccumulator.init(builder:healthStore:staleTimeout:liveWorkoutConfiguration:shouldSplitByActivity:targetZone:)(void *a1, void *a2, char *a3, int a4, void *a5, double a6)
{
  v7 = v6;
  v77 = a4;
  v83 = a2;
  v69[1] = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  v81 = v12;
  v82 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v75 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v73 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v76, v19);
  *&v6[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = 0;
  v6[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(&v7[v20], 1, 1, v21);
  v69[2] = v24;
  v25 = v23;
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone] = a5;
  v80 = a3;
  type metadata accessor for IntervalWorkoutConfiguration(0);
  v26 = swift_dynamicCastClass();
  v27 = 60.0;
  if (v26)
  {
    v27 = 10.0;
  }

  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime] = v27;
  v28 = *MEMORY[0x277CCCB90];
  v29 = objc_opt_self();
  v79 = a5;
  v78 = a1;
  v74 = v83;
  v72 = v28;
  v83 = [v29 _countPerMinuteUnit];
  v25(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate], 1, 1, v21);
  v30 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples] = MEMORY[0x277D84F90];
  v31 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v69[3] = _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v71 = *MEMORY[0x277D85260];
  v32 = *(v82 + 104);
  v82 += 104;
  v70 = v32;
  v33 = v75;
  v32(v75);
  *&v7[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v34 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes;
  *&v7[v34] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(v30);
  v25(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate], 1, 1, v21);
  v35 = &v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex];
  *v35 = 0;
  v35[8] = 1;
  v25(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate], 1, 1, v21);
  v25(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate], 1, 1, v21);
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused] = 0;
  v36 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue;
  static DispatchQoS.unspecified.getter();
  v85[0] = v30;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v37 = v72;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v74;
  v70(v33, v71, v81);
  *&v7[v36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator] = 0;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore] = v38;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] = a6;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] = v77;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier] = v37;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit] = v83;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {
    v44 = v38;
    v45 = v37;
    v46 = v83;
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v48 = v38;
    v49 = v37;
    v50 = v83;

    if ((v47 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  type metadata accessor for WindowedAccumulator();
  v51 = swift_allocObject();
  *(v51 + 48) = MEMORY[0x277D84F90];
  *(v51 + 56) = 0;
  *(v51 + 16) = 0x4010000000000000;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 40) = 1;
  *&v7[v39] = v51;

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static WOLog.zones);
  v53 = v37;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v85[0] = v57;
    *v56 = 136315394;
    implicit closure #1 in ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)();
    v58 = _typeName(_:qualified:)();
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v85);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v85);

    *(v56 + 14) = v63;
    _os_log_impl(&dword_20AEA4000, v54, v55, "%s using 3s average accumulator for processing %s samples", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v57, -1, -1);
    MEMORY[0x20F2E9420](v56, -1, -1);
  }

LABEL_12:
  v64 = type metadata accessor for ZonesAccumulator(0);
  v84.receiver = v7;
  v84.super_class = v64;
  v65 = v78;
  v66 = objc_msgSendSuper2(&v84, sel_initWithBuilder_, v78);

  v67 = v66;
  HeartRateZonesAccumulator.loadHeartRateZones()();

  return v67;
}

uint64_t HeartRateZonesAccumulator.updateTargetZone(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in HeartRateZonesAccumulator.updateTargetZone(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_4;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v14);
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in HeartRateZonesAccumulator.updateTargetZone(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone);
    *(Strong + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone) = a2;
    v5 = Strong;
    v6 = a2;
  }
}

uint64_t HeartRateZonesAccumulator.loadHeartRateZones()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v126 = &v116 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v116 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v129 = &v116 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v130 = &v116 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v116 - v21;
  v23 = [v0 builder];
  v24 = [v23 metadata];
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = unpackedHeartRateZones(from:)(v25);

  if (v26)
  {
    v123 = v6;
    v27 = v1;
    v28 = [v1 builder];
    v29 = [v28 metadata];
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v30, 0xD00000000000002CLL, 0x800000020B456CA0);

    if (v31)
    {
      v124 = v31;
      v125 = v13;
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v121 = v26;
      v127 = v22;
      v32 = type metadata accessor for Logger();
      v119 = __swift_project_value_buffer(v32, static WOLog.zones);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v130;
      if (v35)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v131 = v38;
        *v37 = 136315138;
        v39 = _typeName(_:qualified:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v131);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_20AEA4000, v33, v34, "%s is recovering HeartRateZones and state from builder metadata", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        v42 = v38;
        v36 = v130;
        MEMORY[0x20F2E9420](v42, -1, -1);
        MEMORY[0x20F2E9420](v37, -1, -1);
      }

      v43 = [v27 builder];
      v44 = [v43 metadata];
      v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v45, 0xD000000000000035, 0x800000020B456CD0, v127);

      v46 = [v27 builder];
      v47 = [v46 &selRef_setChronicledInstance_];
      v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v48, 0xD000000000000035, 0x800000020B456D10, v36);

      v120 = v27;
      v49 = [v27 builder];
      v50 = [v49 &selRef_setChronicledInstance_];
      v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v51, 0xD00000000000002FLL, 0x800000020B456D50);
      v122 = v53;

      v54 = v121;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v131 = v58;
        *v57 = 136315394;
        v59 = _typeName(_:qualified:)();
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v131);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        v62 = type metadata accessor for HeartRateZone();
        v63 = MEMORY[0x20F2E6F70](v54, v62);
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v131);

        *(v57 + 14) = v65;
        _os_log_impl(&dword_20AEA4000, v55, v56, "%s recovered metadataHeartRateZones: %s", v57, 0x16u);
        swift_arrayDestroy();
        v66 = v58;
        v36 = v130;
        MEMORY[0x20F2E9420](v66, -1, -1);
        MEMORY[0x20F2E9420](v57, -1, -1);
      }

      v67 = v125;
      v68 = v127;
      v69 = v129;
      outlined init with copy of Date?(v127, v129);
      outlined init with copy of Date?(v36, v67);
      v70 = v124;

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v117 = v72;
        v118 = v71;
        v119 = v52;
        v73 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v133 = v116;
        *v73 = 136316162;
        v74 = _typeName(_:qualified:)();
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v133);

        *(v73 + 4) = v76;
        *(v73 + 12) = 2080;
        v77 = Dictionary.description.getter();
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v133);

        *(v73 + 14) = v79;
        *(v73 + 22) = 2080;
        v80 = v126;
        outlined init with copy of Date?(v69, v126);
        v81 = type metadata accessor for Date();
        v82 = *(v81 - 8);
        v83 = *(v82 + 48);
        if (v83(v80, 1, v81) == 1)
        {
          outlined destroy of Date?(v80);
          v84 = 0;
          v85 = 0;
        }

        else
        {
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v91 = static WOLog.logDateFormatter;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v93 = [v91 stringFromDate_];

          v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v94;

          (*(v82 + 8))(v80, v81);
        }

        v131 = v84;
        v132 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v95 = Optional.description.getter();
        v97 = v96;
        outlined destroy of Date?(v129);

        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v133);

        *(v73 + 24) = v98;
        *(v73 + 32) = 2080;
        v99 = v123;
        outlined init with copy of Date?(v125, v123);
        if (v83(v99, 1, v81) == 1)
        {
          outlined destroy of Date?(v99);
          v100 = 0;
          v101 = 0;
          v52 = v119;
        }

        else
        {
          v52 = v119;
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v102 = static WOLog.logDateFormatter;
          v103 = Date._bridgeToObjectiveC()().super.isa;
          v104 = [v102 stringFromDate_];

          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v99;
          v101 = v106;

          (*(v82 + 8))(v105, v81);
        }

        v131 = v100;
        v132 = v101;
        v107 = Optional.description.getter();
        v109 = v108;
        outlined destroy of Date?(v125);

        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v133);

        *(v73 + 34) = v110;
        *(v73 + 42) = 2080;
        v131 = v52;
        v90 = v122;
        LOBYTE(v132) = v122 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
        v111 = Optional.description.getter();
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, &v133);

        *(v73 + 44) = v113;
        v114 = v118;
        _os_log_impl(&dword_20AEA4000, v118, v117, "%s recovered elapsedTimeInHeartRateZones: %s, lastProcessedEntryDate: %s, lastProcessedEventDate: %s, currentZoneIndex: %s", v73, 0x34u);
        v115 = v116;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v115, -1, -1);
        MEMORY[0x20F2E9420](v73, -1, -1);

        v36 = v130;
        v68 = v127;
        v70 = v124;
      }

      else
      {

        outlined destroy of Date?(v67);
        outlined destroy of Date?(v69);
        v90 = v122;
      }

      HeartRateZonesAccumulator._mainThread_handleRecovery(metadataHeartRateZones:elapsedTimeInHeartRateZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(v54, v70, v68, v36, v52, v90 & 1);

      outlined destroy of Date?(v36);
      return outlined destroy of Date?(v68);
    }
  }

  type metadata accessor for HeartRateConfigurationRequest();
  v86 = swift_allocObject();
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for HeartRateConfiguration();
  v88 = swift_allocObject();
  v88[2] = v86;
  v88[3] = partial apply for closure #1 in HeartRateZonesAccumulator.loadHeartRateZones();
  v88[4] = v87;
  swift_retain_n();

  static HeartRateConfiguration.fetchConfigurationType(completion:)(_s11WorkoutCore29HeartRateConfigurationRequestC011fetchActivecdE010completionyyAA0cdE0CSgc_tFyAG0E4TypeOcfU_TA_0, v88);
}

uint64_t closure #1 in HeartRateZonesAccumulator.loadHeartRateZones()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in HeartRateZonesAccumulator.loadHeartRateZones();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_75;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v10, v6, v15);
  _Block_release(v15);

  (*(v19 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v18);
}

void closure #1 in closure #1 in HeartRateZonesAccumulator.loadHeartRateZones()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    HeartRateZonesAccumulator._mainThread_handleActiveConfigurationLoad(_:)(a2);
  }
}

id HeartRateZonesAccumulator._mainThread_handleRecovery(metadataHeartRateZones:elapsedTimeInHeartRateZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6)
{
  v7 = v6;
  v195 = a4;
  v200 = a3;
  v214 = a2;
  ObjectType = swift_getObjectType();
  v212 = type metadata accessor for DispatchQoS();
  v11 = *(v212 - 8);
  MEMORY[0x28223BE20](v212, v12);
  v211 = v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v210 - 8);
  MEMORY[0x28223BE20](v210, v15);
  v209 = v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v190 = v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  isUniquelyReferenced_nonNull_native = v186 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v189 = v186 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v194 = v186 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v188 = v186 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v199 = v186 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v39 = v186 - v38;
  v215 = type metadata accessor for Date();
  v213 = *(v215 - 8);
  v41 = MEMORY[0x28223BE20](v215, v40);
  v197 = v186 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v187 = v186 - v45;
  MEMORY[0x28223BE20](v44, v46);
  v193 = v186 - v47;
  v48 = a1 >> 62;
  if ((a6 & 1) == 0)
  {
    if (!v48)
    {
      v49 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }

    goto LABEL_93;
  }

LABEL_8:
  v196 = isUniquelyReferenced_nonNull_native;
  outlined init with copy of Date?(v200, v39);
  v52 = v213;
  v53 = *(v213 + 48);
  v54 = v215;
  v207 = v213 + 48;
  v206 = v53;
  v55 = v53(v39, 1, v215);
  v192 = a1;
  v191 = v48;
  if (v55 == 1)
  {
    outlined destroy of Date?(v39);
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static WOLog.zones);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock = v60;
      *v59 = 136315138;
      v61 = _typeName(_:qualified:)();
      v63 = v48;
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &aBlock);

      *(v59 + 4) = v64;
      v48 = v63;
      _os_log_impl(&dword_20AEA4000, v57, v58, "%s no lastProcessedEntryDate found in metadata, recovering from the beginning with HK query", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x20F2E9420](v60, -1, -1);
      MEMORY[0x20F2E9420](v59, -1, -1);
    }

    v39 = v215;
    v65 = v213;
    goto LABEL_46;
  }

  v186[2] = v17;
  v66 = v193;
  (*(v52 + 32))(v193, v39, v54);
  v67 = *(v52 + 16);
  v68 = v199;
  v186[1] = v52 + 16;
  v186[0] = v67;
  v67(v199, v66, v54);
  (*(v52 + 56))(v68, 0, 1, v54);
  ZonesAccumulator.lastProcessedEntryDate.setter(v68);
  isUniquelyReferenced_nonNull_native = v214 + 64;
  v69 = 1 << *(v214 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  a1 = v70 & *(v214 + 64);
  v208 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v71 = (v69 + 63) >> 6;
  v203 = v218;
  v202 = (v11 + 8);
  v201 = (v14 + 8);

  v48 = 0;
  v205 = isUniquelyReferenced_nonNull_native;
  for (i = v71; ; v71 = i)
  {
    if (!a1)
    {
      while (1)
      {
        v78 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v78 >= v71)
        {

          if (one-time initialization token for zones != -1)
          {
            swift_once();
          }

          v92 = type metadata accessor for Logger();
          __swift_project_value_buffer(v92, static WOLog.zones);
          v93 = v7;
          v94 = v7;
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v95, v96))
          {
            LODWORD(v212) = v96;
            v97 = swift_slowAlloc();
            v211 = swift_slowAlloc();
            v219 = v211;
            *v97 = 136315906;
            v98 = _typeName(_:qualified:)();
            v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v219);

            *(v97 + 4) = v100;
            *(v97 + 12) = 2080;
            v214 = v93;
            v102 = *&v93[v208];
            MEMORY[0x28223BE20](v101, v103);
            v186[-2] = v94;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
            OS_dispatch_queue.sync<A>(execute:)();
            v104 = Dictionary.description.getter();
            v106 = v105;

            v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v219);

            *(v97 + 14) = v107;
            *(v97 + 22) = 2080;
            MEMORY[0x28223BE20](v108, v109);
            v186[-2] = v94;
            v110 = v188;
            OS_dispatch_queue.sync<A>(execute:)();
            v39 = v215;
            if (v206(v110, 1, v215))
            {
              outlined destroy of Date?(v110);
              v111 = 0;
              v112 = 0;
            }

            else
            {
              v210 = v102;
              v113 = v187;
              (v186[0])(v187, v110, v39);
              outlined destroy of Date?(v110);
              if (one-time initialization token for logDateFormatter != -1)
              {
                swift_once();
              }

              v114 = static WOLog.logDateFormatter;
              isa = Date._bridgeToObjectiveC()().super.isa;
              v116 = [v114 stringFromDate_];

              v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v112 = v117;

              (*(v213 + 8))(v113, v39);
            }

            aBlock = v111;
            v217 = v112;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v118 = Optional.description.getter();
            v120 = v119;

            v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v120, &v219);

            *(v97 + 24) = v121;
            *(v97 + 32) = 2080;
            MEMORY[0x28223BE20](v122, v123);
            v186[-2] = v94;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
            OS_dispatch_queue.sync<A>(execute:)();
            v124 = Optional.description.getter();
            v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &v219);

            *(v97 + 34) = v126;
            _os_log_impl(&dword_20AEA4000, v95, v212, "%s recovered elapsedTimes: %s from metadata with lastProcessedEntryDate: %s, currentZoneIndex: %s", v97, 0x2Au);
            v127 = v211;
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v127, -1, -1);
            MEMORY[0x20F2E9420](v97, -1, -1);

            v65 = v213;
            (*(v213 + 8))(v193, v39);
            v7 = v214;
          }

          else
          {

            v65 = v213;
            v39 = v215;
            (*(v213 + 8))(v193, v215);
            v7 = v93;
          }

          a1 = v192;
          v48 = v191;
LABEL_46:
          v128 = v194;
          outlined init with copy of Date?(v195, v194);
          if (v206(v128, 1, v39) == 1)
          {
            outlined destroy of Date?(v128);
            v129 = v200;
            v130 = v199;
            outlined init with copy of Date?(v200, v199);
            v131 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
            swift_beginAccess();
            outlined assign with take of Date?(v130, &v7[v131]);
            swift_endAccess();
            if (one-time initialization token for zones != -1)
            {
              swift_once();
            }

            v132 = type metadata accessor for Logger();
            __swift_project_value_buffer(v132, static WOLog.zones);
            isUniquelyReferenced_nonNull_native = v196;
            outlined init with copy of Date?(v129, v196);
            v133 = Logger.logObject.getter();
            v11 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v133, v11))
            {
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v219 = v135;
              *v134 = 136315394;
              v136 = _typeName(_:qualified:)();
              v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v137, &v219);

              *(v134 + 4) = v138;
              *(v134 + 12) = 2080;
              v39 = v190;
              outlined init with copy of Date?(v196, v190);
              if (v206(v39, 1, v215) == 1)
              {
                outlined destroy of Date?(v39);
                v139 = 0;
                v140 = 0;
              }

              else
              {
                v214 = v135;
                if (one-time initialization token for logDateFormatter != -1)
                {
                  swift_once();
                }

                v156 = static WOLog.logDateFormatter;
                v157 = Date._bridgeToObjectiveC()().super.isa;
                v158 = [v156 stringFromDate_];

                v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v140 = v159;

                (*(v213 + 8))(v39, v215);
                v135 = v214;
              }

              aBlock = v139;
              v217 = v140;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
              v160 = Optional.description.getter();
              v162 = v161;
              outlined destroy of Date?(v196);

              isUniquelyReferenced_nonNull_native = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v162, &v219);

              *(v134 + 14) = isUniquelyReferenced_nonNull_native;
              _os_log_impl(&dword_20AEA4000, v133, v11, "%s no lastProcessedEventDate found in metadata, assign lastProcessedEntryDate: %s", v134, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v135, -1, -1);
              MEMORY[0x20F2E9420](v134, -1, -1);

              goto LABEL_67;
            }

            outlined destroy of Date?(isUniquelyReferenced_nonNull_native);
          }

          else
          {
            v141 = v197;
            (*(v65 + 32))(v197, v128, v39);
            v142 = *(v65 + 16);
            v143 = v199;
            v142(v199, v141, v39);
            (*(v65 + 56))(v143, 0, 1, v39);
            v144 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
            swift_beginAccess();
            outlined assign with take of Date?(v143, &v7[v144]);
            swift_endAccess();
            if (one-time initialization token for zones != -1)
            {
              swift_once();
            }

            v145 = type metadata accessor for Logger();
            __swift_project_value_buffer(v145, static WOLog.zones);
            isUniquelyReferenced_nonNull_native = v7;
            v146 = Logger.logObject.getter();
            v11 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v146, v11))
            {
              v147 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v219 = v39;
              *v147 = 136315394;
              v148 = _typeName(_:qualified:)();
              v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, &v219);

              *(v147 + 4) = v150;
              *(v147 + 12) = 2080;
              v151 = v189;
              outlined init with copy of Date?(&v7[v144], v189);
              v152 = v215;
              if (v206(v151, 1, v215))
              {
                outlined destroy of Date?(v151);
                v153 = 0;
                v154 = 0;
                a1 = v192;
                v155 = v213;
              }

              else
              {
                v163 = v187;
                v142(v187, v151, v152);
                outlined destroy of Date?(v151);
                if (one-time initialization token for logDateFormatter != -1)
                {
                  swift_once();
                }

                v164 = static WOLog.logDateFormatter;
                v165 = Date._bridgeToObjectiveC()().super.isa;
                v166 = [v164 stringFromDate_];

                v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v154 = v167;

                v155 = v213;
                (*(v213 + 8))(v163, v215);
                a1 = v192;
              }

              aBlock = v153;
              v217 = v154;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
              v168 = Optional.description.getter();
              v170 = v169;

              isUniquelyReferenced_nonNull_native = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, &v219);

              *(v147 + 14) = isUniquelyReferenced_nonNull_native;
              _os_log_impl(&dword_20AEA4000, v146, v11, "%s recovered lastProcessedEventDate: %s", v147, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v39, -1, -1);
              MEMORY[0x20F2E9420](v147, -1, -1);

              (*(v155 + 8))(v197, v215);
LABEL_67:
              v48 = v191;
            }

            else
            {

              (*(v213 + 8))(v197, v215);
              a1 = v192;
            }
          }

          if (!v48)
          {
            v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_70;
          }

          goto LABEL_91;
        }

        a1 = *(isUniquelyReferenced_nonNull_native + 8 * v78);
        ++v48;
        if (a1)
        {
          v48 = v78;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_87;
    }

LABEL_24:
    v79 = (v48 << 9) | (8 * __clz(__rbit64(a1)));
    v39 = *(*(v214 + 48) + v79);
    v80 = *(*(v214 + 56) + v79);
    MEMORY[0x28223BE20](v72, v73);
    v11 = v7;
    v186[-2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    v81 = aBlock;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v81;
    v83 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
    v84 = *(v81 + 16);
    v85 = (v82 & 1) == 0;
    v86 = v84 + v85;
    if (__OFADD__(v84, v85))
    {
      break;
    }

    v7 = v82;
    if (*(v81 + 24) >= v86)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        isUniquelyReferenced_nonNull_native = aBlock;
        if (v82)
        {
          goto LABEL_17;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        isUniquelyReferenced_nonNull_native = aBlock;
        if (v7)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v86, isUniquelyReferenced_nonNull_native);
      v87 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
      if ((v7 & 1) != (v88 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v83 = v87;
      isUniquelyReferenced_nonNull_native = aBlock;
      if (v7)
      {
LABEL_17:
        *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v83) = v80;
        goto LABEL_18;
      }
    }

    *(isUniquelyReferenced_nonNull_native + 8 * (v83 >> 6) + 64) |= 1 << v83;
    *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v83) = v39;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v83) = v80;
    v89 = *(isUniquelyReferenced_nonNull_native + 16);
    v90 = __OFADD__(v89, 1);
    v91 = v89 + 1;
    if (v90)
    {
      goto LABEL_90;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v91;
LABEL_18:
    a1 &= a1 - 1;
    v39 = v209;
    static DispatchWorkItemFlags.barrier.getter();
    v74 = swift_allocObject();
    v7 = v11;
    *(v74 + 16) = v11;
    *(v74 + 24) = isUniquelyReferenced_nonNull_native;
    v218[2] = _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvsyyYbcfU_TA_0;
    v218[3] = v74;
    aBlock = MEMORY[0x277D85DD0];
    v217 = 1107296256;
    v218[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v218[1] = &block_descriptor_57;
    v75 = _Block_copy(&aBlock);
    v76 = v11;
    v77 = v211;
    static DispatchQoS.unspecified.getter();
    MEMORY[0x20F2E7580](0, v77, v39, v75);
    _Block_release(v75);
    (*v202)(v77, v212);
    (*v201)(v39, v210);

    isUniquelyReferenced_nonNull_native = v205;
  }

  while (1)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v14 = __CocoaSet.count.getter();
LABEL_70:
    v17 = MEMORY[0x277D84F90];
    if (!v14)
    {
      break;
    }

    v219 = MEMORY[0x277D84F90];
    a5 = &v219;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v14 < 0)
    {
      __break(1u);
LABEL_93:
      v49 = __CocoaSet.count.getter();
LABEL_4:
      v50 = v49 <= a5;
      if (v49 > a5)
      {
        v51 = a5;
      }

      else
      {
        v51 = 0;
      }

      ZonesAccumulator.currentZoneIndex.setter(v51, v50);
      goto LABEL_8;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v171 = 0;
      while (1)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x20F2E7A20](v171, a1);
        v172 = *(isUniquelyReferenced_nonNull_native + 16);
        v173 = *(isUniquelyReferenced_nonNull_native + 24);
        v48 = *(isUniquelyReferenced_nonNull_native + 32);
        v11 = *(isUniquelyReferenced_nonNull_native + 40);
        type metadata accessor for LiveHeartRateZone();
        v174 = swift_allocObject();
        *(v174 + 48) = 0;
        swift_beginAccess();
        *(v174 + 48) = 0;
        swift_unknownObjectRelease();
        v175 = floor(v172);
        v176 = floor(v173);
        if (v175 > v176)
        {
          break;
        }

        ++v171;
        *(v174 + 16) = v175;
        *(v174 + 24) = v176;
        *(v174 + 32) = v48;
        *(v174 + 40) = v11;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v14 == v171)
        {
          goto LABEL_80;
        }
      }

LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v48 = a1 + 32;
    type metadata accessor for LiveHeartRateZone();
    while (1)
    {
      v177 = *(*v48 + 16);
      v178 = *(*v48 + 24);
      v179 = *(*v48 + 32);
      v11 = *(*v48 + 40);
      v180 = swift_allocObject();
      *(v180 + 48) = 0;
      isUniquelyReferenced_nonNull_native = v180 + 48;
      swift_beginAccess();
      *(v180 + 48) = 0;
      v181 = floor(v177);
      v182 = floor(v178);
      if (v181 > v182)
      {
        break;
      }

      *(v180 + 16) = v181;
      *(v180 + 24) = v182;
      *(v180 + 32) = v179;
      *(v180 + 40) = v11;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v48 += 8;
      if (!--v14)
      {
LABEL_80:
        v17 = v219;
        goto LABEL_81;
      }
    }

LABEL_88:
    __break(1u);
  }

LABEL_81:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
  v183 = swift_allocObject();
  *(v183 + 24) = 0;
  *(v183 + 32) = 1;
  *(v183 + 16) = v17;
  swift_beginAccess();
  *(v183 + 24) = 0;
  *(v183 + 32) = 257;
  *&v7[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = v183;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong heartRateZoneConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  result = [v7 isAccumulating];
  if (result)
  {
    return [v7 update];
  }

  return result;
}