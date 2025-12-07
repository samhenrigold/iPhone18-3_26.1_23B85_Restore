id static FIUIWorkoutActivityType.makeSeymourGuidedActivityType(mediaType:)(unsigned __int8 a1)
{
  if (a1 - 2 < 2)
  {
    return 0;
  }

  if (a1)
  {
    v2 = 52;
  }

  else
  {
    v2 = 37;
  }

  v3 = MEMORY[0x20F2E5300]();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v7;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithActivityTypeIdentifier:v2 isIndoor:0 metadata:isa];

  return v10;
}

id static HeartRateConfiguration.maximumHeartRate(forAge:)(double a1)
{
  v1 = 0.0;
  if (a1 > 0.0)
  {
    v1 = a1;
  }

  v2 = v1 * -0.7 + 208.0;
  if (a1 <= 110.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 131.0;
  }

  v4 = [objc_opt_self() _countPerMinuteUnit];
  v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:v3];

  return v5;
}

id specialized static HeartRateConfiguration.ageBasedMaximumHeartRate()()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v5 = static HeartRateConfiguration.healthStore;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  v19[0] = 0;
  v7 = [v5 ageWithCurrentDate:isa error:v19];

  if (v7)
  {
    v8 = v19[0];
    [v7 doubleValue];
    v10 = 0.0;
    if (v9 > 0.0)
    {
      v10 = v9;
    }

    v11 = v10 * -0.7 + 208.0;
    if (v9 <= 110.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 131.0;
    }

    v13 = [objc_opt_self() _countPerMinuteUnit];
    v14 = [objc_opt_self() quantityWithUnit:v13 doubleValue:v12];
  }

  else
  {
    v15 = v19[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return 0;
  }

  return v14;
}

uint64_t WorkoutStep.displayString.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  if (!v3)
  {
    goto LABEL_6;
  }

  result = v2;
  v1 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v1 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {

LABEL_6:
    swift_beginAccess();
    return StepType.displayString.getter();
  }

  return result;
}

WorkoutCore::MetricPlatterType_optional __swiftcall MetricPlatterType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetricPlatterType.init(rawValue:), v3);

  v7 = 16;
  if (v5 < 0x10)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetricPlatterType(uint64_t a1)
{
  v1 = MetricPlatterType.bridgedValue.getter(a1);
  v3 = v2;
  if (v1 == MetricPlatterType.bridgedValue.getter(v1) && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricPlatterType()
{
  v0 = Hasher.init(_seed:)();
  MetricPlatterType.bridgedValue.getter(v0);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance MetricPlatterType(uint64_t a1)
{
  MetricPlatterType.bridgedValue.getter(a1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricPlatterType(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  MetricPlatterType.bridgedValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MetricPlatterType@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MetricPlatterType.bridgedValue.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t MetricPlatterType.rawValue.getter()
{
  result = 0x647261646E617473;
  switch(*v0)
  {
    case 2:
      result = 0x6C61767265746E69;
      break;
    case 3:
      result = 0x6C61767265746E69;
      break;
    case 4:
      result = 0x7265636170;
      break;
    case 5:
      result = 1701011826;
      break;
    case 6:
      result = 0x746E656D676573;
      break;
    case 7:
      result = 0x7974697669746361;
      break;
    case 8:
      result = 0x6F65646976;
      break;
    case 9:
      result = 0x74696C7073;
      break;
    case 0xA:
      result = 0x7461527472616568;
      break;
    case 0xB:
      result = 0x6F707369746C756DLL;
      break;
    case 0xC:
      result = 0x7265776F70;
      break;
    case 0xD:
      result = 0x6E6F5A7265776F70;
      break;
    case 0xE:
      result = 0x6F69746176656C65;
      break;
    case 0xF:
      result = 0x656D6F6465657073;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MetricPlatterType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MetricPlatterType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MetricPlatterType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore17MetricPlatterTypeOGMd, &_sSay11WorkoutCore17MetricPlatterTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MetricPlatterType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlatterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricPlatterType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FIUIWorkoutActivityType.splitsPlatterIncludeByDefault.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  if ((v1 - 13) > 0x3A || ((1 << (v1 - 13)) & 0x400800001400001) == 0)
  {
    return 0;
  }

  else
  {
    return [v0 isIndoor] ^ 1;
  }
}

id FIUIWorkoutActivityType.powerPlatterIncludeByDefault.getter()
{
  if ([v0 effectiveTypeIdentifier] == 13)
  {
    return [objc_opt_self() hasHadPairedCyclingPowerSensors];
  }

  else
  {
    return 0;
  }
}

uint64_t FIUIWorkoutActivityType.elevationPlatterIncludeByDefault.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  v2 = v1 - 13;
  if ((v1 - 13) > 0x3A)
  {
    return 0;
  }

  if (((1 << v2) & 0x400000001000001) != 0)
  {
    return [v0 isIndoor] ^ 1;
  }

  return ((1 << v2) & 0x800000000800) != 0;
}

uint64_t Apple_Workout_Core_CLLocation.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Apple_Workout_Core_CLLocation(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_CLLocation(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_CLLocation;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_CLLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_CLLocation.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_CLLocation(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_CLLocation.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_CLLocation(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_CLLocation._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_CLLocation._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_CLLocation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_CLLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
    {
      if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
      {
        if (!v3[3] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
        {
          if (!v3[4] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
          {
            if (!v3[5] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
            {
              type metadata accessor for Apple_Workout_Core_CLLocation(0);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::Int Apple_Workout_Core_CLLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_CLLocation(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_CLLocation@<X0>(_OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_CLLocation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_CLLocation@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_CLLocation._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_CLLocation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_CLLocation.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_CLLocation(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_CLLocation(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void key path getter for MockWorkoutDeviceProvider.devices : MockWorkoutDeviceProvider(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for MockWorkoutDeviceProvider.devices : MockWorkoutDeviceProvider(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t MockWorkoutDeviceProvider.devices.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double MockWorkoutDeviceProvider.devices.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*MockWorkoutDeviceProvider.devices.modify(uint64_t *a1))()
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
  return MockWorkoutDeviceProvider.devices.modify;
}

void MockWorkoutDeviceProvider.devices.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for MockWorkoutDeviceProvider.$devices : MockWorkoutDeviceProvider(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MockWorkoutDeviceProvider.$devices : MockWorkoutDeviceProvider(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MockWorkoutDeviceProvider.$devices.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MockWorkoutDeviceProvider.$devices.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MockWorkoutDeviceProvider.$devices.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MockWorkoutDeviceProvider.$devices.modify;
}

void MockWorkoutDeviceProvider.$devices.modify(uint64_t a1, char a2)
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

uint64_t MockWorkoutDeviceProvider.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v8 - v3;
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v8[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
  Published.init(initialValue:)();
  (*(v1 + 32))(v5 + v6, v4, v0);
  MockWorkoutDeviceProvider.fetchDevices()();
  return v5;
}

uint64_t MockWorkoutDeviceProvider.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v8[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  MockWorkoutDeviceProvider.fetchDevices()();
  return v0;
}

Swift::Void __swiftcall MockWorkoutDeviceProvider.fetchDevices()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v20 - v16;
  type metadata accessor for OS_dispatch_queue();
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v10 + 8);
  v20(v14, v9);
  aBlock[4] = partial apply for closure #1 in MockWorkoutDeviceProvider.fetchDevices();
  v25 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_87;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7500](v17, v8, v4, v19);
  _Block_release(v19);

  (*(v23 + 8))(v4, v1);
  (*(v21 + 8))(v8, v22);
  v20(v17, v9);
}

double closure #1 in MockWorkoutDeviceProvider.fetchDevices()(uint64_t a1)
{
  v18[0] = a1;
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20B423A20;
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v5, v1);
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 48) = 0xD000000000000014;
  *(v6 + 56) = 0x800000020B46D650;
  *(v6 + 64) = 0;
  *(v6 + 65) = *v20;
  *(v6 + 68) = *&v20[3];
  *(v6 + 72) = 0xD000000000000015;
  *(v6 + 80) = 0x800000020B45C750;
  *(v6 + 88) = 0;
  *(v6 + 89) = *v19;
  *(v6 + 92) = *&v19[3];
  *(v6 + 96) = xmmword_20B44DA20;
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v10(v5, v1);
  *(v6 + 112) = v11;
  *(v6 + 120) = v13;
  *(v6 + 128) = 0xD000000000000013;
  *(v6 + 136) = 0x800000020B46D670;
  *(v6 + 144) = 1;
  *(v6 + 145) = *v22;
  *(v6 + 148) = *&v22[3];
  *(v6 + 152) = 0x7073646F70726961;
  *(v6 + 160) = 0xEA00000000006F72;
  *(v6 + 169) = *v21;
  *(v6 + 172) = *&v21[3];
  *(v6 + 168) = 0;
  *(v6 + 176) = xmmword_20B44DA30;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v10(v5, v1);
  *(v6 + 192) = v14;
  *(v6 + 200) = v16;
  *(v6 + 208) = 0xD000000000000012;
  *(v6 + 216) = 0x800000020B46D690;
  *(v6 + 224) = 2;
  *(v6 + 225) = *v24;
  *(v6 + 228) = *&v24[3];
  *(v6 + 232) = 0x69662E7472616568;
  *(v6 + 240) = 0xEA00000000006C6CLL;
  *(v6 + 248) = 0;
  *(v6 + 249) = *v23;
  *(v6 + 252) = *&v23[3];
  *(v6 + 256) = 0xD000000000000010;
  *(v6 + 264) = 0x800000020B45A560;
  swift_getKeyPath();
  swift_getKeyPath();
  v18[1] = v6;

  static Published.subscript.setter();
  return result;
}

uint64_t MockWorkoutDeviceProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MockWorkoutDeviceProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for WorkoutDevicesProviding.devices.getter in conformance MockWorkoutDeviceProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t instantiation function for generic protocol witness table for MockWorkoutDeviceProvider(uint64_t a1)
{
  result = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type MockWorkoutDeviceProvider and conformance MockWorkoutDeviceProvider, type metadata accessor for MockWorkoutDeviceProvider, &protocol conformance descriptor for MockWorkoutDeviceProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MockWorkoutDeviceProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for MockWorkoutDeviceProvider;
  if (!type metadata singleton initialization cache for MockWorkoutDeviceProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MockWorkoutDeviceProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MockWorkoutDeviceProvider(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void type metadata completion function for MockWorkoutDeviceProvider(uint64_t a1)
{
  type metadata accessor for Published<[WorkoutDevice]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double static WorkoutChartProperties.elevation(unit:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() meterUnit];
  v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:10.0];

  [v5 doubleValueForUnit_];
  v7 = v6;

  *a2 = 48;
  result = 1800.0;
  *(a2 + 8) = xmmword_20B440800;
  *(a2 + 24) = 4;
  *(a2 + 32) = 1;
  *(a2 + 80) = 1;
  *(a2 + 40) = 0x4014000000000000;
  *(a2 + 48) = 0x6F69746176656C45;
  *(a2 + 56) = 0xE90000000000006ELL;
  *(a2 + 64) = 1;
  *(a2 + 72) = v7;
  return result;
}

double static WorkoutChartProperties.power(unit:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() wattUnit];
  v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:100.0];

  [v5 doubleValueForUnit_];
  v7 = v6;

  *a2 = 48;
  result = 1800.0;
  *(a2 + 8) = xmmword_20B440800;
  *(a2 + 24) = 4;
  *(a2 + 32) = 0;
  *(a2 + 80) = 1;
  *(a2 + 40) = 0x4028000000000000;
  *(a2 + 48) = 0x7265776F50;
  *(a2 + 56) = 0xE500000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = v7;
  return result;
}

Swift::Int WorkoutChartProperties.ChartType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutChartProperties.ChartType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutChartProperties.ChartType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t WorkoutChartProperties.valuesName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall WorkoutChartProperties.init(timeWindow:maxOnScreenBuckets:horizontalSections:chartType:markWidth:highlightLatestSample:valuesName:hasNegativeValues:minimumValueRange:)(WorkoutCore::WorkoutChartProperties *__return_ptr retstr, Swift::Double timeWindow, Swift::Int maxOnScreenBuckets, Swift::Int horizontalSections, WorkoutCore::WorkoutChartProperties::ChartType chartType, Swift::Double markWidth, Swift::Bool highlightLatestSample, Swift::String valuesName, Swift::Bool hasNegativeValues, Swift::Double minimumValueRange)
{
  v10 = *chartType;
  retstr->maxOnScreenBuckets = maxOnScreenBuckets;
  retstr->timeWindow = timeWindow;
  retstr->bucketDuration = timeWindow / maxOnScreenBuckets;
  retstr->horizontalSections = horizontalSections;
  retstr->chartType = v10;
  retstr->markWidth = markWidth;
  retstr->highlightLatestSample = highlightLatestSample;
  retstr->valuesName = valuesName;
  retstr->hasNegativeValues = hasNegativeValues;
  retstr->minimumValueRange = minimumValueRange;
}

unint64_t lazy protocol witness table accessor for type WorkoutChartProperties.ChartType and conformance WorkoutChartProperties.ChartType()
{
  result = lazy protocol witness table cache variable for type WorkoutChartProperties.ChartType and conformance WorkoutChartProperties.ChartType;
  if (!lazy protocol witness table cache variable for type WorkoutChartProperties.ChartType and conformance WorkoutChartProperties.ChartType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartProperties.ChartType and conformance WorkoutChartProperties.ChartType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutChartProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutChartProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutChartProperties.ChartType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutChartProperties.ChartType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t MultisportMetricsPublisher.currentActivityStart.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_10(a1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_15(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

double MultisportMetricsPublisher.multisportTransitionState.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double MultisportMetricsPublisher.multisportRemainingLegCount.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double MultisportMetricsPublisher.currentMultisportActivity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t MultisportMetricsPublisher.multisportLastEffectiveTransitionDate.setter(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v6, a1, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(a1, v2);
}

void MultisportMetricsPublisher.lastMultisportLegTime.setter(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

double MultisportMetricsPublisher.currentActivityStart.getter@<D0>(void *a3@<X8>)
{
  return MultisportMetricsPublisher.currentActivityStart.getter(a3);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a3);

  return result;
}

uint64_t (*MultisportMetricsPublisher.currentActivityStart.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.currentActivityStart.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$currentActivityStart : MultisportMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t MultisportMetricsPublisher.$currentActivityStart.setter(uint64_t a1)
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

uint64_t (*MultisportMetricsPublisher.$currentActivityStart.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentActivityStart;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$currentActivityStart.modify;
}

uint64_t (*MultisportMetricsPublisher.currentMultisportActivity.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.currentMultisportActivity.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$currentMultisportActivity : MultisportMetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MultisportMetricsPublisher.$currentMultisportActivity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$currentMultisportActivity.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentMultisportActivity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$currentMultisportActivity.modify;
}

uint64_t (*MultisportMetricsPublisher.lastMultisportLegTime.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.lastMultisportLegTime.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$lastMultisportLegTime : MultisportMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t MultisportMetricsPublisher.$lastMultisportLegTime.setter(uint64_t a1)
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

uint64_t (*MultisportMetricsPublisher.$lastMultisportLegTime.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$lastMultisportLegTime.modify;
}

uint64_t (*MultisportMetricsPublisher.lastMultisportLegDistance.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.lastMultisportLegDistance.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$lastMultisportLegDistance : MultisportMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t MultisportMetricsPublisher.$lastMultisportLegDistance.setter(uint64_t a1)
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

uint64_t (*MultisportMetricsPublisher.$lastMultisportLegDistance.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$lastMultisportLegDistance.modify;
}

double MultisportMetricsPublisher.lastMultisportLegTime.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*MultisportMetricsPublisher.lastMultisportLegAveragePace.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.lastMultisportLegAveragePace.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$lastMultisportLegAveragePace : MultisportMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t MultisportMetricsPublisher.$lastMultisportLegAveragePace.setter(uint64_t a1)
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

uint64_t (*MultisportMetricsPublisher.$lastMultisportLegAveragePace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegAveragePace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$lastMultisportLegAveragePace.modify;
}

double MultisportMetricsPublisher.multisportTransitionState.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t (*MultisportMetricsPublisher.multisportTransitionState.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.multisportTransitionState.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$multisportTransitionState : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MultisportMetricsPublisher.$multisportTransitionState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$multisportTransitionState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportTransitionState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$multisportTransitionState.modify;
}

uint64_t MultisportMetricsPublisher.multisportRemainingLegCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t (*MultisportMetricsPublisher.multisportRemainingLegCount.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.multisportRemainingLegCount.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$multisportRemainingLegCount : MultisportMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t MultisportMetricsPublisher.$multisportRemainingLegCount.setter(uint64_t a1)
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

uint64_t (*MultisportMetricsPublisher.$multisportRemainingLegCount.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportRemainingLegCount;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$multisportRemainingLegCount.modify;
}

double key path getter for MultisportMetricsPublisher.multisportLastEffectiveTransitionDate : MultisportMetricsPublisher@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t key path setter for MultisportMetricsPublisher.multisportLastEffectiveTransitionDate : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v8, v11, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v11, v3);
}

uint64_t (*MultisportMetricsPublisher.multisportLastEffectiveTransitionDate.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.multisportLastEffectiveTransitionDate.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$multisportLastEffectiveTransitionDate : MultisportMetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MultisportMetricsPublisher.$multisportLastEffectiveTransitionDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$multisportLastEffectiveTransitionDate.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportLastEffectiveTransitionDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$multisportLastEffectiveTransitionDate.modify;
}

uint64_t MultisportMetricsPublisher.currentMultisportActivity.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*MultisportMetricsPublisher.nextMultisportActivity.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.nextMultisportActivity.modify;
}

void MultisportMetricsPublisher.currentActivityStart.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t MultisportMetricsPublisher.$currentActivityStart.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for MultisportMetricsPublisher.$currentActivityStart : MultisportMetricsPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MultisportMetricsPublisher.$nextMultisportActivity : MultisportMetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MultisportMetricsPublisher.$nextMultisportActivity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$nextMultisportActivity.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__nextMultisportActivity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$nextMultisportActivity.modify;
}

void MultisportMetricsPublisher.$currentActivityStart.modify(uint64_t a1, char a2)
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

uint64_t MultisportMetricsPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  MultisportMetricsPublisher.init()();
  return v0;
}

uint64_t MultisportMetricsPublisher.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  v71 = *(v0 - 8);
  v72 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v70 = &v56 - v2;
  v3 = type metadata accessor for Date();
  v73 = *(v3 - 8);
  v74 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v69 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v68 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v65 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v61 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v56 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v75 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v19);
  v56 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v56 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v28 = MEMORY[0x28223BE20](v26, v27);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v56 - v32;
  v34 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentActivityStart;
  (*(v73 + 56))(&v56 - v32, 1, 1, v74);
  _s10Foundation4DateVSgWOcTm_10(v33, v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_15(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v35 = v62;
  (*(v22 + 32))(v62 + v34, v25, v21);
  v36 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentMultisportActivity;
  v76 = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  v37 = v56;
  Published.init(initialValue:)();
  v38 = *(v75 + 32);
  v75 += 32;
  v39 = v57;
  v38(v35 + v36, v37, v57);
  v40 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegTime;
  v76 = 0;
  Published.init(initialValue:)();
  v41 = v60;
  v42 = *(v59 + 32);
  v42(v35 + v40, v18, v60);
  v43 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegDistance;
  v76 = 0;
  Published.init(initialValue:)();
  v42(v35 + v43, v18, v41);
  v44 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegAveragePace;
  v76 = 0;
  Published.init(initialValue:)();
  v42(v35 + v44, v18, v41);
  v45 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportTransitionState;
  LOBYTE(v76) = 0;
  v46 = v61;
  Published.init(initialValue:)();
  (*(v63 + 32))(v35 + v45, v46, v64);
  v47 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportRemainingLegCount;
  v76 = 0;
  v48 = v65;
  Published.init(initialValue:)();
  (*(v66 + 32))(v35 + v47, v48, v67);
  v49 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportLastEffectiveTransitionDate;
  v50 = v68;
  Date.init()();
  v52 = v73;
  v51 = v74;
  (*(v73 + 16))(v69, v50, v74);
  v53 = v70;
  Published.init(initialValue:)();
  (*(v52 + 8))(v50, v51);
  (*(v71 + 32))(v35 + v49, v53, v72);
  v54 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__nextMultisportActivity;
  v76 = 0;
  Published.init(initialValue:)();
  v38(v35 + v54, v37, v39);
  return v35;
}

uint64_t MultisportMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentActivityStart;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentMultisportActivity;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegTime;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegDistance, v7);
  v8(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegAveragePace, v7);
  v9 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportTransitionState;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportRemainingLegCount;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportLastEffectiveTransitionDate;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v5(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__nextMultisportActivity, v4);
  return v0;
}

uint64_t MultisportMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentActivityStart;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentMultisportActivity;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegTime;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegDistance, v7);
  v8(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegAveragePace, v7);
  v9 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportTransitionState;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportRemainingLegCount;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportLastEffectiveTransitionDate;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v5(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__nextMultisportActivity, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MultisportMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t MultisportMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MultisportMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  return v4;
}

void MultisportMetricsPublisher.protobuf.getter(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v72 = &v66 - v4;
  v71 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v70 = *(v71 - 8);
  v6 = MEMORY[0x28223BE20](v71, v5);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v69 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = (&v66 - v12);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v67 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v66 - v20;
  UnknownStorage.init()();
  v22 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v22) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v13);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    _s10Foundation4DateVSgWOhTm_15(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    Date.timeIntervalSinceReferenceDate.getter();
    v24 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v15 + 8))(v21, v14);
      v25 = *(a1 + v22);
    }

    else
    {
      type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      swift_allocObject();

      v25 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v26);
      (*(v15 + 8))(v21, v14);

      *(a1 + v22) = v25;
    }

    swift_beginAccess();
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
  }

  v27 = v69;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v77);

  v28 = v77[0];
  if (v77[0])
  {
    FIUIWorkoutActivityType.protobuf.getter(v27);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v29 = *(a1 + v22);
    }

    else
    {
      type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      swift_allocObject();

      v29 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v30);

      *(a1 + v22) = v29;
    }

    v31 = v27;
    v32 = v72;
    outlined init with take of Apple_Workout_Core_Activity(v31, v72);
    (*(v70 + 56))(v32, 0, 1, v71);
    v33 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v32, v29 + v33);
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v77);

  v34 = v77[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(a1 + v22);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v36 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v36);
    *(a1 + v22) = v36;
  }

  v37 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  *(v36 + v37) = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v76);

  v38 = v76[0];
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a1 + v22);
  if ((v39 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v40 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v40);
    *(a1 + v22) = v40;
  }

  v41 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  *(v40 + v41) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v75);

  v42 = v75[0];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(a1 + v22);
  if ((v43 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v44 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v44);
    *(a1 + v22) = v44;
  }

  v45 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  *(v44 + v45) = v42;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v74);

  v46 = v74[0];
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(a1 + v22);
  if ((v47 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v48 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v48);
    *(a1 + v22) = v48;
  }

  v49 = v48 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  *v49 = v46;
  *(v49 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v74);

  v50 = *v74;
  if (*v74 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (*v74 > 0x7FFFFFFF)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v51 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(a1 + v22);
  if ((v51 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v52 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v52);
    *(a1 + v22) = v52;
  }

  v53 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  *(v52 + v53) = v50;
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v67;
  static Published.subscript.getter(v67);

  Date.timeIntervalSinceReferenceDate.getter();
  v56 = v55;
  (*(v15 + 8))(v54, v14);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(a1 + v22);
  if ((v57 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v58 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v58);
    *(a1 + v22) = v58;
  }

  v59 = v68;
  v60 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  *(v58 + v60) = v56;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v73);

  v61 = v73[0];
  if (v73[0])
  {
    FIUIWorkoutActivityType.protobuf.getter(v59);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v62 = *(a1 + v22);
    }

    else
    {
      type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      swift_allocObject();

      v62 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v63);

      *(a1 + v22) = v62;
    }

    v64 = v72;
    outlined init with take of Apple_Workout_Core_Activity(v59, v72);
    (*(v70 + 56))(v64, 0, 1, v71);
    v65 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v64, v62 + v65);
    swift_endAccess();
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  return result;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v75 = &v68 - v9;
  v10 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v78 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v71 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v69 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v70 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v73 = &v68 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v68 = &v68 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v68 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v68 - v35;
  v37 = *(v2 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  swift_beginAccess();
  if (*(v37 + 24))
  {
    v38 = 1;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    v38 = 0;
  }

  v76 = v4;
  v39 = *(v4 + 56);
  v77 = v3;
  v39(v36, v38, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_10(v36, v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_15(v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v40 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_10(v37 + v40, v28, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v41 = *(v78 + 6);
  v42 = v41(v28, 1, v10);
  _s10Foundation4DateVSgWOhTm_15(v28, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v78 = v41;
  v72 = v10;
  if (v42 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v86 = 0;

    static Published.subscript.setter();
    v43 = v77;
  }

  else
  {
    v44 = v68;
    _s10Foundation4DateVSgWOcTm_10(v37 + v40, v68, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    if (v41(v44, 1, v10) == 1)
    {
      v45 = v69;
      *(v69 + 8) = 0;
      *v45 = 0;
      v45[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      UnknownStorage.init()();
      v46 = v41(v44, 1, v10);
      v43 = v77;
      if (v46 != 1)
      {
        _s10Foundation4DateVSgWOhTm_15(v44, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      }
    }

    else
    {
      v45 = v69;
      outlined init with take of Apple_Workout_Core_Activity(v44, v69);
      v43 = v77;
    }

    v47 = Apple_Workout_Core_Activity.decoded.getter();
    outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v45, type metadata accessor for Apple_Workout_Core_Activity);
    swift_getKeyPath();
    swift_getKeyPath();
    v86 = v47;

    static Published.subscript.setter();
  }

  v48 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  v49 = *(v37 + v48);
  swift_getKeyPath();
  swift_getKeyPath();
  v85 = v49;

  static Published.subscript.setter();
  v50 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  v51 = *(v37 + v50);
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v51;

  static Published.subscript.setter();
  v52 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  v53 = *(v37 + v52);
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v53;

  static Published.subscript.setter();
  v54 = v37 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  v55 = *(v54 + 8);
  v81[3] = *v54;
  v82 = v55;
  Apple_Workout_Core_MultisportTransitionState.decoded.getter(v81);
  v56 = v81[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v56;

  static Published.subscript.setter();
  v57 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  v58 = *(v37 + v57);
  swift_getKeyPath();
  swift_getKeyPath();
  v81[0] = v58;

  static Published.subscript.setter();
  swift_beginAccess();
  v59 = v75;
  Date.init(timeIntervalSinceReferenceDate:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v76;
  (*(v76 + 16))(v74, v59, v43);

  static Published.subscript.setter();
  (*(v60 + 8))(v59, v43);
  v61 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  v62 = v73;
  _s10Foundation4DateVSgWOcTm_10(v37 + v61, v73, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v63 = v72;
  v64 = v78;
  LODWORD(v60) = v78(v62, 1, v72);
  _s10Foundation4DateVSgWOhTm_15(v62, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if (v60 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v79 = 0;
  }

  else
  {
    v65 = v70;
    _s10Foundation4DateVSgWOcTm_10(v37 + v61, v70, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    if (v64(v65, 1, v63) == 1)
    {
      v66 = v71;
      *(v71 + 8) = 0;
      *v66 = 0;
      v66[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      UnknownStorage.init()();
      if (v64(v65, 1, v63) != 1)
      {
        _s10Foundation4DateVSgWOhTm_15(v65, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      }
    }

    else
    {
      v66 = v71;
      outlined init with take of Apple_Workout_Core_Activity(v65, v71);
    }

    v67 = Apple_Workout_Core_Activity.decoded.getter();
    outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v66, type metadata accessor for Apple_Workout_Core_Activity);
    swift_getKeyPath();
    swift_getKeyPath();
    v79 = v67;
  }

  static Published.subscript.setter();
}

uint64_t MultisportMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static MultisportMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance MultisportMetricsPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MultisportMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance MultisportMetricsPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static MultisportMetricsPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance MultisportMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static MultisportMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static MultisportMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultisportMetricsPublisher(0);
  v11 = swift_allocObject();
  MultisportMetricsPublisher.init()();
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_MultiSportMetricsPublisher.decodeInto(publisher:)(v11);
    outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v10, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  return v11;
}

uint64_t type metadata accessor for MultisportMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for MultisportMetricsPublisher;
  if (!type metadata singleton initialization cache for MultisportMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MultisportMetricsPublisher(uint64_t a1)
{
  _s7Combine9PublishedVy10Foundation4DateVSgGMaTm_0(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v1 <= 0x3F)
  {
    _s7Combine9PublishedVy10Foundation4DateVSgGMaTm_0(319, &lazy cache variable for type metadata for Published<FIUIWorkoutActivityType?>, &_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
    if (v2 <= 0x3F)
    {
      _s7Combine9PublishedVySdGMaTm_0(319, &lazy cache variable for type metadata for Published<Double>, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        _s7Combine9PublishedVySdGMaTm_0(319, &lazy cache variable for type metadata for Published<MultisportTransitionState>, &type metadata for MultisportTransitionState);
        if (v4 <= 0x3F)
        {
          _s7Combine9PublishedVySdGMaTm_0(319, &lazy cache variable for type metadata for Published<Int>, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<Date>(319);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void _s7Combine9PublishedVy10Foundation4DateVSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

void _s7Combine9PublishedVySdGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t _s10Foundation4DateVSgWOcTm_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_15(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = dispatch thunk of Collection.count.getter();
  if (!v22)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v44 = v22;
  v48 = ContiguousArray.init()();
  v35 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v44);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = dispatch thunk of Collection.subscript.read();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t WeakCollection.init()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for WeakCollection.WeakObject(0, a1, a3, a4);
  result = Array.init()();
  *a2 = result;
  return result;
}

uint64_t WeakCollection.WeakObject.description.getter()
{
  v7 = 0x203A646C65483CLL;
  v8 = 0xE700000000000000;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0 = type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  v2 = specialized String.init<A>(describing:)(&Strong, v0, WitnessTable);
  v4 = v3;
  swift_unknownObjectRelease();
  MEMORY[0x20F2E6D80](v2, v4);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return v7;
}

uint64_t WeakCollection.WeakObject.__deallocating_deinit()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t WeakCollection.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakCollection.WeakObject(255, *(a1 + 16), a3, a4);
  type metadata accessor for Array();

  swift_getWitnessTable();
  v4 = Sequence.compactMap<A>(_:)();

  return v4;
}

void key path setter for WeakCollection.wrappedValue : <A>WeakCollection<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WeakCollection(0, *(a3 + a4 - 8), a3, a4);

  WeakCollection.wrappedValue.setter(v5, v4);
}

void WeakCollection.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13 = a1;
  v12 = *(a2 + 16);
  v4 = type metadata accessor for Array();
  v7 = type metadata accessor for WeakCollection.WeakObject(0, v12, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in WeakCollection.wrappedValue.setter, &v11, v4, v7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  *v3 = v10;
}

uint64_t partial apply for closure #1 in WeakCollection.wrappedValue.getter@<X0>(uint64_t *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in WeakCollection.wrappedValue.setter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *a1;
  type metadata accessor for WeakCollection.WeakObject(0, v6, a2, a3);
  result = specialized WeakCollection.WeakObject.__allocating_init(_:)(v7);
  *a4 = result;
  return result;
}

void (*WeakCollection.wrappedValue.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v4;
  *a1 = WeakCollection.wrappedValue.getter(a2, a2, a3, a4);
  return WeakCollection.wrappedValue.modify;
}

void WeakCollection.wrappedValue.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    WeakCollection.wrappedValue.setter(v3, v2);
  }

  else
  {
    WeakCollection.wrappedValue.setter(*a1, v2);
  }
}

uint64_t type metadata instantiation function for WeakCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for WeakCollection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WeakCollection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized WeakCollection.WeakObject.__allocating_init(_:)(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v1;
}

Swift::Int RaceError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for RaceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RaceError(uint64_t result, unsigned int a2, unsigned int a3)
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

double closure #2 in closure #1 in MultiModalityWidgetDataProvider.saveModalities(modalities:)(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_savedModalities) = a2;

  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();

  return result;
}

id MultiModalityWidgetDataProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MultiModalityWidgetDataProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ActivityPickerListStoreError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ActivityPickerListStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ActivityPickerListStoreError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for ActivityPickerListStoreError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id LocationRequestManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double LocationRequestManager.requestLocationAuthorization(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR___NLLocationRequestManager_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = partial apply for closure #1 in LocationRequestManager.requestLocationAuthorization(completion:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_9;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);

  return result;
}

void closure #1 in LocationRequestManager.requestLocationAuthorization(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR___NLLocationRequestManager_locationManager);
  if (v16)
  {
    v41 = v16;
    v17 = [v41 _authorizationStatus];
    if (v17)
    {
      v18 = v17;
      v39 = v12;
      if (one-time initialization token for location != -1)
      {
        swift_once();
      }

      v40 = v7;
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static WOLog.location);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = v18;
        _os_log_impl(&dword_20AEA4000, v20, v21, "[LocationRequestManager] Known authorization status %d, not requesting authorization", v22, 8u);
        MEMORY[0x20F2E9420](v22, -1, -1);
      }

      type metadata accessor for OS_dispatch_queue();
      v23 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      *(v24 + 32) = v18;
      aBlock[4] = partial apply for closure #1 in closure #1 in LocationRequestManager.requestLocationAuthorization(completion:);
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_29_1;
      v25 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v15, v10, v25);

      _Block_release(v25);
      (*(v40 + 8))(v10, v6);
      (*(v39 + 8))(v15, v11);
    }

    else
    {
      if (one-time initialization token for location != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static WOLog.location);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_20AEA4000, v27, v28, "[LocationRequestManager] Requesting location authorization", v29, 2u);
        MEMORY[0x20F2E9420](v29, -1, -1);
      }

      v30 = swift_allocObject();
      *(v30 + 16) = a2;
      *(v30 + 24) = a3;
      v31 = OBJC_IVAR___NLLocationRequestManager_authorizationCompletionBlocks;
      swift_beginAccess();
      v32 = *(a1 + v31);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + v31) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
        *(a1 + v31) = v32;
      }

      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
      }

      v32[2] = v35 + 1;
      v36 = &v32[2 * v35];
      v36[4] = partial apply for thunk for @escaping @callee_guaranteed (@unowned CLAuthorizationStatus) -> ();
      v36[5] = v30;
      *(a1 + v31) = v32;
      swift_endAccess();
      v37 = v41;
      [v41 requestWhenInUseAuthorization];
    }
  }
}

void closure #1 in LocationRequestManager.locationManagerDidChangeAuthorization(_:)(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = a2;

      v5(&v6);

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

id LocationRequestManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationRequestManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Zone.init(displaySpan:configuration:)(uint64_t result, uint64_t a2, double a3, double a4)
{
  v5 = floor(a3);
  v6 = floor(a4);
  if (v5 > v6)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = v6;
    *(v4 + 32) = result;
    *(v4 + 40) = a2;
    return v4;
  }

  return result;
}

void Zone.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore4ZoneC10CodingKeys33_C328D858C6B7F9502CA3C3B0A832B375LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore4ZoneC10CodingKeys33_C328D858C6B7F9502CA3C3B0A832B375LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for Zone();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  LOBYTE(v15) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  LOBYTE(v15) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  if (v10 <= v11)
  {
    *(v1 + 16) = v10;
    *(v1 + 24) = v11;
    LOBYTE(v15) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v15) = 2;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 32) = v12;
    *(v1 + 40) = v13;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm_22(a1);
    return;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys;
  if (!lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys;
  if (!lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys;
  if (!lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys;
  if (!lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys);
  }

  return result;
}

uint64_t Zone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore4ZoneC10CodingKeys33_C328D858C6B7F9502CA3C3B0A832B375LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore4ZoneC10CodingKeys33_C328D858C6B7F9502CA3C3B0A832B375LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v3 + 24);
  v13 = *(v3 + 16);
  v14 = v10;
  v12[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdGMd, &_sSnySdGMR);
  _sSnySdGSnyxGSesSeRzrlWlTm_0(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x277D83A08], MEMORY[0x277D83D08]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _sSnySdGSnyxGSesSeRzrlWlTm_0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySdGMd, &_sSnySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void Zone.logicalSpan.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *(v0 + 40);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v1 == v5)
  {
    v6 = INFINITY;
  }

  else
  {
    v6 = *(v0 + 24);
  }

  if (v2 > v6)
  {
    goto LABEL_11;
  }
}

uint64_t Zone.displayLowerBound.getter()
{
  if (*(v0 + 32))
  {
    return floor(*(v0 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t Zone.displayUpperBound.getter()
{
  v1 = *(v0 + 32);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else if (v3 == *(v0 + 40))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = floor(*(v0 + 24)) + -1.0;
  }

  return result;
}

double Zone.displayMiddle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) - v1;
  v3 = v2 * 0.5;
  v4 = v2 <= 0.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = v3;
  }

  return v1 + v5;
}

uint64_t Zone.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v6);
  type metadata accessor for Zone();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v1 + 16) == *(v5 + 16) && *(v1 + 24) == *(v5 + 24) && *(v1 + 32) == *(v5 + 32))
    {
      v3 = *(v1 + 40);
      v4 = *(v5 + 40);

      return v3 == v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t ZoneViewType.description.getter()
{
  if (*v0)
  {
    return 0x6E6F5A7265776F70;
  }

  else
  {
    return 0x7461527472616568;
  }
}

WorkoutCore::ZoneViewType_optional __swiftcall ZoneViewType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ZoneViewType.init(rawValue:), v3);

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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ZoneViewType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F5A7265776F70;
  }

  else
  {
    v3 = 0x7461527472616568;
  }

  if (v2)
  {
    v4 = 0xED0000656E6F5A65;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x6E6F5A7265776F70;
  }

  else
  {
    v5 = 0x7461527472616568;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xED0000656E6F5A65;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ZoneViewType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance ZoneViewType(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ZoneViewType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance ZoneViewType(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ZoneViewType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ZoneViewType(uint64_t *a1@<X8>)
{
  v2 = 0x7461527472616568;
  if (*v1)
  {
    v2 = 0x6E6F5A7265776F70;
  }

  v3 = 0xED0000656E6F5A65;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ZoneViewType()
{
  if (*v0)
  {
    return 0x6E6F5A7265776F70;
  }

  else
  {
    return 0x7461527472616568;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Zone.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance Zone.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Zone.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Zone.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Zone.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Zone.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6170;
  v4 = 0x5379616C70736964;
  v5 = 0x800000020B455020;
  v6 = 0x800000020B455040;
  if (v2 != 3)
  {
    v6 = 0x800000020B455060;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000020B455000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Zone.CodingKeys()
{
  v1 = 0x5379616C70736964;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Zone.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Zone.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Zone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Zone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Zone.__allocating_init(displaySpan:configuration:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = swift_allocObject();
  v9 = floor(a3);
  v10 = floor(a4);
  if (v9 > v10)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v9;
    *(result + 24) = v10;
    *(result + 32) = a1;
    *(result + 40) = a2;
  }

  return result;
}

uint64_t Zone.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Zone.init(from:)(a1);
  return v2;
}

uint64_t protocol witness for ZoneProtocol.displayLowerBound.getter in conformance Zone()
{
  if (*(*v0 + 32))
  {
    return floor(*(*v0 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for ZoneProtocol.displayUpperBound.getter in conformance Zone()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else if (v4 == *(v1 + 40))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = floor(*(v1 + 24)) + -1.0;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Zone@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t Zone.hash(into:)()
{
  specialized Range<>.hash(into:)(*(v0 + 16), *(v0 + 24));
  MEMORY[0x20F2E7FF0](*(v0 + 32));
  return MEMORY[0x20F2E7FF0](*(v0 + 40));
}

uint64_t static Zone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6[3] = type metadata accessor for Zone();
  v6[0] = a2;
  v4 = *(*a1 + 152);

  LOBYTE(a2) = v4(v6);
  __swift_destroy_boxed_opaque_existential_1Tm_22(v6);
  return a2 & 1;
}

Swift::Int Zone.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized Range<>.hash(into:)(*(v0 + 16), *(v0 + 24));
  MEMORY[0x20F2E7FF0](*(v0 + 32));
  MEMORY[0x20F2E7FF0](*(v0 + 40));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Zone(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v6[3] = type metadata accessor for Zone();
  v6[0] = v3;
  v4 = *(*v2 + 152);

  LOBYTE(v3) = v4(v6);
  __swift_destroy_boxed_opaque_existential_1Tm_22(v6);
  return v3 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Zone()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Range<>.hash(into:)(*(v1 + 16), *(v1 + 24));
  MEMORY[0x20F2E7FF0](*(v1 + 32));
  MEMORY[0x20F2E7FF0](*(v1 + 40));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Zone()
{
  v1 = *v0;
  specialized Range<>.hash(into:)(*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x20F2E7FF0](*(v1 + 32));
  return MEMORY[0x20F2E7FF0](*(v1 + 40));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Zone(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  specialized Range<>.hash(into:)(*(*v1 + 16), *(*v1 + 24));
  MEMORY[0x20F2E7FF0](*(v2 + 32));
  MEMORY[0x20F2E7FF0](*(v2 + 40));
  return Hasher._finalize()();
}

uint64_t Zone.description.getter()
{
  _StringGuts.grow(_:)(27);
  v0 = _typeName(_:qualified:)();

  MEMORY[0x20F2E6D80](0x79616C7073696420, 0xEE00203A6E617053);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0, 0xE000000000000000);

  MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return v0;
}

unint64_t lazy protocol witness table accessor for type ZoneViewType and conformance ZoneViewType()
{
  result = lazy protocol witness table cache variable for type ZoneViewType and conformance ZoneViewType;
  if (!lazy protocol witness table cache variable for type ZoneViewType and conformance ZoneViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZoneViewType and conformance ZoneViewType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Zone and conformance Zone()
{
  result = lazy protocol witness table cache variable for type Zone and conformance Zone;
  if (!lazy protocol witness table cache variable for type Zone and conformance Zone)
  {
    type metadata accessor for Zone();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone and conformance Zone);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZoneViewType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ZoneViewType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Zone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Zone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized Zone.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Zone.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t WOTargetZoneType.init(zoneTypeString:)(uint64_t a1, uint64_t a2)
{
  TargetZone.ZoneType.init(rawValue:)(*&a1);
  if (v3 == 8)
  {
    return 0;
  }

  else
  {
    return qword_20B44E5C8[v3];
  }
}

unint64_t WOTargetZoneType.zoneType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000032, 0x800000020B46D9D0, "WorkoutCore/TargetZoneBridge.swift", 34, 2, 100, 0);
    __break(1u);
  }

  else
  {
    *a2 = 0x605040302010007uLL >> (8 * result);
  }

  return result;
}

double ActivitySummaryMetricsPublisher.activitySummary.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double ActivitySummaryMetricsPublisher.isWheelchairUser.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t ActivitySummaryMetricsPublisher.activitySummary.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t ActivitySummaryMetricsPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary();
  type metadata accessor for HKActivitySummary();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v0;
}

uint64_t ActivitySummaryMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14[-v9];
  v11 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v15 = closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary();
  type metadata accessor for HKActivitySummary();
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  v14[7] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t (*ActivitySummaryMetricsPublisher.activitySummary.modify(uint64_t *a1))()
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
  return ActivitySummaryMetricsPublisher.activitySummary.modify;
}

id closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
  v1 = objc_opt_self();
  v2 = [v1 minuteUnit];
  v3 = objc_opt_self();
  v4 = [v3 quantityWithUnit:v2 doubleValue:2.22044605e-16];

  [v0 setExerciseTimeGoal_];
  v5 = [v1 countUnit];
  v6 = [v3 quantityWithUnit:v5 doubleValue:2.22044605e-16];

  [v0 setStandHoursGoal_];
  return v0;
}

uint64_t key path setter for ActivitySummaryMetricsPublisher.$activitySummary : ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMd, &_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t ActivitySummaryMetricsPublisher.$activitySummary.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMd, &_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivitySummaryMetricsPublisher.$activitySummary.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMd, &_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySummaryMetricsPublisher.$activitySummary.modify;
}

uint64_t ActivitySummaryMetricsPublisher.isWheelchairUser.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

unint64_t type metadata accessor for HKActivitySummary()
{
  result = lazy cache variable for type metadata for HKActivitySummary;
  if (!lazy cache variable for type metadata for HKActivitySummary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKActivitySummary);
  }

  return result;
}

uint64_t (*ActivitySummaryMetricsPublisher.isWheelchairUser.modify(uint64_t *a1))()
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
  return ActivitySummaryMetricsPublisher.isWheelchairUser.modify;
}

void ActivitySummaryMetricsPublisher.activitySummary.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t ActivitySummaryMetricsPublisher.$activitySummary.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for ActivitySummaryMetricsPublisher.$activitySummary : ActivitySummaryMetricsPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ActivitySummaryMetricsPublisher.$isWheelchairUser : ActivitySummaryMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t ActivitySummaryMetricsPublisher.$isWheelchairUser.setter(uint64_t a1)
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

uint64_t (*ActivitySummaryMetricsPublisher.$isWheelchairUser.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySummaryMetricsPublisher.$isWheelchairUser.modify;
}

void ActivitySummaryMetricsPublisher.$activitySummary.modify(uint64_t a1, char a2)
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

uint64_t ActivitySummaryMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ActivitySummaryMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ActivitySummaryMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void ActivitySummaryMetricsPublisher.protobuf.getter(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  v7 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  UnknownStorage.init()();
  v8 = *(v7 + 24);
  v9 = *(v3 + 56);
  v9(&a1[v8], 1, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v10 = v12;
  HKActivitySummary.protobuf.getter(v6);

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(&a1[v8], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v6, &a1[v8], type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  v9(&a1[v8], 0, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((&v11 + 7));

  *a1 = HIBYTE(v11);
}

id HKActivitySummary.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v146 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v154 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v149 = (&v146 - v14);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v151 = (&v146 - v17);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v147 = &v146 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v150 = (&v146 - v23);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = (&v146 - v26);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = (&v146 - v30);
  MEMORY[0x28223BE20](v29, v32);
  v34 = (&v146 - v33);
  UnknownStorage.init()();
  v35 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v35) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;

  v155 = v1;
  v36 = [v1 activityMoveMode] == 2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + v35);
  v152 = v7;
  v148 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v38 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v38);
    *(a1 + v35) = v38;
  }

  swift_beginAccess();
  *(v38 + 16) = v36;
  *(v38 + 24) = 1;
  v39 = [v155 activeEnergyBurned];
  UnknownStorage.init()();
  v40 = [v39 _unit];
  [v39 doubleValueForUnit_];
  v42 = v41;

  *v34 = v42;
  v43 = [v39 _unit];
  v44 = [v43 unitString];

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v34[1] = v45;
  v34[2] = v47;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(a1 + v35);
  if ((v48 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v49 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v49);
    *(a1 + v35) = v49;
  }

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v34, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v50 = v154 + 56;
  v153 = *(v154 + 56);
  v153(v6, 0, 1, v152);
  v51 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v49 + v51);
  swift_endAccess();
  v52 = [v155 appleMoveTime];
  UnknownStorage.init()();
  v53 = [v52 _unit];
  [v52 doubleValueForUnit_];
  v55 = v54;

  *v31 = v55;
  v56 = [v52 _unit];
  v57 = [v56 unitString];

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v31[1] = v58;
  v31[2] = v60;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(a1 + v35);
  if ((v61 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v62 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v62);
    *(a1 + v35) = v62;
  }

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v31, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v63 = v152;
  v153(v6, 0, 1, v152);
  v64 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v62 + v64);
  swift_endAccess();
  v65 = [v155 appleExerciseTime];
  UnknownStorage.init()();
  v66 = [v65 _unit];
  [v65 doubleValueForUnit_];
  v68 = v67;

  *v27 = v68;
  v69 = [v65 _unit];
  v70 = [v69 unitString];

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v27[1] = v71;
  v27[2] = v73;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *(a1 + v35);
  if ((v74 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v75 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v75);
    *(a1 + v35) = v75;
  }

  v76 = v147;
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v27, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v154 = v50;
  v153(v6, 0, 1, v63);
  v77 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v75 + v77);
  swift_endAccess();
  v78 = [v155 appleStandHours];
  v79 = v150;
  UnknownStorage.init()();
  v80 = [v78 _unit];
  [v78 doubleValueForUnit_];
  v82 = v81;

  *v79 = v82;
  v83 = [v78 _unit];
  v84 = [v83 unitString];

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;

  v79[1] = v85;
  v79[2] = v87;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *(a1 + v35);
  if ((v88 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v89 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v89);
    *(a1 + v35) = v89;
  }

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v150, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v90 = v153;
  v153(v6, 0, 1, v63);
  v91 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v89 + v91);
  swift_endAccess();
  v92 = [v155 activeEnergyBurnedGoal];
  UnknownStorage.init()();
  v93 = [v92 _unit];
  [v92 doubleValueForUnit_];
  v95 = v94;

  *v76 = v95;
  v96 = [v92 _unit];
  v97 = [v96 unitString];

  v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v99;

  v76[1] = v98;
  v76[2] = v100;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *(a1 + v35);
  if ((v101 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v102 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v102);
    *(a1 + v35) = v102;
  }

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v76, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v90(v6, 0, 1, v63);
  v103 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v102 + v103);
  swift_endAccess();
  v104 = [v155 appleMoveTimeGoal];
  v105 = v151;
  UnknownStorage.init()();
  v106 = [v104 _unit];
  [v104 doubleValueForUnit_];
  v108 = v107;

  *v105 = v108;
  v109 = [v104 _unit];
  v110 = [v109 unitString];

  v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v113 = v112;

  v105[1] = v111;
  v105[2] = v113;
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *(a1 + v35);
  if ((v114 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v115 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v115);
    *(a1 + v35) = v115;
  }

  v116 = v148;
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v151, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v90(v6, 0, 1, v63);
  v117 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v115 + v117);
  swift_endAccess();
  v118 = v155;
  v119 = [v155 exerciseTimeGoal];
  if (v119)
  {
    v120 = v119;
    v121 = v149;
    UnknownStorage.init()();
    v122 = [v120 _unit];
    [v120 doubleValueForUnit_];
    v124 = v123;

    *v121 = v124;
    v125 = [v120 _unit];
    v126 = [v125 unitString];

    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;

    v121[1] = v127;
    v121[2] = v129;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v130 = *(a1 + v35);
    }

    else
    {
      type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
      swift_allocObject();

      v130 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v131);

      *(a1 + v35) = v130;
    }

    v90 = v153;
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v149, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
    v90(v6, 0, 1, v63);
    v132 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v130 + v132);
    swift_endAccess();
    v118 = v155;
  }

  result = [v118 standHoursGoal];
  if (result)
  {
    v134 = result;
    UnknownStorage.init()();
    v135 = [v134 _unit];
    [v134 doubleValueForUnit_];
    v137 = v136;

    *v116 = v137;
    v138 = [v134 _unit];
    v139 = [v138 unitString];

    v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v142 = v141;

    v116[1] = v140;
    v116[2] = v142;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v143 = *(a1 + v35);
    }

    else
    {
      type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
      swift_allocObject();

      v143 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v144);

      *(a1 + v35) = v143;
    }

    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v116, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
    v90(v6, 0, 1, v63);
    v145 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v143 + v145);
    return swift_endAccess();
  }

  return result;
}

uint64_t ActivitySummaryMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v14 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 0;
  UnknownStorage.init()();
  v9 = *(v5 + 24);
  v10 = *(v1 + 56);
  v10(&v8[v9], 1, 1, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v16);

  v11 = v16;
  HKActivitySummary.protobuf.getter(v4);

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(&v8[v9], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v4, &v8[v9], type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  v10(&v8[v9], 0, 1, v14);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15);

  *v8 = v15;
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher();
  v12 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v8, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  return v12;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  return result;
}

double Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19[-v5];
  v7 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(&v2[*(v12 + 24)], v6, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    UnknownStorage.init()();
    v14 = *(v7 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *&v11[v14] = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
    v15 = v13(v6, 1, v7);

    if (v15 != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v6, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v6, v11, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  v16 = Apple_Workout_Core_HKActivitySummary.decoded.getter();
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v11, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v16;

  static Published.subscript.setter();
  v17 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  v19[7] = v17;

  static Published.subscript.setter();
  return result;
}

uint64_t ActivitySummaryMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static ActivitySummaryMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance ActivitySummaryMetricsPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static ActivitySummaryMetricsPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance ActivitySummaryMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static ActivitySummaryMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

id Apple_Workout_Core_HKActivitySummary.decoded.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v131 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v140 = &v127 - v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v129 = &v127 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v139 = &v127 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v138 = &v127 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v136 = &v127 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v134 = &v127 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v132 = &v127 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v127 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v127 - v31;
  v33 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v34 = *(v33 - 8);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v130 = (&v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x28223BE20](v36, v38);
  v128 = (&v127 - v40);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v137 = &v127 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v135 = (&v127 - v46);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v133 = (&v127 - v49);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v53 = &v127 - v52;
  v55 = MEMORY[0x28223BE20](v51, v54);
  v57 = &v127 - v56;
  MEMORY[0x28223BE20](v55, v58);
  v60 = (&v127 - v59);
  v61 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
  v62 = *(v0 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  swift_beginAccess();
  v63 = *(v62 + 24);
  v145 = *(v62 + 16);
  v146 = v63;
  v64 = Apple_Workout_Core_ActivityMoveMode.decoded.getter();
  v141 = v61;
  [v61 setActivityMoveMode_];
  v65 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v62 + v65, v32, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v66 = *(v34 + 48);
  v67 = v66(v32, 1, v33);
  v143 = v66;
  if (v67 == 1)
  {
    *v60 = 0.0;
    v60[1] = 0.0;
    v60[2] = -2.68156159e154;
    UnknownStorage.init()();
    if (v66(v32, 1, v33) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v32, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v32, v60, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v68 = MEMORY[0x20F2E6C00](*(v60 + 1), *(v60 + 2));
  v142 = objc_opt_self();
  v69 = [v142 unitFromString_];

  v70 = *v60;
  v144 = objc_opt_self();
  v71 = [v144 quantityWithUnit:v69 doubleValue:v70];

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v60, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v72 = v141;
  [v141 setActiveEnergyBurned_];

  v73 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v62 + v73, v29, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v74 = v143;
  if (v143(v29, 1, v33) == 1)
  {
    *v57 = 0;
    *(v57 + 1) = 0;
    *(v57 + 2) = 0xE000000000000000;
    UnknownStorage.init()();
    if (v74(v29, 1, v33) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v29, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v29, v57, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v75 = MEMORY[0x20F2E6C00](*(v57 + 1), *(v57 + 2));
  v76 = v142;
  v77 = [v142 unitFromString_];

  v78 = [v144 quantityWithUnit:v77 doubleValue:*v57];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v57, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v72 setAppleMoveTime_];

  v79 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
  swift_beginAccess();
  v80 = v62 + v79;
  v81 = v132;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v80, v132, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v82 = v143;
  if (v143(v81, 1, v33) == 1)
  {
    *v53 = 0;
    *(v53 + 1) = 0;
    *(v53 + 2) = 0xE000000000000000;
    UnknownStorage.init()();
    if (v82(v81, 1, v33) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v81, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v81, v53, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v83 = MEMORY[0x20F2E6C00](*(v53 + 1), *(v53 + 2));
  v84 = [v76 unitFromString_];

  v85 = [v144 quantityWithUnit:v84 doubleValue:*v53];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v53, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v72 setAppleExerciseTime_];

  v86 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
  swift_beginAccess();
  v87 = v62 + v86;
  v88 = v134;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v87, v134, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v82(v88, 1, v33) == 1)
  {
    v89 = v133;
    *v133 = 0.0;
    v89[1] = 0.0;
    v89[2] = -2.68156159e154;
    UnknownStorage.init()();
    v90 = v82(v88, 1, v33);
    v91 = v137;
    if (v90 != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v88, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    v89 = v133;
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v88, v133, type metadata accessor for Apple_Workout_Core_HKQuantity);
    v91 = v137;
  }

  v92 = MEMORY[0x20F2E6C00](*(v89 + 1), *(v89 + 2));
  v93 = [v76 unitFromString_];

  v94 = [v144 quantityWithUnit:v93 doubleValue:*v89];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v89, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v72 setAppleStandHours_];

  v95 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
  swift_beginAccess();
  v96 = v62 + v95;
  v97 = v136;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v96, v136, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v82(v97, 1, v33) == 1)
  {
    v98 = v135;
    *v135 = 0.0;
    v98[1] = 0.0;
    v98[2] = -2.68156159e154;
    UnknownStorage.init()();
    if (v82(v97, 1, v33) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v97, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    v98 = v135;
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v97, v135, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v99 = MEMORY[0x20F2E6C00](*(v98 + 1), *(v98 + 2));
  v100 = [v76 unitFromString_];

  v101 = [v144 quantityWithUnit:v100 doubleValue:*v98];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v98, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v72 setActiveEnergyBurnedGoal_];

  v102 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
  swift_beginAccess();
  v103 = v62 + v102;
  v104 = v138;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v103, v138, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v82(v104, 1, v33) == 1)
  {
    *v91 = 0;
    *(v91 + 8) = 0;
    *(v91 + 16) = 0xE000000000000000;
    UnknownStorage.init()();
    if (v82(v104, 1, v33) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v104, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v104, v91, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v105 = MEMORY[0x20F2E6C00](*(v91 + 8), *(v91 + 16));
  v106 = [v76 unitFromString_];

  v107 = [v144 quantityWithUnit:v106 doubleValue:*v91];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v91, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v72 setAppleMoveTimeGoal_];

  v108 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
  swift_beginAccess();
  v109 = v139;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v62 + v108, v139, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v110 = v82(v109, 1, v33);
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v109, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v110 == 1)
  {
    [v72 setExerciseTimeGoal_];
  }

  else
  {
    v111 = v129;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v62 + v108, v129, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    if (v82(v111, 1, v33) == 1)
    {
      v112 = v128;
      *v128 = 0.0;
      v112[1] = 0.0;
      v112[2] = -2.68156159e154;
      UnknownStorage.init()();
      v113 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
      if (v82(v111, 1, v33) != 1)
      {
        _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v111, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      }
    }

    else
    {
      v112 = v128;
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v111, v128, type metadata accessor for Apple_Workout_Core_HKQuantity);
      v113 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
    }

    v114 = MEMORY[0x20F2E6C00](*(v112 + 1), *(v112 + 2));
    v115 = [v142 v113[480]];

    v116 = [v144 quantityWithUnit:v115 doubleValue:*v112];
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v112, type metadata accessor for Apple_Workout_Core_HKQuantity);
    [v72 setExerciseTimeGoal_];
  }

  v117 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
  swift_beginAccess();
  v118 = v140;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v62 + v117, v140, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v119 = v82(v118, 1, v33);
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v118, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v119 == 1)
  {
    [v72 setStandHoursGoal_];
  }

  else
  {
    v120 = v131;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v62 + v117, v131, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    if (v82(v120, 1, v33) == 1)
    {
      v121 = v130;
      *v130 = 0.0;
      v121[1] = 0.0;
      v121[2] = -2.68156159e154;
      UnknownStorage.init()();
      v122 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
      if (v82(v120, 1, v33) != 1)
      {
        _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v120, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      }
    }

    else
    {
      v121 = v130;
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v120, v130, type metadata accessor for Apple_Workout_Core_HKQuantity);
      v122 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
    }

    v123 = MEMORY[0x20F2E6C00](*(v121 + 1), *(v121 + 2));
    v124 = [v142 v122[480]];

    v125 = [v144 quantityWithUnit:v124 doubleValue:*v121];
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v121, type metadata accessor for Apple_Workout_Core_HKQuantity);
    [v72 setStandHoursGoal_];
  }

  return v72;
}

uint64_t Apple_Workout_Core_ActivityMoveMode.decoded.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
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
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1;
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    return 1;
  }
}

uint64_t specialized static ActivitySummaryMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  MEMORY[0x28223BE20](v26, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v23 - v16;
  type metadata accessor for ActivitySummaryMetricsPublisher(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  *&v27 = closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary();
  type metadata accessor for HKActivitySummary();
  Published.init(initialValue:)();
  (*(v14 + 32))(v18 + v19, v17, v13);
  v20 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  LOBYTE(v27) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v18 + v20, v12, v8);
  v30 = v24;
  v31 = v25;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  outlined copy of Data._Representation(v24, v25);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher();
  v21 = v32;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v21)
  {
  }

  else
  {
    Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeInto(publisher:)(v18);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v7, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  return v18;
}

uint64_t type metadata accessor for ActivitySummaryMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivitySummaryMetricsPublisher;
  if (!type metadata singleton initialization cache for ActivitySummaryMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ActivitySummaryMetricsPublisher(uint64_t a1)
{
  type metadata accessor for Published<HKActivitySummary>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Bool>();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<HKActivitySummary>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<HKActivitySummary>)
  {
    type metadata accessor for HKActivitySummary();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<HKActivitySummary>);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKQuantity?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void LiveWorkoutConfiguration.saveWorkoutConfigurationMetadata(to:)(void *a1)
{
  if (WorkoutConfiguration.metadata()())
  {
    oslog = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 insertOrUpdateMetadata:oslog forceTopLevel:1];
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.app);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000020B46DAB0, &v7);
      _os_log_impl(&dword_20AEA4000, oslog, v3, "WorkoutConfiguration has no metadata to save during %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x20F2E9420](v5, -1, -1);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }
  }
}

WorkoutCore::HeartRateCurrentValueType_optional __swiftcall HeartRateCurrentValueType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType()
{
  result = lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateCurrentValueType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateCurrentValueType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance HeartRateCurrentValueType@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateCurrentValueType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateCurrentValueType(uint64_t result, unsigned int a2, unsigned int a3)
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

void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  v18 = v1;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      outlined consume of Set<NSNumber>.Iterator._Variant(v18);
      return;
    }

    while (1)
    {
      v15 = [v14 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      v1 = v18;
      if (v17 >= v16 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v17 + 1;
      *&v9[8 * v17 + 32] = v15;
      v4 = v12;
      v5 = v13;
      if ((v18 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSNumber();
        swift_dynamicCast();
        v14 = v24;
        v12 = v4;
        v13 = v5;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t static SplitMetricsPlatter.metrics(workoutSettingsManager:)(void *a1)
{
  v1 = [a1 supportedMetrics];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Sequence.compactMap<A>(_:)(v3);
    v5 = v4;

    v6 = *(v5 + 16);
    v7 = 32;
    while (v6)
    {
      v8 = *(v5 + v7);
      v7 += 8;
      --v6;
      if (v8 == 1)
      {
        v9 = 0;
        v10 = MEMORY[0x277D84F90];
        do
        {
          v13 = outlined read-only object #0 of one-time initialization function for metricsWithDistance[v9 + 4];
          v14 = *(v5 + 16);
          v15 = 32;
          while (v14)
          {
            v16 = *(v5 + v15);
            v15 += 8;
            --v14;
            if (v16 == v13)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
              }

              v12 = *(v10 + 16);
              v11 = *(v10 + 24);
              if (v12 >= v11 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
              }

              *(v10 + 16) = v12 + 1;
              *(v10 + 8 * v12 + 32) = v13;
              break;
            }
          }

          ++v9;
        }

        while (v9 != 4);

        return v10;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000004BLL, 0x800000020B45CF60, "WorkoutCore/SplitMetricsPlatter.swift", 37, 2, 19, 0);
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SplitMetricsPlatter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SplitMetricsPlatter(_WORD *result, int a2, int a3)
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

id SplitsDisplayAccumulator.splitsAccumulator.getter()
{
  v1 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SplitsDisplayAccumulator.splitsAccumulator.setter(void *a1)
{
  specialized SplitsDisplayAccumulator.splitsAccumulator.setter(a1);
}

void (*SplitsDisplayAccumulator.splitsAccumulator.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return SplitsDisplayAccumulator.splitsAccumulator.modify;
}

void SplitsDisplayAccumulator.splitsAccumulator.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    specialized SplitsDisplayAccumulator.splitsAccumulator.setter(v5);

    v3 = *v4;
  }

  else
  {
    specialized SplitsDisplayAccumulator.splitsAccumulator.setter(*(*a1 + 24));
  }

  free(v2);
}

void *SplitsDisplayAccumulator.averagePowerAccumulator.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator);
  v2 = v1;
  return v1;
}

id SplitsDisplayAccumulator.__allocating_init(builder:splitsAccumulator:activityType:powerAccumulator:)(void *a1, void *a2, void *a3, id a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_builder] = a1;
  v11 = objc_allocWithZone(type metadata accessor for SegmentDistanceAccumulator());
  v12 = a1;
  v13 = [v11 init];
  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator] = v13;
  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentElapsedTimeAccumulator()) init];
  v14 = type metadata accessor for SegmentPaceAccumulator();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v16 = v12;
  v17 = a3;
  v18 = [v17 effectiveTypeIdentifier];
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v18;
  v26.receiver = v15;
  v26.super_class = v14;
  v19 = objc_msgSendSuper2(&v26, sel_initWithBuilder_, v16);

  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator] = v19;
  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator] = a2;
  if (a4)
  {
    v20 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator(0));
    v21 = a2;
    a4 = a4;
    *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator] = AveragePowerAccumulator.init(powerAccumulator:)(a4);
  }

  else
  {
    *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator] = 0;
    v22 = a2;
  }

  v25.receiver = v10;
  v25.super_class = v5;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  [a2 addSplitObserver_];

  return v23;
}

id SplitsDisplayAccumulator.init(builder:splitsAccumulator:activityType:powerAccumulator:)(void *a1, void *a2, void *a3, id a4)
{
  v5 = v4;
  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_builder] = a1;
  v10 = objc_allocWithZone(type metadata accessor for SegmentDistanceAccumulator());
  v11 = a1;
  v12 = [v10 init];
  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator] = v12;
  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentElapsedTimeAccumulator()) init];
  v13 = type metadata accessor for SegmentPaceAccumulator();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v15 = v11;
  v16 = a3;
  v17 = [v16 effectiveTypeIdentifier];
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v17;
  v25.receiver = v14;
  v25.super_class = v13;
  v18 = objc_msgSendSuper2(&v25, sel_initWithBuilder_, v15);

  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator] = v18;
  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator] = a2;
  if (a4)
  {
    v19 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator(0));
    v20 = a2;
    a4 = a4;
    *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator] = AveragePowerAccumulator.init(powerAccumulator:)(a4);
  }

  else
  {
    *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator] = 0;
    v21 = a2;
  }

  v24.receiver = v5;
  v24.super_class = type metadata accessor for SplitsDisplayAccumulator();
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [a2 addSplitObserver_];

  return v22;
}

Swift::Void __swiftcall SplitsDisplayAccumulator.assignStartValues()()
{
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v90 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v94 = (&v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15, v17);
  v97 = &v90 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v90 - v21;
  v23 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v24 = [*(&v0->isa + v23) completedSplits];
  v101 = 0;
  type metadata accessor for FIUIWorkoutSplit();
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v25 = v101;
  if (v101)
  {
    v92 = v9;
    v93 = v12;
    v95 = v101 >> 62;
    v96 = v22;
    if (v101 >> 62)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = MEMORY[0x277D84F90];
    v28 = (v26 & ~(v26 >> 63));
    if (v26)
    {
      v101 = MEMORY[0x277D84F90];
      v29 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        __break(1u);
        goto LABEL_82;
      }

      v91 = v4;
      v1 = 0;
      v30 = v101;
      v9 = &selRef_totalDiskCapacity;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x20F2E7A20](v1, v25);
        }

        else
        {
          v31 = *(v25 + 8 * v1 + 32);
        }

        v32 = v31;
        [v31 distanceInMeters];
        v34 = v33;

        v101 = v30;
        v12 = *(v30 + 16);
        v35 = *(v30 + 24);
        v36 = v12 + 1;
        if (v12 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v12 + 1, 1);
          v30 = v101;
        }

        ++v1;
        *(v30 + 16) = v36;
        *(v30 + 8 * v12 + 32) = v34;
      }

      while (v26 != v1);
      v4 = v91;
      if (v36 <= 3)
      {
LABEL_14:
        v37 = 0;
        v3 = 0.0;
        goto LABEL_20;
      }
    }

    else
    {
      v36 = *(MEMORY[0x277D84F90] + 16);
      if (!v36)
      {

        v3 = 0.0;
        goto LABEL_33;
      }

      v30 = MEMORY[0x277D84F90];
      if (v36 <= 3)
      {
        goto LABEL_14;
      }
    }

    v37 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = (v30 + 48);
    v3 = 0.0;
    v39 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v3 = v3 + *(v38 - 2) + *(v38 - 1) + *v38 + v38[1];
      v38 += 4;
      v39 -= 4;
    }

    while (v39);
    if (v36 == v37)
    {
LABEL_22:

      if (v26)
      {
        v101 = v27;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
        if (v26 < 0)
        {
          goto LABEL_86;
        }

        v43 = 0;
        v27 = v101;
        do
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x20F2E7A20](v43, v25);
          }

          else
          {
            v44 = *(v25 + 8 * v43 + 32);
          }

          v45 = v44;
          [v44 duration];
          v47 = v46;

          v101 = v27;
          v49 = v27[2];
          v48 = v27[3];
          v12 = v49 + 1;
          if (v49 >= v48 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
            v27 = v101;
          }

          ++v43;
          v27[2] = v12;
          v27[v49 + 4] = v47;
        }

        while (v26 != v43);
        v50 = v97;
        v9 = v93;
        v1 = v92;
        goto LABEL_34;
      }

LABEL_33:
      v12 = v27[2];
      v50 = v97;
      v9 = v93;
      v1 = v92;
      if (!v12)
      {
        v2 = 0.0;
        goto LABEL_43;
      }

LABEL_34:
      if (v12 > 3)
      {
        v51 = v12 & 0xFFFFFFFFFFFFFFFCLL;
        v52 = (v27 + 6);
        v2 = 0.0;
        v53 = v12 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v2 = v2 + *(v52 - 2) + *(v52 - 1) + *v52 + v52[1];
          v52 += 4;
          v53 -= 4;
        }

        while (v53);
        if (v12 == v51)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v51 = 0;
        v2 = 0.0;
      }

      v54 = v12 - v51;
      v55 = 8 * v51 + 32;
      do
      {
        v2 = v2 + *(v27 + v55);
        v55 += 8;
        --v54;
      }

      while (v54);
LABEL_43:

      v56 = *(&v4->isa + OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator);
      v57 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
      swift_beginAccess();
      *(v56 + v57) = v3;
      SegmentDistanceAccumulator._updateInternalQuantity()();
      v58 = *(&v4->isa + OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator);
      v59 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
      swift_beginAccess();
      *&v58[v59] = v2;
      if (*&v58[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - v2 > 0.0)
      {
        v60 = *&v58[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - v2;
      }

      else
      {
        v60 = 0.0;
      }

      v61 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
      swift_beginAccess();
      *&v58[v61] = v60;
      v28 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
      v62 = [v58 updateHandler];
      if (v62)
      {
        v63 = v62;
        (*(v62 + 2))();
        _Block_release(v63);
      }

      v64 = *(&v4->isa + OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator);
      *&v64[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
      *&v64[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
      *&v64[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
      v65 = [v64 updateHandler];
      v27 = v96;
      if (v65)
      {
        v66 = v65;
        (*(v65 + 2))();
        _Block_release(v66);
      }

      if (v95)
      {
        v67 = __CocoaSet.count.getter();
        if (v67)
        {
LABEL_52:
          v68 = __OFSUB__(v67, 1);
          v29 = v67 - 1;
          if (!v68)
          {
            if ((v25 & 0xC000000000000001) == 0)
            {
              if ((v29 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v29 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v69 = *(v25 + 8 * v29 + 32);
LABEL_57:
                v70 = v69;
                v71 = [v69 dateInterval];
                if (v71)
                {
                  v72 = v71;
                  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

                  v73 = 0;
                }

                else
                {
                  v73 = 1;
                }

                v75 = type metadata accessor for DateInterval();
                v76 = *(v75 - 8);
                (*(v76 + 56))(v1, v73, 1, v75);
                outlined init with take of DateInterval?(v1, v9);
                if ((*(v76 + 48))(v9, 1, v75) == 1)
                {
                  __break(1u);
                  return;
                }

                DateInterval.end.getter();
                (*(v76 + 8))(v9, v75);
                v74 = 0;
                v50 = v97;
LABEL_64:
                v9 = type metadata accessor for Date();
                v26 = *(v9 - 1);
                (*(v26 + 56))(v27, v74, 1, v9);
                if (*(&v4->isa + OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator))
                {
                  AveragePowerAccumulator.reset(with:)(v27);
                }

                if (one-time initialization token for splits != -1)
                {
                  swift_once();
                }

                v77 = type metadata accessor for Logger();
                __swift_project_value_buffer(v77, static WOLog.splits);
                outlined init with copy of Date?(v27, v50);

                v4 = Logger.logObject.getter();
                LOBYTE(v1) = static os_log_type_t.default.getter();
                if (!os_log_type_enabled(v4, v1))
                {

                  swift_bridgeObjectRelease_n();
                  outlined destroy of Date?(v50);
                  v79 = v27;
LABEL_78:
                  outlined destroy of Date?(v79);
                  return;
                }

                v12 = swift_slowAlloc();
                v27 = swift_slowAlloc();
                v100 = v27;
                *v12 = 134218754;
                if (v95)
                {
                  v78 = __CocoaSet.count.getter();
                }

                else
                {
                  v78 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v12 + 4) = v78;

                *(v12 + 12) = 2048;
                *(v12 + 14) = v3;
                *(v12 + 22) = 2048;
                *(v12 + 24) = v2;
                *(v12 + 32) = 2080;
                v28 = v94;
                outlined init with copy of Date?(v50, v94);
                if ((*(v26 + 48))(v28, 1, v9) == 1)
                {
                  outlined destroy of Date?(v28);
                  v80 = 0;
                  v81 = 0;
LABEL_77:
                  v98 = v80;
                  v99 = v81;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v86 = Optional.description.getter();
                  v88 = v87;
                  outlined destroy of Date?(v97);

                  v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v100);

                  *(v12 + 34) = v89;
                  _os_log_impl(&dword_20AEA4000, v4, v1, "SplitsDisplayAccumulator: (new split) completedSplits: %ld, distance %f, duration %f, newSplitStartDate: %s", v12, 0x2Au);
                  __swift_destroy_boxed_opaque_existential_0(v27);
                  MEMORY[0x20F2E9420](v27, -1, -1);
                  MEMORY[0x20F2E9420](v12, -1, -1);

                  v79 = v96;
                  goto LABEL_78;
                }

                if (one-time initialization token for logDateFormatter == -1)
                {
LABEL_76:
                  v82 = static WOLog.logDateFormatter;
                  isa = Date._bridgeToObjectiveC()().super.isa;
                  v84 = [v82 stringFromDate_];

                  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v81 = v85;

                  (*(v26 + 8))(v28, v9);
                  goto LABEL_77;
                }

LABEL_87:
                swift_once();
                goto LABEL_76;
              }

              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

LABEL_83:
            v69 = MEMORY[0x20F2E7A20](v29, v25);
            goto LABEL_57;
          }

LABEL_82:
          __break(1u);
          goto LABEL_83;
        }
      }

      else
      {
        v67 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
          goto LABEL_52;
        }
      }

      v74 = 1;
      goto LABEL_64;
    }

LABEL_20:
    v40 = v36 - v37;
    v41 = (v30 + 8 * v37 + 32);
    do
    {
      v42 = *v41++;
      v3 = v3 + v42;
      --v40;
    }

    while (v40);
    goto LABEL_22;
  }
}

id SplitsDisplayAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SplitsDisplayAccumulator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SplitsDisplayAccumulator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id SplitsDisplayAccumulator.definedSplitDistance.getter()
{
  v1 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  return [*(v0 + v1) definedDistance];
}

double SplitsDisplayAccumulator.splitDistance.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator);
  v2 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 meterUnit];
  [v5 doubleValueForUnit_];
  v8 = v7;

  return v8;
}

double SplitsDisplayAccumulator.splitDuration.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator);
  v2 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  return *(v1 + v2);
}

double SplitsDisplayAccumulator.splitPace.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator);
  if (*(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_duration) > 0.0 && *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_distance) > 0.0)
  {
    JUMPOUT(0x20F2E8430);
  }

  return 0.0;
}

char *SplitsDisplayAccumulator.splitIndex.getter()
{
  v1 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v2 = [*(v0 + v1) completedSplits];
  v3 = [v2 count];

  result = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t SplitsDisplayAccumulator.splitStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v13 = [*(v1 + v12) splitStartDate];
  if (v13)
  {
    v14 = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v4 + 32);
    v15(v11, v7, v3);
    (*(v4 + 56))(v11, 0, 1, v3);
    return (v15)(a1, v11, v3);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
    Date.init()();
    result = (*(v4 + 48))(v11, 1, v3);
    if (result != 1)
    {
      return outlined destroy of Date?(v11);
    }
  }

  return result;
}

void SplitsDisplayAccumulator.splitAveragePower.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 wattUnit];
    v4 = *(v1 + OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator);
    v5 = *(v4 + 24);
    if (v5 < 1)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = *(v4 + 16) / v5;
    }

    v7 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v6];

    v8 = [v2 wattUnit];
    [v7 doubleValueForUnit_];
  }
}

uint64_t SplitsDisplayAccumulator.logString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(91);
  MEMORY[0x20F2E6D80](0x203A74696C7073, 0xE700000000000000);
  v16[1] = [v0 splitIndex];
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v7);

  MEMORY[0x20F2E6D80](0x203A656361702820, 0xE800000000000000);
  [v0 splitPace];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B465B00);
  [v0 splitDuration];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x6E6174736964202CLL, 0xEC000000203A6563);
  [v0 splitDistance];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x447472617473202CLL, 0xED0000203A657461);
  v8 = [v0 splitStartDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v9 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 stringFromDate_];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  (*(v3 + 8))(v6, v2);
  MEMORY[0x20F2E6D80](v12, v14);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B465B60);
  [v1 splitAveragePower];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x73747461772029, 0xE700000000000000);
  return v17;
}

void SplitsDisplayAccumulator.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v68 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v68 - v17;
  if (a2 == 3)
  {
    v24 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator];
    [objc_msgSend(a1 elapsedTimeProvider)];
    v26 = v25;
    swift_unknownObjectRelease();
    *&v24[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = v26;
    v27 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
    swift_beginAccess();
    if (v26 - *&v24[v27] > 0.0)
    {
      v28 = v26 - *&v24[v27];
    }

    else
    {
      v28 = 0.0;
    }

    v29 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
    swift_beginAccess();
    *&v24[v29] = v28;
    v30 = [v24 updateHandler];
    if (v30)
    {
      v31 = v30;
      (*(v30 + 2))();
      _Block_release(v31);
    }

    SegmentPaceAccumulator.updateDuration(_:)(*&v24[v29]);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.app);
    swift_unknownObjectRetain();
    v33 = v3;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_24;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v69 = v37;
    *v36 = 134218242;
    [a1 activityDuration];
    *(v36 + 4) = v38;
    *(v36 + 12) = 2080;
    v39 = SplitsDisplayAccumulator.logString.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v69);

    *(v36 + 14) = v41;
    v42 = "SplitsDisplayAccumulator: updated duration, activityDuration: %f, %s";
    v43 = v35;
    v44 = v34;
    v45 = v36;
    v46 = 22;
    goto LABEL_23;
  }

  if (a2 != 1)
  {
    return;
  }

  v19 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator];
  [objc_msgSend(a1 distanceProvider)];
  v21 = v20;
  swift_unknownObjectRelease();
  *(v19 + OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance) = v21;
  SegmentDistanceAccumulator._updateInternalQuantity()();
  v68 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_builder];
  v22 = [objc_msgSend(a1 distanceProvider)];
  swift_unknownObjectRelease();
  if (v22)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v11 + 32);
    v23(v9, v15, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v23(v18, v9, v10);
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    Date.init()();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      outlined destroy of Date?(v9);
    }
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v18, v10);
  [v68 elapsedTimeAtDate_];
  v49 = v48;

  v50 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator];
  v51 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  if (v49 - *(v50 + v51) > 0.0)
  {
    v52 = v49 - *(v50 + v51);
  }

  else
  {
    v52 = 0.0;
  }

  v53 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v54 = *(v19 + v53);
  v55 = objc_opt_self();
  v56 = v54;
  v57 = [v55 meterUnit];
  [v56 doubleValueForUnit_];
  v59 = v58;

  SegmentPaceAccumulator.updateDistance(_:duration:)(v59, v52);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static WOLog.app);
  swift_unknownObjectRetain();
  v61 = v3;
  v34 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v34, v62))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v69 = v37;
    *v36 = 134218498;
    [objc_msgSend(a1 distanceProvider)];
    v64 = v63;
    swift_unknownObjectRelease();
    *(v36 + 4) = v64;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v52;
    *(v36 + 22) = 2080;
    v65 = SplitsDisplayAccumulator.logString.getter();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v69);

    *(v36 + 24) = v67;
    v42 = "SplitsDisplayAccumulator: updated distance: %f, duration: %f, %s";
    v43 = v62;
    v44 = v34;
    v45 = v36;
    v46 = 32;
LABEL_23:
    _os_log_impl(&dword_20AEA4000, v44, v43, v42, v45, v46);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F2E9420](v37, -1, -1);
    MEMORY[0x20F2E9420](v36, -1, -1);
  }

LABEL_24:
}

void specialized SplitsDisplayAccumulator.splitsAccumulator.setter(void *a1)
{
  v3 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  v6 = [v4 removeAllSplitObservers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27WOSplitsAccumulatorObserver_pMd, &_sSo27WOSplitsAccumulatorObserver_pMR);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:

    SplitsDisplayAccumulator.assignStartValues()();

    return;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2E7A20](i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [*(v1 + v3) addSplitObserver_];
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t type metadata accessor for FIUIWorkoutSplit()
{
  result = lazy cache variable for type metadata for FIUIWorkoutSplit;
  if (!lazy cache variable for type metadata for FIUIWorkoutSplit)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FIUIWorkoutSplit);
  }

  return result;
}

id SplitsAccumulatorFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SplitsAccumulatorFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitsAccumulatorFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SplitsAccumulatorFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SplitsAccumulatorFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static SplitsAccumulatorFactory.makeStandardSplitsAccumulators(activityType:builder:powerAccumulator:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 identifier];
  v7 = objc_opt_self();
  v8 = v7;
  if (v6 == 46)
  {
    v9 = [v7 yardUnit];
    v10 = [v8 meterUnit];
    v11 = 100.0;
  }

  else
  {
    v9 = [v7 mileUnit];
    v10 = [v8 meterUnitWithMetricPrefix_];
    v11 = 1.0;
  }

  v12 = v10;
  v22 = [objc_allocWithZone(NLSessionActivitySplitsAccumulator) initWithBuilder:a2 activityType:a1 unit:v9 distancePerUnit:2 measurementSystem:0 isCustomSplit:a3 powerAccumulator:v11];
  v23 = [objc_allocWithZone(NLSessionActivitySplitsAccumulator) initWithBuilder:a2 activityType:a1 unit:v12 distancePerUnit:1 measurementSystem:0 isCustomSplit:a3 powerAccumulator:v11];
  v13 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v14 = v22;
  v15 = v23;
  for (i = 0; i != 2; ++i)
  {
    v17 = v21[i + 4];
    if (v17)
    {
      v18 = v17;
      MEMORY[0x20F2E6F30]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v20;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo34NLSessionActivitySplitsAccumulatorCSgMd, &_sSo34NLSessionActivitySplitsAccumulatorCSgMR);
  swift_arrayDestroy();

  return v13;
}

id specialized static SplitsAccumulatorFactory.makeCustomSplitsAccumulator(activityType:builder:userDistanceUnit:powerAccumulator:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_opt_self() currentThread];
  v9 = [v8 threadDictionary];

  *&v31 = 0xD00000000000001ALL;
  *(&v31 + 1) = 0x800000020B46DC00;
  v10 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    type metadata accessor for NLSessionActivitySplitsAccumulator(0, &lazy cache variable for type metadata for NLWorkoutSplitStorage, 0x277D0A840);
    if (swift_dynamicCast())
    {
      v11 = v30;
      goto LABEL_9;
    }
  }

  else
  {
    _sypSgWOhTm_6(v33, &_sypSgMd, &_sypSgMR);
  }

  v11 = [objc_opt_self() distanceSplitForActivityType:a1 userDistanceUnit:a3];
LABEL_9:
  [v11 value];
  if (v12 <= 0.0)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.app);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_20AEA4000, v23, v24, "No workout split storage for activity_type=%@, not creating custom splits accumulator.", v25, 0xCu);
      _sypSgWOhTm_6(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    return 0;
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 meterUnit];
    [v11 value];
    v16 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v15];

    [v16 doubleValueForUnit_];
    v18 = v17;

    v19 = [v13 meterUnit];
    LODWORD(v14) = [a3 _isCompatibleWithUnit_];

    if (v14)
    {
      if ([a3 _isMetricDistance])
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 0;
    }

    v29 = [objc_allocWithZone(NLSessionActivitySplitsAccumulator) initWithBuilder:a2 activityType:a1 unit:a3 distancePerUnit:v20 measurementSystem:1 isCustomSplit:a4 powerAccumulator:v18];

    return v29;
  }
}

unint64_t specialized static SplitsAccumulatorFactory.makeAccumulators(activityType:builder:userDistanceUnit:powerAccumulator:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = specialized static SplitsAccumulatorFactory.makeStandardSplitsAccumulators(activityType:builder:powerAccumulator:)(a1, a2, a4);
  v29 = v8;
  v9 = specialized static SplitsAccumulatorFactory.makeCustomSplitsAccumulator(activityType:builder:userDistanceUnit:powerAccumulator:)(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v9;
    v11 = FIUIDistanceTypeForActivityType();
    v12 = NLDistanceNotificationIntervalForDistanceType(v11);
    v13 = [objc_opt_self() quantityWithUnit:a3 doubleValue:v12];
    v14 = [objc_opt_self() meterUnit];
    [v13 doubleValueForUnit_];
    v16 = v15;

    if (v8 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v18 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x20F2E7A20](v18, v8);
        }

        else
        {
          if (v18 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v19 = *(v8 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        [v19 definedDistance];
        v23 = v22;
        [v10 definedDistance];
        if (v23 == v24)
        {
          [v20 definedDistance];
          v26 = v25;

          if (v26 == v16)
          {

            return v8;
          }
        }

        else
        {
        }

        ++v18;
        if (v21 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
    v27 = v10;
    MEMORY[0x20F2E6F30]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v29;
  }

  return v8;
}

void *specialized static SplitsAccumulatorFactory.displayedAccumulator(for:userDistanceUnit:)(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x20F2E7A20](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ([v8 isCustomSplit])
      {
        return v9;
      }

      ++v5;
    }

    while (v10 != i);
    v11 = 0;
    v22 = v3;
    while (1)
    {
      if (v6)
      {
        v12 = MEMORY[0x20F2E7A20](v11, v3);
      }

      else
      {
        if (v11 >= *(v7 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v3 + 8 * v11 + 32);
      }

      v9 = v12;
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = i;
      v15 = [v12 measurementSystem];
      v16 = [objc_opt_self() meterUnit];
      v17 = a2;
      v18 = [a2 _isCompatibleWithUnit_];

      if (v18)
      {
        v19 = [v17 _isMetricDistance];
        v20 = 1;
        if (!v19)
        {
          v20 = 2;
        }
      }

      else
      {
        v20 = 0;
      }

      a2 = v17;
      i = v14;
      if (v15 == v20 && ![v9 isCustomSplit])
      {
        return v9;
      }

      ++v11;
      v3 = v22;
      if (v13 == i)
      {
        return 0;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return 0;
}

uint64_t type metadata accessor for NLSessionActivitySplitsAccumulator(uint64_t a1, unint64_t *a2, void *a3)
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

void *DataLinkHealthMonitor.init()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  Date.init()();
  *(v1 + OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer) = 0;
  Date.init()();
  type metadata accessor for TimeBucketedData(0);
  swift_allocObject();
  v1[2] = TimeBucketedData.init(bucketDuration:maxBucketCount:startDate:)(30, 0, v5, 60.0);
  DataLinkHealthMonitor.spinUpTimer()();
  return v1;
}

uint64_t DataLinkHealthMonitor.didTransmitData(_:)(uint64_t a1, unint64_t a2)
{
  v30 = a2;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v3);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v28 - v16;
  Date.init()();
  type metadata accessor for OS_dispatch_queue();
  v29 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v14, v17, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = a1;
  v21 = a1;
  v22 = v30;
  *(v20 + 4) = v30;
  (*(v10 + 32))(&v20[v19], v14, v9);
  aBlock[4] = partial apply for closure #1 in DataLinkHealthMonitor.didTransmitData(_:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_38_1;
  v23 = _Block_copy(aBlock);
  outlined copy of Data._Representation(v21, v22);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v25 = v31;
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v29;
  MEMORY[0x20F2E7580](0, v8, v25, v23);
  _Block_release(v23);

  (*(v35 + 8))(v25, v24);
  (*(v33 + 8))(v8, v34);
  return (*(v10 + 8))(v17, v9);
}

void closure #1 in DataLinkHealthMonitor.didTransmitData(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v15 = 0;
        goto LABEL_12;
      }

      v17 = *(a2 + 16);
      v16 = *(a2 + 24);
      v18 = __OFSUB__(v16, v17);
      v15 = v16 - v17;
      if (!v18)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v14)
    {
      v15 = BYTE6(a3);
      goto LABEL_12;
    }

    LODWORD(v15) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_16;
    }

    v15 = v15;
LABEL_12:
    v19 = v15;
    Date.init()();
    TimeBucketedData.addSample(_:date:)(v11, v19);
    (*(v8 + 8))(v11, v7);
    v20 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_lastSentTimestamp;
    swift_beginAccess();
    (*(v8 + 24))(v13 + v20, a4, v7);
    swift_endAccess();
    v21 = *(v13 + 24);
    v22 = __CFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      *(v13 + 24) = v23;

      return;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void closure #1 in DataLinkHealthMonitor.didReceiveAck()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 32);
    v3 = __CFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(Strong + 32) = v4;
    }
  }
}

uint64_t DataLinkHealthMonitor.didReceiveAck()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a2;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v15);
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v18);
}

void closure #1 in DataLinkHealthMonitor.didReceiveError()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 40);
    v3 = __CFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(Strong + 40) = v4;
    }
  }
}

void DataLinkHealthMonitor.spinUpTimer()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {

    DataLinkHealthMonitor._mainThreadSpinUpTimer()();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v10 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in DataLinkHealthMonitor.spinUpTimer();
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_23_3;
    v12 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v12);
    _Block_release(v12);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v5);
  }
}

double closure #1 in DataLinkHealthMonitor.spinUpTimer()(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DataLinkHealthMonitor._mainThreadSpinUpTimer()();
  }

  return result;
}

void DataLinkHealthMonitor._mainThreadSpinUpTimer()()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer;
  [*(v0 + OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = partial apply for closure #1 in DataLinkHealthMonitor._mainThreadSpinUpTimer();
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v7[3] = &block_descriptor_90;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:60.0];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;
}

double closure #1 in DataLinkHealthMonitor._mainThreadSpinUpTimer()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DataLinkHealthMonitor._mainThreadDumpNetworkingStats()();
    DataLinkHealthMonitor._mainThreadDumpHealthStats()();
  }

  return result;
}

uint64_t DataLinkHealthMonitor._mainThreadDumpNetworkingStats()()
{
  v1 = v0;
  v113 = type metadata accessor for DispatchPredicate();
  v115 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v2);
  v4 = (&v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v100 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v103 = &v97 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v104 = &v97 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v97 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v99 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v102 = &v97 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v97 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v97 - v32;
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = &v97 - v36;
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v97 - v39;
  Date.init()();
  Date.addingTimeInterval(_:)();
  v105 = v33;
  v97 = v40;
  Date.addingTimeInterval(_:)();
  v41 = *(v1 + 16);
  v42 = *(v19 + 56);
  v42(v17, 1, 1, v18);
  v43 = TimeBucketedData.sum(since:)(v17);
  v44 = v17;
  v45 = v104;
  _s10Foundation4DateVSgWOhTm_16(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v114 = v19;
  v46 = *(v19 + 16);
  v98 = v37;
  v101 = v46;
  v46(v45, v37, v18);
  v110 = v42;
  v111 = v18;
  v42(v45, 0, 1, v18);
  v47 = v29;
  Date.init()();
  v48 = *(v41 + 40);
  *v4 = v48;
  v49 = v115;
  v50 = *(v115 + 104);
  v108 = *MEMORY[0x277D851F0];
  v51 = v113;
  v109 = v115 + 104;
  v107 = v50;
  v50(v4);
  v52 = v48;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v53 = *(v49 + 8);
  v115 = v49 + 8;
  v106 = v53;
  v54 = v53(v4, v51);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x28223BE20](v54, v55);
  *(&v97 - 4) = v45;
  *(&v97 - 3) = v41;
  *(&v97 - 2) = v47;
  v51 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  v56 = v116;
  v57 = *(v114 + 8);
  v58 = v111;
  v114 += 8;
  v112 = v57;
  v57(v47, v111);
  _s10Foundation4DateVSgWOhTm_16(v45, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = v103;
  v101(v103, v105, v58);
  v110(v59, 0, 1, v58);
  v47 = v102;
  Date.init()();
  v60 = *(v41 + 40);
  *v4 = v60;
  v61 = v113;
  v107(v4, v108, v113);
  v62 = v60;
  v63 = _dispatchPreconditionTest(_:)();
  v64 = v106(v4, v61);
  if ((v63 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  MEMORY[0x28223BE20](v64, v65);
  *(&v97 - 4) = v59;
  *(&v97 - 3) = v41;
  *(&v97 - 2) = v47;
  OS_dispatch_queue.sync<A>(execute:)();
  v66 = v116;
  v67 = v47;
  v47 = v111;
  v112(v67, v111);
  _s10Foundation4DateVSgWOhTm_16(v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v68 = v100;
  v110(v100, 1, 1, v47);
  v69 = v99;
  Date.init()();
  v70 = *(v41 + 40);
  *v4 = v70;
  v71 = v113;
  v107(v4, v108, v113);
  v72 = v70;
  v73 = _dispatchPreconditionTest(_:)();
  v74 = v106(v4, v71);
  if (v73)
  {
    MEMORY[0x28223BE20](v74, v75);
    *(&v97 - 4) = v68;
    *(&v97 - 3) = v41;
    *(&v97 - 2) = v69;
    OS_dispatch_queue.sync<A>(execute:)();
    v87 = v116;
    v112(v69, v47);
    _s10Foundation4DateVSgWOhTm_16(v68, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static WOLog.dataLink);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    v91 = os_log_type_enabled(v89, v90);
    v81 = v105;
    if (v91)
    {
      v92 = swift_slowAlloc();
      *v92 = 134218752;
      *(v92 + 4) = v43;
      *(v92 + 12) = 2048;
      *(v92 + 14) = v56;
      *(v92 + 22) = 2048;
      *(v92 + 24) = v66;
      *(v92 + 32) = 2048;
      *(v92 + 34) = v87;
      _os_log_impl(&dword_20AEA4000, v89, v90, "Total Uncompressed Bytes Sent: %f, 1min %fB/s, 5min %fB/s, total %fB/s", v92, 0x2Au);
      MEMORY[0x20F2E9420](v92, -1, -1);
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  swift_once();
  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static WOLog.dataLink);
  v77 = v51;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();

  v80 = os_log_type_enabled(v78, v79);
  v81 = v105;
  if (v80)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v82 = 138412290;
    v84 = v51;
    v85 = _swift_stdlib_bridgeErrorToNSError();
    *(v82 + 4) = v85;
    *v83 = v85;
    _os_log_impl(&dword_20AEA4000, v78, v79, "Unable to dump network stats: %@", v82, 0xCu);
    _s10Foundation4DateVSgWOhTm_16(v83, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v86 = v83;
    v47 = v111;
    MEMORY[0x20F2E9420](v86, -1, -1);
    MEMORY[0x20F2E9420](v82, -1, -1);
  }

LABEL_13:
  v93 = v98;
  v94 = v97;
  v95 = v112;
  v112(v81, v47);
  v95(v93, v47);
  return (v95)(v94, v47);
}

void DataLinkHealthMonitor._mainThreadDumpHealthStats()()
{
  v3 = v0;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - v11;
  v13 = *(v0 + 4);
  v14 = *(v0 + 5);
  v15 = __CFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_10;
  }

  v17 = *(v0 + 3);
  v1 = v17 - v16;
  if (v17 < v16)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.dataLink);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218496;
      v22 = *(v3 + 3);
      *(v21 + 4) = *(v3 + 4);
      *(v21 + 12) = 2048;
      *(v21 + 14) = *(v3 + 5);
      *(v21 + 22) = 2048;
      *(v21 + 24) = v22;

      _os_log_impl(&dword_20AEA4000, v19, v20, "Error: have more acked (%lu and errored %lu than sent %lu", v21, 0x20u);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {
    }

    v1 = 0;
  }

  Date.init()();
  v23 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_lastSentTimestamp;
  swift_beginAccess();
  (*(v5 + 16))(v9, &v3[v23], v4);
  Date.timeIntervalSince(_:)();
  v2 = v24;
  v25 = *(v5 + 8);
  v25(v9, v4);
  v25(v12, v4);
  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_14;
  }

LABEL_10:
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static WOLog.dataLink);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134219008;
    v30 = *(v3 + 4);
    *(v29 + 4) = *(v3 + 3);
    *(v29 + 12) = 2048;
    *(v29 + 14) = v30;
    *(v29 + 22) = 2048;
    *(v29 + 24) = *(v3 + 5);

    *(v29 + 32) = 2048;
    *(v29 + 34) = v1;
    *(v29 + 42) = 2048;
    *(v29 + 44) = v2;
    _os_log_impl(&dword_20AEA4000, v27, v28, "Sent: %lu Acked: %lu Errored: %lu Unreplied: %lu Waiting: %f", v29, 0x34u);
    MEMORY[0x20F2E9420](v29, -1, -1);
  }

  else
  {
  }
}

uint64_t DataLinkHealthMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer;
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_lastSentTimestamp;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataLinkHealthMonitor(uint64_t a1)
{
  result = type metadata singleton initialization cache for DataLinkHealthMonitor;
  if (!type metadata singleton initialization cache for DataLinkHealthMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DataLinkHealthMonitor(uint64_t a1)
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

uint64_t _s10Foundation4DateVSgWOhTm_16(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void partial apply for closure #1 in DataLinkHealthMonitor.didTransmitData(_:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  closure #1 in DataLinkHealthMonitor.didTransmitData(_:)(v2, v3, v4, v5);
}

uint64_t closure #1 in TimeBucketedData.average(since:until:)partial apply@<X0>(double *a1@<X8>)
{
  return partial apply for closure #1 in TimeBucketedData.average(since:until:)(a1);
}

{
  return partial apply for closure #1 in TimeBucketedData.average(since:until:)(a1);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v7)
    {
      v8 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v8, v10);
      *v4 = v10;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, v12, *&a1);
    *v3 = v14;
  }

  return result;
}

Swift::Int specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v15;
      }

      specialized _NativeDictionary._delete(at:)();
      *v4 = v13;
    }
  }
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v17;
      }

      specialized _NativeDictionary._delete(at:)(v11, v15);
      *v5 = v15;
    }
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = type metadata accessor for Station.Mood();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = type metadata accessor for Station.Mood();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      specialized _NativeDictionary._delete(at:)(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = type metadata accessor for Station.Mood();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of Date?(a1);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    v14 = type metadata accessor for Station.Mood();
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of Date?(v8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v17 = type metadata accessor for Station.Mood();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t static ExternalProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_beginAccess();
  if (v4 == *(a2 + 32) && v5 == *(a2 + 40))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

double static ExternalProvider.deserialize(from:)@<D0>(void *a1@<X0>, char **a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for UUID();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v88 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v87 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v80 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v80 - v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = [a1 keyedStrings];
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v22 + 16))
  {

    goto LABEL_11;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v20);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_11:

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static WOLog.core);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_26;
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = "Could not determine source name: no value.";
LABEL_25:
    _os_log_impl(&dword_20AEA4000, v70, v71, v73, v72, 2u);
    MEMORY[0x20F2E9420](v72, -1, -1);
    goto LABEL_26;
  }

  v26 = (*(v22 + 56) + 16 * v23);
  v27 = v26[1];
  v85 = *v26;
  v86 = v27;

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  v31 = [a1 keyedStrings];
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v32 + 16))
  {

    goto LABEL_16;
  }

  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v30);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_16:

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static WOLog.core);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_26;
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = "Could not determine bundleId: no value.";
    goto LABEL_25;
  }

  v36 = (*(v32 + 56) + 16 * v33);
  v37 = *v36;
  v38 = v36[1];

  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  v41 = [a1 keyedDatas];
  v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v42 + 16))
  {

    goto LABEL_21;
  }

  v83 = v37;
  v43 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v40);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_21:

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static WOLog.core);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_26;
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = "Could not determine image data: no value.";
    goto LABEL_25;
  }

  v46 = (*(v42 + 56) + 16 * v43);
  v47 = v46[1];
  v84 = *v46;
  v82 = v47;
  outlined copy of Data._Representation(v84, v47);

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;
  v51 = [a1 keyedDates];
  v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v52 + 16))
  {
    v53 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
    v55 = v54;

    if (v55)
    {
      v56 = v87;
      v57 = *(v87 + 16);
      v57(v14, *(v52 + 56) + *(v87 + 72) * v53, v6);

      v81 = v38;
      v58 = *(v56 + 32);
      v58(v17, v14, v6);
      v59 = v58;
      v57(v10, v17, v6);
      v60 = [a1 uuid];
      v61 = v88;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = type metadata accessor for ExternalProvider(0);
      v63 = swift_allocObject();
      v64 = v86;
      *(v63 + 2) = v85;
      *(v63 + 3) = v64;
      v65 = v81;
      *(v63 + 4) = v83;
      *(v63 + 5) = v65;
      v66 = v82;
      *(v63 + 6) = v84;
      *(v63 + 7) = v66;
      v59(&v63[OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate], v10, v6);
      (*(v89 + 32))(&v63[OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid], v61, v90);
      v67 = v91;
      v91[3] = v62;
      *v67 = v63;
      (*(v56 + 8))(v17, v6);
      return result;
    }
  }

  else
  {
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  __swift_project_value_buffer(v77, static WOLog.core);
  v70 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v70, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_20AEA4000, v70, v78, "Could not determine sync start date: no value.", v79, 2u);
    MEMORY[0x20F2E9420](v79, -1, -1);
  }

  outlined consume of Data._Representation(v84, v82);
LABEL_26:

  result = 0.0;
  v76 = v91;
  *v91 = 0u;
  *(v76 + 1) = 0u;
  return result;
}

uint64_t ExternalProvider.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](39, 0xE100000000000000);
  return 0x72656469766F7270;
}

char *ExternalProvider.__allocating_init(sourceName:sourceBundleIdentifier:sourceImageData:syncStartDate:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 2) = a1;
  *(v16 + 3) = a2;
  *(v16 + 4) = a3;
  *(v16 + 5) = a4;
  *(v16 + 6) = a5;
  *(v16 + 7) = a6;
  v17 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 32))(&v16[v17], a7, v18);
  v19 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid;
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 32))(&v16[v19], a8, v20);
  return v16;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExternalProvider.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance ExternalProvider.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExternalProvider.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExternalProvider.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExternalProvider.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ExternalProvider.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0x614E656372756F73;
  v5 = 0xEF61746144656761;
  v6 = 0x6D49656372756F73;
  v7 = 0xED00006574614474;
  v8 = 0x72617453636E7973;
  if (v2 != 3)
  {
    v8 = 1684632949;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x800000020B455080;
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