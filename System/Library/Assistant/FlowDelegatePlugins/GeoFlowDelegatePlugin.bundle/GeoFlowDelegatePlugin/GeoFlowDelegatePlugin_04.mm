uint64_t specialized Set._Variant.insert(_:)(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21INTrafficIncidentTypeVGMd, &_ss11_SetStorageCySo21INTrafficIncidentTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for INTrafficIncidentType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21INTrafficIncidentTypeVGMd, &_ss11_SetStorageCySo21INTrafficIncidentTypeVGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21INTrafficIncidentTypeVGMd, &_ss11_SetStorageCySo21INTrafficIncidentTypeVGMR);
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t specialized static TrafficIncidentUtils.convertNLIncidentTypeFromSupportedTrafficIncidentType(incidentType:)(void *a1)
{
  v2 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  os_log(_:dso:log:_:_:)(v2, &dword_0, logObject, "convertNLIncidentTypeFromSupportedTrafficIncidentType", 53, 2, &_swiftEmptyArrayStorage);
  v3 = [a1 type] - 1;
  if (v3 > 4)
  {
    return 0;
  }

  else
  {
    return *&aAccidenthazard[8 * v3];
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo21INTrafficIncidentTypeV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for INTrafficIncidentType(0);
  lazy protocol witness table accessor for type INTrafficIncidentType and conformance INTrafficIncidentType();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id specialized static TrafficIncidentUtils.convertIncidentTypeFromNLIntent(locationSearchIntent:)(uint64_t a1)
{
  v2 = (*(*a1 + 232))(a1);
  if (v3)
  {
    if (v2 == 0xD000000000000011 && v3 == 0x80000000000BFD10)
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v2 = (*(*a1 + 184))(v2);
    if (v2 == 9)
    {
      return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:0 localizedDisplayString:0];
    }
  }

LABEL_10:
  if ((*(*a1 + 160))(v2) == 4)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v6 = (*(*a1 + 184))(v6);
  if (v6 == 9)
  {
    return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:0 localizedDisplayString:0];
  }

LABEL_15:
  v9 = (*(*a1 + 184))(v6);
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3u:
        return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:3 localizedDisplayString:0];
      case 4u:
        return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:5 localizedDisplayString:0];
      case 9u:
        if (one-time initialization token for logObject != -1)
        {
          swift_once();
        }

        v10 = logObject;
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_0, v10, v11, "convertTrafficIncidentTypeFromNLIntent NLIntent incidentType is null", v12, 2u);
        }

        return 0;
      default:
        return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:0 localizedDisplayString:0];
    }
  }

  else
  {
    if (v9)
    {
      if (v9 != 1)
      {
        return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:2 localizedDisplayString:0];
      }

      return 0;
    }

    return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:1 localizedDisplayString:0];
  }
}

id specialized static TrafficIncidentUtils.makeSiriKitIntentWithUserLocation(locationSearchIntent:userLocation:)(uint64_t a1, id a2)
{
  v4 = specialized static TrafficIncidentUtils.convertIncidentTypeFromNLIntent(locationSearchIntent:)(a1);
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v5 = logObject;
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  if (v7)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    v10 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30INSupportedTrafficIncidentTypeCSgMd, &_sSo30INSupportedTrafficIncidentTypeCSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v33);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v5, v6, "makeSiriKitIntentWithUserLocation incidentType is %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v14 = *(*a1 + 168);
  v15 = v14(v7);
  if (LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v15) == 0x7065527261656C63 && v16 == 0xEB0000000074726FLL)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v20 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v5, v20);
  if (v19)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v5, v20, "makeSiriKitIntentWithUserLocation isClear=true", v21, 2u);
  }

LABEL_14:
  v22 = v14(v19);
  if (LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v22) == 0x526D7269666E6F63 && v23 == 0xED000074726F7065)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v26 = 1;
      if (!a2)
      {
        goto LABEL_26;
      }

LABEL_25:
      a2 = [objc_opt_self() placemarkWithLocation:a2 name:0 postalAddress:0];
      goto LABEL_26;
    }
  }

  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v5, v27, "makeSiriKitIntentWithUserLocation isUpdate=true", v28, 2u);
  }

  v26 = 0;
  if (a2)
  {
    goto LABEL_25;
  }

LABEL_26:
  v29.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v30 = String._bridgeToObjectiveC()();
  }

  v31 = [objc_allocWithZone(INReportIncidentIntent) initWithIncidentType:v4 startTime:0 isClear:v29.super.super.isa userLocation:a2 additionalDetails:v30];

  return v31;
}

id specialized static TrafficIncidentUtils.isUpdateIntent(intent:)(void *a1)
{
  v2 = [a1 isClear];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  isa = v3.super.super.isa;
  if (v2)
  {
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      return &dword_0 + 1;
    }
  }

  else
  {
  }

  result = [a1 additionalDetails];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == 0x657461647075 && v10 == 0xE600000000000000)
    {

      return &dword_0 + 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return (v11 & 1);
    }
  }

  return result;
}

uint64_t outlined destroy of Result<Output, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, _ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type INTrafficIncidentType and conformance INTrafficIncidentType()
{
  result = lazy protocol witness table cache variable for type INTrafficIncidentType and conformance INTrafficIncidentType;
  if (!lazy protocol witness table cache variable for type INTrafficIncidentType and conformance INTrafficIncidentType)
  {
    type metadata accessor for INTrafficIncidentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INTrafficIncidentType and conformance INTrafficIncidentType);
  }

  return result;
}

Swift::String __swiftcall INPerson.getContactInitials()()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v38 - v6;
  v8 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  [v8 setStyle:4];
  v9 = [v1 nameComponents];
  if (v9)
  {
    v10 = v9;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v12 = [v8 stringFromPersonNameComponents:isa];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    (*(v3 + 8))(v7, v2);
    goto LABEL_22;
  }

  v16 = [v1 displayName];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v15 = 0xE000000000000000;
  if (v20)
  {
    v21 = [v1 displayName];
    if (!v21)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = String._bridgeToObjectiveC()();
    }

    v22 = [v8 personNameComponentsFromString:v21];

    if (v22)
    {
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v24 = [v8 stringFromPersonNameComponents:v23];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v25;

      (*(v3 + 8))(v5, v2);
LABEL_22:
      v31 = v13;
      v32 = v15;
      goto LABEL_24;
    }

    v28 = [v1 displayName];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v29;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  v38 = v26;
  v39 = v27;
  lazy protocol witness table accessor for type String and conformance String();
  v30 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v38 = 0;
  v39 = 0xE000000000000000;
  v33 = *(v30 + 16);
  if (!v33)
  {
    v13 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v34 = 0;
  v35 = v30 + 56;
  while (v34 < *(v30 + 16))
  {
    if ((*(v35 - 16) ^ *(v35 - 24)) >= 0x4000)
    {

      v36._countAndFlagsBits = Substring.subscript.getter();
      String.append(_:)(v36);
    }

    ++v34;
    v35 += 32;
    if (v33 == v34)
    {
      v13 = v38;
      v15 = v39;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t GeoContact.init(index:id:displayName:initials:encodeBase64:shareLevel:imageStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 9) = a11;
  v13 = *(type metadata accessor for GeoContact(0) + 40);
  v14 = type metadata accessor for ImageElement.ImageStyle();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a9[v13], a12, v14);
}

uint64_t type metadata accessor for GeoContact(uint64_t a1)
{
  result = type metadata singleton initialization cache for GeoContact;
  if (!type metadata singleton initialization cache for GeoContact)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeoContact.initials.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t GeoContact.encodeBase64.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t GeoContact.imageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GeoContact(0) + 40);
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GeoContact.imageStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GeoContact(0) + 40);
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GeoContact.image.getter()
{
  v1 = type metadata accessor for ImageElement.ImageStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ImageElement.Contact.Content();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 2);
  if (v8)
  {
    v9 = *(v0 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_B89E0;
    *(v10 + 32) = v9;
    *(v10 + 40) = v8;

    ImageElement.Contact.Avatar.init(contactIds:)();
    v11 = &enum case for ImageElement.Contact.Content.avatar(_:);
  }

  else
  {
    v12 = *(v0 + 6);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *(v0 + 5) & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      ImageElement.Contact.Monogram.init(letters:)();
      v11 = &enum case for ImageElement.Contact.Content.monogram(_:);
    }

    else
    {
      ImageElement.Contact.Avatar.init(contactIds:)();
      v11 = &enum case for ImageElement.Contact.Content.avatar(_:);
    }
  }

  (*(v5 + 104))(v7, *v11, v4);
  v14 = type metadata accessor for GeoContact(0);
  (*(v2 + 16))(v17, &v0[*(v14 + 40)], v1);
  return ImageElement.Contact.init(_:imageStyle:)();
}

uint64_t GeoContact.app.getter()
{
  if ((*(v0 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t AppID.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t GeoContact.supplamentalText.getter()
{
  v1 = 5459283;
  v2 = *(v0 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (v2 == 2)
  {
    v3 = 0x80000000000BFA00;
  }

  else
  {
    v3 = 0xEE007370614D2E65;
  }

  if (v2 == 2 && 0x80000000000BFA00 == v3)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoContact.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0x76654C6572616873;
  if (v1 != 5)
  {
    v3 = 0x7974536567616D69;
  }

  v4 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v4 = 0x614265646F636E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x4E79616C70736964;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoContact.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GeoContact.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoContact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D7ContactV10CodingKeys33_6F6180F5035D676610853752EA1536D1LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D7ContactV10CodingKeys33_6F6180F5035D676610853752EA1536D1LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for GeoContact(0);
    v8[9] = 6;
    type metadata accessor for ImageElement.ImageStyle();
    lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, &type metadata accessor for ImageElement.ImageStyle, &protocol conformance descriptor for ImageElement.ImageStyle);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GeoContact.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  if (v1[2])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1[9]);
  type metadata accessor for GeoContact(0);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, &type metadata accessor for ImageElement.ImageStyle, &protocol conformance descriptor for ImageElement.ImageStyle);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int GeoContact.hashValue.getter()
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
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v0[9]);
  type metadata accessor for GeoContact(0);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, &type metadata accessor for ImageElement.ImageStyle, &protocol conformance descriptor for ImageElement.ImageStyle);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t GeoContact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v26 = *(v4 - 8);
  __chkstk_darwin();
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D7ContactV10CodingKeys33_6F6180F5035D676610853752EA1536D1LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D7ContactV10CodingKeys33_6F6180F5035D676610853752EA1536D1LLOGMR);
  v27 = *(v29 - 8);
  __chkstk_darwin();
  v8 = v24 - v7;
  v9 = type metadata accessor for GeoContact(0);
  __chkstk_darwin();
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();
  v30 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  v13 = v6;
  v15 = v27;
  v14 = v28;
  v38 = 0;
  v16 = v29;
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = 1;
  v11[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11[2] = v17;
  v25 = v17;
  v36 = 2;
  v11[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v11[4] = v18;
  v24[1] = v18;
  v35 = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v24[0] = 0;
  v11[5] = v19;
  v11[6] = v20;
  v24[2] = v20;
  v34 = 4;
  v11[7] = KeyedDecodingContainer.decode(_:forKey:)();
  v11[8] = v21;
  v33 = 5;
  v11[9] = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = 6;
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, &type metadata accessor for ImageElement.ImageStyle, &protocol conformance descriptor for ImageElement.ImageStyle);
  v25 = v13;
  v22 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 8))(v22, v16);
  (*(v26 + 32))(v11 + *(v9 + 40), v25, v4);
  outlined init with copy of GeoContact(v11, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  return outlined destroy of GeoContact(v11);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoContact(uint64_t a1)
{
  Hasher.init(_seed:)();
  GeoContact.hash(into:)(v2);
  return Hasher._finalize()();
}

GeoFlowDelegatePlugin::AppID_optional __swiftcall AppID.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppID.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoFlowDelegatePlugin_AppID_messages;
  }

  else
  {
    v4.value = GeoFlowDelegatePlugin_AppID_unknownDefault;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppID(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x6C7070612E6D6F63;
  }

  if (v2)
  {
    v4 = 0xEE007370614D2E65;
  }

  else
  {
    v4 = 0x80000000000BFA00;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x6C7070612E6D6F63;
  }

  if (*a2)
  {
    v6 = 0x80000000000BFA00;
  }

  else
  {
    v6 = 0xEE007370614D2E65;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppID()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppID(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppID(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AppID@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppID.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance AppID(unint64_t *a1@<X8>)
{
  v2 = 0x80000000000BFA00;
  v3 = 0x6C7070612E6D6F63;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEE007370614D2E65;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t specialized static GeoContact.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && v4 == v5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v7 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[7] != a2[7] || a1[8] != a2[8]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[9] != a2[9])
  {
    return 0;
  }

  v8 = *(type metadata accessor for GeoContact(0) + 40);

  return static ImageElement.ImageStyle.== infix(_:_:)(a1 + v8, a2 + v8);
}

unint64_t lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of GeoContact(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoContact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GeoContact(uint64_t a1)
{
  v2 = type metadata accessor for GeoContact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AppID and conformance AppID()
{
  result = lazy protocol witness table cache variable for type AppID and conformance AppID;
  if (!lazy protocol witness table cache variable for type AppID and conformance AppID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppID and conformance AppID);
  }

  return result;
}

uint64_t sub_6E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ImageElement.ImageStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6E410(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageElement.ImageStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for GeoContact(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ImageElement.ImageStyle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for GeoContact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeoContact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized GeoContact.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614265646F636E65 && a2 == 0xEC00000034366573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6572616873 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7974536567616D69 && a2 == 0xEA0000000000656CLL)
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

uint64_t RetrieveParkingHandleIntentStrategy.__allocating_init(with:isPommes:)(__int128 *a1, char a2)
{
  v4 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v4 + 24);
  *(v4 + 64) = a2;
  return v4;
}

uint64_t RetrieveParkingHandleIntentStrategy.init(with:isPommes:)(__int128 *a1, char a2)
{
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  *(v2 + 64) = a2;
  return v2;
}

uint64_t RetrieveParkingHandleIntentStrategy.common.getter()
{
  outlined init with copy of DeviceState(v0 + 24, v4);
  v1 = *(v0 + 64);
  type metadata accessor for ParkingCommon();
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(v4, v2 + 24);
  *(v2 + 64) = v1;
  return v2;
}

uint64_t RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  return _swift_task_switch(RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

uint64_t RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo025INRetrieveParkingLocationD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo025INRetrieveParkingLocationD0CSo0ghiD8ResponseCGMR);
  v1 = IntentResolutionRecord.intentResponse.getter();
  v2 = [v1 parkingLocation];
  *(v0 + 240) = v2;

  if (v2)
  {
    v3 = [v2 location];
    *(v0 + 248) = v3;
    if (v3)
    {
      v4 = CLLocation.makeDialogLocation()();
      *(v0 + 256) = v4;
      v5 = IntentResolutionRecord.intentResponse.getter();
      v6 = [v5 parkingNote];

      if (v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0xE000000000000000;
      }

      *(v0 + 264) = v9;
      v15 = (*(**(v0 + 232) + 112))();
      *(v0 + 272) = v15;
      *(v0 + 120) = &type metadata for RetrieveParkingLocation;
      *(v0 + 128) = &protocol witness table for RetrieveParkingLocation;
      *(v0 + 96) = v4;
      *(v0 + 104) = v7;
      *(v0 + 112) = v9;

      v16 = IntentResolutionRecord.intentResponse.getter();
      v17 = [v16 parkingNote];

      if (v17)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      *(v0 + 280) = v20;
      v23 = (*(*v15 + 112) + **(*v15 + 112));
      v21 = swift_task_alloc();
      *(v0 + 288) = v21;
      *v21 = v0;
      v21[1] = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);

      return v23(v0 + 56, v0 + 96, v2, v18, v20);
    }

    v22 = (*(**(v0 + 232) + 128) + **(**(v0 + 232) + 128));
    v10 = swift_task_alloc();
    *(v0 + 312) = v10;
    *v10 = v0;
    v11 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v22 = (*(**(v0 + 232) + 128) + **(**(v0 + 232) + 128));
    v10 = swift_task_alloc();
    *(v0 + 328) = v10;
    *v10 = v0;
    v11 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  v10[1] = v11;
  v12 = *(v0 + 224);
  v13 = *(v0 + 216);

  return v22(v13, v12);
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  return _swift_task_switch(RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 232);
  v2 = (v0 + 56);
  if (*(v0 + 80))
  {
    outlined init with take of CATType(v2, v0 + 16);
    v3 = static os_log_type_t.default.getter();
    v4 = v1[2];
    outlined init with copy of DeviceState(v0 + 16, v0 + 136);
    v5 = os_log_type_enabled(v4, v3);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    if (v5)
    {
      v19 = *(v0 + 240);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      outlined init with copy of DeviceState(v0 + 136, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
      v10 = String.init<A>(describing:)();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v21);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_0, v4, v3, "buildRFoutput: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    }

    outlined init with take of CATType((v0 + 16), *(v0 + 216));
    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    outlined destroy of Output?(v2);
    v20 = (*(*v1 + 128) + **(*v1 + 128));
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v15 = *(v0 + 224);
    v16 = *(v0 + 216);

    return v20(v16, v15);
  }
}

{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v2 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[30];
  v1 = v0[31];

  v3 = v0[1];

  return v3();
}

{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v2 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = v0[30];
  v1 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t outlined destroy of Output?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RetrieveParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(RetrieveParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0, 0);
}

uint64_t RetrieveParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v1 = v0[8];
  v3 = v1[6];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v0[5] = &type metadata for RetrieveParkingLocation;
  v0[6] = &protocol witness table for RetrieveParkingLocation;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v5 = v0[7];

  return FlowHelper.makeDialogOnlyOutput(model:)(v5, (v0 + 2), v3, v2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 128) + **(**v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

unint64_t lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy()
{
  result = lazy protocol witness table cache variable for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy;
  if (!lazy protocol witness table cache variable for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy)
  {
    type metadata accessor for RetrieveParkingHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy);
  }

  return result;
}

unint64_t OntologyNode.javaClassName.getter(uint64_t a1, uint64_t a2)
{
  v2 = dispatch thunk of OntologyNode.name.getter();
  specialized Collection.first.getter(v2, v3);
  v5 = v4;

  if (v5)
  {
    v6 = Character.uppercased()();
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v9._countAndFlagsBits = countAndFlagsBits;
  v9._object = object;
  String.append(_:)(v9);

  v10 = dispatch thunk of OntologyNode.name.getter();
  specialized Collection.dropFirst(_:)(1uLL, v10, v11, v12);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return 0xD000000000000012;
}

uint64_t TerminalNodeBoundedSemanticValue<>.javaValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v4 = String.init<A>(describing:)();
  specialized BidirectionalCollection.dropLast(_:)(5, v4, v5, v6);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  v7._countAndFlagsBits = 0x2E65756C61562ELL;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = String.uppercased()();

  String.append(_:)(v8);

  return 0xD000000000000012;
}

uint64_t OccupantIntentNode.asContactQuery.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  __chkstk_darwin();
  v1 = &v17 - v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  __chkstk_darwin();
  v3 = &v17 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  __chkstk_darwin();
  v5 = &v17 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  __chkstk_darwin();
  v7 = &v17 - v6;
  ContactQuery.init()();
  OccupantIntentNode.fullName.getter();
  ContactQuery.fullName.setter();
  if (ContactQuery.fullName.getter() || v8 != 0xE000000000000000)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  OccupantIntentNode.firstName.getter();
  ContactQuery.givenName.setter();
  OccupantIntentNode.lastName.getter();
  ContactQuery.familyName.setter();
LABEL_6:
  OccupantIntentNode.nickname.getter();
  ContactQuery.nickname.setter();
  OccupantIntentNode.namePrefix.getter();
  v10 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v7, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePrefix.rawValue.getter();
    (*(v11 + 8))(v7, v10);
  }

  ContactQuery.namePrefix.setter();
  OccupantIntentNode.namePostfix.getter();
  v12 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v5, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePostfix.rawValue.getter();
    (*(v13 + 8))(v5, v12);
  }

  ContactQuery.nameSuffix.setter();
  OccupantIntentNode.company.getter();
  ContactQuery.organizationName.setter();
  OccupantIntentNode.relationship.getter();
  v14 = type metadata accessor for ContactQuery();
  (*(*(v14 - 8) + 56))(v1, 1, 1, v14);
  ContactRelationshipQuery.init(label:fromContact:)();
  v15 = type metadata accessor for ContactRelationshipQuery();
  (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
  return ContactQuery.relationship.setter();
}

uint64_t OccupantIntentNode.displayName.getter()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = OccupantIntentNode.fullName.getter();
  if (!v5)
  {
LABEL_6:
    v7 = OccupantIntentNode.firstName.getter();
    if (!v8)
    {
      return 0;
    }

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v19 = v7;
      v20 = v8;

      v10._countAndFlagsBits = 32;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);

      v12 = v19;
      v11 = v20;
      v13 = OccupantIntentNode.lastName.getter();
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v19 = v12;
      v20 = v11;

      v17._countAndFlagsBits = v15;
      v17._object = v16;
      String.append(_:)(v17);

      static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v18 = StringProtocol.trimmingCharacters(in:)();
      (*(v1 + 8))(v3, v0);

      return v18;
    }

    else
    {

      return 0;
    }
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_6;
  }

  return result;
}

id OccupantIntentNode.asINPerson.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin();
  v1 = &v21 - v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  __chkstk_darwin();
  v3 = &v21 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonNameComponents.init()();
  OccupantIntentNode.lastName.getter();
  PersonNameComponents.familyName.setter();
  OccupantIntentNode.firstName.getter();
  PersonNameComponents.givenName.setter();
  OccupantIntentNode.nickname.getter();
  PersonNameComponents.nickname.setter();
  OccupantIntentNode.namePrefix.getter();
  v10 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v5, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePrefix.rawValue.getter();
    v22 = v9;
    (*(v11 + 8))(v5, v10);
    v9 = v22;
  }

  PersonNameComponents.namePrefix.setter();
  OccupantIntentNode.namePostfix.getter();
  v12 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v3, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePostfix.rawValue.getter();
    (*(v13 + 8))(v3, v12);
  }

  PersonNameComponents.nameSuffix.setter();
  v14 = [objc_allocWithZone(INPersonHandle) initWithValue:0 type:0 label:0];
  (*(v7 + 16))(v1, v9, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  OccupantIntentNode.displayName.getter();
  v16 = v15;
  isa = 0;
  if ((*(v7 + 48))(v1, 1, v6) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v1, v6);
  }

  if (v16)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(INPerson) initWithPersonHandle:v14 nameComponents:isa displayName:v18 image:0 contactIdentifier:0 customIdentifier:0];

  (*(v7 + 8))(v9, v6);
  return v19;
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = String.index(_:offsetBy:limitedBy:)();
    if (v7)
    {
      a2 = 15;
    }

    else
    {
      a2 = v6;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t *LocationSearchIntent.confirmationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.confirmationNode;
}

uint64_t *LocationSearchIntent.nounNode.unsafeMutableAddressor()
{
  if (one-time initialization token for nounNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.nounNode;
}

uint64_t *LocationSearchIntent.verbNode.unsafeMutableAddressor()
{
  if (one-time initialization token for verbNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.verbNode;
}

uint64_t *LocationSearchIntent.referenceNode.unsafeMutableAddressor()
{
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.referenceNode;
}

uint64_t *LocationSearchIntent.incidentTypeNode.unsafeMutableAddressor()
{
  if (one-time initialization token for incidentTypeNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.incidentTypeNode;
}

uint64_t *LocationSearchIntent.domainNode.unsafeMutableAddressor()
{
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.domainNode;
}

uint64_t LocationSearchIntent.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  *(v2 + v3) = static LocationSearchIntent.domainNode;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v5 = v2;
  v6 = type metadata accessor for NLIntent();
  (*(*(v6 - 8) + 32))(v5 + v4, a1, v6);

  return v5;
}

uint64_t LocationSearchIntent.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  LocationSearchIntent.init(from:)(a1);
  return v2;
}

uint64_t LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x796669646F6DLL;
    v6 = 0x6574656C6564;
    if (a1 != 8)
    {
      v6 = 1819042147;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x526D7269666E6F63;
    if (a1 != 5)
    {
      v7 = 1684957542;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 7958113;
    v2 = 0x72616853706F7473;
    v3 = 0x74726F706572;
    if (a1 != 3)
    {
      v3 = 0x7065527261656C63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6572616873;
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
}

uint64_t LocationSearchIntent.LocationSearchNounValue.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7958113;
  v2 = 6386789;
  if (a1 != 6)
  {
    v2 = 0x6574756F72;
  }

  v3 = 0x63696666617274;
  if (a1 != 4)
  {
    v3 = 0x746E656469636E69;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x65636E6174736964;
  if (a1 != 2)
  {
    v4 = 0x6F69746365726964;
  }

  if (a1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t LocationSearchIntent.LocationSearchIncidentTypeValue.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E656469636361;
    v6 = 0x6472617A6168;
    if (a1 != 2)
    {
      v6 = 0x68635F6465657073;
    }

    if (a1)
    {
      v5 = 0x746E656469636E69;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F6C635F64616F72;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x6D656C626F7270;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6B726F7764616F72;
    if (a1 != 4)
    {
      v3 = 0x6F6C635F656E616CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t LocationSearchIntent.LocationSearchConfirmationValue.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocationSearchIntent.LocationSearchConfirmationValue(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationSearchIntent.LocationSearchConfirmationValue()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocationSearchIntent.LocationSearchConfirmationValue(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationSearchIntent.LocationSearchConfirmationValue(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchConfirmationValue@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LocationSearchIntent.LocationSearchConfirmationValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchConfirmationValue(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 28526;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7562617;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocationSearchIntent.LocationSearchNounValue(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = *a2;
  v5 = 0xE300000000000000;
  v6 = 6386789;
  if (v2 != 6)
  {
    v6 = 0x6574756F72;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x63696666617274;
  if (v2 != 4)
  {
    v8 = 0x746E656469636E69;
    v7 = 0xE800000000000000;
  }

  if (*a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65636E6174736964;
  if (v2 != 2)
  {
    v10 = 0x6F69746365726964;
    v9 = 0xEA0000000000736ELL;
  }

  v11 = 0x6E6F697461727564;
  if (*a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v11 = 7958113;
  }

  if (*a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v10 = v11;
  }

  if (*a1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v2 <= 3)
  {
    v13 = v3;
  }

  else
  {
    v13 = v5;
  }

  if (*a2 > 3u)
  {
    if (*a2 > 5u)
    {
      if (v4 == 6)
      {
        v14 = 0xE300000000000000;
        if (v12 != 6386789)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v12 != 0x6574756F72)
        {
LABEL_45:
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (v4 == 4)
    {
      v14 = 0xE700000000000000;
      if (v12 != 0x63696666617274)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      if (v12 != 0x746E656469636E69)
      {
        goto LABEL_45;
      }
    }
  }

  else if (*a2 > 1u)
  {
    if (v4 == 2)
    {
      v14 = 0xE800000000000000;
      if (v12 != 0x65636E6174736964)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v14 = 0xEA0000000000736ELL;
      if (v12 != 0x6F69746365726964)
      {
        goto LABEL_45;
      }
    }
  }

  else if (*a2)
  {
    v14 = 0xE800000000000000;
    if (v12 != 0x6E6F697461727564)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v14 = 0xE300000000000000;
    if (v12 != 7958113)
    {
      goto LABEL_45;
    }
  }

  if (v13 != v14)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationSearchIntent.LocationSearchNounValue()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocationSearchIntent.LocationSearchNounValue(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationSearchIntent.LocationSearchNounValue(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchNounValue@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LocationSearchIntent.LocationSearchNounValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchNounValue(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958113;
  v5 = 0xE300000000000000;
  v6 = 6386789;
  if (v2 != 6)
  {
    v6 = 0x6574756F72;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x63696666617274;
  if (v2 != 4)
  {
    v8 = 0x746E656469636E69;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65636E6174736964;
  if (v2 != 2)
  {
    v10 = 0x6F69746365726964;
    v9 = 0xEA0000000000736ELL;
  }

  if (*v1)
  {
    v4 = 0x6E6F697461727564;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchVerbValue@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LocationSearchIntent.LocationSearchVerbValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchVerbValue@<X0>(uint64_t *a1@<X8>)
{
  result = LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchIncidentTypeValue@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LocationSearchIntent.LocationSearchIncidentTypeValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchIncidentTypeValue@<X0>(uint64_t *a1@<X8>)
{
  result = LocationSearchIntent.LocationSearchIncidentTypeValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LocationSearchIntent.LocationSearchReferenceValue.rawValue.getter(char a1)
{
  result = 0x746573746F6ELL;
  switch(a1)
  {
    case 1:
      return 0x7473726966;
    case 2:
      return 0x646E6F636573;
    case 3:
      return 0x6472696874;
    case 4:
      return 0x687472756F66;
    case 5:
      return 0x6874666966;
    case 6:
      return 0x6874786973;
    case 7:
      return 0x68746E65766573;
    case 8:
      return 0x687468676965;
    case 9:
      return 0x68746E696ELL;
    case 10:
      return 0x68746E6574;
    case 11:
      return 0x68746E6576656C65;
    case 12:
      return 0x6874666C657774;
    case 13:
      v4 = 1919510644;
      goto LABEL_29;
    case 14:
      v4 = 1920298854;
      goto LABEL_29;
    case 15:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 16:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 17:
      return 0x6565746E65766573;
    case 18:
      v4 = 1751607653;
      goto LABEL_29;
    case 19:
      v4 = 1701734766;
LABEL_29:
      result = v4 | 0x6E65657400000000;
      break;
    case 20:
      result = 0x746569746E657774;
      break;
    case 21:
      result = 1953718636;
      break;
    case 22:
      result = 0x656C6464696DLL;
      break;
    case 23:
      result = 1954047342;
      break;
    case 24:
      result = 0x73756F6976657270;
      break;
    case 25:
      result = 0x6F54646E6F636573;
      break;
    case 26:
      result = 0x4C6F546472696874;
      break;
    case 27:
      result = 6647407;
      break;
    case 28:
      result = 2037277037;
      break;
    case 29:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocationSearchIntent.LocationSearchVerbValue(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationSearchIntent.LocationSearchVerbValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocationSearchIntent.LocationSearchVerbValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationSearchIntent.LocationSearchVerbValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchReferenceValue@<X0>(Swift::String *a1@<X0>, GeoFlowDelegatePlugin::LocationSearchIntent::LocationSearchReferenceValue_optional *a2@<X8>)
{
  result = specialized LocationSearchIntent.LocationSearchReferenceValue.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchReferenceValue@<X0>(uint64_t *a1@<X8>)
{
  result = LocationSearchIntent.LocationSearchReferenceValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance LocationSearchIntent.LocationSearchConfirmationValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

uint64_t LocationSearchIntent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v4 = type metadata accessor for NLIntent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t one-time initialization function for confirmationNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.confirmationNode = result;
  return result;
}

uint64_t one-time initialization function for nounNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.nounNode = result;
  return result;
}

uint64_t one-time initialization function for verbNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.verbNode = result;
  return result;
}

uint64_t *LocationSearchIntent.appName.unsafeMutableAddressor()
{
  if (one-time initialization token for appName != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.appName;
}

uint64_t one-time initialization function for appName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  *a4 = result;
  return result;
}

uint64_t *LocationSearchIntent.applicationId.unsafeMutableAddressor()
{
  if (one-time initialization token for applicationId != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.applicationId;
}

uint64_t one-time initialization function for incidentTypeNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.incidentTypeNode = result;
  return result;
}

uint64_t one-time initialization function for referenceNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.referenceNode = result;
  return result;
}

uint64_t one-time initialization function for destinationNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B7D80;
  v1 = type metadata accessor for AddressOntologyNode();
  swift_allocObject();
  v2 = AddressOntologyNode.init(name:multicardinal:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v2;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  v3 = static LocalSearchIntent.domainNode;
  *(v0 + 96) = type metadata accessor for DomainOntologyNode();
  *(v0 + 104) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 72) = v3;
  type metadata accessor for NonTerminalOntologyNode();
  swift_allocObject();

  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static LocationSearchIntent.destinationNode = result;
  return result;
}

uint64_t *LocationSearchIntent.destinationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for destinationNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.destinationNode;
}

uint64_t one-time initialization function for locationNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B89E0;
  if (one-time initialization token for destinationNode != -1)
  {
    swift_once();
  }

  v1 = static LocationSearchIntent.destinationNode;
  *(v0 + 56) = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  swift_allocObject();

  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static LocationSearchIntent.locationNode = result;
  return result;
}

uint64_t *LocationSearchIntent.locationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for locationNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.locationNode;
}

uint64_t one-time initialization function for appNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B7D80;
  if (one-time initialization token for applicationId != -1)
  {
    swift_once();
  }

  v1 = static LocationSearchIntent.applicationId;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 56) = v2;
  v3 = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = one-time initialization token for appName;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static LocationSearchIntent.appName;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  type metadata accessor for NonTerminalOntologyNode();
  swift_allocObject();

  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static LocationSearchIntent.appNode = result;
  return result;
}

uint64_t *LocationSearchIntent.appNode.unsafeMutableAddressor()
{
  if (one-time initialization token for appNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.appNode;
}

uint64_t one-time initialization function for domainNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_BD070;
  if (one-time initialization token for nounNode != -1)
  {
    swift_once();
  }

  v1 = static LocationSearchIntent.nounNode;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMR);
  *(v0 + 64) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchNounValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  v2 = one-time initialization token for verbNode;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static LocationSearchIntent.verbNode;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMR);
  *(v0 + 104) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchVerbValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 72) = v3;
  v4 = one-time initialization token for incidentTypeNode;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static LocationSearchIntent.incidentTypeNode;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMR);
  *(v0 + 144) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchIncidentTypeValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 112) = v5;
  v6 = one-time initialization token for confirmationNode;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static LocationSearchIntent.confirmationNode;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR);
  *(v0 + 184) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchConfirmationValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 152) = v7;
  v8 = one-time initialization token for locationNode;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static LocationSearchIntent.locationNode;
  v10 = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 216) = v10;
  *(v0 + 224) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 192) = v9;
  v11 = one-time initialization token for referenceNode;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = static LocationSearchIntent.referenceNode;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMR);
  *(v0 + 264) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchReferenceValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 232) = v12;
  v13 = one-time initialization token for appNode;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static LocationSearchIntent.appNode;
  *(v0 + 296) = v10;
  *(v0 + 304) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 272) = v14;
  type metadata accessor for DomainOntologyNode();
  swift_allocObject();

  result = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  static LocationSearchIntent.domainNode = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B89E0;
  if (one-time initialization token for categoryNode != -1)
  {
    swift_once();
  }

  v1 = static LocalSearchIntent.categoryNode;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 64) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  type metadata accessor for DomainOntologyNode();
  swift_allocObject();

  result = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  static LocalSearchIntent.domainNode = result;
  return result;
}

uint64_t LocationSearchIntent.init(from:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v1 + v3) = static LocationSearchIntent.domainNode;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v5 = type metadata accessor for NLIntent();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);

  return v1;
}

uint64_t LocationSearchIntent.init(from:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for NLIntent();
  v11 = *(v28 - 8);
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v2 + v14) = static LocationSearchIntent.domainNode;

  v15 = PommesResponse.firstGeoExperience.getter();
  if (v15)
  {
    v16 = v15;
    v25 = a1;
    GeoExperience.geoClientComponent.getter();
    v17 = Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasLocationSearchNode.getter();
    v18 = *(v8 + 8);
    v18(v10, v7);
    if (v17)
    {
      GeoExperience.geoClientComponent.getter();
      Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
      v18(v10, v7);
      type metadata accessor for LocationSearchIntentBuilder();
      swift_allocObject();
      v19 = *LocationSearchIntentBuilder.init()();
      v20 = (*(v19 + 376))(v6);

      (*(*v20 + 456))(v21);

      (*(v26 + 8))(v6, v27);
    }

    else
    {
      type metadata accessor for LocationSearchIntentBuilder();
      swift_allocObject();
      v23 = *LocationSearchIntentBuilder.init()();
      (*(v23 + 456))();
    }
  }

  else
  {
    type metadata accessor for LocationSearchIntentBuilder();
    swift_allocObject();
    v22 = *LocationSearchIntentBuilder.init()();
    (*(v22 + 456))();
  }

  (*(v11 + 32))(v2 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v13, v28);
  return v2;
}

uint64_t LocationSearchIntent.domainOntologyNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t LocationSearchIntent.domainName.getter()
{
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  return NonTerminalOntologyNode.name.getter();
}

uint64_t LocationSearchIntent.noun.getter()
{
  if (one-time initialization token for nounNode != -1)
  {
    swift_once();
  }

  type metadata accessor for LocationSearchIntent(0);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t LocationSearchIntent.verb.getter()
{
  if (one-time initialization token for verbNode != -1)
  {
    swift_once();
  }

  type metadata accessor for LocationSearchIntent(0);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v1 == 10)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t LocationSearchIntent.reference.getter()
{
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  type metadata accessor for LocationSearchIntent(0);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v1 == 30)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t LocationSearchIntent.confirmation.getter(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for LocationSearchIntent(0);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  return v4;
}

uint64_t LocationSearchIntent.address.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = type metadata accessor for NonTerminalIntentNode();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v14 - v9;
  v15 = v1;
  type metadata accessor for AddressOntologyNode();
  swift_allocObject();
  AddressOntologyNode.init(name:multicardinal:)();
  type metadata accessor for LocationSearchIntent(0);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
  IntentNodeTraversable.intentNode(forOntologyNode:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of NonTerminalIntentNode?(v4);
    v11 = 1;
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    (*(v6 + 16))(v8, v10, v5);
    swift_allocObject();
    AddressOntologyNode.init(name:multicardinal:)();
    AddressIntentNode.init(intentNode:ontologyNode:)();
    (*(v6 + 8))(v10, v5);
    v11 = 0;
  }

  v12 = type metadata accessor for AddressIntentNode();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t LocationSearchIntent.occupant.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = type metadata accessor for NonTerminalIntentNode();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v14 - v9;
  v15 = v1;
  type metadata accessor for AddressOntologyNode.OccupantNode();
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  type metadata accessor for LocationSearchIntent(0);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
  IntentNodeTraversable.intentNode(forOntologyNode:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of NonTerminalIntentNode?(v4);
    v11 = 1;
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    (*(v6 + 16))(v8, v10, v5);
    swift_allocObject();
    AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
    OccupantIntentNode.init(intentNode:ontologyNode:)();
    (*(v6 + 8))(v10, v5);
    v11 = 0;
  }

  v12 = type metadata accessor for OccupantIntentNode();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t LocationSearchIntent.personPlaceId.getter(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  a2();
  type metadata accessor for LocationSearchIntent(0);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();

  return v4;
}

uint64_t LocationSearchIntent.appName.getter(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for LocationSearchIntent(0);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  return v4;
}

uint64_t LocationSearchIntent.getSiriKitConfirmationState()@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*v1 + 152))();
  v4 = type metadata accessor for SiriKitConfirmationState();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_E2EB8 + v3);

  return v5(a1, v6, v4);
}

uint64_t LocationSearchIntent.deinit()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v2 = type metadata accessor for NLIntent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LocationSearchIntent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v2 = type metadata accessor for NLIntent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NLIntentWrapper.intent.getter in conformance LocationSearchIntent@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v5 = type metadata accessor for NLIntent();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance LocationSearchIntent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance LocationSearchIntent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocationSearchIntent(uint64_t a1)
{
  swift_getWitnessTable();

  return NLIntentWrapper.description.getter();
}

unint64_t specialized LocationSearchIntent.LocationSearchConfirmationValue.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocationSearchIntent.LocationSearchConfirmationValue.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized LocationSearchIntent.LocationSearchNounValue.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocationSearchIntent.LocationSearchNounValue.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized LocationSearchIntent.LocationSearchVerbValue.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocationSearchIntent.LocationSearchVerbValue.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized LocationSearchIntent.LocationSearchIncidentTypeValue.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocationSearchIntent.LocationSearchIncidentTypeValue.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized LocationSearchIntent.LocationSearchReferenceValue.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for LocationSearchIntent(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocationSearchIntent;
  if (!type metadata singleton initialization cache for LocationSearchIntent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of NonTerminalIntentNode?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

uint64_t _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationSearchIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_75898@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_758E4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t type metadata completion function for LocationSearchIntent(uint64_t a1)
{
  result = type metadata accessor for NLIntent();
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

uint64_t getEnumTagSinglePayload for LocationSearchIntent.LocationSearchNounValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSearchIntent.LocationSearchNounValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearchIntent.LocationSearchVerbValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSearchIntent.LocationSearchVerbValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearchIntent.LocationSearchIncidentTypeValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSearchIntent.LocationSearchIncidentTypeValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearchIntent.LocationSearchReferenceValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSearchIntent.LocationSearchReferenceValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t GeoDirectInvocations.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000002CLL;
  v2 = 0xD000000000000033;
  if (a1 != 2)
  {
    v2 = 0xD00000000000002CLL;
  }

  if (a1)
  {
    v1 = 0xD00000000000002ALL;
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

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeoDirectInvocations(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = GeoDirectInvocations.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == GeoDirectInvocations.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoDirectInvocations()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  GeoDirectInvocations.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeoDirectInvocations(uint64_t a1)
{
  GeoDirectInvocations.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoDirectInvocations(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  GeoDirectInvocations.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GeoDirectInvocations@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized GeoDirectInvocations.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GeoDirectInvocations@<X0>(unint64_t *a1@<X8>)
{
  result = GeoDirectInvocations.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t GeoFlowDelegatePlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  GeoFlowDelegatePlugin.init()();
  return v0;
}

uint64_t GeoFlowDelegatePlugin.init()()
{
  v1 = v0;
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  static Device.current.getter();
  v12 = type metadata accessor for GeoRCHFlowFactoryImpl();
  v13 = &protocol witness table for GeoRCHFlowFactoryImpl;
  v11 = swift_allocObject();
  v14 = static DialogHelper.globals.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for CATService();
  v2 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  *(v2 + 24) = [v4 bundleForClass:ObjCClassFromMetadata];
  *(v2 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + 16) = 0;
  v15 = v2;
  type metadata accessor for FlowSelector();
  v5 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(v10, v9);
  v6 = specialized FlowSelector.init(with:)(v9, v5);
  outlined destroy of FlowHelperImpl(v10);
  *(v1 + 24) = v6;
  type metadata accessor for CATExecutor();
  type metadata accessor for GeoFlowDelegatePlugin();
  v7 = [v4 bundleForClass:swift_getObjCClassFromMetadata()];
  static CATExecutor.registerBundle(bundle:)();

  return v1;
}

uint64_t GeoFlowDelegatePlugin.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  *(v2 + 24) = a1;
  return v2;
}

uint64_t GeoFlowDelegatePlugin.init(with:)(uint64_t a1)
{
  type metadata accessor for OS_os_log();
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t GeoFlowDelegatePlugin.findFlowForX(parse:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v334 = a1;
  v328 = a2;
  v3 = type metadata accessor for USOParse();
  v312 = *(v3 - 8);
  v313 = v3;
  __chkstk_darwin();
  v316 = &v300 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NLIntent();
  v6 = *(v5 - 8);
  v331 = v5;
  v332 = v6;
  __chkstk_darwin();
  v319 = &v300 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v327 = &v300 - v8;
  __chkstk_darwin();
  v301 = &v300 - v9;
  __chkstk_darwin();
  v302 = &v300 - v10;
  __chkstk_darwin();
  v305 = &v300 - v11;
  __chkstk_darwin();
  v311 = &v300 - v12;
  v322 = type metadata accessor for Parse.DirectInvocation();
  v320 = *(v322 - 8);
  __chkstk_darwin();
  v303 = &v300 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v304 = &v300 - v14;
  __chkstk_darwin();
  v315 = &v300 - v15;
  __chkstk_darwin();
  v318 = &v300 - v16;
  v17 = type metadata accessor for Parse();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v310 = &v300 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v307 = &v300 - v20;
  __chkstk_darwin();
  v306 = &v300 - v21;
  __chkstk_darwin();
  v308 = &v300 - v22;
  __chkstk_darwin();
  v314 = (&v300 - v23);
  __chkstk_darwin();
  v326 = &v300 - v24;
  __chkstk_darwin();
  v325 = &v300 - v25;
  __chkstk_darwin();
  v321 = &v300 - v26;
  __chkstk_darwin();
  v28 = &v300 - v27;
  __chkstk_darwin();
  v30 = &v300 - v29;
  __chkstk_darwin();
  v32 = &v300 - v31;
  v33 = static os_log_type_t.info.getter();
  v34 = *(v2 + 16);
  v35 = v18;
  v37 = *(v18 + 16);
  v36 = (v18 + 16);
  v335 = v17;
  v330 = v37;
  (v37)(v32, v334, v17);
  v324 = v33;
  v38 = os_log_type_enabled(v34, v33);
  v333 = v34;
  v309 = v30;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v317 = v2;
    v40 = v39;
    v41 = swift_slowAlloc();
    v323 = v28;
    v329 = v35;
    v42 = v41;
    v337[0] = v41;
    *v40 = 136315138;
    v43 = v335;
    v44 = v330;
    (v330)(v30, v32, v335);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    v48 = *(v329 + 8);
    v48(v32, v43);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v337);

    *(v40 + 4) = v49;
    v50 = v48;
    _os_log_impl(&dword_0, v333, v324, "findFlowForX -- parse type: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    v51 = v329;
    v52 = v323;

    v53 = v317;
  }

  else
  {
    v54 = v32;
    v50 = *(v35 + 8);
    (v50)(v54, v335);
    v51 = v35;
    v52 = v28;
    v53 = v2;
    v44 = v330;
  }

  v55 = v335;
  v44(v52, v334, v335);
  v56 = (*(v51 + 88))(v52, v55);
  v57 = v332;
  if (v56 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v58 = v50;
    v59 = v325;
    v60 = v335;
    v44(v325, v52, v335);
    (*(v51 + 96))(v59, v60);
    v61 = v327;
    v62 = v331;
    v63 = v57[4](v327, v59, v331);
    v64 = (*(*v53 + 96))(v63);
    v65 = (*(*v64 + 112))(v61);

    if (v65)
    {
      static FlowSearchResult.flow(_:)();

      (v57[1])(v61, v62);
      return v58(v52, v335);
    }

    v326 = v58;
    v323 = v52;
    v329 = v51;
    v87 = static os_log_type_t.error.getter();
    v88 = v319;
    v57[2](v319, v61, v62);
    v89 = v62;
    if (os_log_type_enabled(v333, v87))
    {
      v90 = swift_slowAlloc();
      v91 = v57;
      v92 = swift_slowAlloc();
      v337[0] = v92;
      *v90 = 136315138;
      _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, 255, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      v96 = v91[1];
      (v96)(v88, v331);
      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, v337);

      *(v90 + 4) = v97;
      _os_log_impl(&dword_0, v333, v87, "findFlowForX - flow should not be nil here, received nl intent %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      v61 = v327;

      v89 = v331;
    }

    else
    {
      v96 = v57[1];
      (v96)(v88, v62);
    }

    type metadata accessor for UnsupportedRequestFlow();
    v131 = swift_allocObject();
    type metadata accessor for OS_os_log();
    *(v131 + 16) = OS_os_log.init(subsystem:category:)();
    v337[0] = v131;
    _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow, &protocol conformance descriptor for UnsupportedRequestFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();

    (v96)(v61, v89);
    return (v326)(v323, v335);
  }

  if (v56 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v67 = v326;
    v68 = v52;
    v69 = v335;
    v44(v326, v52, v335);
    (*(v51 + 96))(v67, v69);
    v70 = *&v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48)];
    v71 = static os_log_type_t.default.getter();
    v72 = v333;
    if (os_log_type_enabled(v333, v71))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v72, v71, "findFlowForX - NLv3PlusServerConversion", v73, 2u);
    }

    v74 = Parse.ServerConversion.siriKitIntent.getter();
    objc_opt_self();
    v75 = swift_dynamicCastObjCClass();

    if (v75)
    {
      if (one-time initialization token for instance != -1)
      {
        swift_once();
      }

      Parse.ServerConversion.siriKitIntent.getter();
      objc_opt_self();
      v76 = swift_dynamicCastObjCClassUnconditional();
      outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v337);
      v337[0] = _s21GeoFlowDelegatePlugin027RetrieveParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So010INRetrievefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(v337, v76);
      type metadata accessor for RetrieveParkingLocationBaseFlow(0);
      v77 = &lazy protocol witness table cache variable for type RetrieveParkingLocationBaseFlow and conformance RetrieveParkingLocationBaseFlow;
      v78 = type metadata accessor for RetrieveParkingLocationBaseFlow;
      v79 = &protocol conformance descriptor for RetrieveParkingLocationBaseFlow;
    }

    else
    {
      v128 = Parse.ServerConversion.siriKitIntent.getter();
      objc_opt_self();
      v129 = swift_dynamicCastObjCClass();

      if (v129)
      {
        if (one-time initialization token for instance != -1)
        {
          swift_once();
        }

        Parse.ServerConversion.siriKitIntent.getter();
        objc_opt_self();
        v130 = swift_dynamicCastObjCClassUnconditional();
        outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v337);
        v337[0] = _s21GeoFlowDelegatePlugin025DeleteParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So08INDeletefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(v337, v130);
        type metadata accessor for DeleteParkingLocationBaseFlow(0);
        v77 = &lazy protocol witness table cache variable for type DeleteParkingLocationBaseFlow and conformance DeleteParkingLocationBaseFlow;
        v78 = type metadata accessor for DeleteParkingLocationBaseFlow;
        v79 = &protocol conformance descriptor for DeleteParkingLocationBaseFlow;
      }

      else
      {
        v157 = Parse.ServerConversion.siriKitIntent.getter();
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();

        if (!v158)
        {
          v188 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v72, v188))
          {
            v189 = swift_slowAlloc();
            v330 = v189;
            v334 = swift_slowAlloc();
            v337[0] = v334;
            *v189 = 136315138;
            *&v336[0] = v70;
            type metadata accessor for Parse.ServerConversion();

            v190 = String.init<A>(describing:)();
            v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v191, v337);

            v193 = v330;
            *(v330 + 1) = v192;
            v68 = v52;
            _os_log_impl(&dword_0, v72, v188, "findFlowForX - flow should not be nil here, received serverConversion %s", v193, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v334);
          }

          type metadata accessor for UnsupportedRequestFlow();
          v194 = swift_allocObject();
          type metadata accessor for OS_os_log();
          *(v194 + 16) = OS_os_log.init(subsystem:category:)();
          v337[0] = v194;
          _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow, &protocol conformance descriptor for UnsupportedRequestFlow);
          Flow.eraseToAnyFlow()();
          goto LABEL_47;
        }

        if (one-time initialization token for instance != -1)
        {
          swift_once();
        }

        Parse.ServerConversion.siriKitIntent.getter();
        objc_opt_self();
        v159 = swift_dynamicCastObjCClassUnconditional();
        outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v337);
        v337[0] = _s21GeoFlowDelegatePlugin023SaveParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So06INSavefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(v337, v159);
        type metadata accessor for SaveParkingLocationBaseFlow(0);
        v77 = &lazy protocol witness table cache variable for type SaveParkingLocationBaseFlow and conformance SaveParkingLocationBaseFlow;
        v78 = type metadata accessor for SaveParkingLocationBaseFlow;
        v79 = &protocol conformance descriptor for SaveParkingLocationBaseFlow;
      }
    }

    _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(v77, 255, v78, v79);
    Flow.eraseToAnyFlow()();
LABEL_47:

    static FlowSearchResult.flow(_:)();

    (*(v332 + 1))(v326, v331);
    v52 = v68;
    return (v50)(v52, v335);
  }

  if (v56 != enum case for Parse.directInvocation(_:))
  {
    if (v56 == enum case for Parse.pommesResponse(_:))
    {
      v326 = v50;
      v98 = v314;
      v99 = v335;
      v44(v314, v52, v335);
      (*(v51 + 96))(v98, v99);
      v100 = *v98;
      v101 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v333, v101))
      {
        v102 = swift_slowAlloc();
        v332 = v102;
        v334 = swift_slowAlloc();
        v337[0] = v334;
        *v102 = 136315138;
        v103 = v100;
        v104 = v53;
        v105 = v51;
        v106 = v100;
        v107 = [v103 description];
        v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v109;

        v100 = v106;
        v51 = v105;
        v53 = v104;
        v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, v337);

        v113 = v332;
        v112 = v333;
        *(v332 + 1) = v111;
        _os_log_impl(&dword_0, v112, v101, "findFlowForX - received POMMES input %s", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v334);
      }

      memset(v337, 0, sizeof(v337));
      static CurareDonation.donateCurareResponseUsedMarker(from:into:)();
      v114 = outlined destroy of CurareInteractionStream?(v337);
      v115 = (*(*v53 + 96))(v114);
      v116 = (*(*v115 + 120))(v100);

      if (!v116)
      {
        v163 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v163, &dword_0, v333, "findFlowForX - could not make flow from POMMES input", 52, 2, &_swiftEmptyArrayStorage);
        type metadata accessor for UnsupportedRequestFlow();
        v164 = v52;
        v165 = swift_allocObject();
        type metadata accessor for OS_os_log();
        *(v165 + 16) = OS_os_log.init(subsystem:category:)();
        v337[0] = v165;
        _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow, &protocol conformance descriptor for UnsupportedRequestFlow);
        Flow.eraseToAnyFlow()();

        static FlowSearchResult.flow(_:)();

        return (v326)(v164, v335);
      }

      v117 = static os_log_type_t.default.getter();
      v118 = v333;
      v119 = os_log_type_enabled(v333, v117);
      v50 = v326;
      if (v119)
      {
        v120 = v52;
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v329 = v51;
        v123 = v100;
        v124 = v122;
        v337[0] = v122;
        *v121 = 136315138;
        *&v336[0] = v116;
        type metadata accessor for AnyFlow();
        _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, &type metadata accessor for AnyFlow, &protocol conformance descriptor for AnyFlow);
        v125 = dispatch thunk of CustomStringConvertible.description.getter();
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, v337);

        *(v121 + 4) = v127;
        _os_log_impl(&dword_0, v118, v117, "POMMES flow: %s", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v124);
        v100 = v123;
        v50 = v326;

        v52 = v120;
      }

      static FlowSearchResult.flow(_:)();

      goto LABEL_102;
    }

    if (v56 != enum case for Parse.uso(_:))
    {
LABEL_98:
      v285 = static os_log_type_t.error.getter();
      v286 = v310;
      v44(v310, v334, v335);
      if (os_log_type_enabled(v333, v285))
      {
        v287 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        LODWORD(v334) = v285;
        v289 = v286;
        v290 = v335;
        v291 = v288;
        v337[0] = v288;
        *v287 = 136315138;
        v292 = v52;
        v44(v309, v289, v290);
        v293 = String.init<A>(describing:)();
        v295 = v294;
        (v50)(v289, v290);
        v296 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v293, v295, v337);

        *(v287 + 4) = v296;
        v52 = v292;
        _os_log_impl(&dword_0, v333, v334, "findFlowForX - flow should not be nil here, received parse %s", v287, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v291);
      }

      else
      {
        (v50)(v286, v335);
      }

      type metadata accessor for UnsupportedRequestFlow();
      v297 = swift_allocObject();
      type metadata accessor for OS_os_log();
      *(v297 + 16) = OS_os_log.init(subsystem:category:)();
      v337[0] = v297;
      _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow, &protocol conformance descriptor for UnsupportedRequestFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();
LABEL_102:

      return (v50)(v52, v335);
    }

    v142 = v308;
    v323 = v52;
    v143 = v335;
    v44(v308, v52, v335);
    (*(v51 + 96))(v142, v143);
    v145 = v312;
    v144 = v313;
    (*(v312 + 32))(v316, v142, v313);
    if (specialized static GeoParse.getUsoTask(usoParse:)())
    {
      v146 = UsoTask.getGeoTaskType()();

      if (v146 <= GeoFlowDelegatePlugin_OnDeviceExperience_endNavigation)
      {
        v225 = static os_log_type_t.default.getter();
        if (v146)
        {
          os_log(_:dso:log:_:_:)(v225, &dword_0, v333, "Creating .endNavigation flow", 28, 2, &_swiftEmptyArrayStorage);
          static Device.current.getter();
          v248 = type metadata accessor for GeoRCHFlowFactoryImpl();
          v249 = swift_allocObject();
          v340 = &protocol witness table for GeoRCHFlowFactoryImpl;
          v339 = v248;
          v338 = v249;
          v341 = static DialogHelper.globals.getter();
          static AceService.currentAsync.getter();
          static OutputPublisherFactory.makeOutputPublisherAsync()();
          type metadata accessor for CATService();
          v250 = swift_allocObject();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          *(v250 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          type metadata accessor for OS_os_log();
          *(v250 + 32) = OS_os_log.init(subsystem:category:)();
          *(v250 + 16) = 0;
          v342 = v250;
          type metadata accessor for EndNavigationFlow();
          v252 = swift_allocObject();
          outlined init with copy of FlowHelperImpl(v337, v336);
          v253 = specialized EndNavigationFlow.init(with:checkNavigation:)(v336, &type metadata for AssistantProperties, &protocol witness table for AssistantProperties, v252);
          outlined destroy of FlowHelperImpl(v337);
          v337[0] = v253;
          v154 = &lazy protocol witness table cache variable for type EndNavigationFlow and conformance EndNavigationFlow;
          v155 = type metadata accessor for EndNavigationFlow;
          v156 = &protocol conformance descriptor for EndNavigationFlow;
        }

        else
        {
          os_log(_:dso:log:_:_:)(v225, &dword_0, v333, "Creating .answerETA flow", 24, 2, &_swiftEmptyArrayStorage);
          static Device.current.getter();
          v226 = type metadata accessor for GeoRCHFlowFactoryImpl();
          v227 = swift_allocObject();
          v340 = &protocol witness table for GeoRCHFlowFactoryImpl;
          v339 = v226;
          v338 = v227;
          v341 = static DialogHelper.globals.getter();
          static AceService.currentAsync.getter();
          static OutputPublisherFactory.makeOutputPublisherAsync()();
          type metadata accessor for CATService();
          v228 = swift_allocObject();
          v229 = swift_getObjCClassFromMetadata();
          *(v228 + 24) = [objc_opt_self() bundleForClass:v229];
          type metadata accessor for OS_os_log();
          *(v228 + 32) = OS_os_log.init(subsystem:category:)();
          *(v228 + 16) = 0;
          v342 = v228;
          type metadata accessor for AnswerETAFlow();
          v230 = swift_allocObject();
          outlined init with copy of FlowHelperImpl(v337, v336);
          v231 = specialized AnswerETAFlow.init(with:checkNavigation:)(v336, &type metadata for AssistantProperties, &protocol witness table for AssistantProperties, v230);
          outlined destroy of FlowHelperImpl(v337);
          v337[0] = v231;
          v154 = &lazy protocol witness table cache variable for type AnswerETAFlow and conformance AnswerETAFlow;
          v155 = type metadata accessor for AnswerETAFlow;
          v156 = &protocol conformance descriptor for AnswerETAFlow;
        }

        goto LABEL_80;
      }

      if (v146 == GeoFlowDelegatePlugin_OnDeviceExperience_answerAltitude)
      {
        v241 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v241, &dword_0, v333, "Creating .answerAltitude flow", 29, 2, &_swiftEmptyArrayStorage);
        static Device.current.getter();
        v242 = type metadata accessor for GeoRCHFlowFactoryImpl();
        v243 = swift_allocObject();
        v340 = &protocol witness table for GeoRCHFlowFactoryImpl;
        v339 = v242;
        v338 = v243;
        v341 = static DialogHelper.globals.getter();
        static AceService.currentAsync.getter();
        static OutputPublisherFactory.makeOutputPublisherAsync()();
        type metadata accessor for CATService();
        v244 = swift_allocObject();
        v245 = swift_getObjCClassFromMetadata();
        *(v244 + 24) = [objc_opt_self() bundleForClass:v245];
        type metadata accessor for OS_os_log();
        *(v244 + 32) = OS_os_log.init(subsystem:category:)();
        *(v244 + 16) = 0;
        v342 = v244;
        type metadata accessor for AnswerAltitudeFlow();
        v246 = swift_allocObject();
        outlined init with copy of FlowHelperImpl(v337, v336);
        v247 = specialized AnswerAltitudeFlow.init(with:)(v336, v246);
        outlined destroy of FlowHelperImpl(v337);
        v337[0] = v247;
        v154 = &lazy protocol witness table cache variable for type AnswerAltitudeFlow and conformance AnswerAltitudeFlow;
        v155 = type metadata accessor for AnswerAltitudeFlow;
        v156 = &protocol conformance descriptor for AnswerAltitudeFlow;
        goto LABEL_80;
      }

      if (v146 == GeoFlowDelegatePlugin_OnDeviceExperience_whereAmI)
      {
        v147 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v147, &dword_0, v333, "Creating .whereAmI flow", 23, 2, &_swiftEmptyArrayStorage);
        static Device.current.getter();
        v148 = type metadata accessor for GeoRCHFlowFactoryImpl();
        v149 = swift_allocObject();
        v340 = &protocol witness table for GeoRCHFlowFactoryImpl;
        v339 = v148;
        v338 = v149;
        v341 = static DialogHelper.globals.getter();
        static AceService.currentAsync.getter();
        static OutputPublisherFactory.makeOutputPublisherAsync()();
        type metadata accessor for CATService();
        v150 = swift_allocObject();
        v151 = swift_getObjCClassFromMetadata();
        *(v150 + 24) = [objc_opt_self() bundleForClass:v151];
        type metadata accessor for OS_os_log();
        *(v150 + 32) = OS_os_log.init(subsystem:category:)();
        *(v150 + 16) = 0;
        v342 = v150;
        type metadata accessor for WhereAmIFlow();
        v152 = swift_allocObject();
        outlined init with copy of FlowHelperImpl(v337, v336);
        v153 = specialized WhereAmIFlow.init(with:)(v336, v152);
        outlined destroy of FlowHelperImpl(v337);
        v337[0] = v153;
        v154 = &lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow;
        v155 = type metadata accessor for WhereAmIFlow;
        v156 = &protocol conformance descriptor for WhereAmIFlow;
LABEL_80:
        _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(v154, 255, v155, v156);
        Flow.eraseToAnyFlow()();

        static FlowSearchResult.flow(_:)();

        (*(v145 + 8))(v316, v144);
        v52 = v323;
        return (v50)(v52, v335);
      }
    }

    v326 = v50;
    v329 = v51;
    v176 = static os_log_type_t.default.getter();
    v177 = v306;
    v178 = v330;
    (v330)(v306, v334, v335);
    v179 = v333;
    if (os_log_type_enabled(v333, v176))
    {
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v337[0] = v181;
      *v180 = 136315138;
      v182 = v335;
      (v330)(v309, v177, v335);
      v183 = String.init<A>(describing:)();
      v184 = v177;
      v186 = v185;
      (v326)(v184, v182);
      v187 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v186, v337);

      *(v180 + 4) = v187;
      v178 = v330;
      _os_log_impl(&dword_0, v179, v176, "uso parse does not conform to any geo experiences:  %s", v180, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v181);
    }

    else
    {
      (v326)(v177, v335);
    }

    v211 = v307;
    v212 = static os_log_type_t.default.getter();
    v178(v211, v334, v335);
    if (os_log_type_enabled(v179, v212))
    {
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v215 = v335;
      v216 = v214;
      v337[0] = v214;
      *v213 = 136315138;
      v178(v309, v211, v215);
      v217 = String.init<A>(describing:)();
      v219 = v218;
      v220 = v211;
      v50 = v326;
      (v326)(v220, v215);
      v221 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v219, v337);

      *(v213 + 4) = v221;
      _os_log_impl(&dword_0, v179, v212, "findFlowForX - not available %s", v213, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v216);
    }

    else
    {
      v222 = v211;
      v50 = v326;
      (v326)(v222, v335);
    }

    v224 = v312;
    v223 = v313;
    v52 = v323;
    static FlowSearchResult.noFlow.getter();
    (*(v224 + 8))(v316, v223);
    return (v50)(v52, v335);
  }

  v80 = v44;
  v81 = v321;
  v82 = v52;
  v83 = v335;
  v327 = v36;
  v80(v321);
  (*(v51 + 96))(v81, v83);
  v84 = *(v320 + 16);
  v85 = v318;
  v84(v318, v81, v322);
  if (Parse.DirectInvocation.identifier.getter() != 0xD00000000000002CLL || 0x80000000000BFCA0 != v86)
  {
    v317 = v53;
    v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v132)
    {
      goto LABEL_35;
    }

    v326 = v50;
    v329 = v51;
    v160 = *(v320 + 8);
    v161 = v322;
    v160(v85, v322);
    v84(v315, v321, v161);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000002CLL && 0x80000000000BFC00 == v162)
    {

LABEL_53:
      type metadata accessor for LocationSearchIntentBuilder();
      swift_allocObject();
      v167 = *LocationSearchIntentBuilder.init()();
      v168 = (*(v167 + 392))(1);

      v169 = (*(*v168 + 384))(6);

      v171 = v311;
      (*(*v169 + 456))(v170);

      v173 = (*(*v317 + 96))(v172);
      v174 = (*(*v173 + 112))(v171);

      if (v174)
      {
        static FlowSearchResult.flow(_:)();

        (*(v332 + 1))(v171, v331);
        v175 = v315;
LABEL_76:
        v238 = v322;
        v160(v175, v322);
        v239 = v321;
        v240 = v238;
LABEL_77:
        v160(v239, v240);
        return (v326)(v82, v335);
      }

      v334 = v160;
      v323 = v52;
      v195 = static os_log_type_t.error.getter();
      v196 = v331;
      v197 = v332;
      v198 = v305;
      (*(v332 + 2))(v305, v171, v331);
      v199 = v333;
      if (os_log_type_enabled(v333, v195))
      {
        v200 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v337[0] = v201;
        *v200 = 136315138;
        _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, 255, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
        v202 = dispatch thunk of CustomStringConvertible.description.getter();
        v203 = v197;
        v205 = v204;
        v206 = *(v203 + 1);
        v206(v198, v331);
        v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v202, v205, v337);

        *(v200 + 4) = v207;
        _os_log_impl(&dword_0, v199, v195, "findFlowForX - flow should not be nil here, received nl intent %s", v200, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v201);
        v196 = v331;
      }

      else
      {
        v206 = *(v197 + 1);
        v206(v198, v196);
      }

      type metadata accessor for UnsupportedRequestFlow();
      v232 = swift_allocObject();
      type metadata accessor for OS_os_log();
      *(v232 + 16) = OS_os_log.init(subsystem:category:)();
      v337[0] = v232;
      _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow, &protocol conformance descriptor for UnsupportedRequestFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();

      v206(v311, v196);
      v233 = v322;
      v234 = v334;
      v334(v315, v322);
      v234(v321, v233);
      return (v326)(v323, v335);
    }

    v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v166)
    {
      goto LABEL_53;
    }

    v208 = v322;
    v160(v315, v322);
    v209 = v304;
    v84(v304, v321, v208);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000002ALL && 0x80000000000BFC30 == v210)
    {

LABEL_75:
      type metadata accessor for RedirectToServerFlow();
      v236 = swift_allocObject();
      type metadata accessor for OS_os_log();
      *(v236 + 16) = OS_os_log.init(subsystem:category:)();
      v337[0] = v236;
      _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow, 255, type metadata accessor for RedirectToServerFlow, &protocol conformance descriptor for RedirectToServerFlow);
      Flow.eraseToAnyFlow()();

      v237 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v237, &dword_0, v333, "makeRedirectToServerFlow", 24, 2, &_swiftEmptyArrayStorage);
      static FlowSearchResult.flow(_:)();

      v175 = v209;
      goto LABEL_76;
    }

    v235 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v235)
    {
      goto LABEL_75;
    }

    v254 = v322;
    v160(v209, v322);
    (*(v320 + 32))(v303, v321, v254);
    if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000033 && 0x80000000000BFC60 == v255)
    {

      v256 = v331;
      v257 = v332;
      goto LABEL_85;
    }

    v258 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v256 = v331;
    v257 = v332;
    if (v258)
    {
LABEL_85:
      v259 = Parse.DirectInvocation.userData.getter();
      if (v259)
      {
        v260 = v259;
        if (*(v259 + 16) && (v261 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656469636E49, 0xEC00000065707954), (v262 & 1) != 0))
        {
          outlined init with copy of Any(*(v260 + 56) + 32 * v261, v337);

          if ((swift_dynamicCast() & 1) != 0 && *&v336[0] <= 5uLL)
          {
            v263 = 0x40103020001uLL >> (8 * LOBYTE(v336[0]));
LABEL_93:
            type metadata accessor for LocationSearchIntentBuilder();
            swift_allocObject();
            v264 = *LocationSearchIntentBuilder.init()();
            v265 = (*(v264 + 392))(3);

            v266 = (*(*v265 + 384))(5);

            v267 = (*(*v266 + 400))(v263);

            v269 = v302;
            (*(*v267 + 456))(v268);

            v271 = (*(*v317 + 96))(v270);
            v272 = (*(*v271 + 112))(v269);

            if (v272)
            {
              static FlowSearchResult.flow(_:)();

              v257[1](v269, v256);
              v239 = v303;
              v240 = v322;
              goto LABEL_77;
            }

            v334 = v160;
            v323 = v82;
            v273 = static os_log_type_t.error.getter();
            v274 = v301;
            (v257[2])(v301, v269, v256);
            v275 = v333;
            if (os_log_type_enabled(v333, v273))
            {
              v276 = swift_slowAlloc();
              v277 = swift_slowAlloc();
              v337[0] = v277;
              *v276 = 136315138;
              _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, 255, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
              v278 = dispatch thunk of CustomStringConvertible.description.getter();
              v279 = v257;
              v281 = v280;
              v282 = v274;
              v283 = v279[1];
              v283(v282, v331);
              v284 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v278, v281, v337);

              *(v276 + 4) = v284;
              _os_log_impl(&dword_0, v275, v273, "findFlowForX - flow should not be nil here, received nl intent %s", v276, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v277);
              v256 = v331;
            }

            else
            {
              v298 = v274;
              v283 = v257[1];
              v283(v298, v256);
            }

            type metadata accessor for UnsupportedRequestFlow();
            v299 = swift_allocObject();
            type metadata accessor for OS_os_log();
            *(v299 + 16) = OS_os_log.init(subsystem:category:)();
            v337[0] = v299;
            _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow, &protocol conformance descriptor for UnsupportedRequestFlow);
            Flow.eraseToAnyFlow()();

            static FlowSearchResult.flow(_:)();

            v283(v302, v256);
            v334(v303, v322);
            return (v326)(v323, v335);
          }
        }

        else
        {
        }
      }

      v263 = 1;
      goto LABEL_93;
    }

    v160(v303, v322);
    v44 = v330;
    v50 = v326;
    v52 = v82;
    goto LABEL_98;
  }

LABEL_35:
  v133 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v133, &dword_0, v333, "Creating .whereAmI flow for directInvocation", 44, 2, &_swiftEmptyArrayStorage);
  static Device.current.getter();
  v134 = type metadata accessor for GeoRCHFlowFactoryImpl();
  v135 = swift_allocObject();
  v340 = &protocol witness table for GeoRCHFlowFactoryImpl;
  v339 = v134;
  v338 = v135;
  v341 = static DialogHelper.globals.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for CATService();
  v136 = swift_allocObject();
  v137 = swift_getObjCClassFromMetadata();
  *(v136 + 24) = [objc_opt_self() bundleForClass:v137];
  type metadata accessor for OS_os_log();
  *(v136 + 32) = OS_os_log.init(subsystem:category:)();
  *(v136 + 16) = 0;
  v342 = v136;
  type metadata accessor for WhereAmIFlow();
  v138 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(v337, v336);
  v139 = specialized WhereAmIFlow.init(with:)(v336, v138);
  outlined destroy of FlowHelperImpl(v337);
  v337[0] = v139;
  _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow, 255, type metadata accessor for WhereAmIFlow, &protocol conformance descriptor for WhereAmIFlow);
  Flow.eraseToAnyFlow()();

  static FlowSearchResult.flow(_:)();

  v140 = *(v320 + 8);
  v141 = v322;
  v140(v85, v322);
  v140(v321, v141);
  return (v50)(v52, v335);
}

uint64_t protocol witness for FlowPlugin.init() in conformance GeoFlowDelegatePlugin@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  *a1 = result;
  return result;
}

uint64_t specialized FlowSelector.init(with:)(_OWORD *a1, uint64_t a2)
{
  v77 = &type metadata for FlowHelperImpl;
  v78 = &protocol witness table for FlowHelperImpl;
  v4 = swift_allocObject();
  *&v76 = v4;
  v5 = a1[9];
  v4[9] = a1[8];
  v4[10] = v5;
  v4[11] = a1[10];
  v6 = a1[5];
  v4[5] = a1[4];
  v4[6] = v6;
  v7 = a1[7];
  v4[7] = a1[6];
  v4[8] = v7;
  v8 = a1[1];
  v4[1] = *a1;
  v4[2] = v8;
  v9 = a1[3];
  v4[3] = a1[2];
  v4[4] = v9;
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  v61 = a2;
  outlined init with copy of DeviceState(&v76, v74);
  v10 = swift_allocObject();
  outlined init with take of CATType(v74, v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in FlowSelector.init(with:);
  *(v11 + 24) = v10;
  v75[0] = &outlined read-only object #0 of specialized FlowSelector.init(with:);
  v75[1] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v75[2] = _s21GeoFlowDelegatePlugin20LocationSearchIntentC07SiriKitB003AnyB0CSgIeggo_AcGIegnr_TRTA_0;
  v75[3] = v11;
  outlined init with copy of DeviceState(&v76, v73);
  v12 = swift_allocObject();
  outlined init with take of CATType(v73, v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = _s21GeoFlowDelegatePlugin0B8SelectorC4withAcA0B6Helper_p_tcfc07SiriKitB003AnyB0CSgAA20LocationSearchIntentCcfU0_TA_0;
  *(v13 + 24) = v12;
  v75[4] = &outlined read-only object #1 of specialized FlowSelector.init(with:);
  v75[5] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v75[6] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v75[7] = v13;
  outlined init with copy of DeviceState(&v76, v72);
  v14 = swift_allocObject();
  outlined init with take of CATType(v72, v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = _s21GeoFlowDelegatePlugin0B8SelectorC4withAcA0B6Helper_p_tcfc07SiriKitB003AnyB0CSgAA20LocationSearchIntentCcfU1_TA_0;
  *(v15 + 24) = v14;
  v75[8] = &outlined read-only object #2 of specialized FlowSelector.init(with:);
  v75[9] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v75[10] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v75[11] = v15;
  outlined init with copy of DeviceState(&v76, v71);
  v16 = swift_allocObject();
  outlined init with take of CATType(v71, v16 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #4 in FlowSelector.init(with:);
  *(v17 + 24) = v16;
  v75[12] = &outlined read-only object #3 of specialized FlowSelector.init(with:);
  v75[13] = &outlined read-only object #4 of specialized FlowSelector.init(with:);
  v75[14] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v75[15] = v17;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV_07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v19 = 0;
  while (1)
  {
    v62 = v19;
    v20 = &v75[4 * v19];
    v21 = *v20;
    v22 = v20[1];
    v24 = v20[2];
    v23 = v20[3];
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    v65 = *(v21 + 16);
    if (v65)
    {
      break;
    }

LABEL_41:
    v19 = v62 + 1;
    if (v62 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin20LocationSearchIntentC0eF9VerbValueOG_SayAC0ef4NounI0OGyyctMd, &_sSay21GeoFlowDelegatePlugin20LocationSearchIntentC0eF9VerbValueOG_SayAC0ef4NounI0OGyyctMR);
      swift_arrayDestroy();
      *(v61 + 24) = v18;
      outlined init with take of CATType(&v76, v61 + 32);
      return v61;
    }
  }

  v64 = v21 + 32;
  v68 = v22 + 32;
  v69 = *(v22 + 16);
  swift_bridgeObjectRetain_n();

  v26 = 0;
  v63 = v21;
  v67 = v22;
  while (v26 < *(v21 + 16))
  {
    if (v69)
    {
      v66 = v26;
      v70 = *(v64 + v26);

      v27 = 0;
      while (1)
      {
        if (v27 >= *(v22 + 16))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v29 = *(v68 + v27);
        v30 = swift_allocObject();
        *(v30 + 16) = _s21GeoFlowDelegatePlugin20LocationSearchIntentC07SiriKitB003AnyB0CSgIegnr_AcGIeggo_TRTA_0;
        *(v30 + 24) = v25;
        v31 = v25;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v18;
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v70 | (v29 << 8));
        v35 = *(v18 + 16);
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_44;
        }

        v38 = v33;
        if (*(v18 + 24) >= v37)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v25 = v31;
            if (v33)
            {
              goto LABEL_9;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMd, &_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMR);
            v60 = static _DictionaryStorage.copy(original:)();
            if (*(v18 + 16))
            {
              v46 = (v60 + 64);
              v47 = ((1 << *(v60 + 32)) + 63) >> 6;
              if (v60 != v18 || v46 >= v18 + 64 + 8 * v47)
              {
                memmove(v46, (v18 + 64), 8 * v47);
              }

              v48 = 0;
              *(v60 + 16) = *(v18 + 16);
              v49 = 1 << *(v18 + 32);
              v50 = *(v18 + 64);
              if (v49 < 64)
              {
                v51 = ~(-1 << v49);
              }

              else
              {
                v51 = -1;
              }

              v52 = v51 & v50;
              v53 = (v49 + 63) >> 6;
              if ((v51 & v50) != 0)
              {
                do
                {
                  v54 = __clz(__rbit64(v52));
                  v52 &= v52 - 1;
LABEL_35:
                  v57 = v54 | (v48 << 6);
                  v58 = *(*(v18 + 56) + 16 * v57);
                  *(*(v60 + 48) + 2 * v57) = *(*(v18 + 48) + 2 * v57);
                  *(*(v60 + 56) + 16 * v57) = v58;
                }

                while (v52);
              }

              v55 = v48;
              while (1)
              {
                v48 = v55 + 1;
                if (__OFADD__(v55, 1))
                {
                  goto LABEL_47;
                }

                if (v48 >= v53)
                {
                  break;
                }

                v56 = *(v18 + 64 + 8 * v48);
                ++v55;
                if (v56)
                {
                  v54 = __clz(__rbit64(v56));
                  v52 = (v56 - 1) & v56;
                  goto LABEL_35;
                }
              }
            }

            v18 = v60;
            v25 = v31;
            if (v38)
            {
LABEL_9:
              v28 = (*(v18 + 56) + 16 * v34);
              *v28 = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
              v28[1] = v30;

              goto LABEL_10;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
          v18 = *&v71[0];
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(v70 | (v29 << 8));
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_48;
          }

          v34 = v39;
          v25 = v31;
          if (v38)
          {
            goto LABEL_9;
          }
        }

        *(v18 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v41 = (*(v18 + 48) + 2 * v34);
        *v41 = v70;
        v41[1] = v29;
        v42 = (*(v18 + 56) + 16 * v34);
        *v42 = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
        v42[1] = v30;
        v43 = *(v18 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_45;
        }

        *(v18 + 16) = v45;
LABEL_10:
        ++v27;
        v22 = v67;
        if (v27 == v69)
        {

          v21 = v63;
          v26 = v66;
          break;
        }
      }
    }

    if (++v26 == v65)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_41;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s21GeoFlowDelegatePlugin027RetrieveParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So010INRetrievefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RetrieveParkingLocationBaseFlow(0);
  v4 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(a1, v16);
  v14 = &type metadata for FlowHelperImpl;
  v15 = &protocol witness table for FlowHelperImpl;
  v5 = swift_allocObject();
  *&v13 = v5;
  v6 = v16[9];
  v5[9] = v16[8];
  v5[10] = v6;
  v5[11] = v16[10];
  v7 = v16[5];
  v5[5] = v16[4];
  v5[6] = v7;
  v8 = v16[7];
  v5[7] = v16[6];
  v5[8] = v8;
  v9 = v16[1];
  v5[1] = v16[0];
  v5[2] = v9;
  v10 = v16[3];
  v5[3] = v16[2];
  v5[4] = v10;
  type metadata accessor for OS_os_log();
  v11 = OS_os_log.init(subsystem:category:)();
  outlined destroy of FlowHelperImpl(a1);
  *(v4 + 16) = v11;
  *(v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v13, v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper);
  *(v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t _s21GeoFlowDelegatePlugin025DeleteParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So08INDeletefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeleteParkingLocationBaseFlow(0);
  v4 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(a1, v16);
  v14 = &type metadata for FlowHelperImpl;
  v15 = &protocol witness table for FlowHelperImpl;
  v5 = swift_allocObject();
  *&v13 = v5;
  v6 = v16[9];
  v5[9] = v16[8];
  v5[10] = v6;
  v5[11] = v16[10];
  v7 = v16[5];
  v5[5] = v16[4];
  v5[6] = v7;
  v8 = v16[7];
  v5[7] = v16[6];
  v5[8] = v8;
  v9 = v16[1];
  v5[1] = v16[0];
  v5[2] = v9;
  v10 = v16[3];
  v5[3] = v16[2];
  v5[4] = v10;
  type metadata accessor for OS_os_log();
  v11 = OS_os_log.init(subsystem:category:)();
  outlined destroy of FlowHelperImpl(a1);
  *(v4 + 16) = v11;
  *(v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v13, v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper);
  *(v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t _s21GeoFlowDelegatePlugin023SaveParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So06INSavefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SaveParkingLocationBaseFlow(0);
  v4 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(a1, v16);
  v14 = &type metadata for FlowHelperImpl;
  v15 = &protocol witness table for FlowHelperImpl;
  v5 = swift_allocObject();
  *&v13 = v5;
  v6 = v16[9];
  v5[9] = v16[8];
  v5[10] = v6;
  v5[11] = v16[10];
  v7 = v16[5];
  v5[5] = v16[4];
  v5[6] = v7;
  v8 = v16[7];
  v5[7] = v16[6];
  v5[8] = v8;
  v9 = v16[1];
  v5[1] = v16[0];
  v5[2] = v9;
  v10 = v16[3];
  v5[3] = v16[2];
  v5[4] = v10;
  type metadata accessor for OS_os_log();
  v11 = OS_os_log.init(subsystem:category:)();
  outlined destroy of FlowHelperImpl(a1);
  *(v4 + 16) = v11;
  *(v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v13, v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper);
  *(v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t specialized AnswerETAFlow.init(with:checkNavigation:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = &type metadata for FlowHelperImpl;
  v18[4] = &protocol witness table for FlowHelperImpl;
  v8 = swift_allocObject();
  v18[0] = v8;
  v9 = a1[9];
  v8[9] = a1[8];
  v8[10] = v9;
  v8[11] = a1[10];
  v10 = a1[5];
  v8[5] = a1[4];
  v8[6] = v10;
  v11 = a1[7];
  v8[7] = a1[6];
  v8[8] = v11;
  v12 = a1[1];
  v8[1] = *a1;
  v8[2] = v12;
  v13 = a1[3];
  v8[3] = a1[2];
  v8[4] = v13;
  type metadata accessor for OS_os_log();
  *(a4 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v14 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v14 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v14 + 32) = OS_os_log.init(subsystem:category:)();
  *(v14 + 16) = 0;
  *(a4 + 80) = 0;
  *(a4 + 104) = 0;
  *(a4 + 24) = v14;
  *(a4 + 32) = 0;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  outlined init with copy of DeviceState(v18, a4 + 40);
  type metadata accessor for DialogDuration.Builder();
  swift_allocObject();
  *(a4 + 112) = DialogDuration.Builder.init()();
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v16, &dword_0, *(a4 + 16), "AnswerETAFlow init with prechecks", 33, 2, &_swiftEmptyArrayStorage);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return a4;
}

void *specialized EndNavigationFlow.init(with:checkNavigation:)(_OWORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18[3] = &type metadata for FlowHelperImpl;
  v18[4] = &protocol witness table for FlowHelperImpl;
  v8 = swift_allocObject();
  v18[0] = v8;
  v9 = a1[9];
  v8[9] = a1[8];
  v8[10] = v9;
  v8[11] = a1[10];
  v10 = a1[5];
  v8[5] = a1[4];
  v8[6] = v10;
  v11 = a1[7];
  v8[7] = a1[6];
  v8[8] = v11;
  v12 = a1[1];
  v8[1] = *a1;
  v8[2] = v12;
  v13 = a1[3];
  v8[3] = a1[2];
  v8[4] = v13;
  type metadata accessor for OS_os_log();
  a4[2] = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v14 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v14 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v14 + 32) = OS_os_log.init(subsystem:category:)();
  *(v14 + 16) = 0;
  a4[3] = v14;
  a4[4] = 0;
  a4[10] = a2;
  a4[11] = a3;
  outlined init with copy of DeviceState(v18, (a4 + 5));
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v16, &dword_0, a4[2], "EndNavigationFlow init with prechecks", 37, 2, &_swiftEmptyArrayStorage);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return a4;
}

uint64_t specialized AnswerAltitudeFlow.init(with:)(_OWORD *a1, uint64_t a2)
{
  v14[3] = &type metadata for FlowHelperImpl;
  v14[4] = &protocol witness table for FlowHelperImpl;
  v4 = swift_allocObject();
  v14[0] = v4;
  v5 = a1[9];
  v4[9] = a1[8];
  v4[10] = v5;
  v4[11] = a1[10];
  v6 = a1[5];
  v4[5] = a1[4];
  v4[6] = v6;
  v7 = a1[7];
  v4[7] = a1[6];
  v4[8] = v7;
  v8 = a1[1];
  v4[1] = *a1;
  v4[2] = v8;
  v9 = a1[3];
  v4[3] = a1[2];
  v4[4] = v9;
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v10 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v10 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v10 + 32) = OS_os_log.init(subsystem:category:)();
  *(v10 + 16) = 0;
  *(a2 + 24) = v10;
  *(a2 + 32) = 2;
  *(a2 + 40) = 2;
  outlined init with copy of DeviceState(v14, a2 + 48);
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v12, &dword_0, *(a2 + 16), "AnswerAltitudeFlow init with fetch altitude", 43, 2, &_swiftEmptyArrayStorage);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return a2;
}

unint64_t specialized GeoDirectInvocations.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeoDirectInvocations.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of CurareInteractionStream?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23CurareInteractionStream_pSgMd, "ށ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GeoDirectInvocations and conformance GeoDirectInvocations()
{
  result = lazy protocol witness table cache variable for type GeoDirectInvocations and conformance GeoDirectInvocations;
  if (!lazy protocol witness table cache variable for type GeoDirectInvocations and conformance GeoDirectInvocations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDirectInvocations and conformance GeoDirectInvocations);
  }

  return result;
}

uint64_t _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_7AC38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_7AC84(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t sub_7ACE8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_7AD48()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_7AD80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _s21GeoFlowDelegatePlugin20LocationSearchIntentC07SiriKitB003AnyB0CSgIeggo_AcGIegnr_TRTA_0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t static GeoParse.getGeoExperience(parse:)(uint64_t a1)
{
  if (!specialized static GeoParse.getUsoTask(usoParse:)())
  {
    return 4;
  }

  v1 = UsoTask.getGeoTaskType()();

  return v1;
}

uint64_t OnDeviceExperience.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x5445726577736E61;
  v2 = 0x6C41726577736E61;
  v3 = 0x496D416572656877;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x676976614E646E65;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OnDeviceExperience(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000041;
  v3 = 0x5445726577736E61;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x6C41726577736E61;
  v7 = 0xEE00656475746974;
  v8 = 0xE800000000000000;
  v9 = 0x496D416572656877;
  if (v4 != 3)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (v4 != 2)
  {
    v6 = v9;
    v7 = v8;
  }

  v10 = 0x676976614E646E65;
  v11 = 0xED00006E6F697461;
  if (!*a1)
  {
    v10 = 0x5445726577736E61;
    v11 = 0xE900000000000041;
  }

  if (*a1 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = 0x6C41726577736E61;
  v15 = 0xEE00656475746974;
  v16 = 0xE800000000000000;
  v17 = 0x496D416572656877;
  if (v5 != 3)
  {
    v17 = 0x6E776F6E6B6E75;
    v16 = 0xE700000000000000;
  }

  if (v5 != 2)
  {
    v14 = v17;
    v15 = v16;
  }

  if (*a2)
  {
    v3 = 0x676976614E646E65;
    v2 = 0xED00006E6F697461;
  }

  if (*a2 <= 1u)
  {
    v18 = v3;
  }

  else
  {
    v18 = v14;
  }

  if (*a2 <= 1u)
  {
    v19 = v2;
  }

  else
  {
    v19 = v15;
  }

  if (v12 == v18 && v13 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OnDeviceExperience()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance OnDeviceExperience(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OnDeviceExperience(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance OnDeviceExperience@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized OnDeviceExperience.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance OnDeviceExperience(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000041;
  v4 = 0x5445726577736E61;
  v5 = 0xEE00656475746974;
  v6 = 0x6C41726577736E61;
  v7 = 0xE800000000000000;
  v8 = 0x496D416572656877;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676976614E646E65;
    v3 = 0xED00006E6F697461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

GeoFlowDelegatePlugin::OnDeviceExperience __swiftcall UsoTask.getGeoTaskType()()
{
  if (UsoTask.baseEntityAsString.getter() == 0x4A5F6E6F6D6D6F63 && v0 == 0xEE0079656E72756FLL)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (UsoTask.verbString.getter() == 1886352499 && v3 == 0xE400000000000000)
  {

    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return 1;
  }

LABEL_10:
  if (UsoTask.answerETATask()(v2))
  {
    return 0;
  }

  if (UsoTask.baseEntityAsString.getter() == 0x435F6E6F6D6D6F63 && v6 == 0xEE00737361706D6FLL)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (UsoTask.verbString.getter() == 0x74736575716572 && v8 == 0xE700000000000000)
  {

    return 2;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return 2;
  }

LABEL_21:
  if (UsoTask.baseEntityAsString.getter() == 0xD000000000000016 && 0x80000000000C2E20 == v10)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 4;
    }
  }

  if (UsoTask.verbString.getter() == 0x736972616D6D7573 && v12 == 0xE900000000000065)
  {

    return 3;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return 3;
  }

  return 4;
}

uint64_t UsoTask.answerETATask()(uint64_t a1)
{
  if (UsoTask.baseEntityAsString.getter() == 0x4A5F6E6F6D6D6F63 && v1 == 0xEE0079656E72756FLL)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  if (UsoTask.verbString.getter() == 0x74736575716572 && v3 == 0xE700000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v11, v10);
  if (!v10[3])
  {
    outlined destroy of Any?(v10);
    goto LABEL_16;
  }

  type metadata accessor for UsoTask_request_common_Journey();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    outlined destroy of Any?(v11);
    return 1;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();

  if (v10[0])
  {
    v5 = dispatch thunk of UsoEntity_common_Journey.dateTimeRange.getter();

    if (v5)
    {
      v6 = dispatch thunk of UsoEntity_common_DateTimeRange.end.getter();

      if (v6)
      {

        goto LABEL_16;
      }
    }
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  if (v10[0] && (v8 = dispatch thunk of UsoEntity_common_Journey.dateTimeRange.getter(), , v8))
  {
    v9 = dispatch thunk of UsoEntity_common_DateTimeRange.end.getter();

    outlined destroy of Any?(v11);
    if (v9)
    {

      return 1;
    }
  }

  else
  {

    outlined destroy of Any?(v11);
  }

  return 0;
}

uint64_t specialized static GeoParse.getUsoTask(usoParse:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  USOParse.userParse.getter();
  v8 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v1 + 8))(v3, v0);
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

  v9 = Siri_Nlu_External_UserDialogAct.getTasks()();
  (*(v5 + 8))(v7, v4);
  if (!(v9 >> 62))
  {
    result = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
    v11 = *(v9 + 32);

LABEL_7:

    return v11;
  }

  __break(1u);
  return result;
}

unint64_t specialized OnDeviceExperience.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OnDeviceExperience.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type OnDeviceExperience and conformance OnDeviceExperience()
{
  result = lazy protocol witness table cache variable for type OnDeviceExperience and conformance OnDeviceExperience;
  if (!lazy protocol witness table cache variable for type OnDeviceExperience and conformance OnDeviceExperience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnDeviceExperience and conformance OnDeviceExperience);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DeleteParkingHandleIntentStrategy.__allocating_init(with:isPommes:)(__int128 *a1, char a2)
{
  v4 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v4 + 24);
  *(v4 + 64) = a2;
  return v4;
}

uint64_t DeleteParkingHandleIntentStrategy.init(with:isPommes:)(__int128 *a1, char a2)
{
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  *(v2 + 64) = a2;
  return v2;
}

uint64_t DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

uint64_t DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo023INDeleteParkingLocationD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo023INDeleteParkingLocationD0CSo0ghiD8ResponseCGMR);
  v1 = IntentResolutionRecord.intentResponse.getter();
  v2 = [v1 code];

  if (v2 == &dword_0 + 3)
  {
    v3 = *(v0 + 72);
    v4 = v3[6];
    v5 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v4);
    type metadata accessor for DialogLocation.Builder();
    swift_allocObject();
    DialogLocation.Builder.init()();
    v6 = dispatch thunk of DialogLocation.Builder.build()();

    *(v0 + 40) = &type metadata for DeleteParkingLocation;
    *(v0 + 48) = &protocol witness table for DeleteParkingLocation;
    *(v0 + 16) = v6;
    *(v0 + 24) = xmmword_BDAE0;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v8 = *(v0 + 56);

    return FlowHelper.makeDialogOnlyOutput(model:)(v8, v0 + 16, v4, v5);
  }

  else
  {
    v13 = (*(**(v0 + 72) + 120) + **(**(v0 + 72) + 120));
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v11 = *(v0 + 64);
    v12 = *(v0 + 56);

    return v13(v12, v11);
  }
}

{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DeleteParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(DeleteParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0, 0);
}

uint64_t DeleteParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v1 = v0[8];
  v3 = v1[6];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v0[5] = &type metadata for DeleteParkingLocation;
  v0[6] = &protocol witness table for DeleteParkingLocation;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v5 = v0[7];

  return FlowHelper.makeDialogOnlyOutput(model:)(v5, (v0 + 2), v3, v2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 112) + **(**v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

unint64_t lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy()
{
  result = lazy protocol witness table cache variable for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy;
  if (!lazy protocol witness table cache variable for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy)
  {
    type metadata accessor for DeleteParkingHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy);
  }

  return result;
}

uint64_t LocationSearchIntentBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  LocationSearchIntentBuilder.init()();
  return v0;
}

uint64_t LocationSearchIntentBuilder.noun.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t LocationSearchIntentBuilder.verb.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t LocationSearchIntentBuilder.incidentType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

uint64_t LocationSearchIntentBuilder.confirmation.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 19) = a1;
  return result;
}

uint64_t LocationSearchIntentBuilder.appName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t LocationSearchIntentBuilder.appName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t LocationSearchIntentBuilder.firstName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t LocationSearchIntentBuilder.firstName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t LocationSearchIntentBuilder.fullName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t LocationSearchIntentBuilder.fullName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t LocationSearchIntentBuilder.relationship.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t LocationSearchIntentBuilder.relationship.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t LocationSearchIntentBuilder.fromLocationSearchNode(locationSearchNode:)()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin();
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb();
  v7 = *(v34 - 8);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[12];
  Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchNoun.getter();
  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + v15);
  }

  else
  {
    v17 = 8;
  }

  (*(v11 + 8))(v13, v10);
  (*(*v1 + 184))(v17);
  v18 = v1[11];
  Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchVerb.getter();
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + v19);
  }

  else
  {
    v21 = 10;
  }

  (*(v7 + 8))(v9, v34);
  (*(*v1 + 208))(v21);
  v22 = v1[13];
  Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchConfirmation.getter();
  if (*(v22 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v24 = v37;
    if (v25)
    {
      v26 = *(*(v22 + 56) + v23);
    }

    else
    {
      v26 = 3;
    }
  }

  else
  {
    v26 = 3;
    v24 = v37;
  }

  (*(v35 + 8))(v6, v36);
  (*(*v1 + 256))(v26);
  v27 = v1[14];
  Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchIncidentType.getter();
  if (*(v27 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + v28);
  }

  else
  {
    v30 = 9;
  }

  (*(v38 + 8))(v24, v39);
  (*(*v1 + 232))(v30);
  v31 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.occupantFullName.getter();
  (*(*v1 + 328))(v31);
  v32 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.personRelationship.getter();
  (*(*v1 + 352))(v32);
}

uint64_t LocationSearchIntentBuilder.withNoun(noun:)()
{
  (*(*v0 + 184))();
}

uint64_t LocationSearchIntentBuilder.withVerb(verb:)()
{
  (*(*v0 + 208))();
}

uint64_t LocationSearchIntentBuilder.withIncidentType(incidentType:)()
{
  (*(*v0 + 232))();
}

uint64_t LocationSearchIntentBuilder.withConfirmation(confirmation:)()
{
  (*(*v0 + 256))();
}

uint64_t LocationSearchIntentBuilder.withAppName(appName:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 280);

  v5(a1, a2);
}

uint64_t LocationSearchIntentBuilder.withFirstName(firstName:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 304);

  v5(a1, a2);
}

uint64_t LocationSearchIntentBuilder.withRelationship(relationship:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 352);

  v5(a1, a2);
}

uint64_t LocationSearchIntentBuilder.withFullName(fullName:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 328);

  v5(a1, a2);
}

void *LocationSearchIntentBuilder.buildOccupantNodes()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  __chkstk_darwin();
  v62 = &v53 - v1;
  v2 = type metadata accessor for TerminalIntentNode();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v53 - v6;
  __chkstk_darwin();
  v59 = &v53 - v7;
  __chkstk_darwin();
  v58 = &v53 - v8;
  __chkstk_darwin();
  v10 = &v53 - v9;
  __chkstk_darwin();
  v12 = &v53 - v11;
  v13 = type metadata accessor for TerminalElement.Value();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v60 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v57 = (&v53 - v16);
  v17 = __chkstk_darwin();
  v19 = &v53 - v18;
  v20 = (*(*v0 + 296))(v17);
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

LABEL_9:
    v28 = &_swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v55 = v5;
  TerminalElement.SemanticValue.init(_:javaPojoName:)();
  (*(v14 + 104))(v19, enum case for TerminalElement.Value.semantic(_:), v13);
  v23 = *(v14 + 16);
  v24 = v14;
  v25 = v2;
  v26 = v3;
  v27 = v62;
  v23(v62, v19, v13);
  v54 = v24;
  (*(v24 + 56))(v27, 0, 1, v13);
  TerminalIntentNode.init(name:value:semanticTags:)();
  v56 = v26;
  (*(v26 + 16))(v10, v12, v25);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, &_swiftEmptyArrayStorage);
  v30 = v28[2];
  v29 = v28[3];
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
  }

  v31 = v12;
  v32 = v25;
  v3 = v56;
  (*(v56 + 8))(v31, v25);
  v14 = v54;
  (*(v54 + 8))(v19, v13);
  v28[2] = v30 + 1;
  v2 = v32;
  v20 = (*(v3 + 32))(v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30, v10, v32);
  v5 = v55;
LABEL_10:
  v33 = (*(*v0 + 320))(v20);
  if (v34)
  {
    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v36 = v57;
      *v57 = v33;
      v36[1] = v34;
      (*(v14 + 104))(v36, enum case for TerminalElement.Value.string(_:), v13);
      v37 = v3;
      v38 = v62;
      (*(v14 + 16))(v62, v36, v13);
      (*(v14 + 56))(v38, 0, 1, v13);
      v39 = v58;
      v3 = v37;
      TerminalIntentNode.init(name:value:semanticTags:)();
      (*(v37 + 16))(v59, v39, v2);
      v40 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
      }

      v42 = v28[2];
      v41 = v28[3];
      if (v42 >= v41 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v28);
      }

      (*(v3 + 8))(v58, v2);
      (*(v14 + 8))(v57, v13);
      v28[2] = v42 + 1;
      v33 = (*(v3 + 32))(v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v42, v59, v2);
      v5 = v40;
    }

    else
    {
    }
  }

  v43 = (*(*v0 + 344))(v33);
  if (v44)
  {
    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      v46 = v60;
      *v60 = v43;
      v46[1] = v44;
      (*(v14 + 104))(v46, enum case for TerminalElement.Value.string(_:), v13);
      v47 = v3;
      v48 = v62;
      (*(v14 + 16))(v62, v46, v13);
      (*(v14 + 56))(v48, 0, 1, v13);
      v49 = v61;
      TerminalIntentNode.init(name:value:semanticTags:)();
      (*(v47 + 16))(v5, v49, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
      }

      v51 = v28[2];
      v50 = v28[3];
      if (v51 >= v50 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v28);
      }

      (*(v47 + 8))(v61, v2);
      (*(v14 + 8))(v60, v13);
      v28[2] = v51 + 1;
      (*(v47 + 32))(v28 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v51, v5, v2);
    }

    else
    {
    }
  }

  return v28;
}

uint64_t LocationSearchIntentBuilder.build()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23MitigatorClassificationOSgMd, &_s12SiriOntology23MitigatorClassificationOSgMR);
  __chkstk_darwin();
  v133 = &v131 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology7NLStateVSgMd, &_s12SiriOntology7NLStateVSgMR);
  __chkstk_darwin();
  v132 = &v131 - v4;
  v147 = type metadata accessor for NonTerminalIntentNode();
  v145 = *(v147 - 8);
  __chkstk_darwin();
  v142 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v131 - v6;
  __chkstk_darwin();
  v139 = (&v131 - v7);
  v8 = type metadata accessor for TerminalIntentNode();
  v143 = *(v8 - 8);
  v144 = v8;
  __chkstk_darwin();
  v140 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  *&v149 = &v131 - v10;
  __chkstk_darwin();
  v12 = &v131 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  __chkstk_darwin();
  v138 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v137 = (&v131 - v14);
  __chkstk_darwin();
  v146 = &v131 - v15;
  v16 = __chkstk_darwin();
  v18 = &v131 - v17;
  v19 = (*(*v1 + 176))(v16);
  v20 = &_swiftEmptyArrayStorage;
  if (v19 != 8)
  {
    if (one-time initialization token for nounNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v21 = enum case for TerminalElement.Value.semantic(_:);
    v22 = type metadata accessor for TerminalElement.Value();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v18, v21, v22);
    (*(v23 + 56))(v18, 0, 1, v22);
    v151 = v144;
    v152 = &protocol witness table for TerminalIntentNode;
    __swift_allocate_boxed_opaque_existential_0(&v150);
    TerminalIntentNode.init(name:value:semanticTags:)();
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, &_swiftEmptyArrayStorage);
    v153[0] = v24;
    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
      v153[0] = v20;
    }

    else
    {
      v20 = v24;
    }

    v27 = v151;
    v28 = v152;
    __swift_mutable_project_boxed_opaque_existential_1(&v150, v151);
    __chkstk_darwin();
    v30 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v30);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v26, v30, v153, v27, v28);
    v19 = __swift_destroy_boxed_opaque_existential_0Tm(&v150);
  }

  v32 = (*(*v2 + 200))(v19);
  if (v32 == 10)
  {
    v148 = v20;
  }

  else
  {
    v33 = v32;
    if (one-time initialization token for verbNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v33);
    v34 = v146;
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v35 = enum case for TerminalElement.Value.semantic(_:);
    v36 = type metadata accessor for TerminalElement.Value();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v34, v35, v36);
    (*(v37 + 56))(v34, 0, 1, v36);
    TerminalIntentNode.init(name:value:semanticTags:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    }

    v39 = v20[2];
    v38 = v20[3];
    v148 = v20;
    if (v39 >= v38 >> 1)
    {
      v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v148);
    }

    v40 = v144;
    v151 = v144;
    v152 = &protocol witness table for TerminalIntentNode;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v150);
    v42 = v143;
    (*(v143 + 16))(boxed_opaque_existential_0, v12, v40);
    v43 = v148;
    v148[2] = v39 + 1;
    outlined init with take of CATType(&v150, &v43[5 * v39 + 4]);
    v32 = (*(v42 + 8))(v12, v40);
  }

  v44 = (*(*v2 + 248))(v32);
  v45 = v149;
  if (v44 != 3)
  {
    if (one-time initialization token for confirmationNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v46 = v137;
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v47 = enum case for TerminalElement.Value.semantic(_:);
    v48 = type metadata accessor for TerminalElement.Value();
    v49 = *(v48 - 8);
    (*(v49 + 104))(v46, v47, v48);
    (*(v49 + 56))(v46, 0, 1, v48);
    v151 = v144;
    v152 = &protocol witness table for TerminalIntentNode;
    __swift_allocate_boxed_opaque_existential_0(&v150);
    TerminalIntentNode.init(name:value:semanticTags:)();
    v50 = v148;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
      v153[0] = v50;
    }

    v53 = v50[2];
    v52 = v50[3];
    v45 = v149;
    if (v53 >= v52 >> 1)
    {
      v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
      v153[0] = v148;
    }

    else
    {
      v148 = v50;
    }

    v54 = v151;
    v55 = v152;
    __swift_mutable_project_boxed_opaque_existential_1(&v150, v151);
    __chkstk_darwin();
    v57 = &v131 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v58 + 16))(v57);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v53, v57, v153, v54, v55);
    v44 = __swift_destroy_boxed_opaque_existential_0Tm(&v150);
  }

  v59 = (*(*v2 + 224))(v44);
  if (v59 != 9)
  {
    if (one-time initialization token for incidentTypeNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v60 = v138;
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v61 = enum case for TerminalElement.Value.semantic(_:);
    v62 = type metadata accessor for TerminalElement.Value();
    v63 = *(v62 - 8);
    (*(v63 + 104))(v60, v61, v62);
    (*(v63 + 56))(v60, 0, 1, v62);
    v151 = v144;
    v152 = &protocol witness table for TerminalIntentNode;
    __swift_allocate_boxed_opaque_existential_0(&v150);
    TerminalIntentNode.init(name:value:semanticTags:)();
    v64 = v148;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v64;
    if ((v65 & 1) == 0)
    {
      v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
      v153[0] = v64;
    }

    v45 = v149;
    v67 = v64[2];
    v66 = v64[3];
    if (v67 >= v66 >> 1)
    {
      v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v64);
      v153[0] = v148;
    }

    else
    {
      v148 = v64;
    }

    v68 = v151;
    v69 = v152;
    __swift_mutable_project_boxed_opaque_existential_1(&v150, v151);
    __chkstk_darwin();
    v71 = &v131 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v71);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v67, v71, v153, v68, v69);
    v59 = __swift_destroy_boxed_opaque_existential_0Tm(&v150);
  }

  (*(*v2 + 272))(v59);
  v73 = "ocation";
  if (v74)
  {
    if (one-time initialization token for appName != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v75 = v146;
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v76 = enum case for TerminalElement.Value.semantic(_:);
    v77 = type metadata accessor for TerminalElement.Value();
    v78 = *(v77 - 8);
    (*(v78 + 104))(v75, v76, v77);
    (*(v78 + 56))(v75, 0, 1, v77);
    TerminalIntentNode.init(name:value:semanticTags:)();
    if (one-time initialization token for appNode != -1)
    {
      swift_once();
    }

    NonTerminalOntologyNode.name.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, "ʞ");
    v79 = swift_allocObject();
    v73 = "ocation";
    *(v79 + 16) = xmmword_B89E0;
    v80 = v144;
    *(v79 + 56) = v144;
    *(v79 + 64) = &protocol witness table for TerminalIntentNode;
    v81 = __swift_allocate_boxed_opaque_existential_0((v79 + 32));
    (*(v143 + 16))(v81, v45, v80);
    v82 = v139;
    NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
    v83 = v148;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83[2] + 1, 1, v83);
    }

    v84 = v145;
    v86 = v83[2];
    v85 = v83[3];
    v148 = v83;
    if (v86 >= v85 >> 1)
    {
      v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v148);
    }

    (*(v143 + 8))(v45, v144);
    v87 = v147;
    v151 = v147;
    v152 = &protocol witness table for NonTerminalIntentNode;
    v88 = __swift_allocate_boxed_opaque_existential_0(&v150);
    (*(v84 + 2))(v88, v82, v87);
    v89 = v148;
    v148[2] = v86 + 1;
    outlined init with take of CATType(&v150, &v89[5 * v86 + 4]);
    (*(v84 + 1))(v82, v87);
  }

  else
  {
    v84 = v145;
  }

  v90 = LocationSearchIntentBuilder.buildOccupantNodes()();
  v91 = v90[2];
  if (v91)
  {
    v139 = *(v143 + 16);
    v92 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v131 = v90;
    v93 = v90 + v92;
    v94 = *(v143 + 72);
    v143 += 16;
    v137 = (v143 + 16);
    v138 = v94;
    v135 = (v84 + 8);
    v149 = xmmword_B89E0;
    v95 = v148;
    v136 = (v84 + 16);
    do
    {
      v145 = v93;
      v146 = v91;
      v148 = v95;
      v96 = v140;
      v97 = v144;
      v139(v140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, "ʞ");
      v98 = swift_allocObject();
      *(v98 + 16) = v149;
      v99 = swift_allocObject();
      *(v99 + 16) = v149;
      v100 = swift_allocObject();
      *(v100 + 16) = v149;
      v101 = swift_allocObject();
      *(v101 + 16) = v149;
      v102 = swift_allocObject();
      v103 = v147;
      v104 = v102;
      *(v102 + 16) = v149;
      v105 = swift_allocObject();
      *(v105 + 16) = v149;
      *(v105 + 56) = v97;
      *(v105 + 64) = &protocol witness table for TerminalIntentNode;
      v106 = __swift_allocate_boxed_opaque_existential_0((v105 + 32));
      (*v137)(v106, v96, v97);
      v104[7] = v103;
      v104[8] = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0(v104 + 4);
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      *(v101 + 56) = v103;
      *(v101 + 64) = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0((v101 + 32));
      v107 = v103;
      v108 = v136;
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      *(v100 + 56) = v107;
      *(v100 + 64) = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0((v100 + 32));
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      *(v99 + 56) = v107;
      *(v99 + 64) = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0((v99 + 32));
      v109 = v148;
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      *(v98 + 56) = v107;
      *(v98 + 64) = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0((v98 + 32));
      v110 = v109;
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      v111 = v141;
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      v112 = *v108;
      v113 = v142;
      (*v108)(v142, v111, v107);
      v114 = v113;
      v115 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110[2] + 1, 1, v110);
      }

      v117 = v110[2];
      v116 = v110[3];
      v148 = v110;
      if (v117 >= v116 >> 1)
      {
        v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1, v148);
      }

      v118 = *v135;
      v119 = v147;
      (*v135)(v115, v147);
      v151 = v119;
      v152 = &protocol witness table for NonTerminalIntentNode;
      v120 = __swift_allocate_boxed_opaque_existential_0(&v150);
      v112(v120, v114, v119);
      v121 = v148;
      v148[2] = v117 + 1;
      v95 = v121;
      outlined init with take of CATType(&v150, &v121[5 * v117 + 4]);
      v118(v114, v119);
      v93 = &v138[v145];
      v91 = v146 - 1;
    }

    while (v146 != &dword_0 + 1);

    v73 = "RetrieveParkingLocation" + 16;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, "ʞ");
  v122 = swift_allocObject();
  v149 = *(v73 + 158);
  *(v122 + 16) = v149;
  v123 = swift_allocObject();
  *(v123 + 16) = v149;
  v124 = swift_allocObject();
  *(v124 + 16) = v149;
  v125 = swift_allocObject();
  *(v125 + 16) = v149;
  v126 = swift_allocObject();
  *(v126 + 16) = v149;
  v127 = v147;
  *(v126 + 56) = v147;
  *(v126 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v126 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v125 + 56) = v127;
  *(v125 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v125 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v124 + 56) = v127;
  *(v124 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v124 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v123 + 56) = v127;
  *(v123 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v123 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v122 + 56) = v127;
  *(v122 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v122 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v151 = v127;
  v152 = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0(&v150);
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v128 = type metadata accessor for NLState();
  (*(*(v128 - 8) + 56))(v132, 1, 1, v128);
  v129 = type metadata accessor for MitigatorClassification();
  (*(*(v129 - 8) + 56))(v133, 1, 1, v129);
  return NLIntent.init(rootNode:score:originalInput:allWordsMatched:primary:usingExplicitInput:intentRank:isNERBasedParse:intentID:nlState:mitigatorClassification:strippedVoiceTrigger:isInvalidVoiceTrigger:isSuggested:metaDomainActions:)();
}

void *LocationSearchIntentBuilder.deinit()
{

  return v0;
}

uint64_t LocationSearchIntentBuilder.__deallocating_deinit()
{
  LocationSearchIntentBuilder.deinit();

  return swift_deallocClassInstance();
}

void *LocationSearchIntentBuilder.init()()
{
  *(v0 + 16) = 50924040;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMR);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_B7D70;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  v7 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.unknown(_:);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 0;
  v10 = *(v1 + 48);
  v9(v5 + v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.share(_:), v8);
  *(v5 + v2 + v10) = 1;
  v11 = *(v1 + 48);
  v9(v5 + 2 * v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.stopShare(_:), v8);
  *(v5 + 2 * v2 + v11) = 2;
  v12 = *(v1 + 48);
  v9(v5 + 3 * v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.report(_:), v8);
  *(v5 + 3 * v2 + v12) = 3;
  v13 = *(v1 + 48);
  v9(v5 + 4 * v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.confirmReport(_:), v8);
  *(v5 + 4 * v2 + v13) = 5;
  v14 = *(v1 + 48);
  v9(v5 + 5 * v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.clearReport(_:), v8);
  *(v5 + 5 * v2 + v14) = 4;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62[11] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_B7D80;
  v20 = v19 + v18;
  v21 = *(v16 + 48);
  v22 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchNoun.unknown(_:);
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun();
  v24 = *(*(v23 - 8) + 104);
  v24(v20, v22, v23);
  *(v20 + v21) = 0;
  v25 = v20 + v17;
  v26 = *(v16 + 48);
  v24(v25, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchNoun.eta(_:), v23);
  *(v25 + v26) = 6;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62[12] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMR);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v29 = *(*(v28 - 8) + 72);
  v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v31 = 2 * v29;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_B7D60;
  v33 = v32 + v30;
  v34 = *(v28 + 48);
  v35 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.yes(_:);
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation();
  v37 = *(*(v36 - 8) + 104);
  v37(v33, v35, v36);
  *(v33 + v34) = 0;
  v38 = v33 + v29;
  v39 = *(v28 + 48);
  v37(v38, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.no(_:), v36);
  *(v38 + v39) = 1;
  v40 = *(v28 + 48);
  v37(v33 + v31, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.cancel(_:), v36);
  *(v33 + v31 + v40) = 2;
  v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62[13] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0jK6IntentC0jklM5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0jK6IntentC0jklM5ValueOtGMR);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMR);
  v43 = *(*(v42 - 8) + 72);
  v44 = (*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_B7D90;
  v46 = v45 + v44;
  v47 = *(v42 + 48);
  v48 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.accident(_:);
  v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType();
  v50 = *(*(v49 - 8) + 104);
  v50(v46, v48, v49);
  *(v46 + v47) = 0;
  v51 = *(v42 + 48);
  v50(v46 + v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.hazard(_:), v49);
  *(v46 + v43 + v51) = 2;
  v52 = *(v42 + 48);
  v50(v46 + 2 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.incident(_:), v49);
  *(v46 + 2 * v43 + v52) = 1;
  v53 = *(v42 + 48);
  v50(v46 + 3 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.laneClosed(_:), v49);
  *(v46 + 3 * v43 + v53) = 5;
  v54 = *(v42 + 48);
  v50(v46 + 4 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.problem(_:), v49);
  *(v46 + 4 * v43 + v54) = 8;
  v55 = *(v42 + 48);
  v50(v46 + 5 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.redLightCamera(_:), v49);
  *(v46 + 5 * v43 + v55) = 7;
  v56 = *(v42 + 48);
  v50(v46 + 6 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.roadClosed(_:), v49);
  *(v46 + 6 * v43 + v56) = 6;
  v57 = 8 * v43;
  v58 = *(v42 + 48);
  v50(v46 + 7 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.roadwork(_:), v49);
  *(v46 + v57 - v43 + v58) = 4;
  v59 = *(v42 + 48);
  v50(v46 + 8 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.speedCheck(_:), v49);
  *(v46 + v57 + v59) = 3;
  v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0iJ6IntentC0ijkL5ValueOTt0g5Tf4g_n(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = v62;
  v62[14] = v60;
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of CATType(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_804D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_8056C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_80600@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_80694@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_80730@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_80784(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 280);

  return v4(v2, v3);
}

uint64_t sub_807F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_80848(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);

  return v4(v2, v3);
}

uint64_t sub_808B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_8090C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 328);

  return v4(v2, v3);
}

uint64_t sub_8097C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_809D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 352);

  return v4(v2, v3);
}

uint64_t LocationFetchFlow.__allocating_init(flowHelper:requiredAccess:)(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  LocationFetchFlow.init(flowHelper:requiredAccess:)(a1, v2);
  return v4;
}

void *LocationFetchFlow.exitValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  outlined copy of LocationFetchFlow.ExitValue(v1, *(v0 + 88));
  return v1;
}

void LocationFetchFlow.exitValue.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 80) = a1;
  v6 = *(v2 + 88);
  *(v2 + 88) = a2;
  outlined consume of LocationFetchFlow.ExitValue(v5, v6);
}

uint64_t LocationFetchFlow.init(flowHelper:requiredAccess:)(__int128 *a1, char a2)
{
  v3 = v2;
  type metadata accessor for CATService();
  v6 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v6 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v6 + 32) = OS_os_log.init(subsystem:category:)();
  *(v6 + 16) = 0;
  *(v3 + 16) = v6;
  *(v3 + 72) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for RuntimeError();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000019;
  *(v8 + 24) = 0x80000000000C0190;
  _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
  v9 = swift_allocError();
  *v10 = v8;
  *(v3 + 80) = v9;
  *(v3 + 88) = 2;
  outlined init with take of CATType(a1, v3 + 24);
  *(v3 + 64) = a2;
  return v3;
}

id outlined copy of LocationFetchFlow.ExitValue(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return swift_errorRetain();
  }

  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void outlined consume of LocationFetchFlow.ExitValue(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t LocationFetchFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 168))(v2, 0);
}

uint64_t sub_80DC8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t LocationFetchFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocationFetchFlow();
  _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type LocationFetchFlow and conformance LocationFetchFlow, v2, type metadata accessor for LocationFetchFlow, &protocol conformance descriptor for LocationFetchFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t LocationFetchFlow.execute()(uint64_t a1)
{
  v2[116] = v1;
  v2[115] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[117] = swift_task_alloc();
  v3 = type metadata accessor for AceOutput();
  v2[118] = v3;
  v4 = *(v3 - 8);
  v2[119] = v4;
  v2[120] = *(v4 + 64);
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v2[123] = v5;
  v2[124] = *(v5 - 8);
  v2[125] = swift_task_alloc();
  type metadata accessor for DeepLinkParams(0);
  v2[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(LocationFetchFlow.execute(), 0, 0);
}

{
  v2 = *(v1 + 856);
  v3 = *(v1 + 864);
  v4 = *(*(v1 + 928) + 72);
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_0, v4, v5, "LocationService Auth level: %lu", v6, 0xCu);
  }

  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v25 = *(v1 + 1008);
        v26 = *(v1 + 928);
        (*(*v26 + 152))(0, 3);
        v27 = v26[6];
        v28 = v26[7];
        __swift_project_boxed_opaque_existential_1(v26 + 3, v27);
        (*(v28 + 32))(v27, v28);
        static LocationServicesViews.needSiriLocation.getter(v25);
        *(v1 + 1112) = DeepLinkParams.makeDeepLink(device:)((v1 + 800));
        outlined destroy of DeepLinkParams(v25);
        __swift_destroy_boxed_opaque_existential_0Tm((v1 + 800));
        type metadata accessor for CATService();
        v29 = swift_allocObject();
        *(v1 + 1120) = v29;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        *(v29 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        type metadata accessor for OS_os_log();
        *(v29 + 32) = OS_os_log.init(subsystem:category:)();
        *(v29 + 16) = 0;
        *(v1 + 424) = &type metadata for LocationServices;
        *(v1 + 432) = &protocol witness table for LocationServices;
        *(v1 + 400) = 0;
        v12 = static DialogHelper.globals.getter();
        *(v1 + 1128) = v12;
        v31 = swift_task_alloc();
        *(v1 + 1136) = v31;
        *v31 = v1;
        v31[1] = LocationFetchFlow.execute();
        v14 = *(v1 + 1064);
        v15 = v1 + 400;
        goto LABEL_19;
      case 2:
LABEL_7:
        v7 = *(v1 + 928);
        lazy protocol witness table accessor for type Errors and conformance Errors();
        v8 = swift_allocError();
        *v9 = 0xD000000000000022;
        *(v9 + 8) = 0x80000000000C3120;
        *(v9 + 16) = 2;
        (*(*v7 + 152))(v8, 2);
        type metadata accessor for CATService();
        v10 = swift_allocObject();
        *(v1 + 1144) = v10;
        v11 = swift_getObjCClassFromMetadata();
        *(v10 + 24) = [objc_opt_self() bundleForClass:v11];
        type metadata accessor for OS_os_log();
        *(v10 + 32) = OS_os_log.init(subsystem:category:)();
        *(v10 + 16) = 0;
        *(v1 + 784) = &type metadata for LocationServices;
        *(v1 + 792) = &protocol witness table for LocationServices;
        *(v1 + 760) = 2;
        v12 = static DialogHelper.globals.getter();
        *(v1 + 1152) = v12;
        v13 = swift_task_alloc();
        *(v1 + 1160) = v13;
        *v13 = v1;
        v13[1] = LocationFetchFlow.execute();
        v14 = *(v1 + 1056);
        v15 = v1 + 760;
LABEL_19:

        return CATService.execute(model:globals:)(v14, v15, v12);
    }

LABEL_18:
    v39 = *(v1 + 928);
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v40 = swift_allocError();
    *v41 = 0xD000000000000019;
    *(v41 + 8) = 0x80000000000C3100;
    *(v41 + 16) = 1;
    (*(*v39 + 152))(v40, 2);
    type metadata accessor for CATService();
    v42 = swift_allocObject();
    *(v1 + 1208) = v42;
    v43 = swift_getObjCClassFromMetadata();
    *(v42 + 24) = [objc_opt_self() bundleForClass:v43];
    type metadata accessor for OS_os_log();
    *(v42 + 32) = OS_os_log.init(subsystem:category:)();
    *(v42 + 16) = 0;
    *(v1 + 664) = &type metadata for LocationServices;
    *(v1 + 672) = &protocol witness table for LocationServices;
    *(v1 + 640) = 2;
    v12 = static DialogHelper.globals.getter();
    *(v1 + 1216) = v12;
    v44 = swift_task_alloc();
    *(v1 + 1224) = v44;
    *v44 = v1;
    v44[1] = LocationFetchFlow.execute();
    v14 = *(v1 + 1040);
    v15 = v1 + 640;
    goto LABEL_19;
  }

  if ((v2 - 3) >= 2)
  {
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v16 = *(v1 + 1008);
    v17 = *(v1 + 928);
    v18 = v17[6];
    v19 = v17[7];
    __swift_project_boxed_opaque_existential_1(v17 + 3, v18);
    (*(v19 + 32))(v18, v19);
    static LocationServicesViews.needPreciseLocation.getter(v16);
    *(v1 + 1176) = DeepLinkParams.makeDeepLink(device:)((v1 + 680));
    outlined destroy of DeepLinkParams(v16);
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 680));
    v20 = v17[2];
    *(v1 + 744) = &type metadata for LocationServices;
    *(v1 + 752) = &protocol witness table for LocationServices;
    *(v1 + 720) = 1;
    v21 = static DialogHelper.globals.getter();
    *(v1 + 1184) = v21;
    v61 = (*(*v20 + 112) + **(*v20 + 112));
    v22 = swift_task_alloc();
    *(v1 + 1192) = v22;
    *v22 = v1;
    v22[1] = LocationFetchFlow.execute();
    v23 = *(v1 + 1048);

    return v61(v23, v1 + 720, v21);
  }

  else
  {
    v32 = *(v1 + 1032);
    v33 = *(v1 + 992);
    v34 = *(v1 + 984);
    outlined init with copy of TemplatingResult?(*(v1 + 1072), v32);
    if ((*(v33 + 48))(v32, 1, v34) == 1)
    {
      v35 = *(v1 + 1032);
      outlined destroy of Mirror.DisplayStyle?(*(v1 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      outlined destroy of Mirror.DisplayStyle?(v35, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v36 = *(v1 + 1080);
      v37 = **(&off_E3460 + *(*(v1 + 928) + 64));
      *(v1 + 16) = v1;
      *(v1 + 56) = v1 + 872;
      *(v1 + 24) = LocationFetchFlow.execute();
      v38 = swift_continuation_init();
      *(v1 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
      *(v1 + 336) = _NSConcreteStackBlock;
      *(v1 + 344) = 1107296256;
      *(v1 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
      *(v1 + 360) = &block_descriptor_3;
      *(v1 + 368) = v38;
      [v36 currentLocationWithAccuracy:v1 + 336 timeout:v37 completion:2.0];

      return _swift_continuation_await(v1 + 16);
    }

    else
    {
      v60 = *(v1 + 1080);
      v62 = *(v1 + 1072);
      v45 = *(v1 + 1000);
      v46 = *(v1 + 992);
      v47 = *(v1 + 976);
      v58 = *(v1 + 968);
      v48 = *(v1 + 952);
      v57 = *(v1 + 944);
      v49 = *(v1 + 936);
      v50 = *(v1 + 928);
      v59 = *(v1 + 984);
      (*(v46 + 32))(v45, *(v1 + 1032));
      v52 = v50[6];
      v51 = v50[7];
      __swift_project_boxed_opaque_existential_1(v50 + 3, v52);
      (*(v51 + 32))(v52, v51);
      v53 = type metadata accessor for NLContextUpdate();
      (*(*(v53 - 8) + 56))(v49, 1, 1, v53);
      *(v1 + 512) = 0;
      *(v1 + 480) = 0u;
      *(v1 + 496) = 0u;
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

      outlined destroy of Mirror.DisplayStyle?(v1 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      outlined destroy of Mirror.DisplayStyle?(v49, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 440));
      (*(v48 + 16))(v58, v47, v57);
      v54 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v55 = swift_allocObject();
      (*(v48 + 32))(v55 + v54, v58, v57);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      type metadata accessor for SimpleOutputFlowAsync();
      swift_allocObject();
      *(v1 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      static ExecuteResponse.complete<A>(next:)();

      (*(v48 + 8))(v47, v57);
      (*(v46 + 8))(v45, v59);
      outlined destroy of Mirror.DisplayStyle?(v62, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      v56 = *(v1 + 8);

      return v56();
    }
  }
}

{
  v2 = v1[116];
  v3 = v1[109];
  v1[155] = v3;
  v4 = *(v2 + 72);
  v1[156] = v4;
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_0, v4, v5, "location info: %@", v6, 0xCu);
    outlined destroy of Mirror.DisplayStyle?(v7, &_sSo8NSObjectCSgMd, ",p");
  }

  v9 = v1[116];
  [v3 horizontalAccuracy];
  v11 = v10;
  v12 = **(&off_E3480 + *(v9 + 64));
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v4, v13);
  if (v11 <= v12)
  {
    if (v14)
    {
      v20 = v1[116];
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      [v3 horizontalAccuracy];
      *(v21 + 4) = v22;
      *(v21 + 12) = 2048;
      *(v21 + 14) = round(**(&off_E3480 + *(v20 + 64)));
      _os_log_impl(&dword_0, v4, v13, "horizontal accuracy is within required access threshold: %f <= %f", v21, 0x16u);
    }

    v23 = *(*v1[116] + 152);
    v24 = v1[155];
    v25 = v1[135];
    v26 = v3;
    v23(v3, 0);
    static ExecuteResponse.complete()();

    v27 = v1[1];

    return v27();
  }

  else
  {
    if (v14)
    {
      v15 = v1[116];
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      [v3 horizontalAccuracy];
      *(v16 + 4) = v17;
      *(v16 + 12) = 2048;
      *(v16 + 14) = round(**(&off_E3480 + *(v15 + 64)));
      _os_log_impl(&dword_0, v4, v13, "horizontal accuracy is too high, we cannot reliably use this location value: %f > %f", v16, 0x16u);
    }

    v18 = v1[135];
    v1[18] = v1;
    v1[23] = v1 + 105;
    v1[19] = LocationFetchFlow.execute();
    v19 = swift_continuation_init();
    v1[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMd, &_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMR);
    v1[34] = _NSConcreteStackBlock;
    v1[35] = 1107296256;
    v1[36] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization);
    v1[37] = &block_descriptor_7;
    v1[38] = v19;
    [v18 currentAuthorizationStyle:v1 + 34];

    return _swift_continuation_await(v1 + 18);
  }
}

{
  v2 = *(v1 + 848);
  if (v2 == 1)
  {
    v8 = *(v1 + 1248);
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v1 + 1248);
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v10, v9, "precise location is not enabled", v11, 2u);
    }

    v12 = *(v1 + 1240);
    v13 = *(**(v1 + 928) + 152);
    v14 = *(v1 + 1080);
    v15 = v12;
    v13(v12, 1);
    static ExecuteResponse.complete()();

    v16 = *(v1 + 8);

    return v16();
  }

  else
  {
    if (v2)
    {
      v18 = *(v1 + 1248);
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v1 + 1248);
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v20, v19, "unknown location accuracy level, support for it has not been implemented", v21, 2u);
      }

      v6 = swift_task_alloc();
      *(v1 + 1272) = v6;
      *v6 = v1;
      v7 = LocationFetchFlow.execute();
    }

    else
    {
      v3 = *(v1 + 928);
      lazy protocol witness table accessor for type Errors and conformance Errors();
      v4 = swift_allocError();
      *v5 = 0xD00000000000002ALL;
      *(v5 + 8) = 0x80000000000C30B0;
      *(v5 + 16) = 2;
      (*(*v3 + 152))(v4, 2);
      v6 = swift_task_alloc();
      *(v1 + 1264) = v6;
      *v6 = v1;
      v7 = LocationFetchFlow.execute();
    }

    v6[1] = v7;
    v22 = *(v1 + 920);

    return LocationFetchFlow.unknownLocationOutput()(v22);
  }
}

{
  v2 = v1[156];
  swift_willThrow();

  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[156];
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v4, v3, "location accuracy level is inaccessible", v5, 2u);
  }

  v6 = v1[116];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v7 = swift_allocError();
  *v8 = 0xD000000000000038;
  *(v8 + 8) = 0x80000000000C3010;
  *(v8 + 16) = 0;
  v9 = v1[155];
  v10 = v1[135];
  (*(*v6 + 152))(v7, 2);
  static ExecuteResponse.complete()();

  v11 = v1[1];

  return v11();
}

{
  v2 = v1[116];
  swift_willThrow();

  v3 = *(v2 + 72);
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Location Service could not get requested accuracy within timeout", v5, 2u);
  }

  v6 = v1[116];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v7 = swift_allocError();
  *v8 = 0xD000000000000021;
  *(v8 + 8) = 0x80000000000C3080;
  *(v8 + 16) = 2;
  (*(*v6 + 152))(v7, 2);
  v9 = swift_task_alloc();
  v1[160] = v9;
  *v9 = v1;
  v9[1] = LocationFetchFlow.execute();
  v10 = v1[115];

  return LocationFetchFlow.unknownLocationOutput()(v10);
}

{
  swift_willThrow();
  v2 = *(v1 + 1104);
  *(v1 + 1288) = &_swiftEmptyArrayStorage;
  *(v1 + 888) = v2;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 928);
  if (v3)
  {

    v5 = *(v1 + 880);
    *(v1 + 1296) = v5;
    v6 = static os_log_type_t.error.getter();
    v7 = v4[9];
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v5;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_0, v7, v6, "AFLocationServiceError: %@", v8, 0xCu);
      outlined destroy of Mirror.DisplayStyle?(v9, &_sSo8NSObjectCSgMd, ",p");
    }

    *(v1 + 904) = v5;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, 255, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
    _BridgedStoredNSError.code.getter();
    if (*(v1 + 912) == 5)
    {

      type metadata accessor for CATService();
      v12 = swift_allocObject();
      *(v1 + 1304) = v12;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *(v12 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      type metadata accessor for OS_os_log();
      *(v12 + 32) = OS_os_log.init(subsystem:category:)();
      *(v12 + 16) = 0;
      *(v1 + 584) = &type metadata for LocationServices;
      *(v1 + 592) = &protocol witness table for LocationServices;
      *(v1 + 560) = 0;
      v14 = static DialogHelper.globals.getter();
      *(v1 + 1312) = v14;
      v15 = swift_task_alloc();
      *(v1 + 1320) = v15;
      *v15 = v1;
      v15[1] = LocationFetchFlow.execute();
      v16 = *(v1 + 1024);
      v17 = v1 + 560;
    }

    else
    {
      v27 = *(v1 + 928);
      lazy protocol witness table accessor for type Errors and conformance Errors();
      v28 = swift_allocError();
      *v29 = 0xD00000000000001FLL;
      *(v29 + 8) = 0x80000000000C30E0;
      *(v29 + 16) = 2;
      (*(*v27 + 152))(v28, 2);
      type metadata accessor for CATService();
      v30 = swift_allocObject();
      *(v1 + 1328) = v30;
      v31 = swift_getObjCClassFromMetadata();
      *(v30 + 24) = [objc_opt_self() bundleForClass:v31];
      type metadata accessor for OS_os_log();
      *(v30 + 32) = OS_os_log.init(subsystem:category:)();
      *(v30 + 16) = 0;
      *(v1 + 544) = &type metadata for LocationServices;
      *(v1 + 552) = &protocol witness table for LocationServices;
      *(v1 + 520) = 2;
      v14 = static DialogHelper.globals.getter();
      *(v1 + 1336) = v14;
      v32 = swift_task_alloc();
      *(v1 + 1344) = v32;
      *v32 = v1;
      v32[1] = LocationFetchFlow.execute();
      v16 = *(v1 + 1016);
      v17 = v1 + 520;
    }

    return CATService.execute(model:globals:)(v16, v17, v14);
  }

  else
  {

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v18 = swift_allocError();
    *v19 = 0xD000000000000038;
    *(v19 + 8) = 0x80000000000C3010;
    *(v19 + 16) = 0;
    (*(*v4 + 152))(v18, 2);

    v20 = *(v1 + 1032);
    v21 = *(v1 + 992);
    v22 = *(v1 + 984);
    outlined init with copy of TemplatingResult?(*(v1 + 1072), v20);
    if ((*(v21 + 48))(v20, 1, v22) == 1)
    {
      v23 = *(v1 + 1032);
      outlined destroy of Mirror.DisplayStyle?(*(v1 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      outlined destroy of Mirror.DisplayStyle?(v23, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v24 = *(v1 + 1080);
      v25 = **(&off_E3460 + *(*(v1 + 928) + 64));
      *(v1 + 16) = v1;
      *(v1 + 56) = v1 + 872;
      *(v1 + 24) = LocationFetchFlow.execute();
      v26 = swift_continuation_init();
      *(v1 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
      *(v1 + 336) = _NSConcreteStackBlock;
      *(v1 + 344) = 1107296256;
      *(v1 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
      *(v1 + 360) = &block_descriptor_3;
      *(v1 + 368) = v26;
      [v24 currentLocationWithAccuracy:v1 + 336 timeout:v25 completion:2.0];

      return _swift_continuation_await(v1 + 16);
    }

    else
    {
      v49 = *(v1 + 1080);
      v50 = *(v1 + 1072);
      v33 = *(v1 + 1000);
      v34 = *(v1 + 992);
      v35 = *(v1 + 976);
      v47 = *(v1 + 968);
      v36 = *(v1 + 952);
      v46 = *(v1 + 944);
      v37 = *(v1 + 936);
      v38 = *(v1 + 928);
      v48 = *(v1 + 984);
      (*(v34 + 32))(v33, *(v1 + 1032));
      v40 = v38[6];
      v39 = v38[7];
      __swift_project_boxed_opaque_existential_1(v38 + 3, v40);
      (*(v39 + 32))(v40, v39);
      v41 = type metadata accessor for NLContextUpdate();
      (*(*(v41 - 8) + 56))(v37, 1, 1, v41);
      *(v1 + 512) = 0;
      *(v1 + 480) = 0u;
      *(v1 + 496) = 0u;
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

      outlined destroy of Mirror.DisplayStyle?(v1 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      outlined destroy of Mirror.DisplayStyle?(v37, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 440));
      (*(v36 + 16))(v47, v35, v46);
      v42 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v43 = swift_allocObject();
      (*(v36 + 32))(v43 + v42, v47, v46);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      type metadata accessor for SimpleOutputFlowAsync();
      swift_allocObject();
      *(v1 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      static ExecuteResponse.complete<A>(next:)();

      (*(v36 + 8))(v35, v46);
      (*(v34 + 8))(v33, v48);
      outlined destroy of Mirror.DisplayStyle?(v50, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      v44 = *(v1 + 8);

      return v44();
    }
  }
}

uint64_t LocationFetchFlow.execute()()
{
  v1 = [objc_allocWithZone(AFLocationService) init];
  v0[135] = v1;
  if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
  {
    v2 = v0[135];
    v3 = **(&off_E3460 + *(v0[116] + 64));
    v0[2] = v0;
    v0[7] = v0 + 109;
    v0[3] = LocationFetchFlow.execute();
    v4 = swift_continuation_init();
    v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    v0[45] = &block_descriptor_3;
    v0[46] = v4;
    [v2 currentLocationWithAccuracy:v0 + 42 timeout:v3 completion:2.0];
    v5 = v0 + 2;
  }

  else
  {
    v6 = v0[134];
    v7 = v0[124];
    v8 = v0[123];
    v9 = *(v7 + 56);
    v0[136] = v9;
    v0[137] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v9(v6, 1, 1, v8);
    v0[10] = v0;
    v0[15] = v0 + 107;
    v0[11] = LocationFetchFlow.execute();
    v10 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMd, &_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMR);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization);
    v0[29] = &block_descriptor_2;
    v0[30] = v10;
    [v1 currentAuthorizationStyle:v0 + 26];
    v5 = v0 + 10;
  }

  return _swift_continuation_await(v5);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 1104) = v1;
  if (v1)
  {
    v2 = LocationFetchFlow.execute();
  }

  else
  {
    v2 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = LocationFetchFlow.execute();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 400));
    v3 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  (*(v0 + 1088))(v2, 0, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v2, v1);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 992);
  v5 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v3);
  if ((*(v4 + 48))(v3, 1, v5) == 1)
  {
    v6 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v7 = *(v0 + 1080);
    v8 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v9 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v9;
    [v7 currentLocationWithAccuracy:v0 + 336 timeout:v8 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v26 = *(v0 + 1080);
    v27 = *(v0 + 1072);
    v10 = *(v0 + 1000);
    v11 = *(v0 + 992);
    v24 = *(v0 + 968);
    v12 = *(v0 + 952);
    v22 = *(v0 + 976);
    v23 = *(v0 + 944);
    v13 = *(v0 + 936);
    v14 = *(v0 + 928);
    v25 = *(v0 + 984);
    (*(v11 + 32))(v10, *(v0 + 1032));
    v16 = v14[6];
    v15 = v14[7];
    __swift_project_boxed_opaque_existential_1(v14 + 3, v16);
    (*(v15 + 32))(v16, v15);
    v17 = type metadata accessor for NLContextUpdate();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v13, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v12 + 16))(v24, v22, v23);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = swift_allocObject();
    (*(v12 + 32))(v19 + v18, v24, v23);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v12 + 8))(v22, v23);
    (*(v11 + 8))(v10, v25);
    outlined destroy of Mirror.DisplayStyle?(v27, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v20 = *(v0 + 8);

    return v20();
  }
}

{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {

    v3 = LocationFetchFlow.execute();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 760));
    v3 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 984);
  outlined destroy of Mirror.DisplayStyle?(v2, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v1(v3, 0, 1, v4);
  outlined init with take of TemplatingResult?(v3, v2);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v5);
  if ((*(v6 + 48))(v5, 1, v7) == 1)
  {
    v8 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v8, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v9 = *(v0 + 1080);
    v10 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v11 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v11;
    [v9 currentLocationWithAccuracy:v0 + 336 timeout:v10 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v28 = *(v0 + 1080);
    v29 = *(v0 + 1072);
    v12 = *(v0 + 1000);
    v13 = *(v0 + 992);
    v14 = *(v0 + 976);
    v26 = *(v0 + 968);
    v15 = *(v0 + 952);
    v25 = *(v0 + 944);
    v16 = *(v0 + 936);
    v17 = *(v0 + 928);
    v27 = *(v0 + 984);
    (*(v13 + 32))(v12, *(v0 + 1032));
    v19 = v17[6];
    v18 = v17[7];
    __swift_project_boxed_opaque_existential_1(v17 + 3, v19);
    (*(v18 + 32))(v19, v18);
    v20 = type metadata accessor for NLContextUpdate();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v16, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v15 + 16))(v26, v14, v25);
    v21 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v22 = swift_allocObject();
    (*(v15 + 32))(v22 + v21, v26, v25);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v15 + 8))(v14, v25);
    (*(v13 + 8))(v12, v27);
    outlined destroy of Mirror.DisplayStyle?(v29, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v23 = *(v0 + 8);

    return v23();
  }
}

{
  v2 = *v1;
  *(*v1 + 1200) = v0;

  if (v0)
  {
    v3 = LocationFetchFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 720));
    v3 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 984);
  outlined destroy of Mirror.DisplayStyle?(v2, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v1(v3, 0, 1, v4);
  outlined init with take of TemplatingResult?(v3, v2);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v5);
  if ((*(v6 + 48))(v5, 1, v7) == 1)
  {
    v8 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v8, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v9 = *(v0 + 1080);
    v10 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v11 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v11;
    [v9 currentLocationWithAccuracy:v0 + 336 timeout:v10 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v28 = *(v0 + 1080);
    v29 = *(v0 + 1072);
    v12 = *(v0 + 1000);
    v13 = *(v0 + 992);
    v26 = *(v0 + 968);
    v14 = *(v0 + 952);
    v24 = *(v0 + 976);
    v25 = *(v0 + 944);
    v15 = *(v0 + 936);
    v16 = *(v0 + 928);
    v27 = *(v0 + 984);
    (*(v13 + 32))(v12, *(v0 + 1032));
    v18 = v16[6];
    v17 = v16[7];
    __swift_project_boxed_opaque_existential_1(v16 + 3, v18);
    (*(v17 + 32))(v18, v17);
    v19 = type metadata accessor for NLContextUpdate();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v15, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v14 + 16))(v26, v24, v25);
    v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v21 = swift_allocObject();
    (*(v14 + 32))(v21 + v20, v26, v25);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v14 + 8))(v24, v25);
    (*(v13 + 8))(v12, v27);
    outlined destroy of Mirror.DisplayStyle?(v29, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = LocationFetchFlow.execute();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 640));
    v3 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1040);
  (*(v0 + 1088))(v2, 0, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v2, v1);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 992);
  v5 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v3);
  if ((*(v4 + 48))(v3, 1, v5) == 1)
  {
    v6 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v7 = *(v0 + 1080);
    v8 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v9 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v9;
    [v7 currentLocationWithAccuracy:v0 + 336 timeout:v8 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v26 = *(v0 + 1080);
    v27 = *(v0 + 1072);
    v10 = *(v0 + 1000);
    v11 = *(v0 + 992);
    v12 = *(v0 + 976);
    v24 = *(v0 + 968);
    v13 = *(v0 + 952);
    v23 = *(v0 + 944);
    v14 = *(v0 + 936);
    v15 = *(v0 + 928);
    v25 = *(v0 + 984);
    (*(v11 + 32))(v10, *(v0 + 1032));
    v17 = v15[6];
    v16 = v15[7];
    __swift_project_boxed_opaque_existential_1(v15 + 3, v17);
    (*(v16 + 32))(v17, v16);
    v18 = type metadata accessor for NLContextUpdate();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v14, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v13 + 16))(v24, v12, v23);
    v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v20 = swift_allocObject();
    (*(v13 + 32))(v20 + v19, v24, v23);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v13 + 8))(v12, v23);
    (*(v11 + 8))(v10, v25);
    outlined destroy of Mirror.DisplayStyle?(v27, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v21 = *(v0 + 8);

    return v21();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 1232) = v1;
  if (v1)
  {
    v2 = LocationFetchFlow.execute();
  }

  else
  {
    v2 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(*v0 + 176);
  *(*v0 + 1256) = v1;
  if (v1)
  {
    v2 = LocationFetchFlow.execute();
  }

  else
  {
    v2 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  return _swift_task_switch(LocationFetchFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 1080);

  v2 = *(v0 + 8);

  return v2();
}

{

  return _swift_task_switch(LocationFetchFlow.execute(), 0, 0);
}

{

  return _swift_task_switch(LocationFetchFlow.execute(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = LocationFetchFlow.execute();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 560));
    v3 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 928);
  (*(v0 + 1088))(v3, 0, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v3, v2);
  v6 = v5[6];
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v6);
  (*(v7 + 32))(v6, v7);
  static LocationServicesViews.needSiriLocation.getter(v4);
  DeepLinkParams.makeDeepLink(device:)((v0 + 600));

  outlined destroy of DeepLinkParams(v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 600));

  v8 = *(v0 + 1032);
  v9 = *(v0 + 992);
  v10 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v8);
  if ((*(v9 + 48))(v8, 1, v10) == 1)
  {
    v11 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v11, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v12 = *(v0 + 1080);
    v13 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v14 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v14;
    [v12 currentLocationWithAccuracy:v0 + 336 timeout:v13 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v31 = *(v0 + 1080);
    v32 = *(v0 + 1072);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 992);
    v29 = *(v0 + 968);
    v17 = *(v0 + 952);
    v27 = *(v0 + 976);
    v28 = *(v0 + 944);
    v18 = *(v0 + 936);
    v19 = *(v0 + 928);
    v30 = *(v0 + 984);
    (*(v16 + 32))(v15, *(v0 + 1032));
    v21 = v19[6];
    v20 = v19[7];
    __swift_project_boxed_opaque_existential_1(v19 + 3, v21);
    (*(v20 + 32))(v21, v20);
    v22 = type metadata accessor for NLContextUpdate();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v18, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v17 + 16))(v29, v27, v28);
    v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v24 = swift_allocObject();
    (*(v17 + 32))(v24 + v23, v29, v28);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v17 + 8))(v27, v28);
    (*(v16 + 8))(v15, v30);
    outlined destroy of Mirror.DisplayStyle?(v32, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v25 = *(v0 + 8);

    return v25();
  }
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = LocationFetchFlow.execute();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 520));
    v3 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 1072);

  outlined destroy of Mirror.DisplayStyle?(v1, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1016);
  (*(v0 + 1088))(v3, 0, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v3, v2);

  v4 = *(v0 + 1032);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v4);
  if ((*(v5 + 48))(v4, 1, v6) == 1)
  {
    v7 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v7, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v8 = *(v0 + 1080);
    v9 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v10 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v10;
    [v8 currentLocationWithAccuracy:v0 + 336 timeout:v9 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v27 = *(v0 + 1080);
    v28 = *(v0 + 1072);
    v11 = *(v0 + 1000);
    v12 = *(v0 + 992);
    v25 = *(v0 + 968);
    v13 = *(v0 + 952);
    v23 = *(v0 + 976);
    v24 = *(v0 + 944);
    v14 = *(v0 + 936);
    v15 = *(v0 + 928);
    v26 = *(v0 + 984);
    (*(v12 + 32))(v11, *(v0 + 1032));
    v17 = v15[6];
    v16 = v15[7];
    __swift_project_boxed_opaque_existential_1(v15 + 3, v17);
    (*(v16 + 32))(v17, v16);
    v18 = type metadata accessor for NLContextUpdate();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v14, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v13 + 16))(v25, v23, v24);
    v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v20 = swift_allocObject();
    (*(v13 + 32))(v20 + v19, v25, v24);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v13 + 8))(v23, v24);
    (*(v12 + 8))(v11, v26);
    outlined destroy of Mirror.DisplayStyle?(v28, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v21 = *(v0 + 8);

    return v21();
  }
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 400));
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  (*(v0 + 1088))(v2, 1, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v2, v1);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 992);
  v5 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v3);
  if ((*(v4 + 48))(v3, 1, v5) == 1)
  {
    v6 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v7 = *(v0 + 1080);
    v8 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v9 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v9;
    [v7 currentLocationWithAccuracy:v0 + 336 timeout:v8 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v26 = *(v0 + 1080);
    v27 = *(v0 + 1072);
    v10 = *(v0 + 1000);
    v11 = *(v0 + 992);
    v24 = *(v0 + 968);
    v12 = *(v0 + 952);
    v22 = *(v0 + 976);
    v23 = *(v0 + 944);
    v13 = *(v0 + 936);
    v14 = *(v0 + 928);
    v25 = *(v0 + 984);
    (*(v11 + 32))(v10, *(v0 + 1032));
    v16 = v14[6];
    v15 = v14[7];
    __swift_project_boxed_opaque_existential_1(v14 + 3, v16);
    (*(v15 + 32))(v16, v15);
    v17 = type metadata accessor for NLContextUpdate();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v13, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v12 + 16))(v24, v22, v23);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = swift_allocObject();
    (*(v12 + 32))(v19 + v18, v24, v23);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v12 + 8))(v22, v23);
    (*(v11 + 8))(v10, v25);
    outlined destroy of Mirror.DisplayStyle?(v27, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v20 = *(v0 + 8);

    return v20();
  }
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 640));
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1040);
  (*(v0 + 1088))(v2, 1, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v2, v1);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 992);
  v5 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v3);
  if ((*(v4 + 48))(v3, 1, v5) == 1)
  {
    v6 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v7 = *(v0 + 1080);
    v8 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v9 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v9;
    [v7 currentLocationWithAccuracy:v0 + 336 timeout:v8 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v26 = *(v0 + 1080);
    v27 = *(v0 + 1072);
    v10 = *(v0 + 1000);
    v11 = *(v0 + 992);
    v12 = *(v0 + 976);
    v24 = *(v0 + 968);
    v13 = *(v0 + 952);
    v23 = *(v0 + 944);
    v14 = *(v0 + 936);
    v15 = *(v0 + 928);
    v25 = *(v0 + 984);
    (*(v11 + 32))(v10, *(v0 + 1032));
    v17 = v15[6];
    v16 = v15[7];
    __swift_project_boxed_opaque_existential_1(v15 + 3, v17);
    (*(v16 + 32))(v17, v16);
    v18 = type metadata accessor for NLContextUpdate();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v14, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v13 + 16))(v24, v12, v23);
    v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v20 = swift_allocObject();
    (*(v13 + 32))(v20 + v19, v24, v23);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v13 + 8))(v12, v23);
    (*(v11 + 8))(v10, v25);
    outlined destroy of Mirror.DisplayStyle?(v27, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v21 = *(v0 + 8);

    return v21();
  }
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 760));
  v1 = *(v0 + 1168);
  *(v0 + 1288) = &_swiftEmptyArrayStorage;
  *(v0 + 888) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 928);
  if (v2)
  {

    v4 = *(v0 + 880);
    *(v0 + 1296) = v4;
    v5 = static os_log_type_t.error.getter();
    v6 = v3[9];
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v4;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_0, v6, v5, "AFLocationServiceError: %@", v7, 0xCu);
      outlined destroy of Mirror.DisplayStyle?(v8, &_sSo8NSObjectCSgMd, ",p");
    }

    *(v0 + 904) = v4;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, 255, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 912) == 5)
    {

      type metadata accessor for CATService();
      v11 = swift_allocObject();
      *(v0 + 1304) = v11;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      type metadata accessor for OS_os_log();
      *(v11 + 32) = OS_os_log.init(subsystem:category:)();
      *(v11 + 16) = 0;
      *(v0 + 584) = &type metadata for LocationServices;
      *(v0 + 592) = &protocol witness table for LocationServices;
      *(v0 + 560) = 0;
      v13 = static DialogHelper.globals.getter();
      *(v0 + 1312) = v13;
      v14 = swift_task_alloc();
      *(v0 + 1320) = v14;
      *v14 = v0;
      v14[1] = LocationFetchFlow.execute();
      v15 = *(v0 + 1024);
      v16 = v0 + 560;
    }

    else
    {
      v26 = *(v0 + 928);
      lazy protocol witness table accessor for type Errors and conformance Errors();
      v27 = swift_allocError();
      *v28 = 0xD00000000000001FLL;
      *(v28 + 8) = 0x80000000000C30E0;
      *(v28 + 16) = 2;
      (*(*v26 + 152))(v27, 2);
      type metadata accessor for CATService();
      v29 = swift_allocObject();
      *(v0 + 1328) = v29;
      v30 = swift_getObjCClassFromMetadata();
      *(v29 + 24) = [objc_opt_self() bundleForClass:v30];
      type metadata accessor for OS_os_log();
      *(v29 + 32) = OS_os_log.init(subsystem:category:)();
      *(v29 + 16) = 0;
      *(v0 + 544) = &type metadata for LocationServices;
      *(v0 + 552) = &protocol witness table for LocationServices;
      *(v0 + 520) = 2;
      v13 = static DialogHelper.globals.getter();
      *(v0 + 1336) = v13;
      v31 = swift_task_alloc();
      *(v0 + 1344) = v31;
      *v31 = v0;
      v31[1] = LocationFetchFlow.execute();
      v15 = *(v0 + 1016);
      v16 = v0 + 520;
    }

    return CATService.execute(model:globals:)(v15, v16, v13);
  }

  else
  {

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v17 = swift_allocError();
    *v18 = 0xD000000000000038;
    *(v18 + 8) = 0x80000000000C3010;
    *(v18 + 16) = 0;
    (*(*v3 + 152))(v17, 2);

    v19 = *(v0 + 1032);
    v20 = *(v0 + 992);
    v21 = *(v0 + 984);
    outlined init with copy of TemplatingResult?(*(v0 + 1072), v19);
    if ((*(v20 + 48))(v19, 1, v21) == 1)
    {
      v22 = *(v0 + 1032);
      outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      outlined destroy of Mirror.DisplayStyle?(v22, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v23 = *(v0 + 1080);
      v24 = **(&off_E3460 + *(*(v0 + 928) + 64));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 872;
      *(v0 + 24) = LocationFetchFlow.execute();
      v25 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
      *(v0 + 360) = &block_descriptor_3;
      *(v0 + 368) = v25;
      [v23 currentLocationWithAccuracy:v0 + 336 timeout:v24 completion:2.0];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      v48 = *(v0 + 1080);
      v49 = *(v0 + 1072);
      v32 = *(v0 + 1000);
      v33 = *(v0 + 992);
      v34 = *(v0 + 976);
      v46 = *(v0 + 968);
      v35 = *(v0 + 952);
      v45 = *(v0 + 944);
      v36 = *(v0 + 936);
      v37 = *(v0 + 928);
      v47 = *(v0 + 984);
      (*(v33 + 32))(v32, *(v0 + 1032));
      v39 = v37[6];
      v38 = v37[7];
      __swift_project_boxed_opaque_existential_1(v37 + 3, v39);
      (*(v38 + 32))(v39, v38);
      v40 = type metadata accessor for NLContextUpdate();
      (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
      *(v0 + 512) = 0;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

      outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      outlined destroy of Mirror.DisplayStyle?(v36, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
      (*(v35 + 16))(v46, v34, v45);
      v41 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v42 = swift_allocObject();
      (*(v35 + 32))(v42 + v41, v46, v45);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      type metadata accessor for SimpleOutputFlowAsync();
      swift_allocObject();
      *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      static ExecuteResponse.complete<A>(next:)();

      (*(v35 + 8))(v34, v45);
      (*(v33 + 8))(v32, v47);
      outlined destroy of Mirror.DisplayStyle?(v49, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      v43 = *(v0 + 8);

      return v43();
    }
  }
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 720));
  v1 = *(v0 + 1200);
  *(v0 + 1288) = *(v0 + 1176);
  *(v0 + 888) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 928);
  if (v2)
  {

    v4 = *(v0 + 880);
    *(v0 + 1296) = v4;
    v5 = static os_log_type_t.error.getter();
    v6 = v3[9];
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v4;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_0, v6, v5, "AFLocationServiceError: %@", v7, 0xCu);
      outlined destroy of Mirror.DisplayStyle?(v8, &_sSo8NSObjectCSgMd, ",p");
    }

    *(v0 + 904) = v4;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, 255, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 912) == 5)
    {

      type metadata accessor for CATService();
      v11 = swift_allocObject();
      *(v0 + 1304) = v11;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      type metadata accessor for OS_os_log();
      *(v11 + 32) = OS_os_log.init(subsystem:category:)();
      *(v11 + 16) = 0;
      *(v0 + 584) = &type metadata for LocationServices;
      *(v0 + 592) = &protocol witness table for LocationServices;
      *(v0 + 560) = 0;
      v13 = static DialogHelper.globals.getter();
      *(v0 + 1312) = v13;
      v14 = swift_task_alloc();
      *(v0 + 1320) = v14;
      *v14 = v0;
      v14[1] = LocationFetchFlow.execute();
      v15 = *(v0 + 1024);
      v16 = v0 + 560;
    }

    else
    {
      v26 = *(v0 + 928);
      lazy protocol witness table accessor for type Errors and conformance Errors();
      v27 = swift_allocError();
      *v28 = 0xD00000000000001FLL;
      *(v28 + 8) = 0x80000000000C30E0;
      *(v28 + 16) = 2;
      (*(*v26 + 152))(v27, 2);
      type metadata accessor for CATService();
      v29 = swift_allocObject();
      *(v0 + 1328) = v29;
      v30 = swift_getObjCClassFromMetadata();
      *(v29 + 24) = [objc_opt_self() bundleForClass:v30];
      type metadata accessor for OS_os_log();
      *(v29 + 32) = OS_os_log.init(subsystem:category:)();
      *(v29 + 16) = 0;
      *(v0 + 544) = &type metadata for LocationServices;
      *(v0 + 552) = &protocol witness table for LocationServices;
      *(v0 + 520) = 2;
      v13 = static DialogHelper.globals.getter();
      *(v0 + 1336) = v13;
      v31 = swift_task_alloc();
      *(v0 + 1344) = v31;
      *v31 = v0;
      v31[1] = LocationFetchFlow.execute();
      v15 = *(v0 + 1016);
      v16 = v0 + 520;
    }

    return CATService.execute(model:globals:)(v15, v16, v13);
  }

  else
  {

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v17 = swift_allocError();
    *v18 = 0xD000000000000038;
    *(v18 + 8) = 0x80000000000C3010;
    *(v18 + 16) = 0;
    (*(*v3 + 152))(v17, 2);

    v19 = *(v0 + 1032);
    v20 = *(v0 + 992);
    v21 = *(v0 + 984);
    outlined init with copy of TemplatingResult?(*(v0 + 1072), v19);
    if ((*(v20 + 48))(v19, 1, v21) == 1)
    {
      v22 = *(v0 + 1032);
      outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      outlined destroy of Mirror.DisplayStyle?(v22, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v23 = *(v0 + 1080);
      v24 = **(&off_E3460 + *(*(v0 + 928) + 64));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 872;
      *(v0 + 24) = LocationFetchFlow.execute();
      v25 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
      *(v0 + 360) = &block_descriptor_3;
      *(v0 + 368) = v25;
      [v23 currentLocationWithAccuracy:v0 + 336 timeout:v24 completion:2.0];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      v48 = *(v0 + 1080);
      v49 = *(v0 + 1072);
      v32 = *(v0 + 1000);
      v33 = *(v0 + 992);
      v46 = *(v0 + 968);
      v34 = *(v0 + 952);
      v44 = *(v0 + 976);
      v45 = *(v0 + 944);
      v35 = *(v0 + 936);
      v36 = *(v0 + 928);
      v47 = *(v0 + 984);
      (*(v33 + 32))(v32, *(v0 + 1032));
      v38 = v36[6];
      v37 = v36[7];
      __swift_project_boxed_opaque_existential_1(v36 + 3, v38);
      (*(v37 + 32))(v38, v37);
      v39 = type metadata accessor for NLContextUpdate();
      (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
      *(v0 + 512) = 0;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

      outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      outlined destroy of Mirror.DisplayStyle?(v35, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
      (*(v34 + 16))(v46, v44, v45);
      v40 = (*(v34 + 80) + 16) & ~*(v34 + 80);
      v41 = swift_allocObject();
      (*(v34 + 32))(v41 + v40, v46, v45);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      type metadata accessor for SimpleOutputFlowAsync();
      swift_allocObject();
      *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      static ExecuteResponse.complete<A>(next:)();

      (*(v34 + 8))(v44, v45);
      (*(v33 + 8))(v32, v47);
      outlined destroy of Mirror.DisplayStyle?(v49, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      v42 = *(v0 + 8);

      return v42();
    }
  }
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 560));
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 928);
  (*(v0 + 1088))(v3, 1, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v3, v2);
  v6 = v5[6];
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v6);
  (*(v7 + 32))(v6, v7);
  static LocationServicesViews.needSiriLocation.getter(v4);
  DeepLinkParams.makeDeepLink(device:)((v0 + 600));

  outlined destroy of DeepLinkParams(v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 600));

  v8 = *(v0 + 1032);
  v9 = *(v0 + 992);
  v10 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v8);
  if ((*(v9 + 48))(v8, 1, v10) == 1)
  {
    v11 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v11, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v12 = *(v0 + 1080);
    v13 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v14 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v14;
    [v12 currentLocationWithAccuracy:v0 + 336 timeout:v13 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v31 = *(v0 + 1080);
    v32 = *(v0 + 1072);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 992);
    v29 = *(v0 + 968);
    v17 = *(v0 + 952);
    v27 = *(v0 + 976);
    v28 = *(v0 + 944);
    v18 = *(v0 + 936);
    v19 = *(v0 + 928);
    v30 = *(v0 + 984);
    (*(v16 + 32))(v15, *(v0 + 1032));
    v21 = v19[6];
    v20 = v19[7];
    __swift_project_boxed_opaque_existential_1(v19 + 3, v21);
    (*(v20 + 32))(v21, v20);
    v22 = type metadata accessor for NLContextUpdate();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v18, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v17 + 16))(v29, v27, v28);
    v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v24 = swift_allocObject();
    (*(v17 + 32))(v24 + v23, v29, v28);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v17 + 8))(v27, v28);
    (*(v16 + 8))(v15, v30);
    outlined destroy of Mirror.DisplayStyle?(v32, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v25 = *(v0 + 8);

    return v25();
  }
}

{
  v1 = *(v0 + 1072);

  outlined destroy of Mirror.DisplayStyle?(v1, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 520));
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1016);
  (*(v0 + 1088))(v3, 1, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v3, v2);

  v4 = *(v0 + 1032);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v4);
  if ((*(v5 + 48))(v4, 1, v6) == 1)
  {
    v7 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v7, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v8 = *(v0 + 1080);
    v9 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v10 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v10;
    [v8 currentLocationWithAccuracy:v0 + 336 timeout:v9 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v27 = *(v0 + 1080);
    v28 = *(v0 + 1072);
    v11 = *(v0 + 1000);
    v12 = *(v0 + 992);
    v25 = *(v0 + 968);
    v13 = *(v0 + 952);
    v23 = *(v0 + 976);
    v24 = *(v0 + 944);
    v14 = *(v0 + 936);
    v15 = *(v0 + 928);
    v26 = *(v0 + 984);
    (*(v12 + 32))(v11, *(v0 + 1032));
    v17 = v15[6];
    v16 = v15[7];
    __swift_project_boxed_opaque_existential_1(v15 + 3, v17);
    (*(v16 + 32))(v17, v16);
    v18 = type metadata accessor for NLContextUpdate();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v14, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v13 + 16))(v25, v23, v24);
    v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v20 = swift_allocObject();
    (*(v13 + 32))(v20 + v19, v25, v24);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v13 + 8))(v23, v24);
    (*(v12 + 8))(v11, v26);
    outlined destroy of Mirror.DisplayStyle?(v28, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    v21 = *(v0 + 8);

    return v21();
  }
}