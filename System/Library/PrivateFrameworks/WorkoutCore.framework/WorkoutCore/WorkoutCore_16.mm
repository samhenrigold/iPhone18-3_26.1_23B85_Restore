BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v3 + 1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = Hasher.init(_seed:)();
    MetricPlatterType.rawValue.getter(v4);
    String.hash(into:)();

    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xE800000000000000;
        v10 = 0x647261646E617473;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v10 = 0x647261646E617473;
            goto LABEL_14;
          case 2:
            v10 = 0x6C61767265746E69;
            break;
          case 3:
            v10 = 0x6C61767265746E69;
LABEL_14:
            v9 = 0xEE00646E6F636553;
            break;
          case 4:
            v9 = 0xE500000000000000;
            v10 = 0x7265636170;
            break;
          case 5:
            v9 = 0xE400000000000000;
            v10 = 1701011826;
            break;
          case 6:
            v9 = 0xE700000000000000;
            v10 = 0x746E656D676573;
            break;
          case 7:
            v10 = 0x7974697669746361;
            v9 = 0xED000073676E6952;
            break;
          case 8:
            v9 = 0xE500000000000000;
            v10 = 0x6F65646976;
            break;
          case 9:
            v9 = 0xE500000000000000;
            v10 = 0x74696C7073;
            break;
          case 0xA:
            v10 = 0x7461527472616568;
            v9 = 0xEE0073656E6F5A65;
            break;
          case 0xB:
            v9 = 0xEA00000000007472;
            v10 = 0x6F707369746C756DLL;
            break;
          case 0xC:
            v9 = 0xE500000000000000;
            v10 = 0x7265776F70;
            break;
          case 0xD:
            v10 = 0x6E6F5A7265776F70;
            v9 = 0xEA00000000007365;
            break;
          case 0xE:
            v10 = 0x6F69746176656C65;
            v9 = 0xE90000000000006ELL;
            break;
          case 0xF:
            v10 = 0x656D6F6465657073;
            v9 = 0xEB00000000726574;
            break;
          default:
            break;
        }

        v11 = 0xE800000000000000;
        v12 = 0x647261646E617473;
        switch(a1)
        {
          case 1:
            v13 = 0x647261646E617473;
            goto LABEL_38;
          case 2:
            if (v10 != 0x6C61767265746E69)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 3:
            v13 = 0x6C61767265746E69;
LABEL_38:
            v11 = 0xEE00646E6F636553;
            if (v10 != v13)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 4:
            v11 = 0xE500000000000000;
            v14 = 1701011824;
            goto LABEL_29;
          case 5:
            v11 = 0xE400000000000000;
            if (v10 != 1701011826)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 6:
            v11 = 0xE700000000000000;
            if (v10 != 0x746E656D676573)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 7:
            v11 = 0xED000073676E6952;
            if (v10 != 0x7974697669746361)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 8:
            v11 = 0xE500000000000000;
            if (v10 != 0x6F65646976)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 9:
            v11 = 0xE500000000000000;
            if (v10 != 0x74696C7073)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 10:
            v12 = 0x7461527472616568;
            v11 = 0xEE0073656E6F5A65;
            goto LABEL_49;
          case 11:
            v11 = 0xEA00000000007472;
            if (v10 != 0x6F707369746C756DLL)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 12:
            v11 = 0xE500000000000000;
            v14 = 1702326128;
LABEL_29:
            if (v10 != (v14 & 0xFFFF0000FFFFFFFFLL | 0x7200000000))
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 13:
            v11 = 0xEA00000000007365;
            if (v10 != 0x6E6F5A7265776F70)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 14:
            v11 = 0xE90000000000006ELL;
            if (v10 != 0x6F69746176656C65)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 15:
            v11 = 0xEB00000000726574;
            if (v10 != 0x656D6F6465657073)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          default:
LABEL_49:
            if (v10 != v12)
            {
              goto LABEL_51;
            }

LABEL_50:
            if (v9 == v11)
            {

              v15 = 1;
              return v15 & 1;
            }

LABEL_51:
            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v15)
            {
              return v15 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v15 & 1;
            }

            break;
        }
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (type metadata accessor for NSNumber(), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Int FIUIWorkoutActivityType.supportedSplits.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  if ((v1 - 13) > 0x3A)
  {
    goto LABEL_11;
  }

  if (((1 << (v1 - 13)) & 0x600808001000800) != 0)
  {
    v2 = &outlined read-only object #0 of FIUIWorkoutActivityType.supportedSplits.getter;
    goto LABEL_12;
  }

  if (v1 != 13)
  {
    if (v1 == 35)
    {
      v3 = [v0 isIndoor];
      v4 = &outlined read-only object #4 of FIUIWorkoutActivityType.supportedSplits.getter;
      v5 = &outlined read-only object #3 of FIUIWorkoutActivityType.supportedSplits.getter;
      goto LABEL_8;
    }

LABEL_11:
    v2 = &outlined read-only object #5 of FIUIWorkoutActivityType.supportedSplits.getter;
    goto LABEL_12;
  }

  v3 = [objc_opt_self() fiui:1 activitySupportsMetricType:v0 activityType:1 activityMoveMode:?];
  v4 = &outlined read-only object #2 of FIUIWorkoutActivityType.supportedSplits.getter;
  v5 = &outlined read-only object #1 of FIUIWorkoutActivityType.supportedSplits.getter;
LABEL_8:
  if (v3)
  {
    v2 = v5;
  }

  else
  {
    v2 = v4;
  }

LABEL_12:

  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo19NLWorkoutSplitsTypeV_Tt0g5Tf4g_n(v2);
}

BOOL @objc FIUIWorkoutActivityType.supportsTimeSplits.getter(void *a1)
{
  v1 = a1;
  v2 = FIUIWorkoutActivityType.supportedSplits.getter();
  v3 = specialized Set.contains(_:)(2, v2);

  return v3;
}

BOOL FIUIWorkoutActivityType.supportsTimeSplits.getter()
{
  v0 = FIUIWorkoutActivityType.supportedSplits.getter();
  v1 = specialized Set.contains(_:)(2, v0);

  return v1;
}

BOOL @objc FIUIWorkoutActivityType.supportsDistanceSplits.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 effectiveTypeIdentifier];
  v3 = 0;
  v4 = v2 > 0x29 || ((1 << v2) & 0x2908A20000ALL) == 0;
  if (v4 && v2 != 75)
  {
    v6 = FIUIWorkoutActivityType.supportedSplits.getter();
    v3 = specialized Set.contains(_:)(1, v6);
  }

  return v3;
}

BOOL FIUIWorkoutActivityType.supportsDistanceSplits.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  v2 = v1 > 0x29 || ((1 << v1) & 0x2908A20000ALL) == 0;
  if (!v2 || v1 == 75)
  {
    return 0;
  }

  v4 = FIUIWorkoutActivityType.supportedSplits.getter();
  v5 = specialized Set.contains(_:)(1, v4);

  return v5;
}

uint64_t lazy protocol witness table accessor for type DeviceInferenceAvailability.UnavailableReason and conformance DeviceInferenceAvailability.UnavailableReason(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceInferenceAvailability.UnavailableReason();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

WorkoutCore::MirroredHostCountdownStart __swiftcall MirroredHostCountdownStart.init(hostMachDelay:clientMachTimestamp:)(Swift::Double hostMachDelay, Swift::Double clientMachTimestamp)
{
  *v2 = hostMachDelay;
  v2[1] = clientMachTimestamp;
  result.clientMachTimestamp = clientMachTimestamp;
  result.hostMachDelay = hostMachDelay;
  return result;
}

uint64_t MirroredHostCountdownStart.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = outlined destroy of Apple_Workout_Core_MirroredHostCountdownStart(a1);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostCountdownStart(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredHostCountdownStart.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart();
  return static Message.with(_:)();
}

double *closure #1 in MirroredHostCountdownStart.protobuf.getter(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

__n128 _s11WorkoutCore26MirroredHostCountdownStartV8protobufAA06Apple_a1_b1_cdeF0VvgyAFzXEfU_TA_0(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart)
  {
    type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart);
  }

  return result;
}

uint64_t MirroredHostCountdownStart.description.getter()
{
  _StringGuts.grow(_:)(42);
  MEMORY[0x20F2E6D80](0x6863614D74736F68, 0xEF203A79616C6544);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45A0B0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostCountdownStart()
{
  _StringGuts.grow(_:)(42);
  MEMORY[0x20F2E6D80](0x6863614D74736F68, 0xEF203A79616C6544);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45A0B0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredHostCountdownStart@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = outlined destroy of Apple_Workout_Core_MirroredHostCountdownStart(a1);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostCountdownStart()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart();
  return static Message.with(_:)();
}

uint64_t MirroredHostCountdownStart.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x20F2E8020](*&v3);
}

Swift::Int MirroredHostCountdownStart.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x20F2E8020](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostCountdownStart(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x20F2E8020](*&v5);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredHostCountdownStart(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostCountdownStart(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MirroredHostCountdownStart(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t static WorkoutConfiguration.uuid(from:)@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for URLQueryItem();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for URLComponents();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of URLComponents?(v15, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    result = URLComponents.queryItems.getter();
    if (result)
    {
      v22 = result;
      v33 = v11;
      v34 = v20;
      v35 = v17;
      v36 = v16;
      v37 = a2;
      v23 = *(result + 16);
      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            __break(1u);
            return result;
          }

          (*(v4 + 16))(v8, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v3);
          if (URLQueryItem.name.getter() == 1684632949 && v25 == 0xE400000000000000)
          {
            break;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_14;
          }

          ++v24;
          result = (*(v4 + 8))(v8, v3);
          if (v23 == v24)
          {
            goto LABEL_11;
          }
        }

LABEL_14:

        v27 = v33;
        (*(v4 + 32))(v33, v8, v3);
        URLQueryItem.value.getter();
        v29 = v28;
        (*(v4 + 8))(v27, v3);
        v30 = v34;
        if (v29)
        {
          UUID.init(uuidString:)();

          return (*(v35 + 8))(v30, v36);
        }

        (*(v35 + 8))(v34, v36);
      }

      else
      {
LABEL_11:
        (*(v35 + 8))(v34, v36);
      }

      a2 = v37;
    }

    else
    {
      (*(v17 + 8))(v20, v16);
    }
  }

  v31 = type metadata accessor for UUID();
  return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
}

unsigned __int8 *static WorkoutConfiguration.configuration(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v125 = &v114[-v4];
  v5 = type metadata accessor for UUID();
  v126 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v114[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URLQueryItem();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v127 = &v114[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12, v14);
  v123 = &v114[-v16];
  v18 = MEMORY[0x28223BE20](v15, v17);
  v129 = &v114[-v19];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v124 = &v114[-v22];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v114[-v25];
  MEMORY[0x28223BE20](v24, v27);
  v128 = &v114[-v28];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v114[-v31];
  v33 = type metadata accessor for URLComponents();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v114[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    outlined destroy of URLComponents?(v32, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    return 0;
  }

  v119 = a1;
  (*(v34 + 32))(v37, v32, v33);
  v38 = URLComponents.queryItems.getter();
  if (!v38)
  {
    (*(v34 + 8))(v37, v33);
    return 0;
  }

  v39 = v38;
  v121 = v34;
  v122 = v37;
  v117 = v8;
  v118 = v5;
  v120 = v33;
  v40 = *(v38 + 16);
  if (!v40)
  {
    goto LABEL_114;
  }

  v41 = v9;
  v42 = 0;
  v43 = 0xD000000000000011;
  v133 = v10 + 16;
  v134 = (v10 + 8);
  while (1)
  {
    if (v42 >= *(v39 + 16))
    {
      __break(1u);
LABEL_102:
      (*(v42 + 8))(v40, v43);
LABEL_103:
      (*(v121 + 8))(v10, v120);
      return 0;
    }

    v44 = *(v10 + 9);
    v130 = (v10[80] + 32) & ~v10[80];
    v131 = v44;
    v132 = *(v10 + 2);
    v132(v26, v39 + v130 + v44 * v42, v41);
    if (URLQueryItem.name.getter() == 0xD000000000000011 && 0x800000020B453F70 == v45)
    {
      break;
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      goto LABEL_14;
    }

    ++v42;
    (*v134)(v26, v41);
    if (v40 == v42)
    {
      goto LABEL_114;
    }
  }

LABEL_14:

  v47 = *(v10 + 4);
  v48 = v128;
  (v47)(v128, v26, v41);
  v49 = URLQueryItem.value.getter();
  v51 = v50;
  v116 = v10 + 32;
  v52 = *(v10 + 1);
  result = v52(v48, v41);
  if (!v51)
  {
LABEL_100:
    (*(v121 + 8))(v122, v120);
    return 0;
  }

  v54 = HIBYTE(v51) & 0xF;
  v55 = v49 & 0xFFFFFFFFFFFFLL;
  if (!((v51 & 0x2000000000000000) != 0 ? HIBYTE(v51) & 0xF : v49 & 0xFFFFFFFFFFFFLL))
  {
LABEL_114:
    (*(v121 + 8))(v122, v120);

    return 0;
  }

  if ((v51 & 0x1000000000000000) != 0)
  {
    v59 = specialized _parseInteger<A, B>(ascii:radix:)(v49, v51, 10);
    v113 = v112;

    v57 = v122;
    if ((v113 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_110:
    (*(v121 + 8))(v57, v120);
    return 0;
  }

  if ((v51 & 0x2000000000000000) != 0)
  {
    v135[0] = v49;
    v135[1] = v51 & 0xFFFFFFFFFFFFFFLL;
    if (v49 == 43)
    {
      v57 = v122;
      if (!v54)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (--v54)
      {
        v59 = 0;
        v69 = v135 + 1;
        while (1)
        {
          v70 = *v69 - 48;
          if (v70 > 9)
          {
            break;
          }

          v71 = 10 * v59;
          if ((v59 * 10) >> 64 != (10 * v59) >> 63)
          {
            break;
          }

          v59 = v71 + v70;
          if (__OFADD__(v71, v70))
          {
            break;
          }

          ++v69;
          if (!--v54)
          {
            goto LABEL_76;
          }
        }
      }
    }

    else
    {
      v57 = v122;
      if (v49 == 45)
      {
        if (!v54)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (--v54)
        {
          v59 = 0;
          v63 = v135 + 1;
          while (1)
          {
            v64 = *v63 - 48;
            if (v64 > 9)
            {
              break;
            }

            v65 = 10 * v59;
            if ((v59 * 10) >> 64 != (10 * v59) >> 63)
            {
              break;
            }

            v59 = v65 - v64;
            if (__OFSUB__(v65, v64))
            {
              break;
            }

            ++v63;
            if (!--v54)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else if (v54)
      {
        v59 = 0;
        v74 = v135;
        while (1)
        {
          v75 = *v74 - 48;
          if (v75 > 9)
          {
            break;
          }

          v76 = 10 * v59;
          if ((v59 * 10) >> 64 != (10 * v59) >> 63)
          {
            break;
          }

          v59 = v76 + v75;
          if (__OFADD__(v76, v75))
          {
            break;
          }

          ++v74;
          if (!--v54)
          {
            goto LABEL_76;
          }
        }
      }
    }

LABEL_75:
    v59 = 0;
    LOBYTE(v54) = 1;
    goto LABEL_76;
  }

  if ((v49 & 0x1000000000000000) != 0)
  {
    result = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v57 = v122;
  v58 = *result;
  if (v58 == 43)
  {
    if (v55 < 1)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v54 = v55 - 1;
    if (v55 == 1)
    {
      goto LABEL_75;
    }

    v59 = 0;
    if (!result)
    {
      goto LABEL_67;
    }

    v66 = result + 1;
    while (1)
    {
      v67 = *v66 - 48;
      if (v67 > 9)
      {
        goto LABEL_75;
      }

      v68 = 10 * v59;
      if ((v59 * 10) >> 64 != (10 * v59) >> 63)
      {
        goto LABEL_75;
      }

      v59 = v68 + v67;
      if (__OFADD__(v68, v67))
      {
        goto LABEL_75;
      }

      ++v66;
      if (!--v54)
      {
        goto LABEL_76;
      }
    }
  }

  if (v58 != 45)
  {
    if (!v55)
    {
      goto LABEL_75;
    }

    v59 = 0;
    if (!result)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v72 = *result - 48;
      if (v72 > 9)
      {
        goto LABEL_75;
      }

      v73 = 10 * v59;
      if ((v59 * 10) >> 64 != (10 * v59) >> 63)
      {
        goto LABEL_75;
      }

      v59 = v73 + v72;
      if (__OFADD__(v73, v72))
      {
        goto LABEL_75;
      }

      ++result;
      if (!--v55)
      {
        goto LABEL_67;
      }
    }
  }

  if (v55 < 1)
  {
    __break(1u);
    goto LABEL_119;
  }

  v54 = v55 - 1;
  if (v55 == 1)
  {
    goto LABEL_75;
  }

  v59 = 0;
  if (result)
  {
    v60 = result + 1;
    while (1)
    {
      v61 = *v60 - 48;
      if (v61 > 9)
      {
        goto LABEL_75;
      }

      v62 = 10 * v59;
      if ((v59 * 10) >> 64 != (10 * v59) >> 63)
      {
        goto LABEL_75;
      }

      v59 = v62 - v61;
      if (__OFSUB__(v62, v61))
      {
        goto LABEL_75;
      }

      ++v60;
      if (!--v54)
      {
        goto LABEL_76;
      }
    }
  }

LABEL_67:
  LOBYTE(v54) = 0;
LABEL_76:
  v136 = v54;
  v77 = v54;

  if (v77)
  {
    goto LABEL_110;
  }

LABEL_77:
  v78 = v59 - 1;
  if ((v59 - 1) >= 5)
  {
    goto LABEL_110;
  }

  v79 = URLComponents.queryItems.getter();
  if (!v79)
  {
    goto LABEL_110;
  }

  v80 = v79;
  v128 = v47;
  v81 = *(v79 + 16);
  if (!v81)
  {
    goto LABEL_114;
  }

  v82 = 0;
  v115 = 1u >> v78;
  v83 = v79 + v130;
  while (1)
  {
    if (v82 >= *(v80 + 16))
    {
      __break(1u);
      goto LABEL_114;
    }

    v132(v129, v83, v41);
    if (URLQueryItem.name.getter() == 1684632949 && v84 == 0xE400000000000000)
    {
      break;
    }

    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v85)
    {
      goto LABEL_88;
    }

    ++v82;
    v52(v129, v41);
    v83 += v131;
    if (v81 == v82)
    {
      goto LABEL_114;
    }
  }

LABEL_88:

  v86 = v124;
  (v128)(v124, v129, v41);
  URLQueryItem.value.getter();
  v88 = v87;
  v52(v86, v41);
  v43 = v118;
  v89 = v125;
  v42 = v126;
  v10 = v122;
  if (!v88)
  {
    goto LABEL_103;
  }

  UUID.init(uuidString:)();

  if ((*(v42 + 48))(v89, 1, v43) == 1)
  {
    (*(v121 + 8))(v10, v120);
    outlined destroy of URLComponents?(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return 0;
  }

  v40 = v117;
  (*(v42 + 32))(v117, v89, v43);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    goto LABEL_102;
  }

  v90 = result;
  v91 = *(result + 2);
  if (!v91)
  {
LABEL_99:

    (*(v126 + 8))(v117, v43);
    goto LABEL_100;
  }

  v92 = 0;
  v93 = &result[v130];
  while (v92 < *(v90 + 2))
  {
    v132(v127, v93, v41);
    if (URLQueryItem.name.getter() == 0x7974697669746361 && v94 == 0xEC00000065707954)
    {

LABEL_105:

      v96 = v123;
      (v128)(v123, v127, v41);
      v97 = URLQueryItem.value.getter();
      v99 = v98;
      v52(v96, v41);
      v100 = v126;
      v57 = v122;
      if (!v99 || (v101 = MEMORY[0x20F2E6C00](v97, v99), , v102 = [objc_opt_self() activityTypeFromUniqueIdentifier_], v101, !v102))
      {
        (*(v100 + 8))(v117, v43);
        goto LABEL_110;
      }

      v103 = [v102 effectiveTypeIdentifier];
      LODWORD(v134) = [v102 isIndoor];
      v104 = [v102 isPartOfMultiSport];
      v105 = [v102 metadata];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v106 = [v102 auxiliaryTypeIdentifier];
      v107 = objc_allocWithZone(MEMORY[0x277D0A810]);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v109 = [v107 initWithActivityTypeIdentifier:v103 isIndoor:v134 isPartOfMultiSport:v104 metadata:isa auxiliaryTypeIdentifier:v106];

      if (v115)
      {
        v110 = v117;
        v111 = specialized static GoalWorkoutConfiguration.configuration(url:uuid:activityType:)(v119, v117, v109);

        (*(v100 + 8))(v110, v118);
        (*(v121 + 8))(v122, v120);
        return v111;
      }

      (*(v100 + 8))(v117, v118);
      goto LABEL_100;
    }

    v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v95)
    {
      goto LABEL_105;
    }

    ++v92;
    result = v52(v127, v41);
    v93 += v131;
    if (v91 == v92)
    {
      goto LABEL_99;
    }
  }

LABEL_122:
  __break(1u);
  return result;
}

uint64_t WorkoutConfiguration.launchURL()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  MEMORY[0x20F2E4220](0xD000000000000014, 0x800000020B45A0D0);
  v12 = [v1 urlQueryItems];
  type metadata accessor for URLQueryItem();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    outlined destroy of URLComponents?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = a1;
      v19 = v18;
      v27 = swift_slowAlloc();
      v29 = v27;
      *v19 = 136315138;
      swift_beginAccess();
      lazy protocol witness table accessor for type URLComponents and conformance URLComponents();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v29);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Failed to generate URL with components: %s", v19, 0xCu);
      v23 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F2E9420](v23, -1, -1);
      v24 = v19;
      a1 = v28;
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    v25 = 1;
  }

  else
  {
    (*(v14 + 32))(a1, v6, v13);
    v25 = 0;
  }

  (*(v14 + 56))(a1, v25, 1, v13);
  return (*(v8 + 8))(v11, v7);
}

uint64_t WorkoutConfiguration.urlQueryItems()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  type metadata accessor for URLQueryItem();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20B423A20;
  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  UUID.uuidString.getter();
  (*(v3 + 8))(v6, v2);
  URLQueryItem.init(name:value:)();

  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v10 = [*(v1 + v9) uniqueIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URLQueryItem.init(name:value:)();

  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v13 = *(v1 + v11) + 1;
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

  return v7;
}

void *GoalWorkoutConfiguration.urlQueryItems()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for URLQueryItem();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v26, sel_urlQueryItems);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v25);

  v10 = v25[0];
  v11 = [v25[0] goalTypeIdentifier];

  v25[0] = v11;
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v13 = v9[2];
  v12 = v9[3];
  if (v13 >= v12 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v9);
  }

  v9[2] = v13 + 1;
  (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v7, v3);
  v27 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v25);

  v14 = v25[0];
  v15 = [v25[0] value];

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20B4282E0;
    v17 = [v15 _unit];
    [v15 doubleValueForUnit_];

    Double.description.getter();
    URLQueryItem.init(name:value:)();

    v18 = [v15 _unit];
    v19 = [v18 unitString];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v25[0] = v20;
    v25[1] = v22;
    String.init<A>(_:)();
    URLQueryItem.init(name:value:)();

    specialized Array.append<A>(contentsOf:)(v16);

    return v27;
  }

  return v9;
}

Class @objc WorkoutConfiguration.urlQueryItems()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  type metadata accessor for URLQueryItem();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

id specialized static GoalWorkoutConfiguration.configuration(url:uuid:activityType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v148 = a3;
  v147 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v149 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v151 = &v138 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v150 = &v138 - v12;
  v159 = type metadata accessor for URLQueryItem();
  v13 = *(v159 - 1);
  v15 = MEMORY[0x28223BE20](v159, v14);
  v152 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v145 = &v138 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v153 = &v138 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v146 = &v138 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v138 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v138 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v138 - v35;
  v37 = type metadata accessor for URLComponents();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    outlined destroy of URLComponents?(v36, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    return 0;
  }

  v141 = v4;
  (*(v38 + 32))(v41, v36, v37);
  v42 = URLComponents.queryItems.getter();
  if (!v42)
  {
    (*(v38 + 8))(v41, v37);
    return 0;
  }

  v43 = v42;
  v140 = v3;
  v144 = v41;
  v142 = v37;
  v143 = v38;
  v44 = *(v42 + 16);
  if (!v44)
  {
LABEL_11:
    (*(v143 + 8))(v144, v142);

    return 0;
  }

  v45 = 0;
  v157 = (v13 + 8);
  v158 = (v13 + 16);
  v46 = 0xE800000000000000;
  while (1)
  {
    if (v45 >= *(v43 + 16))
    {
      __break(1u);
LABEL_82:
      (*(v46 + 8))(v44, v142);

      return 0;
    }

    v47 = *(v13 + 72);
    v154 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v155 = v47;
    v156 = *(v13 + 16);
    v156(v29, v43 + v154 + v47 * v45, v159);
    if (URLQueryItem.name.getter() == 0x657079546C616F67 && v48 == 0xE800000000000000)
    {
      break;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_14;
    }

    ++v45;
    (*v157)(v29, v159);
    if (v44 == v45)
    {
      goto LABEL_11;
    }
  }

LABEL_14:

  v50 = *(v13 + 32);
  v51 = v159;
  (v50)(v32, v29, v159);
  v52 = URLQueryItem.value.getter();
  v54 = v53;
  v55 = *(v13 + 8);
  v55(v32, v51);
  v46 = v143;
  v44 = v144;
  if (!v54)
  {
    goto LABEL_79;
  }

  v56 = HIBYTE(v54) & 0xF;
  v57 = v52 & 0xFFFFFFFFFFFFLL;
  if ((v54 & 0x2000000000000000) != 0)
  {
    v58 = HIBYTE(v54) & 0xF;
  }

  else
  {
    v58 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {
    goto LABEL_82;
  }

  if ((v54 & 0x1000000000000000) != 0)
  {
    v61 = specialized _parseInteger<A, B>(ascii:radix:)(v52, v54, 10);
    v77 = v76;

    if (v77)
    {
      goto LABEL_79;
    }

    goto LABEL_84;
  }

  if ((v54 & 0x2000000000000000) != 0)
  {
    v162[0] = v52;
    v162[1] = v54 & 0xFFFFFFFFFFFFFFLL;
    if (v52 == 43)
    {
      if (!v56)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (--v56)
      {
        v61 = 0;
        v69 = v162 + 1;
        while (1)
        {
          v70 = *v69 - 48;
          if (v70 > 9)
          {
            break;
          }

          if (!is_mul_ok(v61, 0xAuLL))
          {
            break;
          }

          v64 = __CFADD__(10 * v61, v70);
          v61 = 10 * v61 + v70;
          if (v64)
          {
            break;
          }

          ++v69;
          if (!--v56)
          {
            goto LABEL_78;
          }
        }
      }
    }

    else if (v52 == 45)
    {
      if (!v56)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (--v56)
      {
        v61 = 0;
        v65 = v162 + 1;
        while (1)
        {
          v66 = *v65 - 48;
          if (v66 > 9)
          {
            break;
          }

          if (!is_mul_ok(v61, 0xAuLL))
          {
            break;
          }

          v64 = 10 * v61 >= v66;
          v61 = 10 * v61 - v66;
          if (!v64)
          {
            break;
          }

          ++v65;
          if (!--v56)
          {
            goto LABEL_78;
          }
        }
      }
    }

    else if (v56)
    {
      v61 = 0;
      v72 = v162;
      while (1)
      {
        v73 = *v72 - 48;
        if (v73 > 9)
        {
          break;
        }

        if (!is_mul_ok(v61, 0xAuLL))
        {
          break;
        }

        v64 = __CFADD__(10 * v61, v73);
        v61 = 10 * v61 + v73;
        if (v64)
        {
          break;
        }

        v72 = (v72 + 1);
        if (!--v56)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_77:
    v61 = 0;
    LOBYTE(v56) = 1;
    goto LABEL_78;
  }

  if ((v52 & 0x1000000000000000) != 0)
  {
    v59 = ((v54 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
LABEL_119:
    v59 = _StringObject.sharedUTF8.getter();
  }

  v60 = *v59;
  if (v60 == 43)
  {
    if (v57 < 1)
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v56 = v57 - 1;
    if (v57 == 1)
    {
      goto LABEL_77;
    }

    v61 = 0;
    if (!v59)
    {
      goto LABEL_69;
    }

    v67 = v59 + 1;
    while (1)
    {
      v68 = *v67 - 48;
      if (v68 > 9)
      {
        goto LABEL_77;
      }

      if (!is_mul_ok(v61, 0xAuLL))
      {
        goto LABEL_77;
      }

      v64 = __CFADD__(10 * v61, v68);
      v61 = 10 * v61 + v68;
      if (v64)
      {
        goto LABEL_77;
      }

      ++v67;
      if (!--v56)
      {
        goto LABEL_78;
      }
    }
  }

  if (v60 != 45)
  {
    if (!v57)
    {
      goto LABEL_77;
    }

    v61 = 0;
    if (!v59)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v71 = *v59 - 48;
      if (v71 > 9)
      {
        goto LABEL_77;
      }

      if (!is_mul_ok(v61, 0xAuLL))
      {
        goto LABEL_77;
      }

      v64 = __CFADD__(10 * v61, v71);
      v61 = 10 * v61 + v71;
      if (v64)
      {
        goto LABEL_77;
      }

      ++v59;
      if (!--v57)
      {
        goto LABEL_69;
      }
    }
  }

  if (v57 < 1)
  {
    __break(1u);
    goto LABEL_121;
  }

  v56 = v57 - 1;
  if (v57 == 1)
  {
    goto LABEL_77;
  }

  v61 = 0;
  if (v59)
  {
    v62 = v59 + 1;
    while (1)
    {
      v63 = *v62 - 48;
      if (v63 > 9)
      {
        goto LABEL_77;
      }

      if (!is_mul_ok(v61, 0xAuLL))
      {
        goto LABEL_77;
      }

      v64 = 10 * v61 >= v63;
      v61 = 10 * v61 - v63;
      if (!v64)
      {
        goto LABEL_77;
      }

      ++v62;
      if (!--v56)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_69:
  LOBYTE(v56) = 0;
LABEL_78:
  LOBYTE(v161) = v56;
  v74 = v56;

  if (v74)
  {
LABEL_79:
    (*(v46 + 8))(v44, v142);
    return 0;
  }

LABEL_84:
  if (v61 - 1 >= 3)
  {
    if (v61)
    {
      if (one-time initialization token for core != -1)
      {
        goto LABEL_125;
      }

      goto LABEL_98;
    }

    v84 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    v85 = v140;
LABEL_96:
    v86 = v141;
    v87 = *(v141 + 16);
    v88 = v150;
    v87(v150, v147, v85);
    v89 = v87;
    v90 = v84;
    v158 = specialized Occurrence.__allocating_init(count:)(0);
    v91 = v151;
    v89(v151, v88, v85);
    v92 = v89;
    v93 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration(0));
    swift_beginAccess();
    v161 = v90;
    type metadata accessor for NLSessionActivityGoal();
    v159 = v90;
    Published.init(initialValue:)();
    swift_endAccess();
    v94 = v149;
    v89(v149, v91, v85);
    *&v93[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v95 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    v96 = type metadata accessor for Date();
    v97 = *(*(v96 - 8) + 56);
    v97(&v93[v95], 1, 1, v96);
    v97(&v93[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v96);
    v98 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v99 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v99 - 8) + 56))(&v93[v98], 1, 1, v99);
    (*(v86 + 56))(&v93[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v85);
    v100 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v93[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v92(&v93[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v94, v85);
    v101 = v148;
    *&v93[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v148;
    v93[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    v102 = v158;
    *&v93[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v158;
    swift_beginAccess();
    *&v93[v100] = 0;
    v93[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v103 = type metadata accessor for WorkoutConfiguration(0);
    v160.receiver = v93;
    v160.super_class = v103;
    v104 = v101;
    v105 = v102;
    v106 = objc_msgSendSuper2(&v160, sel_init);

    v107 = v159;
    v108 = *(v86 + 8);
    v108(v94, v85);
    v108(v151, v85);
    v108(v150, v85);
    (*(v143 + 8))(v144, v142);
    return v106;
  }

  else
  {
    v78 = URLComponents.queryItems.getter();
    if (!v78)
    {
      goto LABEL_79;
    }

    v79 = v78;
    v138 = v61;
    v139 = v50;
    v80 = *(v78 + 16);
    if (v80)
    {
      v44 = 0;
      v50 = 0x756C61566C616F67;
      v81 = v78 + v154;
      while (1)
      {
        if (v44 >= *(v79 + 16))
        {
          __break(1u);
          goto LABEL_119;
        }

        v156(v153, v81, v159);
        if (URLQueryItem.name.getter() == 0x756C61566C616F67 && v82 == 0xE900000000000065)
        {
          break;
        }

        v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v83)
        {
          goto LABEL_102;
        }

        ++v44;
        v55(v153, v159);
        v81 += v155;
        if (v80 == v44)
        {
          goto LABEL_93;
        }
      }

LABEL_102:

      v115 = v146;
      v116 = v159;
      v139(v146, v153, v159);
      v117 = URLQueryItem.value.getter();
      v119 = v118;
      v55(v115, v116);
      v120 = v144;
      if (!v119 || (v162[0] = 0, v121 = specialized String.withCString<A>(_:)(v117, v119, v162), , !v121) || (v122 = *v162, (v123 = URLComponents.queryItems.getter()) == 0))
      {
        (*(v46 + 8))(v120, v142);
        return 0;
      }

      v124 = v123;
      v125 = *(v123 + 16);
      if (!v125)
      {
        goto LABEL_11;
      }

      v44 = 0;
      v126 = v123 + v154;
      v46 = 0xE800000000000000;
      while (v44 < *(v124 + 16))
      {
        v156(v152, v126, v159);
        if (URLQueryItem.name.getter() == 0x74696E556C616F67 && v127 == 0xE800000000000000)
        {

LABEL_115:

          v129 = v145;
          v130 = v159;
          v139(v145, v152, v159);
          v131 = URLQueryItem.value.getter();
          v133 = v132;
          v55(v129, v130);
          v85 = v140;
          v134 = v138;
          if (v133)
          {
            v135 = MEMORY[0x20F2E6C00](v131, v133);

            v136 = [objc_opt_self() unitFromString_];

            v137 = [objc_opt_self() quantityWithUnit:v136 doubleValue:v122];
            v84 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:v134 value:v137];

            goto LABEL_96;
          }

          (*(v143 + 8))(v144, v142);
          return 0;
        }

        v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v128)
        {
          goto LABEL_115;
        }

        ++v44;
        v55(v152, v159);
        v126 += v155;
        if (v125 == v44)
        {
          goto LABEL_11;
        }
      }

LABEL_124:
      __break(1u);
LABEL_125:
      swift_once();
LABEL_98:
      v109 = type metadata accessor for Logger();
      __swift_project_value_buffer(v109, static WOLog.core);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v162[0] = v113;
        *v112 = 136315138;
        v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E776F6E6B6E55, 0xE700000000000000, v162);

        *(v112 + 4) = v114;
        _os_log_impl(&dword_20AEA4000, v110, v111, "unknown goal type: %s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v113);
        MEMORY[0x20F2E9420](v113, -1, -1);
        MEMORY[0x20F2E9420](v112, -1, -1);
      }

      goto LABEL_79;
    }

LABEL_93:
    (*(v46 + 8))(v144, v142);

    return 0;
  }
}

uint64_t outlined destroy of URLComponents?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URLComponents and conformance URLComponents()
{
  result = lazy protocol witness table cache variable for type URLComponents and conformance URLComponents;
  if (!lazy protocol witness table cache variable for type URLComponents and conformance URLComponents)
  {
    type metadata accessor for URLComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents and conformance URLComponents);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HeartRateSample.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74617475706D6F63;
  }

  else
  {
    v3 = 0x7461527472616568;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEF657461446E6F69;
  }

  if (*a2)
  {
    v5 = 0x74617475706D6F63;
  }

  else
  {
    v5 = 0x7461527472616568;
  }

  if (*a2)
  {
    v6 = 0xEF657461446E6F69;
  }

  else
  {
    v6 = 0xE900000000000065;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateSample.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HeartRateSample.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateSample.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HeartRateSample.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateSample.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance HeartRateSample.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x7461527472616568;
  if (*v1)
  {
    v2 = 0x74617475706D6F63;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEF657461446E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HeartRateSample.CodingKeys()
{
  if (*v0)
  {
    return 0x74617475706D6F63;
  }

  else
  {
    return 0x7461527472616568;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HeartRateSample.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateSample.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HeartRateSample.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HeartRateSample.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartRateSample.init(from:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v27 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore15HeartRateSampleC10CodingKeys33_C503DD561604578E1EB31E922572127ALLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore15HeartRateSampleC10CodingKeys33_C503DD561604578E1EB31E922572127ALLOGMR);
  v11 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v12);
  v14 = &v24 - v13;
  v15 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v18 = v30;
    type metadata accessor for HeartRateSample(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v10;
    v26 = v11;
    v33 = 0;
    v16 = v28;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v17;
    v21 = [objc_opt_self() _countPerMinuteUnit];
    v22 = [objc_opt_self() quantityWithUnit:v21 doubleValue:v20];

    v18 = v30;
    *(v30 + 16) = v22;
    v32 = 1;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v31 = 1;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95A0]);
      v7 = v25;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v23 = v27;
      (*(v26 + 8))(v14, v28);
    }

    else
    {
      Date.init()();
      (*(v26 + 8))(v14, v16);
      v23 = v27;
    }

    (*(v23 + 32))(v18 + OBJC_IVAR____TtC11WorkoutCore15HeartRateSample_computationDate, v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v18;
}

uint64_t HeartRateSample.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore15HeartRateSampleC10CodingKeys33_C503DD561604578E1EB31E922572127ALLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore15HeartRateSampleC10CodingKeys33_C503DD561604578E1EB31E922572127ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v3 + 16);
  v11 = [objc_opt_self() _countPerMinuteUnit];
  [v10 doubleValueForUnit_];

  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HeartRateSample.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore15HeartRateSample_computationDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeartRateSample(uint64_t a1)
{
  result = type metadata singleton initialization cache for HeartRateSample;
  if (!type metadata singleton initialization cache for HeartRateSample)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for HeartRateSample(uint64_t a1)
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

uint64_t protocol witness for Decodable.init(from:) in conformance HeartRateSample@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HeartRateSample(0);
  v5 = swift_allocObject();
  result = HeartRateSample.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateSample.CodingKeys and conformance HeartRateSample.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateSample.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateSample.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

id RacePositionBridged.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RacePositionBridged.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RacePositionBridged();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double static MetricPlatter.canonicalArray()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_20B4282E0;
  *(v0 + 32) = 256;
  *(v0 + 40) = &outlined read-only object #0 of static MetricPlatter.canonical();
  *(v0 + 48) = 263;
  *(v0 + 56) = 0;
  return result;
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1)
{
  v1 = _HKWorkoutActivityNameForActivityType();
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._object = 0x800000020B456540;
    v6._countAndFlagsBits = 0xD000000000000015;
    if (String.hasPrefix(_:)(v6))
    {
      v7 = String.count.getter();
      v8 = specialized Collection.dropFirst(_:)(v7, v3, v5);
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v3 = MEMORY[0x20F2E6D00](v8, v10, v12, v14);
      v5 = v15;
    }
  }

  else
  {
    v5 = 0x800000020B456520;
    v3 = 0xD000000000000010;
  }

  MEMORY[0x20F2E6D80](v3, v5);
}

uint64_t FIUIWorkoutActivityType.shouldShowOtherWorkoutCalorieDisclaimer(activityMoveMode:)(uint64_t a1)
{
  v56[3] = &type metadata for WorkoutFeatures;
  v56[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v56[0]) = 15;
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_2(v56);
  if (v3 & 1) == 0 && (os_variant_has_internal_content())
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.activityPicker);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "WorkoutFeatures.Kahana is NOT enabled, returning false";
    goto LABEL_25;
  }

  if (a1 == 2)
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.activityPicker);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "activityMoveMode is .appleMoveTime, returning false";
    goto LABEL_25;
  }

  [v1 effectiveTypeIdentifier];
  if (FIActivityTypeIsCalorimetryOptimized())
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.activityPicker);
    v11 = v1;
    v5 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v5, v12))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v56[0] = v13;
    *v7 = 136315138;
    [v11 effectiveTypeIdentifier];
    v14 = _HKWorkoutActivityNameForActivityType();
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19._object = 0x800000020B456540;
      v19._countAndFlagsBits = 0xD000000000000015;
      if (String.hasPrefix(_:)(v19))
      {
        v20 = String.count.getter();
        v21 = specialized Collection.dropFirst(_:)(v20, v16, v18);
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v16 = MEMORY[0x20F2E6D00](v21, v23, v25, v27);
        v18 = v28;
      }
    }

    else
    {
      v18 = 0x800000020B456520;
      v16 = 0xD000000000000010;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v56);

    *(v7 + 4) = v50;
    _os_log_impl(&dword_20AEA4000, v5, v12, "FIActivityTypeIsCalorimetryOptimized is true for activityType.effectiveTypeIdentifier: %s, returning false", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    goto LABEL_26;
  }

  v29 = [v1 effectiveTypeIdentifier];
  if (v29 > 0x29)
  {
    goto LABEL_32;
  }

  if (((1 << v29) & 0x100820000ALL) != 0)
  {
LABEL_21:
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static WOLog.activityPicker);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "activityType.isPedestrianCalorimetryOptimized is true, returning false";
LABEL_25:
    _os_log_impl(&dword_20AEA4000, v5, v6, v8, v7, 2u);
LABEL_26:
    MEMORY[0x20F2E9420](v7, -1, -1);
LABEL_27:

    v31 = 0;
    return v31 & 1;
  }

  if (((1 << v29) & 0x20002000000) != 0)
  {
    if (![v1 isIndoor])
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_32:
    if (v29 == 75)
    {
      goto LABEL_21;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v33 = specialized FIUIWorkoutActivityType.fetchAcceptedWorkoutKeys(from:forKey:)(static WorkoutCoreInjector.npsDomainAccessor, 0xD000000000000025, 0x800000020B45A170);
  if (v33)
  {
    v34 = v33;
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)([v1 effectiveTypeIdentifier]);
    MEMORY[0x20F2E6D80](95, 0xE100000000000000);
    v55[6] = [v1 location];
    type metadata accessor for HKWorkoutSessionLocationType(0);
    v35 = _print_unlocked<A, B>(_:_:)();
    MEMORY[0x28223BE20](v35, v36);
    v55[2] = v56;
    v37 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v55, v34);

    v31 = v37 ^ 1;
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.activityPicker);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56[0] = v42;
      *v41 = 136315394;
      v43 = (v37 & 1) == 0;
      if (v37)
      {
        v44 = 1702195828;
      }

      else
      {
        v44 = 0x65736C6166;
      }

      if (v37)
      {
        v45 = 0xE400000000000000;
      }

      else
      {
        v45 = 0xE500000000000000;
      }

      if (v43)
      {
        v46 = 1702195828;
      }

      else
      {
        v46 = 0x65736C6166;
      }

      if (v43)
      {
        v47 = 0xE400000000000000;
      }

      else
      {
        v47 = 0xE500000000000000;
      }

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v56);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2080;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v56);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_20AEA4000, v39, v40, "Checking if acceptedWorkouts contains currentWorkoutKey. Result: %s. Returning: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v42, -1, -1);
      MEMORY[0x20F2E9420](v41, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static WOLog.activityPicker);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_20AEA4000, v52, v53, "Failed to fetch accepted workout keys, returning true (show alert)", v54, 2u);
      MEMORY[0x20F2E9420](v54, -1, -1);
    }

    v31 = 1;
  }

  return v31 & 1;
}

Swift::Void __swiftcall FIUIWorkoutActivityType.setDisclaimerShown()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v1 = static WorkoutCoreInjector.npsDomainAccessor;
  v2 = specialized FIUIWorkoutActivityType.fetchAcceptedWorkoutKeys(from:forKey:)(static WorkoutCoreInjector.npsDomainAccessor, 0xD000000000000025, 0x800000020B45A170);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v14 = 0;
  v15 = 0xE000000000000000;

  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)([v0 effectiveTypeIdentifier]);
  MEMORY[0x20F2E6D80](95, 0xE100000000000000);
  v13 = [v0 location];
  type metadata accessor for HKWorkoutSessionLocationType(0);
  v4 = _print_unlocked<A, B>(_:_:)();
  MEMORY[0x28223BE20](v4, v5);
  v12[2] = &v14;
  v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v12, v3);

  if ((v6 & 1) == 0)
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)([v0 effectiveTypeIdentifier]);
    MEMORY[0x20F2E6D80](95, 0xE100000000000000);
    v13 = [v0 location];
    _print_unlocked<A, B>(_:_:)();
    v7 = v14;
    v8 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
    }

    *(v3 + 2) = v10 + 1;
    v11 = &v3[16 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = v8;
    specialized FIUIWorkoutActivityType.storeAcceptedWorkoutKeys(_:to:forKey:)(v3, v1, 0xD000000000000025, 0x800000020B45A170);
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *specialized FIUIWorkoutActivityType.fetchAcceptedWorkoutKeys(from:forKey:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = MEMORY[0x20F2E6C00](a2, a3);
  v7 = [a1 dataForPerGizmoDomainAndKey_];

  if (v7)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v8, v10);
    return v17;
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.activityPicker);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v17);
      _os_log_impl(&dword_20AEA4000, v12, v13, "workoutDomainAccessor data fetching failed for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    return 0;
  }
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

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

{
  type metadata accessor for NSNumber();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t specialized FIUIWorkoutActivityType.storeAcceptedWorkoutKeys(_:to:forKey:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;
  v10 = MEMORY[0x20F2E6C00](a3, a4);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a2 writeDataPerGizmoDomainAndKey:v10 data:isa];

  return outlined consume of Data._Representation(v7, v9);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

uint64_t Subject.wrappedValue.getter(void *a1)
{
  type metadata accessor for PassthroughSubject();
  swift_getWitnessTable();
  return Publisher.eraseToAnyPublisher()();
}

uint64_t Subject.init()@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for PassthroughSubject();
  result = PassthroughSubject.__allocating_init()();
  *a4 = result;
  return result;
}

uint64_t type metadata instantiation function for Subject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for Subject(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Subject(uint64_t result, int a2, int a3)
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

uint64_t PhoneFitnessCapabilities.optimizedCalorimetry(activityType:)(void *a1)
{
  v2 = [a1 identifier];
  if (v2 > 0x34 || ((1 << v2) & 0x10002001002000) == 0)
  {
    return 0;
  }

  else
  {
    return [a1 isIndoor] ^ 1;
  }
}

uint64_t protocol witness for DeviceFitnessCapabilities.optimizedCalorimetry(activityType:) in conformance PhoneFitnessCapabilities(void *a1)
{
  v2 = [a1 identifier];
  if (v2 > 0x34 || ((1 << v2) & 0x10002001002000) == 0)
  {
    return 0;
  }

  else
  {
    return [a1 isIndoor] ^ 1;
  }
}

uint64_t static CurrentDevice.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for capabilities != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of DeviceFitnessCapabilities(&static CurrentDevice.capabilities, v2);
}

uint64_t outlined init with copy of DeviceFitnessCapabilities(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for PhoneFitnessCapabilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PhoneFitnessCapabilities(_WORD *result, int a2, int a3)
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

unint64_t MirroredStartContentType.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

WorkoutCore::MirroredStartContentType_optional __swiftcall MirroredStartContentType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MirroredStartContentType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredStartContentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredStartContentType()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x20F2E7FF0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredStartContentType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x20F2E7FF0](v3);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MirroredStartContentType@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MirroredStartContentType(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredStartContentType()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t MirroredStart.contentData.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

_BYTE *MirroredStart.init(contentType:contentData:startSource:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t MirroredStart.serialize()()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type MirroredStart and conformance MirroredStart();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

unint64_t lazy protocol witness table accessor for type MirroredStart and conformance MirroredStart()
{
  result = lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart;
  if (!lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart;
  if (!lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart and conformance MirroredStart);
  }

  return result;
}

uint64_t static MirroredStart.deserialize(from:)()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MirroredStart and conformance MirroredStart();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t static MirroredStart.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[3];
  v4 = a1[3];
  return specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & (v4 == v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredStart.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredStart.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MirroredStart.CodingKeys()
{
  v1 = 0x44746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x756F537472617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MirroredStart.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MirroredStart.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredStart.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MirroredStart.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MirroredStart.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore13MirroredStartV10CodingKeys018_B578F4AD4F6126875K13CEC2B3A796323LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore13MirroredStartV10CodingKeys018_B578F4AD4F6126875K13CEC2B3A796323LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v15 = *(v1 + 3);
  v16 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = v8;
  v20 = 0;
  lazy protocol witness table accessor for type MirroredStartContentType and conformance MirroredStartContentType();
  v11 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    v12 = v15;
    v18 = v16;
    v19 = v10;
    v20 = 1;
    outlined copy of Data._Representation(v16, v10);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v18, v19);
    v18 = v12;
    v20 = 2;
    type metadata accessor for NLWorkoutStartSource(0);
    lazy protocol witness table accessor for type NLWorkoutStartSource and conformance NLWorkoutStartSource(&lazy protocol witness table cache variable for type NLWorkoutStartSource and conformance NLWorkoutStartSource, &protocol conformance descriptor for NLWorkoutStartSource);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MirroredStart.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore13MirroredStartV10CodingKeys018_B578F4AD4F6126875K13CEC2B3A796323LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore13MirroredStartV10CodingKeys018_B578F4AD4F6126875K13CEC2B3A796323LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type MirroredStartContentType and conformance MirroredStartContentType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v14[0];
  v16 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v14[0];
  v10 = v14[1];
  type metadata accessor for NLWorkoutStartSource(0);
  v16 = 2;
  lazy protocol witness table accessor for type NLWorkoutStartSource and conformance NLWorkoutStartSource(&lazy protocol witness table cache variable for type NLWorkoutStartSource and conformance NLWorkoutStartSource, &protocol conformance descriptor for NLWorkoutStartSource);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v14[0];
  *a2 = v15;
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  outlined copy of Data._Representation(v11, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined consume of Data._Representation(v11, v10);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MirroredStart(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[3];
  v4 = a1[3];
  return specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & (v4 == v3);
}

unint64_t MirroredStartError.errorDescription.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0xD00000000000001ALL;
  }

  _StringGuts.grow(_:)(23);

  if (v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v1)
  {
    v4 = "alorimetryWorkoutsKey";
  }

  else
  {
    v4 = "prewarmWorkoutWatchApp";
  }

  MEMORY[0x20F2E6D80](v3, v4 | 0x8000000000000000);

  return 0xD000000000000015;
}

void *NLWorkoutStartSource.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t NLWorkoutStartSource.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t protocol witness for Decodable.init(from:) in conformance NLWorkoutStartSource@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v5;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance NLWorkoutStartSource(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x20F2E42A0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys;
  if (!lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStart.CodingKeys and conformance MirroredStart.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStartContentType and conformance MirroredStartContentType()
{
  result = lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType;
  if (!lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType;
  if (!lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType;
  if (!lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType;
  if (!lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartContentType and conformance MirroredStartContentType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NLWorkoutStartSource and conformance NLWorkoutStartSource(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLWorkoutStartSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStartError and conformance MirroredStartError()
{
  result = lazy protocol witness table cache variable for type MirroredStartError and conformance MirroredStartError;
  if (!lazy protocol witness table cache variable for type MirroredStartError and conformance MirroredStartError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartError and conformance MirroredStartError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredStartContentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredStartContentType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MirroredStart(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredStart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredStartError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MirroredStartError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for MirroredStartError(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for MirroredStartError(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredStart.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredStart.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized MirroredStart.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F537472617473 && a2 == 0xEB00000000656372)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double one-time initialization function for zoomScaleMaxDistanceBetweenRunners()
{
  v0 = objc_opt_self();
  v1 = [v0 mileUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:1.0];

  v3 = [v0 meterUnit];
  [v2 doubleValueForUnit_];
  v5 = v4;

  result = v5 * 0.25;
  *&static RaceElevationChartLayout.zoomScaleMaxDistanceBetweenRunners = v5 * 0.25;
  return result;
}

double one-time initialization function for zoomScaleMinSideOffset()
{
  v0 = objc_opt_self();
  v1 = [v0 mileUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:1.0];

  v3 = [v0 meterUnit];
  [v2 doubleValueForUnit_];
  v5 = v4;

  result = v5 * 0.0625;
  *&static RaceElevationChartLayout.zoomScaleMinSideOffset = v5 * 0.0625;
  return result;
}

double one-time initialization function for zoomedDomain()
{
  v0 = objc_opt_self();
  v1 = [v0 mileUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:1.0];

  v3 = [v0 meterUnit];
  [v2 doubleValueForUnit_];
  v5 = v4;

  result = v5 * 3.0 * 0.125;
  *&static RaceElevationChartLayout.zoomedDomain = result;
  return result;
}

double static RaceElevationChartLayout.zoomScaleMaxDistanceBetweenRunners.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t getEnumTagSinglePayload for RaceElevationChartLayout(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceElevationChartLayout(_WORD *result, int a2, int a3)
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

uint64_t one-time initialization function for defaultWorkoutConfiguration()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - v11;
  if (one-time initialization token for outdoorCycle != -1)
  {
    swift_once();
  }

  v13 = static FIUIWorkoutActivityType.outdoorCycle;
  v14 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v40 = v13;
  v15 = [v14 initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v39 = specialized Occurrence.__allocating_init(count:)(0);
  v16 = v12;
  v41 = v12;
  v17 = *(v1 + 16);
  v17(v9, v16, v0);
  v18 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration(0));
  v38 = v9;
  v19 = v18;
  swift_beginAccess();
  v43 = v15;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v20 = v15;
  v37 = v20;
  Published.init(initialValue:)();

  swift_endAccess();
  v17(v5, v9, v0);
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v24 = v5;
  v23(&v19[v21], 1, 1, v22);
  v23(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v22);
  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v26 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v26 - 8) + 56))(&v19[v25], 1, 1, v26);
  (*(v1 + 56))(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v17(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v24, v0);
  v29 = v39;
  v28 = v40;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v40;
  v19[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v29;
  swift_beginAccess();
  *&v19[v27] = 0;
  v19[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v30 = type metadata accessor for WorkoutConfiguration(0);
  v42.receiver = v19;
  v42.super_class = v30;
  v31 = v28;
  v32 = v29;
  v33 = objc_msgSendSuper2(&v42, sel_init);

  v34 = *(v1 + 8);
  v34(v24, v0);
  v34(v38, v0);
  result = (v34)(v41, v0);
  static MirroredHostStartConfiguration.defaultWorkoutConfiguration = v33;
  return result;
}

id static MirroredHostStartConfiguration.defaultWorkoutConfiguration.getter()
{
  if (one-time initialization token for defaultWorkoutConfiguration != -1)
  {
    swift_once();
  }

  v1 = static MirroredHostStartConfiguration.defaultWorkoutConfiguration;

  return v1;
}

_BYTE *MirroredHostStartConfiguration.init(startSource:usePrecisionStart:workoutConfiguration:protocolVersion:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 1) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t MirroredHostStartConfiguration.init(protobuf:)@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v62 = &v60 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v60 = &v60 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v60 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v61 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v60 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v60 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v60 - v30;
  v32 = *(a1 + 8);
  v66 = *a1;
  v67 = v32;
  MirroredHostStartSource.init(protobuf:)(&v66, &v68);
  v69 = v68;
  v68 = *(a1 + 9);
  v33 = *(a1 + 24);
  v66 = *(a1 + 16);
  v67 = v33;
  MirroredHostProtocolVersion.init(protobuf:)(&v66);
  v34 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  v35 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredBlob?(a1 + v34, v15);
  v36 = *(v17 + 48);
  if (v36(v15, 1, v16) == 1)
  {
    *v31 = 0;
    v31[8] = 1;
    *(v31 + 1) = xmmword_20B42FB30;
    UnknownStorage.init()();
    if (v36(v15, 1, v16) != 1)
    {
      outlined destroy of Apple_Workout_Core_MirroredBlob?(v15, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredBlob(v15, v31);
  }

  v37 = *v31;
  v38 = v31[8];
  outlined destroy of Apple_Workout_Core_MirroredBlob(v31, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v66 = v37;
  v67 = v38;
  MirroredBlobContentType.init(protobuf:)(&v66, &v65);
  if (v65 > 1u)
  {
    if (v65 == 2)
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      v40 = v35 + v34;
      v41 = v62;
      outlined init with copy of Apple_Workout_Core_MirroredBlob?(v40, v62);
      if (v36(v41, 1, v16) == 1)
      {
        *v24 = 0;
        v24[8] = 1;
        *(v24 + 1) = xmmword_20B42FB30;
        UnknownStorage.init()();
        if (v36(v41, 1, v16) != 1)
        {
          outlined destroy of Apple_Workout_Core_MirroredBlob?(v41, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
        }
      }

      else
      {
        outlined init with take of Apple_Workout_Core_MirroredBlob(v41, v24);
      }

      type metadata accessor for RaceWorkoutConfiguration(0);
      v55 = *(v24 + 2);
      v56 = *(v24 + 3);
      outlined copy of Data._Representation(v55, v56);
      outlined destroy of Apple_Workout_Core_MirroredBlob(v24, type metadata accessor for Apple_Workout_Core_MirroredBlob);
      lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for RaceWorkoutConfiguration, &protocol conformance descriptor for WorkoutConfiguration);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    }

    else
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      v49 = v35 + v34;
      v50 = v63;
      outlined init with copy of Apple_Workout_Core_MirroredBlob?(v49, v63);
      if (v36(v50, 1, v16) == 1)
      {
        v51 = v61;
        *v61 = 0;
        *(v51 + 8) = 1;
        *(v51 + 1) = xmmword_20B42FB30;
        UnknownStorage.init()();
        if (v36(v50, 1, v16) != 1)
        {
          outlined destroy of Apple_Workout_Core_MirroredBlob?(v50, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
        }
      }

      else
      {
        v51 = v61;
        outlined init with take of Apple_Workout_Core_MirroredBlob(v50, v61);
      }

      type metadata accessor for IntervalWorkoutConfiguration(0);
      v55 = v51[2];
      v56 = v51[3];
      outlined copy of Data._Representation(v55, v56);
      outlined destroy of Apple_Workout_Core_MirroredBlob(v51, type metadata accessor for Apple_Workout_Core_MirroredBlob);
      lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for IntervalWorkoutConfiguration, &protocol conformance descriptor for WorkoutConfiguration);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    }

    outlined destroy of Apple_Workout_Core_MirroredBlob(v35, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    outlined consume of Data._Representation(v55, v56);

    v43 = v66;
  }

  else if (v65)
  {
    if (one-time initialization token for defaultWorkoutConfiguration != -1)
    {
      swift_once();
    }

    v42 = one-time initialization token for dataLink;
    v43 = static MirroredHostStartConfiguration.defaultWorkoutConfiguration;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static WOLog.dataLink);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v43;
      *v48 = v43;
      v43 = v43;
      _os_log_impl(&dword_20AEA4000, v45, v46, "[mirrored] cannot deserialize WorkoutConfiguration from nskeyedarchiver (not supported), assigned default: %@", v47, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredBlob?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v48, -1, -1);
      MEMORY[0x20F2E9420](v47, -1, -1);
    }

    result = outlined destroy of Apple_Workout_Core_MirroredBlob(v35, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  }

  else
  {
    v39 = v60;
    outlined init with copy of Apple_Workout_Core_MirroredBlob?(v35 + v34, v60);
    if (v36(v39, 1, v16) == 1)
    {
      *v28 = 0;
      v28[8] = 1;
      *(v28 + 1) = xmmword_20B42FB30;
      UnknownStorage.init()();
      if (v36(v39, 1, v16) != 1)
      {
        outlined destroy of Apple_Workout_Core_MirroredBlob?(v39, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_MirroredBlob(v39, v28);
    }

    v52 = *(v28 + 2);
    v53 = *(v28 + 3);
    outlined copy of Data._Representation(v52, v53);
    outlined destroy of Apple_Workout_Core_MirroredBlob(v28, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    v54 = specialized Occurrence.__allocating_init(count:)(0);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v43 = specialized static WorkoutConfiguration.importFromData(_:with:validator:)(v52, v53, v54, static WorkoutConfigurationValidator.shared);
    outlined destroy of Apple_Workout_Core_MirroredBlob(v35, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);

    result = outlined consume of Data._Representation(v52, v53);
  }

  v58 = v68;
  v59 = v64;
  *v64 = v69;
  v59[1] = v58;
  *(v59 + 1) = v43;
  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_MirroredBlob?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MirroredHostStartConfiguration.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostStartConfiguration);
  return static Message.with(_:)();
}

void closure #1 in MirroredHostStartConfiguration.protobuf.getter(uint64_t a1, __int16 a2, void *a3)
{
  v6 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v69 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutPlan();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v67 = *(v15 - 8);
  v68 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v65 = a1;
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2 & 1;
  *(a1 + 8) = 1;
  *(a1 + 9) = HIBYTE(a2) & 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for RaceWorkoutConfiguration(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v20 = a3;
    JSONEncoder.init()();
    v71 = v19;
    lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for RaceWorkoutConfiguration, &protocol conformance descriptor for WorkoutConfiguration);
    v21 = v70;
    v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v24 = v21;
    if (!v21)
    {
      v25 = MEMORY[0x28223BE20](v22, v23);
      *(&v63 - 32) = 2;
      *(&v63 - 3) = v25;
      *(&v63 - 2) = v26;
      v27 = v25;
      v28 = v26;
      lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob, &protocol conformance descriptor for Apple_Workout_Core_MirroredBlob);
LABEL_16:
      v49 = v66;
      v50 = v68;
      static Message.with(_:)();

      outlined consume of Data._Representation(v27, v28);
      v51 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
      v52 = v65;
      outlined destroy of Apple_Workout_Core_MirroredBlob?(v65 + v51, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
      outlined init with take of Apple_Workout_Core_MirroredBlob(v49, v52 + v51);
      (*(v67 + 56))(v52 + v51, 0, 1, v50);
      return;
    }
  }

  else
  {
    v63 = v11;
    v64 = v10;
    v29 = v69;
    type metadata accessor for IntervalWorkoutConfiguration(0);
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      v45 = v70;
      WorkoutConfiguration.workoutPlanRepresentation()(v14);
      v24 = v45;
      if (!v45)
      {
        (*(v29 + 104))(v9, *MEMORY[0x277CE3FA0], v6);
        v46 = WorkoutPlan.dataRepresentation(as:)();
        v53 = *(v29 + 8);
        v54 = v46;
        v56 = v55;
        v53(v9, v6);
        v57 = (*(v63 + 8))(v14, v64);
        MEMORY[0x28223BE20](v57, v58);
        *(&v63 - 32) = 0;
        *(&v63 - 3) = v54;
        *(&v63 - 2) = v56;
        lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob, &protocol conformance descriptor for Apple_Workout_Core_MirroredBlob);
        v59 = v66;
        v60 = v68;
        static Message.with(_:)();
        outlined consume of Data._Representation(v54, v56);
        v61 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
        v62 = v65;
        outlined destroy of Apple_Workout_Core_MirroredBlob?(v65 + v61, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
        outlined init with take of Apple_Workout_Core_MirroredBlob(v59, v62 + v61);
        (*(v67 + 56))(v62 + v61, 0, 1, v60);
        return;
      }

      goto LABEL_7;
    }

    v31 = v30;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v20 = a3;
    JSONEncoder.init()();
    v71 = v31;
    lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for IntervalWorkoutConfiguration, &protocol conformance descriptor for WorkoutConfiguration);
    v32 = v70;
    v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v24 = v32;
    if (!v32)
    {
      v47 = MEMORY[0x28223BE20](v33, v34);
      *(&v63 - 32) = 3;
      *(&v63 - 3) = v47;
      *(&v63 - 2) = v48;
      v27 = v47;
      v28 = v48;
      lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob, &protocol conformance descriptor for Apple_Workout_Core_MirroredBlob);
      goto LABEL_16;
    }
  }

LABEL_7:
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static WOLog.dataLink);
  v36 = a3;
  v37 = v24;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412546;
    *(v40 + 4) = v36;
    *v41 = v36;
    *(v40 + 12) = 2112;
    v42 = v36;
    v43 = v24;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v44;
    v41[1] = v44;
    _os_log_impl(&dword_20AEA4000, v38, v39, "[mirrored] cannot serialize WorkoutConfiguration (%@ to protobuf with error: %@", v40, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v41, -1, -1);
    MEMORY[0x20F2E9420](v40, -1, -1);
  }

  else
  {
  }
}

uint64_t MirroredHostStartConfiguration.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(85);
  MEMORY[0x20F2E6D80](0x756F537472617473, 0xED0000203A656372);
  if (v1)
  {
    v3 = 0x6465726F7272696DLL;
  }

  else
  {
    v3 = 0x6944705564616568;
  }

  if (v1)
  {
    v4 = 0xED00007472617453;
  }

  else
  {
    v4 = 0xED000079616C7073;
  }

  MEMORY[0x20F2E6D80](v3, v4);

  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B45A220);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v5, v6);

  MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B45A240);
  v7 = WorkoutConfiguration.logString.getter();
  MEMORY[0x20F2E6D80](v7);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45A260);
  MEMORY[0x20F2E6D80](0x6C41696C6970616ELL, 0xED000064656E6769);
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostStartConfiguration()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostStartConfiguration);
  return static Message.with(_:)();
}

uint64_t MirroredHostStartConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x20F2E7FF0](*v1);
  Hasher._combine(_:)(v2);
  NSObject.hash(into:)();
  return MEMORY[0x20F2E7FF0](0);
}

Swift::Int MirroredHostStartConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Hasher._combine(_:)(v2);
  NSObject.hash(into:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostStartConfiguration()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Hasher._combine(_:)(v2);
  NSObject.hash(into:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredHostStartConfiguration(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x20F2E7FF0](*v1);
  Hasher._combine(_:)(v2);
  NSObject.hash(into:)();
  return MEMORY[0x20F2E7FF0](0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostStartConfiguration(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  Hasher._combine(_:)(v3);
  NSObject.hash(into:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredBlob(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredBlob?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_MirroredBlob(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static MirroredHostStartConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, __n128 a3)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t instantiation function for generic protocol witness table for MirroredHostStartConfiguration(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration()
{
  result = lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration;
  if (!lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration;
  if (!lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration;
  if (!lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostStartConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredHostStartConfiguration(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in MirroredBlob.protobuf.getterpartial apply(uint64_t a1)
{
  return partial apply for closure #1 in MirroredBlob.protobuf.getter(a1);
}

{
  return partial apply for closure #1 in MirroredBlob.protobuf.getter(a1);
}

{
  return _s11WorkoutCore12MirroredBlobV8protobufAA06Apple_a1_b1_cD0VvgyAFzXEfU_TA_1(a1);
}

uint64_t static HeartRateConfiguration.defaultManualZones()()
{
  v0 = [objc_opt_self() _countPerMinuteUnit];
  v1 = [objc_opt_self() quantityWithUnit:v0 doubleValue:178.6];

  if (one-time initialization token for defaultRestingHeartRate != -1)
  {
    swift_once();
  }

  v2 = specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(v1, static HeartRateConfiguration.defaultRestingHeartRate);

  return v2;
}

void static HeartRateConfiguration.manualZones(completion:)(uint64_t a1, uint64_t a2)
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
  v7[5] = v2;
  v8 = v5;
  v9 = v6;

  v10 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B458A70);
  v12[4] = partial apply for closure #1 in static HeartRateConfiguration.manualZones(completion:);
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_6_2;
  v11 = _Block_copy(v12);

  [v8 dataForKey:v10 completion:v11];
  _Block_release(v11);
}

uint64_t closure #1 in static HeartRateConfiguration.manualZones(completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(void))
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v12 = JSONDecoder.init()();
  p_cb = &OBJC_PROTOCOL___WOLowPowerModeProviderSessionDelegate.cb;
  if (!a3)
  {
    goto LABEL_6;
  }

  v14 = a3;
  if (one-time initialization token for zones != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.zones);
    v16 = a3;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v55 = v12;
      v19 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v58 = v53;
      *v19 = 136315394;
      v20 = _typeName(_:qualified:)();
      v22 = a2;
      v23 = a5;
      v24 = a4;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v58);
      p_cb = (&OBJC_PROTOCOL___WOLowPowerModeProviderSessionDelegate + 64);

      *(v19 + 4) = v25;
      a4 = v24;
      a5 = v23;
      a2 = v22;
      *(v19 + 12) = 2112;
      v26 = a3;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v27;
      *v52 = v27;
      _os_log_impl(&dword_20AEA4000, v17, v18, "%s Failed to retrieve manual zones from key-value store with error:: %@", v19, 0x16u);
      outlined destroy of NSObject?(v52);
      MEMORY[0x20F2E9420](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x20F2E9420](v53, -1, -1);
      v28 = v19;
      v12 = v55;
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    else
    {
    }

LABEL_6:
    if (a2 >> 60 == 15)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    outlined copy of Data._Representation(a1, a2);
    lazy protocol witness table accessor for type [Double] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], MEMORY[0x277D83A30], MEMORY[0x277D83978]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v29 = p_cb;
    v30 = v58;
    p_cb = *(v58 + 16);
    if (!p_cb)
    {
      v32 = a1;
      goto LABEL_11;
    }

    v56 = a1;
    v31 = *(v58 + 32);
    a1 = p_cb - 1;
    if (v31 == *(v58 + 32 + 8 * (p_cb - 1)))
    {
      v32 = v56;
LABEL_11:
      outlined consume of Data?(v32, a2);

      p_cb = v29;
      break;
    }

    v45 = MEMORY[0x277D84F90];
    v58 = MEMORY[0x277D84F90];
    if (p_cb == 1)
    {
LABEL_30:

      a4(v45);
      outlined consume of Data?(v56, a2);
    }

    v54 = a2;
    a2 = v12;
    v57 = a4;
    a4 = type metadata accessor for HeartRateZone();
    v12 = (v30 + 40);
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    a3 = 1;
    while (v46)
    {
      v47 = *v12;
      v48 = swift_allocObject();
      v49 = floor(v31);
      v50 = floor(v47);
      if (v31 > v47 || v49 > v50)
      {
        goto LABEL_32;
      }

      *(v48 + 16) = v49;
      *(v48 + 24) = v50;
      *(v48 + 32) = a3 - 1;
      *(v48 + 40) = a1;
      MEMORY[0x20F2E6F30]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++a3;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      --v46;
      ++v12;
      v31 = v47;
      if (a3 == p_cb)
      {
        v45 = v58;
        a4 = v57;
        a2 = v54;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  if (*(p_cb + 406) != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static WOLog.zones);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v58 = v37;
    *v36 = 136315138;
    v38 = _typeName(_:qualified:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v58);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_20AEA4000, v34, v35, "%s using default manual zones", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F2E9420](v37, -1, -1);
    MEMORY[0x20F2E9420](v36, -1, -1);
  }

  v41 = [objc_opt_self() _countPerMinuteUnit];
  v42 = [objc_opt_self() quantityWithUnit:v41 doubleValue:178.6];

  if (one-time initialization token for defaultRestingHeartRate != -1)
  {
    swift_once();
  }

  v43 = specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(v42, static HeartRateConfiguration.defaultRestingHeartRate);

  a4(v43);
}

void static HeartRateConfiguration.setConfigured(zones:)(unint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (one-time initialization token for valueStore == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        v40 = v4 - 1;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = 0;
          v1 = MEMORY[0x277D84F90];
          do
          {
            v6 = *(MEMORY[0x20F2E7A20](v5, a1) + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v8 = *(v1 + 2);
            v7 = *(v1 + 3);
            v9 = v8 + 1;
            if (v8 >= v7 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v1);
            }

            ++v5;
            swift_unknownObjectRelease();
            *(v1 + 2) = v9;
            *&v1[8 * v8 + 32] = v6;
          }

          while (v4 != v5);
        }

        else
        {
          v19 = a1 + 32;
          v1 = MEMORY[0x277D84F90];
          v20 = v4;
          do
          {
            v21 = *(*v19 + 16);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v23 = *(v1 + 2);
            v22 = *(v1 + 3);
            v9 = v23 + 1;
            if (v23 >= v22 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v1);
            }

            *(v1 + 2) = v9;
            *&v1[8 * v23 + 32] = v21;
            v19 += 8;
            --v20;
          }

          while (v20);
        }

        if ((a1 & 0xC000000000000001) == 0)
        {
          if (v4 <= *(v3 + 16))
          {
            v24 = *(a1 + 8 * v40 + 32);

LABEL_26:
            v25 = *(v24 + 24);
            v26 = *(v1 + 3);
            if (v9 >= v26 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v9 + 1, 1, v1);
            }

            *(v1 + 2) = v9 + 1;
            *&v1[8 * v9 + 32] = v25;
            goto LABEL_31;
          }

          __break(1u);
LABEL_42:
          swift_once();
LABEL_14:
          v11 = static HeartRateConfiguration.valueStore;
          v10 = qword_27C75FF10;
          v12 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B458A70);
          aBlock = 0;
          v13 = [v11 setData:0 forKey:v12 error:&aBlock];

          v14 = aBlock;
          if (v13)
          {
            v45 = closure #1 in FastSyncHKKeyValueDomain.forceSync();
            v46 = 0;
            aBlock = MEMORY[0x277D85DD0];
            v42 = 1107296256;
            v43 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
            v44 = &block_descriptor_18;
            v15 = _Block_copy(&aBlock);
            v16 = v14;
            [v10 forceNanoSyncWithOptions:0 completion:v15];
            _Block_release(v15);
          }

          else
          {
            v17 = aBlock;
            v18 = _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          return;
        }
      }

      v24 = MEMORY[0x20F2E7A20](v40, a1);
      v9 = *(v1 + 2);
      goto LABEL_26;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v1 = MEMORY[0x277D84F90];
LABEL_31:
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  aBlock = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  lazy protocol witness table accessor for type [Double] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], MEMORY[0x277D83A08], MEMORY[0x277D83948]);
  v27 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v29 = v28;

  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v31 = static HeartRateConfiguration.valueStore;
  v30 = qword_27C75FF10;
  if (v29 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v33 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B458A70);
  aBlock = 0;
  v34 = [v31 setData:isa forKey:v33 error:&aBlock];

  v35 = aBlock;
  if (v34)
  {
    v45 = closure #1 in FastSyncHKKeyValueDomain.forceSync();
    v46 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v44 = &block_descriptor_3_2;
    v36 = _Block_copy(&aBlock);
    v37 = v35;
    [v30 forceNanoSyncWithOptions:0 completion:v36];

    outlined consume of Data?(v27, v29);
    _Block_release(v36);
  }

  else
  {
    v38 = aBlock;
    v39 = _convertNSErrorToError(_:)();

    swift_willThrow();

    outlined consume of Data?(v27, v29);
  }
}

uint64_t specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 _countPerMinuteUnit];
  [a1 doubleValueForUnit_];
  v7 = v6;

  v8 = [v4 _countPerMinuteUnit];
  [a2 doubleValueForUnit_];
  v10 = v9;

  if (v7 + -50.0 < v10)
  {
    v10 = v7 + -50.0;
  }

  v11 = v7 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20B425990;
  v13 = v10 + v11 * 0.6;
  type metadata accessor for HeartRateZone();
  result = swift_allocObject();
  if (v13 >= 0.0)
  {
    v15 = floor(v13);
    if (v15 >= 0.0)
    {
      *(result + 16) = 0;
      *(result + 24) = v15;
      *(result + 32) = xmmword_20B4322F0;
      *(v12 + 32) = result;
      v16 = 2;
      while (1)
      {
        v17 = v10 + v11 * ((v16 - 1) * 0.1 + 0.5);
        v18 = v10 + v11 * (v16 * 0.1 + 0.5);
        result = swift_allocObject();
        v19 = floor(v17);
        v20 = floor(v18);
        if (v17 > v18 || v19 > v20)
        {
          break;
        }

        *(result + 16) = v19;
        *(result + 24) = v20;
        *(result + 32) = v16 - 1;
        *(result + 40) = 5;
        MEMORY[0x20F2E6F30]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (++v16 == 6)
        {
          return v12;
        }
      }

      __break(1u);
    }
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type [Double] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PacerWorkoutConfiguration.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616F47656D6974;
  }

  else
  {
    v3 = 0x65636E6174736964;
  }

  if (v2)
  {
    v4 = 0xEC0000006C616F47;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616F47656D6974;
  }

  else
  {
    v5 = 0x65636E6174736964;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEC0000006C616F47;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PacerWorkoutConfiguration.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PacerWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PacerWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PacerWorkoutConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PacerWorkoutConfiguration.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance PacerWorkoutConfiguration.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x65636E6174736964;
  if (*v1)
  {
    v2 = 0x6C616F47656D6974;
  }

  v3 = 0xEC0000006C616F47;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PacerWorkoutConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 0x6C616F47656D6974;
  }

  else
  {
    return 0x65636E6174736964;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PacerWorkoutConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PacerWorkoutConfiguration.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PacerWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PacerWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t key path getter for PacerWorkoutConfiguration.distanceGoal : PacerWorkoutConfiguration@<X0>(void *a4@<X8>)
{
  return key path getter for PacerWorkoutConfiguration.distanceGoal : PacerWorkoutConfiguration(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t (*PacerWorkoutConfiguration.distanceGoal.modify(uint64_t *a1))()
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
  return PacerWorkoutConfiguration.distanceGoal.modify;
}

uint64_t (*PacerWorkoutConfiguration.$distanceGoal.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__distanceGoal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PacerWorkoutConfiguration.$distanceGoal.modify;
}

uint64_t PacerWorkoutConfiguration.distanceGoal.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path setter for PacerWorkoutConfiguration.distanceGoal : PacerWorkoutConfiguration(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  v9 = v6;
  return static Published.subscript.setter();
}

uint64_t PacerWorkoutConfiguration.distanceGoal.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t (*PacerWorkoutConfiguration.timeGoal.modify(uint64_t *a1))()
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
  return PacerWorkoutConfiguration.timeGoal.modify;
}

void PacerWorkoutConfiguration.distanceGoal.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t PacerWorkoutConfiguration.$distanceGoal.getter(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for PacerWorkoutConfiguration.$distanceGoal : PacerWorkoutConfiguration(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for PacerWorkoutConfiguration.$distanceGoal : PacerWorkoutConfiguration(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t PacerWorkoutConfiguration.$distanceGoal.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*PacerWorkoutConfiguration.$timeGoal.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__timeGoal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PacerWorkoutConfiguration.$timeGoal.modify;
}

void PacerWorkoutConfiguration.$distanceGoal.modify(uint64_t a1, char a2)
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

Swift::Int PacerWorkoutConfiguration.hash.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Hasher.init()();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, sel_hash);
  MEMORY[0x20F2E7FF0](v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v4 = v7;
  NSObject.hash(into:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v5 = v7;
  NSObject.hash(into:)();

  return Hasher.finalize()();
}

id PacerWorkoutConfiguration.__allocating_init(_:distanceGoal:timeGoal:uuid:paceAlertEnabled:occurrence:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a6;
  v40 = a4;
  v38 = a1;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v33 - v18;
  v34 = *(v12 + 16);
  v36 = &v33 - v18;
  v34(&v33 - v18, a4, v11);
  v20 = objc_allocWithZone(v7);
  swift_beginAccess();
  v42 = a2;
  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v37 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v42 = a3;
  v35 = a3;
  Published.init(initialValue:)();
  swift_endAccess();
  v21 = v19;
  v22 = v34;
  v34(v16, v21, v11);
  *&v20[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v24 = type metadata accessor for Date();
  v25 = *(*(v24 - 8) + 56);
  v25(&v20[v23], 1, 1, v24);
  v25(&v20[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v24);
  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v27 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v27 - 8) + 56))(&v20[v26], 1, 1, v27);
  (*(v12 + 56))(&v20[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v11);
  v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v20[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v22(&v20[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v16, v11);
  *&v20[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v38;
  v20[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
  *&v20[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v39;
  swift_beginAccess();
  *&v20[v28] = 0;
  v20[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v29 = type metadata accessor for WorkoutConfiguration(0);
  v41.receiver = v20;
  v41.super_class = v29;
  v30 = objc_msgSendSuper2(&v41, sel_init);

  v31 = *(v12 + 8);
  v31(v40, v11);
  v31(v16, v11);
  v31(v36, v11);
  return v30;
}

uint64_t PacerWorkoutConfiguration.encode(to:)(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore05PacerD13ConfigurationC10CodingKeys33_D937294A2CBE536646CC811BEACA4640LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore05PacerD13ConfigurationC10CodingKeys33_D937294A2CBE536646CC811BEACA4640LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v1;
  static Published.subscript.getter(&v41);

  v9 = v41;
  v41 = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v41];

  v11 = v41;
  if (v10)
  {
    v37 = v4;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v41 = v12;
    v42 = v14;
    v40 = 0;
    v15 = lazy protocol witness table accessor for type Data and conformance Data();
    v16 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v16)
    {
      (*(v37 + 8))(v7, v3);
      v17 = v12;
      v18 = v14;
      return outlined consume of Data._Representation(v17, v18);
    }

    v34 = v15;
    v35 = v3;
    v36 = v12;
    v39 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v41);

    v21 = v41;
    v41 = 0;
    v22 = [v8 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v41];

    v23 = v41;
    if (v22)
    {
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v41 = v24;
      v42 = v26;
      v33 = v26;
      v40 = 1;
      v27 = v35;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v28 = v39;
      v29 = v36;
      v30 = v37;
      WorkoutConfiguration.encode(to:)(a1);
      (*(v30 + 8))(v7, v27);
      outlined consume of Data._Representation(v24, v33);
      v17 = v29;
      v18 = v28;
      return outlined consume of Data._Representation(v17, v18);
    }

    v31 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v36, v39);
    return (*(v37 + 8))(v7, v35);
  }

  else
  {
    v20 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v4 + 8))(v7, v3);
  }
}

char *PacerWorkoutConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore05PacerD13ConfigurationC10CodingKeys33_D937294A2CBE536646CC811BEACA4640LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore05PacerD13ConfigurationC10CodingKeys33_D937294A2CBE536646CC811BEACA4640LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_3;
  }

  LOBYTE(v40) = 0;
  v10 = lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v10;
  v36 = v6;
  v11 = v38;
  v12 = v39;
  v13 = _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  v14 = _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v15 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v31 = v13;
  v32 = v14;
  v33 = v12;
  v34 = v11;
  if (!v15)
  {
    lazy protocol witness table accessor for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError();
    swift_allocError();
    *v20 = 0xD000000000000027;
    v20[1] = 0x800000020B45A280;
    swift_willThrow();
    outlined consume of Data._Representation(v34, v33);
    (*(v36 + 8))(v9, v5);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_4;
  }

  v17 = v15;
  swift_beginAccess();
  v40 = v17;
  v18 = v17;
  Published.init(initialValue:)();
  swift_endAccess();
  LOBYTE(v40) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v36;
  v35 = v18;
  v21 = v39;
  v30 = v38;
  v22 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v23 = v33;
  v31 = v21;
  if (v22)
  {
    v26 = v22;
    swift_beginAccess();
    v40 = v26;
    v27 = v26;
    Published.init(initialValue:)();
    swift_endAccess();
    _ss7Decoder_pWOcTm_0(a1, &v38);
    v3 = WorkoutConfiguration.init(from:)(&v38);
    (*(v19 + 8))(v9, v5);
    outlined consume of Data._Representation(v34, v33);

    outlined consume of Data._Representation(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  lazy protocol witness table accessor for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError();
  swift_allocError();
  *v28 = 0xD000000000000023;
  v28[1] = 0x800000020B45A2B0;
  swift_willThrow();
  outlined consume of Data._Representation(v34, v23);
  outlined consume of Data._Representation(v30, v31);

  (*(v19 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24 = OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__distanceGoal;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  (*(*(v25 - 8) + 8))(&v3[v24], v25);
LABEL_4:
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t PacerWorkoutConfiguration.isEquivalent(to:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  _ss7Decoder_pWOcTm_0(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v13);

  v4 = v13[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v13);

  v5 = v13[0];
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(v13), , , v7 = v13[0], swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(v13), , , v8 = v13[0], v9 = static NSObject.== infix(_:_:)(), v7, v8, (v9 & 1) == 0))
  {

LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

  v10 = specialized WorkoutConfiguration.isEquivalent(to:)(v12, v2);

  return v10 & 1;
}

uint64_t PacerWorkoutConfiguration.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__distanceGoal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__timeGoal;

  return v5(v3, v2);
}

id PacerWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PacerWorkoutConfiguration.canonical()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v1 = specialized static PacerWorkoutConfiguration.canonical(activityType:)(v0);

  return v1;
}

id static PacerWorkoutConfiguration.canonicalCycling()(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v49 = &v40 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v40 - v11;
  v48 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:a1 isIndoor:0];
  v13 = objc_opt_self();
  v14 = [v13 mileUnit];
  v15 = objc_opt_self();
  v16 = [v15 quantityWithUnit:v14 doubleValue:5.0];

  v17 = [v13 meterUnit];
  [v16 doubleValueForUnit_];
  v19 = v18;

  v20 = [v13 meterUnit];
  v21 = [v15 quantityWithUnit:v20 doubleValue:v19];
  v46 = v21;

  v22 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v21];
  v23 = [v13 minuteUnit];
  v24 = [v15 quantityWithUnit:v23 doubleValue:15.0];
  v43 = v24;

  v25 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v24];
  v44 = v12;
  UUID.init()();
  v42 = specialized Occurrence.__allocating_init(count:)(0);
  v26 = *(v3 + 16);
  v27 = v49;
  v26(v49, v12, v2);
  v28 = objc_allocWithZone(v45);
  swift_beginAccess();
  v51 = v22;
  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v45 = v22;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v51 = v25;
  v41 = v25;
  Published.init(initialValue:)();
  swift_endAccess();
  v29 = v47;
  v26(v47, v27, v2);
  *&v28[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v30 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v31 = type metadata accessor for Date();
  v32 = *(*(v31 - 8) + 56);
  v32(&v28[v30], 1, 1, v31);
  v32(&v28[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v31);
  v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v34 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v34 - 8) + 56))(&v28[v33], 1, 1, v34);
  (*(v3 + 56))(&v28[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v2);
  v35 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v28[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v26(&v28[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v29, v2);
  *&v28[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v48;
  v28[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
  *&v28[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v42;
  swift_beginAccess();
  *&v28[v35] = 0;
  v28[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v36 = type metadata accessor for WorkoutConfiguration(0);
  v50.receiver = v28;
  v50.super_class = v36;
  v37 = objc_msgSendSuper2(&v50, sel_init);

  v38 = *(v3 + 8);
  v38(v29, v2);
  v38(v49, v2);
  v38(v44, v2);
  return v37;
}

void protocol witness for static Canonical.canonical() in conformance PacerWorkoutConfiguration(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v3 = specialized static PacerWorkoutConfiguration.canonical(activityType:)(v2);

  *a1 = v3;
}

id PacerWorkoutConfiguration.copyWith(activityType:distanceGoal:timeGoal:uuid:occurrence:)(void *a1, void *a2, void *a3, id a4, void *a5)
{
  v6 = v5;
  v53 = a5;
  v51 = a4;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v55 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v56 = &v50 - v20;
  if (a1)
  {
    v54 = a1;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = a1;
    static Published.subscript.getter(v59);

    v22 = v59[0];
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v54 = *(v6 + v25);
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v21 = a1;
  v22 = a2;
  if (a3)
  {
LABEL_4:
    v23 = a2;
    v24 = a3;
    goto LABEL_8;
  }

LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = a2;
  static Published.subscript.getter(v59);

  v24 = v59[0];
LABEL_8:
  outlined init with copy of UUID?(v51, v13);
  v28 = *(v15 + 48);
  if (v28(v13, 1, v14) == 1)
  {
    v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v15 + 16))(v56, v6 + v29, v14);
    v30 = v28(v13, 1, v14);
    v31 = a3;
    if (v30 != 1)
    {
      outlined destroy of UUID?(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v56, v13, v14);
    v32 = a3;
  }

  v33 = v53;
  if (v53)
  {
    v51 = v53;
  }

  else
  {
    v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v51 = *(v6 + v34);
  }

  v35 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v50 = *(v6 + v35);
  v36 = objc_allocWithZone(ObjectType);
  swift_beginAccess();
  v58 = v22;
  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v37 = v33;

  v53 = v22;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v58 = v24;
  ObjectType = v24;
  Published.init(initialValue:)();
  swift_endAccess();
  v38 = *(v15 + 16);
  v39 = v55;
  v38(v55, v56, v14);
  *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v41 = type metadata accessor for Date();
  v42 = *(*(v41 - 8) + 56);
  v42(&v36[v40], 1, 1, v41);
  v42(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v41);
  v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v44 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v44 - 8) + 56))(&v36[v43], 1, 1, v44);
  (*(v15 + 56))(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v14);
  v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v38(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v39, v14);
  *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v54;
  v36[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
  *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v51;
  swift_beginAccess();
  *&v36[v45] = v50;
  v36[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v46 = type metadata accessor for WorkoutConfiguration(0);
  v57.receiver = v36;
  v57.super_class = v46;
  v47 = objc_msgSendSuper2(&v57, sel_init);

  v48 = *(v15 + 8);
  v48(v39, v14);
  v48(v56, v14);
  return v47;
}

uint64_t specialized static PacerWorkoutConfiguration.displayName.getter()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B45A330);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

unint64_t lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError()
{
  result = lazy protocol witness table cache variable for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError;
  if (!lazy protocol witness table cache variable for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError);
  }

  return result;
}

uint64_t _ss7Decoder_pWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

id specialized static PacerWorkoutConfiguration.canonical(activityType:)(void *a1)
{
  v51 = a1;
  v1 = type metadata accessor for UUID();
  v42 = *(v1 - 8);
  v2 = v42;
  v4 = MEMORY[0x28223BE20](v1, v3);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v46 = &v42 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v42 - v10;
  v12 = objc_opt_self();
  v13 = [v12 mileUnit];
  v14 = objc_opt_self();
  v15 = [v14 quantityWithUnit:v13 doubleValue:2.0];

  v16 = [v12 meterUnit];
  [v15 doubleValueForUnit_];
  v18 = v17;

  v19 = [v12 meterUnit];
  v20 = [v14 quantityWithUnit:v19 doubleValue:v18];
  v49 = v20;

  v21 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v20];
  v22 = [v12 minuteUnit];
  v23 = [v14 quantityWithUnit:v22 doubleValue:17.0];
  v47 = v23;

  v24 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v23];
  v48 = v11;
  UUID.init()();
  v45 = specialized Occurrence.__allocating_init(count:)(0);
  v25 = *(v2 + 16);
  v26 = v46;
  v25(v46, v11, v1);
  v27 = objc_allocWithZone(type metadata accessor for PacerWorkoutConfiguration(0));
  swift_beginAccess();
  v53 = v21;
  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v44 = v21;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v53 = v24;
  v43 = v24;
  Published.init(initialValue:)();
  swift_endAccess();
  v28 = v50;
  v25(v50, v26, v1);
  *&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v30 = type metadata accessor for Date();
  v31 = *(*(v30 - 8) + 56);
  v31(&v27[v29], 1, 1, v30);
  v31(&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v30);
  v32 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v33 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v33 - 8) + 56))(&v27[v32], 1, 1, v33);
  v34 = v42;
  (*(v42 + 56))(&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v1);
  v35 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v25(&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v28, v1);
  v36 = v51;
  *&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v51;
  v27[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
  *&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v45;
  swift_beginAccess();
  *&v27[v35] = 0;
  v27[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v37 = type metadata accessor for WorkoutConfiguration(0);
  v52.receiver = v27;
  v52.super_class = v37;
  v38 = v36;
  v39 = objc_msgSendSuper2(&v52, sel_init);

  v40 = *(v34 + 8);
  v40(v28, v1);
  v40(v26, v1);
  v40(v48, v1);
  return v39;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PacerWorkoutConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for PacerWorkoutConfiguration;
  if (!type metadata singleton initialization cache for PacerWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PacerWorkoutConfiguration(uint64_t a1)
{
  type metadata accessor for Published<NLSessionActivityGoal>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<NLSessionActivityGoal>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<NLSessionActivityGoal>)
  {
    _sSo21NLSessionActivityGoalCMaTm_0(255, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<NLSessionActivityGoal>);
    }
  }
}

uint64_t getEnumTagSinglePayload for PacerWorkoutConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PacerWorkoutConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WorkoutStep.goal.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

{
  return MEMORY[0x282136920]();
}

uint64_t WorkoutStep.displayName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

{
  return MEMORY[0x282136910]();
}

uint64_t WorkoutStep.activeTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_18:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      if (*(v5 + 40))
      {

        return v5;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  return 0;
}

id WorkoutStep.activeHeartRateTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_29:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      v7 = *(v5 + 40);

      if (v7 == 1)
      {
        goto LABEL_25;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v8 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (v9)
  {
    v10 = *(v0 + v8);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v10 = static HeartRateTargetZone.defaultZone;
  }

  if (*(v10 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v10 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
  {
    v13 = v9;

LABEL_25:

    return 0;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12 = v9;

  if (v11)
  {

    return 0;
  }

  return v10;
}

char *WorkoutStep.activePowerZonesAlertTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_55;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v3 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      v7 = *(v5 + 40);

      if (v7 == 1)
      {

        return 0;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v1 = v2 & 0xC000000000000001;
    do
    {
      if (v1)
      {
        v10 = MEMORY[0x20F2E7A20](v9, v2);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v10 = *(v2 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v12 = *(v10 + 40);

      if (v12 == 1)
      {
        goto LABEL_39;
      }

      ++v9;
    }

    while (v11 != v8);
  }

  v13 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v14 = *(v0 + v13);
  if (v14)
  {
    v15 = *(v0 + v13);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v15 = static HeartRateTargetZone.defaultZone;
  }

  if (*(v15 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v15 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
  {
    v18 = v14;

LABEL_39:
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = v14;

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v20 = *(v0 + v19);
  if (v20)
  {
    v21 = *(v0 + v19);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v21 = static PowerZonesAlertTargetZone.defaultZone;
  }

  v22 = &v21[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = v22[16];
  v26 = v25 >> 6;
  if (v25 >> 6 > 1)
  {
    if (v26 != 2)
    {
      v28 = v20;
      outlined consume of PowerZonesAlertZoneType(v23, v24, v25);
      outlined consume of PowerZonesAlertZoneType(0, 0, 192);

      return 0;
    }
  }

  else if (v26)
  {
    outlined copy of PowerZonesAlertZoneType(v23, v24, v25);
  }

  v27 = v20;
  outlined consume of PowerZonesAlertZoneType(v23, v24, v25);
  outlined consume of PowerZonesAlertZoneType(0, 0, 192);
  outlined consume of PowerZonesAlertZoneType(v23, v24, v25);
  return v21;
}

uint64_t WorkoutStep.__allocating_init(_:goal:activityType:uuid:displayName:)(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v28 - v16;
  v18 = swift_allocObject();
  LOBYTE(a1) = *a1;
  v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v33 = 0;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v14 + 32))(v18 + v19, v17, v13);
  *(v18 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v18 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v20 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v33) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v18 + v20, v12, v8);
  *(v18 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v18 + 16) = a1;
  swift_beginAccess();
  v32 = a2;
  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v21 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v18 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v28;
  v22 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = v18 + v22;
  v26 = v29;
  (*(v24 + 16))(v25, v29, v23);
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v30;
  v34 = v31;

  static Published.subscript.setter();

  (*(v24 + 8))(v26, v23);
  return v18;
}

uint64_t WorkoutStep.targetZones.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *(v1 + v3) = a1;

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = static Published.subscript.modify();
  *v5 = !*v5;
  v4(v7, 0);
}

uint64_t WorkoutStep.heartRateTargetZone.setter(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = static Published.subscript.modify();
  *v8 = !*v8;
  v7(v10, 0);
}

uint64_t static WorkoutStep.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return specialized WorkoutStep.isEquivalent(to:)(a2, a1);
}

id WorkoutStep.heartRateTargetZoneWithDefault.getter(uint64_t *a1, void *a2, id *a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(v4 + v7);
  if (v8)
  {
    v9 = *(v4 + v7);
  }

  else
  {
    if (*a2 != -1)
    {
      swift_once();
    }

    v9 = *a3;
    v8 = 0;
  }

  v10 = v8;
  return v9;
}

uint64_t WorkoutStep.displayName.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStep.targetZones.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return WorkoutStep.targetZones.modify;
}

WorkoutCore::StepType_optional __swiftcall StepType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StepType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StepType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t StepType.description.getter()
{
  v1 = 1802661751;
  v2 = 0x70556D726177;
  if (*v0 != 2)
  {
    v2 = 0x6E776F446C6F6F63;
  }

  if (*v0)
  {
    v1 = 1953719666;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StepType()
{
  v1 = 1802661751;
  v2 = 0x70556D726177;
  if (*v0 != 2)
  {
    v2 = 0x6E776F446C6F6F63;
  }

  if (*v0)
  {
    v1 = 1953719666;
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

uint64_t WorkoutStep.isEquivalent(to:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized WorkoutStep.isEquivalent(to:)(v4, v1, v2, v3);
}

uint64_t WorkoutStep.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 1684632949;
    v7 = 0xD000000000000018;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001ELL;
    }

    if (a1 != 6)
    {
      v6 = v7;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return 0x6F5A746567726174;
    }
  }

  else
  {
    v1 = 0x6570795470657473;
    v2 = 0x7669746341736168;
    v3 = 0x7974697669746361;
    if (a1 != 4)
    {
      v3 = 0x6F5A746567726174;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4E79616C70736964;
    if (a1 != 1)
    {
      v4 = 1818324839;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutStep.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = WorkoutStep.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WorkoutStep.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutStep.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutStep.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutStep.CodingKeys(uint64_t a1)
{
  WorkoutStep.CodingKeys.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutStep.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  WorkoutStep.CodingKeys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutStep.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutStep.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutStep.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutStep.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutStep.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void WorkoutStep.stepType.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
}

double key path getter for WorkoutStep.displayName : WorkoutStep@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for WorkoutStep.displayName : WorkoutStep(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStep.displayName.modify(uint64_t *a1))()
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
  return WorkoutStep.displayName.modify;
}

uint64_t key path setter for WorkoutStep.$displayName : WorkoutStep(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutStep.$displayName.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStep.$displayName.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStep.$displayName.modify;
}

uint64_t key path getter for WorkoutStep.goal : WorkoutStep@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for WorkoutStep.goal : WorkoutStep(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t WorkoutStep.goal.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStep.goal.modify(uint64_t *a1))()
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
  return WorkoutStep.goal.modify;
}

uint64_t key path setter for WorkoutStep.$goal : WorkoutStep(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}