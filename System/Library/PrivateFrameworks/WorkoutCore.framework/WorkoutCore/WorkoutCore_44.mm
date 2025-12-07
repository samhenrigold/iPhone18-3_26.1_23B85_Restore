uint64_t WorkoutVoiceMomentAnalyticsEvent.announcementFailure.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence23AnnounceUtteranceResultVSgMd, &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent(0);
  outlined init with copy of InferenceResult?(v1 + *(v10 + 32), v5);
  v11 = type metadata accessor for InferenceResult();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    v13 = &_s19FitnessIntelligence15InferenceResultVSgMd;
    v14 = &_s19FitnessIntelligence15InferenceResultVSgMR;
    v15 = v5;
LABEL_5:
    outlined destroy of InferenceResult?(v15, v13, v14);
    goto LABEL_6;
  }

  InferenceResult.announceUtteranceResult.getter();
  (*(v12 + 8))(v5, v11);
  v16 = type metadata accessor for AnnounceUtteranceResult();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v9, 1, v16) == 1)
  {
    v13 = &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMd;
    v14 = &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMR;
    v15 = v9;
    goto LABEL_5;
  }

  v21 = AnnounceUtteranceResult.announceResult.getter();
  (*(v17 + 8))(v9, v16);
  if (v21 != 2 && (v21 & 1) == 0)
  {
    return 9;
  }

LABEL_6:
  v18 = *(v1 + *(v10 + 56));
  if (!v18)
  {
    return 11;
  }

  v22[1] = *(v1 + *(v10 + 56));
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    return 1;
  }

  else
  {
    return 10;
  }
}

unint64_t WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
    case 10:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x7954746E656D6F4DLL;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0x7275446C61746F74;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 12:
      result = 0x65636E756F6E6E61;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
    case 18:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 19:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey(char *a1, char *a2)
{
  v2 = *a2;
  v3 = WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey(uint64_t a1)
{
  WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MomentGenerationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MomentGenerationError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t outlined init with copy of InferenceResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of InferenceResult?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MomentGenerationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MomentGenerationError(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type MomentGenerationError and conformance MomentGenerationError()
{
  result = lazy protocol witness table cache variable for type MomentGenerationError and conformance MomentGenerationError;
  if (!lazy protocol witness table cache variable for type MomentGenerationError and conformance MomentGenerationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentGenerationError and conformance MomentGenerationError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey()
{
  result = lazy protocol witness table cache variable for type WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey);
  }

  return result;
}

unint64_t specialized WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t one-time initialization function for NRDEVICECAPABILITY_NAPILI_ALIGNED()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_allocate_value_buffer(v0, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILI_ALIGNED);
  __swift_project_value_buffer(v0, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILI_ALIGNED);
  return UUID.init(uuidString:)();
}

uint64_t one-time initialization function for NRDEVICECAPABILITY_NAPILIB_ALIGNED()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_allocate_value_buffer(v0, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILIB_ALIGNED);
  __swift_project_value_buffer(v0, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILIB_ALIGNED);
  return UUID.init(uuidString:)();
}

uint64_t specialized static MediaPlaybackDeviceCompatibility.hasNapiliAlignedPairedDevice()()
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = MEMORY[0x28223BE20](v34, v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v26 - v5;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = [result getPairedDevices];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for NRDevice();
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v27 = v8;
        v29 = v3;
        v13 = 0;
        v32 = *MEMORY[0x277D2BB28];
        v33 = v11 & 0xC000000000000001;
        v28 = v11 & 0xFFFFFFFFFFFFFF8;
        v30 = i;
        v31 = v11;
        while (1)
        {
          if (v33)
          {
            v14 = MEMORY[0x20F2E7A20](v13, v11);
          }

          else
          {
            if (v13 >= *(v28 + 16))
            {
              goto LABEL_35;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if ([v14 valueForProperty_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v36 = 0u;
            v37 = 0u;
          }

          v38[0] = v36;
          v38[1] = v37;
          if (*(&v37 + 1))
          {
            if (swift_dynamicCast() && (v35 & 1) != 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            outlined destroy of Any?(v38);
          }

          if (one-time initialization token for NRDEVICECAPABILITY_NAPILI_ALIGNED != -1)
          {
            swift_once();
          }

          v17 = __swift_project_value_buffer(v34, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILI_ALIGNED);
          outlined init with copy of UUID?(v17, v6);
          v18 = type metadata accessor for UUID();
          v3 = *(v18 - 8);
          v8 = *(v3 + 6);
          isa = 0;
          if ((v8)(v6, 1, v18) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v3 + 1))(v6, v18);
          }

          v20 = [v15 supportsCapability_];

          if (v20)
          {
            if (one-time initialization token for NRDEVICECAPABILITY_NAPILIB_ALIGNED != -1)
            {
              swift_once();
            }

            v21 = __swift_project_value_buffer(v34, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILIB_ALIGNED);
            v22 = v29;
            outlined init with copy of UUID?(v21, v29);
            if ((v8)(v22, 1, v18) == 1)
            {
              v23 = 0;
            }

            else
            {
              v23 = UUID._bridgeToObjectiveC()().super.isa;
              v24 = *(v3 + 1);
              v3 += 8;
              v24(v22, v18);
            }

            v11 = v31;
            v25 = [v15 supportsCapability_];

            if ((v25 & 1) == 0)
            {

              return 1;
            }

            goto LABEL_7;
          }

LABEL_6:

          v11 = v31;
LABEL_7:
          ++v13;
          if (v16 == v30)
          {

            return 0;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }
    }

    return 0;
  }

  return result;
}

unint64_t type metadata accessor for NRDevice()
{
  result = lazy cache variable for type metadata for NRDevice;
  if (!lazy cache variable for type metadata for NRDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NRDevice);
  }

  return result;
}

uint64_t static WorkoutSupport.shouldTrackPaceWithOdometer(for:)(void *a1)
{
  v2 = [a1 identifier];
  if ((v2 - 70) < 2)
  {
    return 1;
  }

  if (v2 == 13)
  {
    return [a1 isIndoor] ^ 1;
  }

  return 0;
}

id WorkoutSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutSupport.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutSupport();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WorkoutSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutSupport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WOCatalogMediaTypeHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WOCatalogMediaTypeHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WOCatalogMediaTypeHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WOCatalogMediaTypeHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WOCatalogMediaTypeHelper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id VoiceMotivationStartEventAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceMotivationStartEventAlert.init()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for VoiceMotivationStartEventAlert();
  v10.receiver = v0;
  v10.super_class = started;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  [v7 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  [v7 setEventDate_];

  return v7;
}

id VoiceMotivationStartEventAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceMotivationStartEventAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TranscriptWorkoutAlert.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_message);

  return v1;
}

uint64_t TranscriptWorkoutAlert.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_title);

  return v1;
}

id TranscriptWorkoutAlert.init(title:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_title];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v4[OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_message];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = type metadata accessor for TranscriptWorkoutAlert();
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  [v17 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v13, v9);
  [v17 setEventDate_];

  return v17;
}

id TranscriptWorkoutAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptWorkoutAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptWorkoutAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  *a1 = 0;
  a1[1] = 0;
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_EnergyMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_EnergyMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static Apple_Workout_Core_EnergyMetricsPublisher.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_EnergyMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_EnergyMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_EnergyMetricsPublisher@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_EnergyMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_EnergyMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_EnergyMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_EnergyMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_EnergyMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_EnergyMetricsPublisher(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MediaPlaybackStore.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for mediaConfigurationsUpdatedNotificationName()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000033, 0x800000020B46B210);
  static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName = result;
  return result;
}

id static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName.getter()
{
  if (one-time initialization token for mediaConfigurationsUpdatedNotificationName != -1)
  {
    swift_once();
  }

  v1 = static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName;

  return v1;
}

uint64_t one-time initialization function for workoutMediaPreferencesChangedNotificationName()
{
  result = MEMORY[0x20F2E6C00](0xD00000000000002ALL, 0x800000020B46B2C0);
  static MediaPlaybackStore.workoutMediaPreferencesChangedNotificationName = result;
  return result;
}

void *MediaPlaybackStore.migratedUser.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  return v1;
}

id *MediaPlaybackStore.deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaPlaybackStore.__deallocating_deinit()
{
  MediaPlaybackStore.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t MediaPlaybackStore.addMediaConfiguration(for:configuration:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MediaPlaybackStore.addMediaConfiguration(for:configuration:), v2, 0);
}

uint64_t MediaPlaybackStore.addMediaConfiguration(for:configuration:)()
{
  v1 = [*(v0 + 16) uniqueIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = MediaPlaybackStore.addMediaConfiguration(for:configuration:);
  v6 = *(v0 + 24);

  return MediaPlaybackStore._addMediaConfiguration(for:configuration:)(v2, v4, v6);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = MediaPlaybackStore.addMediaConfiguration(for:configuration:);
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = MediaPlaybackStore.addMediaConfiguration(for:configuration:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  MediaPlaybackStore.sendMediaConfigurationAnalytics(for:configuration:)(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MediaPlaybackStore._addMediaConfiguration(for:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for UUID();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackStore._addMediaConfiguration(for:configuration:), v3, 0);
}

uint64_t MediaPlaybackStore._addMediaConfiguration(for:configuration:)()
{
  v1 = *(v0[9] + 152);
  v0[13] = v1;
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v0[5] = v1;
    v5 = v2;

    swift_beginAccess();
    v6 = specialized Dictionary._Variant.removeValue(forKey:)(v4, v3);
    swift_endAccess();

    if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize == 2)
    {
      v7 = specialized static MediaPlaybackDeviceCompatibility.hasNapiliAlignedPairedDevice()();
      static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize = (v7 & 1) == 0;
      if ((v7 & 1) == 0)
      {
LABEL_4:
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static WOLog.mediaPlayback);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_20AEA4000, v9, v10, "Compatible configuration for local media suggestions artwork caching, checking.", v11, 2u);
          MEMORY[0x20F2E9420](v11, -1, -1);
        }

        v12 = swift_task_alloc();
        v0[16] = v12;
        *v12 = v0;
        v12[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);

        return MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)((v0 + 5));
      }
    }

    else if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize)
    {
      goto LABEL_4;
    }

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.mediaPlayback);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Incompatible configuration for local media suggestions artwork caching, skipping.", v18, 2u);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    v19 = v0[9];
    v20 = v0[5];
    v0[17] = v20;
    *(v19 + 152) = v20;

    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);

    return MediaPlaybackStore.write(mediaPlaybackConfigurations:)(v20);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);

    return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
  }
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
  }

  else
  {
    v4 = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  if (*(v0[9] + 152))
  {
  }

  else
  {
    v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v0[5] = v1;
  v5 = v2;

  swift_beginAccess();
  v6 = specialized Dictionary._Variant.removeValue(forKey:)(v4, v3);
  swift_endAccess();

  if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize == 2)
  {
    v7 = specialized static MediaPlaybackDeviceCompatibility.hasNapiliAlignedPairedDevice()();
    static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize = (v7 & 1) == 0;
    if ((v7 & 1) == 0)
    {
LABEL_6:
      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static WOLog.mediaPlayback);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_20AEA4000, v9, v10, "Compatible configuration for local media suggestions artwork caching, checking.", v11, 2u);
        MEMORY[0x20F2E9420](v11, -1, -1);
      }

      v12 = swift_task_alloc();
      v0[16] = v12;
      *v12 = v0;
      v12[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);

      return MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)((v0 + 5));
    }
  }

  else if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.mediaPlayback);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20AEA4000, v15, v16, "Incompatible configuration for local media suggestions artwork caching, skipping.", v17, 2u);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  v18 = v0[9];
  v19 = v0[5];
  v0[17] = v19;
  *(v18 + 152) = v19;

  v20 = swift_task_alloc();
  v0[18] = v20;
  *v20 = v0;
  v20[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);

  return MediaPlaybackStore.write(mediaPlaybackConfigurations:)(v19);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](MediaPlaybackStore._addMediaConfiguration(for:configuration:), v1, 0);
}

{
  v1 = v0[9];
  v2 = v0[5];
  v0[17] = v2;
  *(v1 + 152) = v2;

  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);

  return MediaPlaybackStore.write(mediaPlaybackConfigurations:)(v2);
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MediaPlaybackStore._addMediaConfiguration(for:configuration:)(uint64_t a1)
{
  v37 = v1;
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v8 = specialized Collection.prefix(_:)(8, v5, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v15 = v1[8];
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.mediaPlayback);
  v17 = v15;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v1[8];
    v34 = v1[6];
    v35 = v1[7];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v21 = 136315650;
    v23 = MEMORY[0x20F2E6D00](v8, v10, v12, v14);
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v36);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = [v20 debugDescription];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v36);

    *(v21 + 14) = v31;
    *(v21 + 22) = 2080;
    *(v21 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v36);
    _os_log_impl(&dword_20AEA4000, v18, v19, "[%s] Successfully saved media configuration %s for %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  else
  {
  }

  v32 = v1[1];

  return v32();
}

uint64_t MediaPlaybackStore.write(mediaPlaybackConfigurations:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackStore.write(mediaPlaybackConfigurations:), v1, 0);
}

void MediaPlaybackStore.write(mediaPlaybackConfigurations:)()
{
  v1 = v0[3];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
  lazy protocol witness table accessor for type [String : MediaPlaybackConfigurationItem] and conformance <> [A : B]();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.mediaPlayback);
  outlined copy of Data._Representation(v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = v4 >> 62;
  if (!os_log_type_enabled(v6, v7))
  {
    outlined consume of Data._Representation(v2, v4);
    goto LABEL_16;
  }

  v9 = swift_slowAlloc();
  *v9 = 134217984;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v12 = *(v2 + 16);
    v11 = *(v2 + 24);
    v13 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v10) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v10 = v10;
    goto LABEL_15;
  }

  if (v8)
  {
    goto LABEL_12;
  }

  v10 = BYTE6(v4);
LABEL_15:
  *(v9 + 4) = v10;
  v14 = v9;
  outlined consume of Data._Representation(v2, v4);
  _os_log_impl(&dword_20AEA4000, v6, v7, "Writing media playback configurations with data size: %ld", v14, 0xCu);
  MEMORY[0x20F2E9420](v14, -1, -1);
LABEL_16:

  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_28;
    }

    LODWORD(v15) = HIDWORD(v2) - v2;
    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      v15 = v15;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (v8 != 2)
  {
    goto LABEL_28;
  }

  v17 = *(v2 + 16);
  v16 = *(v2 + 24);
  v13 = __OFSUB__(v16, v17);
  v15 = v16 - v17;
  if (v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_22:
  if (v15 <= 90000)
  {
    goto LABEL_28;
  }

  outlined copy of Data._Representation(v2, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v18, v19))
  {
    outlined consume of Data._Representation(v2, v4);
LABEL_33:

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20AEA4000, v29, v30, "ERROR: Aborting write to avoid clogging NPS domain. Changes to configurations will not be saved.", v31, 2u);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    outlined consume of Data._Representation(v2, v4);

    goto LABEL_36;
  }

  v20 = swift_slowAlloc();
  *v20 = 134218240;
  if (v8 != 2)
  {
    LODWORD(v23) = HIDWORD(v2) - v2;
    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      v23 = v23;
LABEL_32:
      *(v20 + 4) = v23;
      v28 = v20;
      outlined consume of Data._Representation(v2, v4);
      *(v28 + 12) = 2048;
      *(v28 + 14) = 90000;
      _os_log_impl(&dword_20AEA4000, v18, v19, "ERROR: Media playback configurations size (%ld) exceeds maximum allowed size (%ld).", v28, 0x16u);
      MEMORY[0x20F2E9420](v28, -1, -1);
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
    return;
  }

  v22 = *(v2 + 16);
  v21 = *(v2 + 24);
  v13 = __OFSUB__(v21, v22);
  v23 = v21 - v22;
  if (!v13)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_28:
  v24 = v0[4];
  v25 = v24[14];
  v26 = MEMORY[0x20F2E6C00](v24[15], v24[16]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v25 writeDataPerGizmoDomainAndKey:v26 data:isa];

  outlined consume of Data._Representation(v2, v4);
LABEL_36:

  v32 = v0[1];

  v32();
}

uint64_t MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:), v1, 0);
}

{
  v175 = v1;
  v3 = *(v1 + 72);
  v2 = *(v1 + 80);
  v4 = *(v1 + 64);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v8 = specialized Collection.prefix(_:)(8, v5, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *(v1 + 88) = v8;
  *(v1 + 96) = v10;
  v165 = v12;
  v169 = v10;
  *(v1 + 104) = v12;
  *(v1 + 112) = v14;
  Date.init()();
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v15 = *(v1 + 16);
  v16 = type metadata accessor for Logger();
  *(v1 + 120) = __swift_project_value_buffer(v16, static WOLog.mediaPlayback);

  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v1 + 16);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v174[0] = v22;
    *v21 = 136315394;

    v23 = MEMORY[0x20F2E6D00](v8, v10, v12, v14);
    v162 = v8;
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v174);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = [v20 uniqueIdentifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v174);
    v8 = v162;

    *(v21 + 14) = v31;
    _os_log_impl(&dword_20AEA4000, v18, v19, "[%s] MediaPlaybackStore fetching configuration for activityType: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  v32 = [*(v1 + 16) isPartOfMultiSport];
  v33 = *(v1 + 16);
  if (v32)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:82 isIndoor:0];

    v33 = v34;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v174[0] = v38;
      *v37 = 136315394;

      v39 = MEMORY[0x20F2E6D00](v8, v169, v165, v14);
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v174);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v43 = [v33 uniqueIdentifier];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v174);

      *(v37 + 14) = v47;
      _os_log_impl(&dword_20AEA4000, v35, v36, "[%s] Mapped multisport to swimBikeRun: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v38, -1, -1);
      MEMORY[0x20F2E9420](v37, -1, -1);
    }

    else
    {
    }
  }

  *(v1 + 128) = v33;
  v48 = *(*(v1 + 24) + 152);
  *(v1 + 136) = v48;
  if (v48)
  {

    v49 = [v33 uniqueIdentifier];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    if (*(v48 + 16))
    {
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v52);
      v55 = v54;

      if (v55)
      {
        v56 = *(v1 + 128);
        v170 = *(*(v48 + 56) + 8 * v53);

        v57 = v56;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v166 = *(v1 + 128);
          v61 = *(v1 + 104);
          v60 = *(v1 + 112);
          v62 = *(v1 + 88);
          v63 = *(v1 + 96);
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v174[0] = v65;
          *v64 = 136315394;

          v66 = MEMORY[0x20F2E6D00](v62, v63, v61, v60);
          v68 = v67;

          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v174);

          *(v64 + 4) = v69;
          *(v64 + 12) = 2080;
          v70 = [v166 &selRef_setNeedsReloadForSignificantRequestChange];
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v174);

          *(v64 + 14) = v74;
          _os_log_impl(&dword_20AEA4000, v58, v59, "[%s] Found existing configuration for %s", v64, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v65, -1, -1);
          MEMORY[0x20F2E9420](v64, -1, -1);
        }

        v75 = *(v1 + 104);
        v76 = *(v1 + 112);
        v78 = *(v1 + 88);
        v77 = *(v1 + 96);
        v79 = [*(v1 + 128) uniqueIdentifier];
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = MEMORY[0x20F2E6D00](v78, v77, v75, v76);
        v168 = MediaPlaybackStore.validatedMediaConfiguration(_:for:requestId:)(v170, v80, v82, v83, v84);
        v132 = *(v1 + 40);
        v131 = *(v1 + 48);
        v133 = *(v1 + 32);

        Date.init()();
        Date.timeIntervalSince(_:)();
        v135 = v134;
        v136 = *(v132 + 8);
        v136(v131, v133);

        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.default.getter();

        v139 = os_log_type_enabled(v137, v138);
        v140 = *(v1 + 128);
        v141 = *(v1 + 112);
        if (v139)
        {
          v142 = *(v1 + 96);
          v143 = *(v1 + 104);
          v144 = *(v1 + 88);
          v173 = *(v1 + 56);
          v164 = *(v1 + 32);
          v161 = *(v1 + 128);
          v145 = swift_slowAlloc();
          v160 = v136;
          v146 = swift_slowAlloc();
          v174[0] = v146;
          *v145 = 136315394;
          v147 = MEMORY[0x20F2E6D00](v144, v142, v143, v141);
          v149 = v148;

          v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, v174);

          *(v145 + 4) = v150;
          *(v145 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v151 = swift_allocObject();
          v152 = MEMORY[0x277D839F8];
          *(v151 + 16) = xmmword_20B423A90;
          v153 = MEMORY[0x277D83A80];
          *(v151 + 56) = v152;
          *(v151 + 64) = v153;
          *(v151 + 32) = v135;
          v154 = String.init(format:_:)();
          v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, v174);

          *(v145 + 14) = v156;
          _os_log_impl(&dword_20AEA4000, v137, v138, "[%s] MediaPlaybackStore fetch completed in %ss", v145, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v146, -1, -1);
          MEMORY[0x20F2E9420](v145, -1, -1);

          v160(v173, v164);
        }

        else
        {
          v157 = *(v1 + 56);
          v158 = *(v1 + 32);

          v136(v157, v158);
        }

        v159 = *(v1 + 8);

        return v159(v168);
      }
    }

    else
    {
    }

    v87 = *(v1 + 128);
    v88 = *(*(v1 + 24) + 168);

    v89 = v87;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    v92 = os_log_type_enabled(v90, v91);
    if (v88)
    {
      if (v92)
      {
        v171 = *(v1 + 128);
        v94 = *(v1 + 104);
        v93 = *(v1 + 112);
        v96 = *(v1 + 88);
        v95 = *(v1 + 96);
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v174[0] = v98;
        *v97 = 136315394;

        v99 = MEMORY[0x20F2E6D00](v96, v95, v94, v93);
        v101 = v100;

        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v174);

        *(v97 + 4) = v102;
        *(v97 + 12) = 2080;
        v103 = [v171 &selRef_setNeedsReloadForSignificantRequestChange];
        v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v105;

        v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, v174);

        *(v97 + 14) = v107;
        _os_log_impl(&dword_20AEA4000, v90, v91, "[%s] No existing configuration, attempting migration for %s", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v98, -1, -1);
        MEMORY[0x20F2E9420](v97, -1, -1);
      }

      v108 = swift_task_alloc();
      *(v1 + 160) = v108;
      *v108 = v1;
      v108[1] = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);

      return MediaPlaybackStore.fetchMigratedConfiguration()();
    }

    else
    {
      v109 = *(v1 + 128);
      v110 = *(v1 + 112);
      if (v92)
      {
        v111 = *(v1 + 96);
        v112 = *(v1 + 104);
        v113 = *(v1 + 88);
        v163 = *(v1 + 40);
        v167 = *(v1 + 32);
        v172 = *(v1 + 56);
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v174[0] = v115;
        *v114 = 136315394;
        v116 = MEMORY[0x20F2E6D00](v113, v111, v112, v110);
        v118 = v117;

        v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, v174);

        *(v114 + 4) = v119;
        *(v114 + 12) = 2080;
        v120 = [v109 uniqueIdentifier];
        v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v122;

        v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v174);

        *(v114 + 14) = v124;
        _os_log_impl(&dword_20AEA4000, v90, v91, "[%s] No media configuration set for workout type %s", v114, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v115, -1, -1);
        MEMORY[0x20F2E9420](v114, -1, -1);

        lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
        swift_allocError();
        *v125 = xmmword_20B42C710;
        swift_willThrow();
        (*(v163 + 8))(v172, v167);
      }

      else
      {
        v126 = *(v1 + 56);
        v127 = *(v1 + 32);
        v128 = *(v1 + 40);

        lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
        swift_allocError();
        *v129 = xmmword_20B42C710;
        swift_willThrow();
        (*(v128 + 8))(v126, v127);
      }

      v130 = *(v1 + 8);

      return v130();
    }
  }

  else
  {
    v85 = swift_task_alloc();
    *(v1 + 144) = v85;
    *v85 = v1;
    v85[1] = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);

    return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
  }
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {

    v6 = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
  }

  else
  {
    v6 = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:)()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
  }

  else
  {
    v4 = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v127 = v0;
  v1 = *(*(v0 + 24) + 152);
  if (v1)
  {
  }

  else
  {
    v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v2 = *(v0 + 152);
  v3 = *(v0 + 128);

  v4 = [v3 uniqueIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (*(v1 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(v0 + 128);
      v123 = *(*(v1 + 56) + 8 * v8);

      v12 = v11;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v120 = *(v0 + 128);
        v16 = *(v0 + 104);
        v15 = *(v0 + 112);
        v18 = *(v0 + 88);
        v17 = *(v0 + 96);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v126[0] = v20;
        *v19 = 136315394;

        v21 = MEMORY[0x20F2E6D00](v18, v17, v16, v15);
        v23 = v22;

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v126);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2080;
        v25 = [v120 uniqueIdentifier];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v126);

        *(v19 + 14) = v29;
        _os_log_impl(&dword_20AEA4000, v13, v14, "[%s] Found existing configuration for %s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v20, -1, -1);
        MEMORY[0x20F2E9420](v19, -1, -1);
      }

      v30 = *(v0 + 104);
      v31 = *(v0 + 112);
      v33 = *(v0 + 88);
      v32 = *(v0 + 96);
      v34 = [*(v0 + 128) uniqueIdentifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = MEMORY[0x20F2E6D00](v33, v32, v30, v31);
      v40 = MediaPlaybackStore.validatedMediaConfiguration(_:for:requestId:)(v123, v35, v37, v38, v39);
      if (v2)
      {
        v41 = *(v0 + 128);
        (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));

        goto LABEL_20;
      }

      v122 = v40;
      v88 = *(v0 + 40);
      v87 = *(v0 + 48);
      v89 = *(v0 + 32);

      Date.init()();
      Date.timeIntervalSince(_:)();
      v91 = v90;
      v92 = *(v88 + 8);
      v92(v87, v89);

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      v95 = os_log_type_enabled(v93, v94);
      v96 = *(v0 + 128);
      v97 = *(v0 + 112);
      if (v95)
      {
        v98 = *(v0 + 96);
        v99 = *(v0 + 104);
        v100 = *(v0 + 88);
        v125 = *(v0 + 56);
        v119 = *(v0 + 32);
        v117 = *(v0 + 128);
        v101 = swift_slowAlloc();
        v116 = v92;
        v102 = swift_slowAlloc();
        v126[0] = v102;
        *v101 = 136315394;
        v103 = MEMORY[0x20F2E6D00](v100, v98, v99, v97);
        v105 = v104;

        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, v126);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v107 = swift_allocObject();
        v108 = MEMORY[0x277D839F8];
        *(v107 + 16) = xmmword_20B423A90;
        v109 = MEMORY[0x277D83A80];
        *(v107 + 56) = v108;
        *(v107 + 64) = v109;
        *(v107 + 32) = v91;
        v110 = String.init(format:_:)();
        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v126);

        *(v101 + 14) = v112;
        _os_log_impl(&dword_20AEA4000, v93, v94, "[%s] MediaPlaybackStore fetch completed in %ss", v101, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v102, -1, -1);
        MEMORY[0x20F2E9420](v101, -1, -1);

        v116(v125, v119);
      }

      else
      {
        v113 = *(v0 + 56);
        v114 = *(v0 + 32);

        v92(v113, v114);
      }

      v115 = *(v0 + 8);

      return v115(v122);
    }
  }

  else
  {
  }

  v42 = *(v0 + 128);
  v43 = *(*(v0 + 24) + 168);

  v44 = v42;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  v47 = os_log_type_enabled(v45, v46);
  if (!v43)
  {
    v41 = *(v0 + 128);
    v66 = *(v0 + 112);
    if (v47)
    {
      v67 = *(v0 + 96);
      v68 = *(v0 + 104);
      v69 = *(v0 + 88);
      v118 = *(v0 + 40);
      v121 = *(v0 + 32);
      v124 = *(v0 + 56);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v126[0] = v71;
      *v70 = 136315394;
      v72 = MEMORY[0x20F2E6D00](v69, v67, v68, v66);
      v74 = v73;

      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v126);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      v76 = [v41 uniqueIdentifier];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v126);

      *(v70 + 14) = v80;
      _os_log_impl(&dword_20AEA4000, v45, v46, "[%s] No media configuration set for workout type %s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v71, -1, -1);
      MEMORY[0x20F2E9420](v70, -1, -1);

      lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
      swift_allocError();
      *v81 = xmmword_20B42C710;
      swift_willThrow();
      (*(v118 + 8))(v124, v121);
    }

    else
    {
      v82 = *(v0 + 56);
      v83 = *(v0 + 32);
      v84 = *(v0 + 40);

      lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
      swift_allocError();
      *v85 = xmmword_20B42C710;
      swift_willThrow();
      (*(v84 + 8))(v82, v83);
    }

LABEL_20:

    v86 = *(v0 + 8);

    return v86();
  }

  if (v47)
  {
    v48 = *(v0 + 128);
    v50 = *(v0 + 104);
    v49 = *(v0 + 112);
    v52 = *(v0 + 88);
    v51 = *(v0 + 96);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v126[0] = v54;
    *v53 = 136315394;

    v55 = MEMORY[0x20F2E6D00](v52, v51, v50, v49);
    v57 = v56;

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v126);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2080;
    v59 = [v48 uniqueIdentifier];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v126);

    *(v53 + 14) = v63;
    _os_log_impl(&dword_20AEA4000, v45, v46, "[%s] No existing configuration, attempting migration for %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v54, -1, -1);
    MEMORY[0x20F2E9420](v53, -1, -1);
  }

  v64 = swift_task_alloc();
  *(v0 + 160) = v64;
  *v64 = v0;
  v64[1] = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);

  return MediaPlaybackStore.fetchMigratedConfiguration()();
}

{
  v53 = v0;
  v1 = v0[16];
  v2 = *(v0[3] + 168);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      v7 = v0[16];
      v9 = v0[13];
      v8 = v0[14];
      v11 = v0[11];
      v10 = v0[12];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v52[0] = v13;
      *v12 = 136315394;

      v14 = MEMORY[0x20F2E6D00](v11, v10, v9, v8);
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v52);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v18 = [v7 uniqueIdentifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v52);

      *(v12 + 14) = v22;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] No existing configuration, attempting migration for %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    v23 = swift_task_alloc();
    v0[20] = v23;
    *v23 = v0;
    v23[1] = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);

    return MediaPlaybackStore.fetchMigratedConfiguration()();
  }

  else
  {
    v25 = v0[16];
    v26 = v0[14];
    if (v6)
    {
      v27 = v0[16];
      v28 = v0[12];
      v29 = v0[13];
      v30 = v0[11];
      v49 = v0[5];
      v50 = v0[4];
      v51 = v0[7];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52[0] = v32;
      *v31 = 136315394;
      v33 = v29;
      v25 = v27;
      v34 = MEMORY[0x20F2E6D00](v30, v28, v33, v26);
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v52);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      v38 = [v27 uniqueIdentifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v52);

      *(v31 + 14) = v42;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] No media configuration set for workout type %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);

      lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
      swift_allocError();
      *v43 = xmmword_20B42C710;
      swift_willThrow();
      (*(v49 + 8))(v51, v50);
    }

    else
    {
      v44 = v0[7];
      v46 = v0[4];
      v45 = v0[5];

      lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
      swift_allocError();
      *v47 = xmmword_20B42C710;
      swift_willThrow();
      (*(v45 + 8))(v44, v46);
    }

    v48 = v0[1];

    return v48();
  }
}

{
  v65 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v64[0] = v8;
    *v7 = 136315138;

    v9 = MEMORY[0x20F2E6D00](v6, v5, v4, v3);
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v64);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v1, v2, "[%s] Successfully fetched migrated configuration", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v13 = *(v0 + 168);
  v62 = *(v0 + 176);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v17 = *(v0 + 88);
  v16 = *(v0 + 96);
  v18 = [*(v0 + 128) uniqueIdentifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = MEMORY[0x20F2E6D00](v17, v16, v15, v14);
  v24 = MediaPlaybackStore.validatedMediaConfiguration(_:for:requestId:)(v13, v19, v21, v22, v23);
  v25 = *(v0 + 168);
  if (v62)
  {
    v26 = *(v0 + 128);
    (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v63 = v24;
    v29 = *(v0 + 40);
    v30 = *(v0 + 48);
    v31 = *(v0 + 32);

    Date.init()();
    Date.timeIntervalSince(_:)();
    v33 = v32;
    v34 = *(v29 + 8);
    v34(v30, v31);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 128);
    v39 = *(v0 + 112);
    if (v37)
    {
      v40 = *(v0 + 96);
      v41 = *(v0 + 104);
      v42 = *(v0 + 88);
      v60 = *(v0 + 32);
      v61 = *(v0 + 56);
      v59 = v34;
      v43 = swift_slowAlloc();
      v58 = v38;
      v44 = swift_slowAlloc();
      v64[0] = v44;
      *v43 = 136315394;
      v45 = MEMORY[0x20F2E6D00](v42, v40, v41, v39);
      v47 = v46;

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v64);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v49 = swift_allocObject();
      v50 = MEMORY[0x277D839F8];
      *(v49 + 16) = xmmword_20B423A90;
      v51 = MEMORY[0x277D83A80];
      *(v49 + 56) = v50;
      *(v49 + 64) = v51;
      *(v49 + 32) = v33;
      v52 = String.init(format:_:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v64);

      *(v43 + 14) = v54;
      _os_log_impl(&dword_20AEA4000, v35, v36, "[%s] MediaPlaybackStore fetch completed in %ss", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v44, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);

      v59(v61, v60);
    }

    else
    {
      v55 = *(v0 + 56);
      v56 = *(v0 + 32);

      v34(v55, v56);
    }

    v57 = *(v0 + 8);

    return v57(v63);
  }
}

{
  v35 = v0;
  v1 = v0[16];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  v7 = v0[14];
  if (v5)
  {
    v8 = v0[16];
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[11];
    v31 = v0[5];
    v32 = v0[4];
    v33 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34[0] = v13;
    *v12 = 136315394;
    v14 = v10;
    v6 = v8;
    v15 = MEMORY[0x20F2E6D00](v11, v9, v14, v7);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v34);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = [v8 uniqueIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v34);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[%s] No media configuration set for workout type %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);

    lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
    swift_allocError();
    *v24 = xmmword_20B42C710;
    swift_willThrow();
    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v25 = v0[7];
    v27 = v0[4];
    v26 = v0[5];

    lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
    swift_allocError();
    *v28 = xmmword_20B42C710;
    swift_willThrow();
    (*(v26 + 8))(v25, v27);
  }

  v29 = v0[1];

  return v29();
}

uint64_t MediaPlaybackStore.fetchMediaPlaybackConfigurations()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMediaPlaybackConfigurations(), v0, 0);
}

{
  v1 = *(v0[2] + 152);
  v0[3] = v1;
  if (v1)
  {
    v5 = v0[1];

    return v5(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = MediaPlaybackStore.fetchMediaPlaybackConfigurations();

    return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMediaPlaybackConfigurations(), v6, 0);
  }
}

{
  v1 = *(*(v0 + 16) + 152);
  if (v1)
  {
  }

  else
  {
    v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t MediaPlaybackStore.refreshMediaPlaybackConfigurations()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackStore.refreshMediaPlaybackConfigurations(), v0, 0);
}

{
  v1 = v0[6];
  v2 = v1[14];
  v3 = MEMORY[0x20F2E6C00](v1[15], v1[16]);
  v4 = [v2 dataForPerGizmoDomainAndKey_];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v0[7] = v5;
    v0[8] = v7;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v0[9] = JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
    lazy protocol witness table accessor for type [String : MediaPlaybackConfigurationItem] and conformance <> [A : B]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = MediaPlaybackStore.refreshMediaPlaybackConfigurations();

    return MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)((v0 + 5));
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 40);
    *(v0 + 88) = v1;
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = MediaPlaybackStore.refreshMediaPlaybackConfigurations();

    return MediaPlaybackStore.write(mediaPlaybackConfigurations:)(v1);
  }

  else
  {
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    *(v6 + 152) = *(v0 + 40);

    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    outlined consume of Data._Representation(v5, v4);
    swift_beginAccess();
    *(v6 + 160) = v7;

    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);

    v4 = MediaPlaybackStore.refreshMediaPlaybackConfigurations();
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = MediaPlaybackStore.refreshMediaPlaybackConfigurations();
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  *(v3 + 152) = v0[5];

  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  outlined consume of Data._Representation(v2, v1);
  swift_beginAccess();
  *(v3 + 160) = v4;

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[13];
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v8 = v0[7];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Error decoding media playback configurations, resetting: %@", v9, 0xCu);
    _sSo8NSObjectCSgWOhTm_17(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);

    outlined consume of Data._Representation(v8, v7);
  }

  else
  {

    outlined consume of Data._Representation(v8, v7);
  }

  *(v0[6] + 152) = 0;

  v13 = v0[1];

  return v13();
}

uint64_t MediaPlaybackStore.refreshMediaPlaybackConfigurations()(char a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](MediaPlaybackStore.refreshMediaPlaybackConfigurations(), v2, 0);
}

uint64_t MediaPlaybackStore.fetchMigratedConfiguration()()
{
  *(v1 + 32) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMigratedConfiguration(), v0, 0);
}

{
  v1 = *(v0[4] + 152);
  v0[5] = v1;
  if (v1)
  {
    v2 = *(v1 + 16);

    if (v2 && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000020, 0x800000020B46B1C0), (v4 & 1) != 0))
    {
      v5 = *(*(v1 + 56) + 8 * v3);

      v6 = v0[1];

      return v6(v5);
    }

    else
    {

      type metadata accessor for WorkoutPlaylistMigration();
      swift_initStaticObject();
      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = MediaPlaybackStore.fetchMigratedConfiguration();

      return WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()();
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = MediaPlaybackStore.fetchMigratedConfiguration();

    return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    type metadata accessor for WorkoutPlaylistMigration();
    swift_initStaticObject();
    v4 = swift_task_alloc();
    *(v2 + 56) = v4;
    *v4 = v3;
    v4[1] = MediaPlaybackStore.fetchMigratedConfiguration();

    return WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()();
  }

  else
  {
    v6 = *(v2 + 32);

    return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMigratedConfiguration(), v6, 0);
  }
}

{
  v1 = *(v0[4] + 152);
  if (v1)
  {
  }

  else
  {
    v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v2 = *(v1 + 16);

  if (v2 && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000020, 0x800000020B46B1C0), (v4 & 1) != 0))
  {
    v5 = *(*(v1 + 56) + 8 * v3);

    v6 = v0[1];

    return v6(v5);
  }

  else
  {

    type metadata accessor for WorkoutPlaylistMigration();
    swift_initStaticObject();
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = MediaPlaybackStore.fetchMigratedConfiguration();

    return WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()();
  }
}

{
  receiver = v0[4].receiver;
  v2 = type metadata accessor for MediaPlaybackConfigurationItem(0);
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *&v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
  v5 = receiver;
  ObservationRegistrar.init()();
  v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = 1;
  v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = 0;
  v6 = *&v3[v4];
  v7 = v5;

  *&v3[v4] = receiver;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v8 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[4].super_class = v8;

  v9 = swift_task_alloc();
  v0[5].receiver = v9;
  *v9 = v0;
  v9[1] = MediaPlaybackStore.fetchMigratedConfiguration();

  return MediaPlaybackStore._addMediaConfiguration(for:configuration:)(0xD000000000000020, 0x800000020B46B1C0, v8);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = MediaPlaybackStore.fetchMigratedConfiguration();
  }

  else
  {
    v4 = MediaPlaybackStore.fetchMigratedConfiguration();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MediaPlaybackStore.fetchMigratedConfiguration()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 32);

    return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMigratedConfiguration(), v7, 0);
  }
}

double MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v21 - v7;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.mediaPlayback);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = a1;
    v22 = v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CFNotificationNameaSgMd, &_sSo18CFNotificationNameaSgMR);
    v15 = Optional.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v11, v12, "workout preferences changed, received: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:), v19);

  return result;
}

uint64_t closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:);

  return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
}

{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:);
  }

  else
  {
    v2 = closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Refreshed media playback configurations", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for mediaConfigurationsUpdatedNotificationName != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName object:0];

  v6 = *(v0 + 8);

  return v6();
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Error refreshing media playback configurations: %@", v8, 0xCu);
    _sSo8NSObjectCSgWOhTm_17(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

double @objc closure #1 in MediaPlaybackStore.observeWorkoutMediaPreferencesChangedNotification()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  if (a2)
  {
    type metadata accessor for MediaPlaybackStore();
    swift_unknownObjectRetain();
    v9 = a3;
    if (swift_dynamicCastClass())
    {
      a6(a3);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double MediaPlaybackStore.handleDomainAccessorRefresh(_:)(void *a1)
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CFNotificationNameaSgMd, &_sSo18CFNotificationNameaSgMR);
    v8 = Optional.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "WONPSDomainAccessor refreshed, received: %s, refreshing configurations", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  return MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)(a1);
}

uint64_t MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:), v1, 0);
}

uint64_t MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)()
{
  v34 = v0;
  *(v0 + 56) = MEMORY[0x277D84FA0];
  v3 = **(v0 + 72);
  *(v0 + 88) = v3;
  v4 = *(v3 + 32);
  *(v0 + 168) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  *(v0 + 169) = 0;

  v8 = 0;
  while (v7)
  {
    v9 = *(v0 + 88);
LABEL_12:
    *(v0 + 96) = v7;
    *(v0 + 104) = v8;
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v8 << 6);
    v13 = (*(v9 + 48) + 16 * v12);
    v32 = *v13;
    *(v0 + 112) = *v13;
    v2 = v13[1];
    *(v0 + 120) = v2;
    v14 = *(*(v9 + 56) + 8 * v12);
    *(v0 + 128) = v14;
    KeyPath = swift_getKeyPath();
    *(v0 + 64) = v14;
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);

    v15 = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v17 = *&v15[v16];
    *(v0 + 136) = v17;
    if (v17)
    {
      KeyPath = v17;
      v18 = [KeyPath identifier];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        specialized Set._Variant.insert(_:)((v0 + 40), v20, v22);

        if ([KeyPath hasArtwork])
        {
          if (one-time initialization token for mediaPlayback != -1)
          {
LABEL_27:
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          *(v0 + 144) = __swift_project_value_buffer(v26, static WOLog.mediaPlayback);

          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v33 = v30;
            *v29 = 136315138;
            *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v2, &v33);
            _os_log_impl(&dword_20AEA4000, v27, v28, "Workout: %s has a media suggestion with artwork, storing and clearing", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v30);
            MEMORY[0x20F2E9420](v30, -1, -1);
            MEMORY[0x20F2E9420](v29, -1, -1);
          }

          type metadata accessor for MediaPlaybackArtworkStore();
          swift_initStaticObject();
          v31 = swift_task_alloc();
          *(v0 + 152) = v31;
          *v31 = v0;
          v31[1] = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);

          return MediaPlaybackArtworkStore.storeArtwork(for:)(KeyPath);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v9 = *(v0 + 88);
    if (v10 >= (((1 << *(v0 + 168)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v9 + 8 * v10 + 64);
    ++v8;
    if (v7)
    {
      v8 = v10;
      goto LABEL_12;
    }
  }

  type metadata accessor for MediaPlaybackArtworkStore();
  swift_initStaticObject();
  MediaPlaybackArtworkStore.clearUnusedArtwork(configuredIdentifiers:)(*(v0 + 56));

  v23 = *(v0 + 8);
  v24 = *(v0 + 169);

  return v23(v24);
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);

    v4 = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 80);
    v4 = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v36 = v0;
  if (*(*(v0 + 88) + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 112), *(v0 + 120));
    v4 = v3;

    v1 = *(v0 + 128);
    v5 = *(v0 + 136);
    if (v4)
    {
      KeyPath = *(*(*(v0 + 88) + 56) + 8 * v2);
      v7 = MSSuggestion.minify()();
      MediaPlaybackConfigurationItem.mediaSuggestion.setter(v7);
    }

    else
    {

      KeyPath = v5;
    }
  }

  else
  {
    v8 = *(v0 + 128);
    KeyPath = *(v0 + 136);
  }

  v9 = *(v0 + 104);
  v10 = (*(v0 + 96) - 1) & *(v0 + 96);
  *(v0 + 169) = 1;
  while (v10)
  {
    v11 = *(v0 + 88);
LABEL_14:
    *(v0 + 96) = v10;
    *(v0 + 104) = v9;
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = v13 | (v9 << 6);
    v15 = (*(v11 + 48) + 16 * v14);
    v34 = *v15;
    *(v0 + 112) = *v15;
    v1 = v15[1];
    *(v0 + 120) = v1;
    v16 = *(*(v11 + 56) + 8 * v14);
    *(v0 + 128) = v16;
    KeyPath = swift_getKeyPath();
    *(v0 + 64) = v16;
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);

    v17 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v19 = *&v17[v18];
    *(v0 + 136) = v19;
    if (v19)
    {
      KeyPath = v19;
      v20 = [KeyPath identifier];
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        specialized Set._Variant.insert(_:)((v0 + 40), v22, v24);

        if ([KeyPath hasArtwork])
        {
          if (one-time initialization token for mediaPlayback != -1)
          {
LABEL_29:
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          *(v0 + 144) = __swift_project_value_buffer(v28, static WOLog.mediaPlayback);

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v35 = v32;
            *v31 = 136315138;
            *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v1, &v35);
            _os_log_impl(&dword_20AEA4000, v29, v30, "Workout: %s has a media suggestion with artwork, storing and clearing", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v32);
            MEMORY[0x20F2E9420](v32, -1, -1);
            MEMORY[0x20F2E9420](v31, -1, -1);
          }

          type metadata accessor for MediaPlaybackArtworkStore();
          swift_initStaticObject();
          v33 = swift_task_alloc();
          *(v0 + 152) = v33;
          *v33 = v0;
          v33[1] = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);

          return MediaPlaybackArtworkStore.storeArtwork(for:)(KeyPath);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    v11 = *(v0 + 88);
    if (v12 >= (((1 << *(v0 + 168)) + 63) >> 6))
    {
      break;
    }

    v10 = *(v11 + 8 * v12 + 64);
    ++v9;
    if (v10)
    {
      v9 = v12;
      goto LABEL_14;
    }
  }

  type metadata accessor for MediaPlaybackArtworkStore();
  swift_initStaticObject();
  MediaPlaybackArtworkStore.clearUnusedArtwork(configuredIdentifiers:)(*(v0 + 56));

  v25 = *(v0 + 8);
  v26 = *(v0 + 169);

  return v25(v26);
}

{
  v40 = v0;
  v2 = *(v0 + 160);
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  KeyPath = *(v0 + 160);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    *v10 = 138412290;
    v11 = KeyPath;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v1 = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Failed to cache artwork locally: %@", v10, 0xCu);
    _sSo8NSObjectCSgWOhTm_17(v1, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v1, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 104);
  v14 = (*(v0 + 96) - 1) & *(v0 + 96);
  while (v14)
  {
    v15 = *(v0 + 88);
LABEL_12:
    *(v0 + 96) = v14;
    *(v0 + 104) = v13;
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = v17 | (v13 << 6);
    v19 = (*(v15 + 48) + 16 * v18);
    v38 = *v19;
    *(v0 + 112) = *v19;
    v1 = v19[1];
    *(v0 + 120) = v1;
    v20 = *(*(v15 + 56) + 8 * v18);
    *(v0 + 128) = v20;
    KeyPath = swift_getKeyPath();
    *(v0 + 64) = v20;
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);

    v21 = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v23 = *&v21[v22];
    *(v0 + 136) = v23;
    if (v23)
    {
      KeyPath = v23;
      v24 = [KeyPath identifier];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        specialized Set._Variant.insert(_:)((v0 + 40), v26, v28);

        if ([KeyPath hasArtwork])
        {
          if (one-time initialization token for mediaPlayback != -1)
          {
LABEL_27:
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          *(v0 + 144) = __swift_project_value_buffer(v32, static WOLog.mediaPlayback);

          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v39 = v36;
            *v35 = 136315138;
            *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v1, &v39);
            _os_log_impl(&dword_20AEA4000, v33, v34, "Workout: %s has a media suggestion with artwork, storing and clearing", v35, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v36);
            MEMORY[0x20F2E9420](v36, -1, -1);
            MEMORY[0x20F2E9420](v35, -1, -1);
          }

          type metadata accessor for MediaPlaybackArtworkStore();
          swift_initStaticObject();
          v37 = swift_task_alloc();
          *(v0 + 152) = v37;
          *v37 = v0;
          v37[1] = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);

          return MediaPlaybackArtworkStore.storeArtwork(for:)(KeyPath);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v15 = *(v0 + 88);
    if (v16 >= (((1 << *(v0 + 168)) + 63) >> 6))
    {
      break;
    }

    v14 = *(v15 + 8 * v16 + 64);
    ++v13;
    if (v14)
    {
      v13 = v16;
      goto LABEL_12;
    }
  }

  type metadata accessor for MediaPlaybackArtworkStore();
  swift_initStaticObject();
  MediaPlaybackArtworkStore.clearUnusedArtwork(configuredIdentifiers:)(*(v0 + 56));

  v29 = *(v0 + 8);
  v30 = *(v0 + 169);

  return v29(v30);
}

NSObject *MediaPlaybackStore.validatedMediaConfiguration(_:for:requestId:)(_BYTE *a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v96 = a2;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.mediaPlayback);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v95[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v95);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, a3, v95);
    _os_log_impl(&dword_20AEA4000, v11, v12, "[%s] Validating media configuration for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v6 + 160);
  if (*(v15 + 16))
  {

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v96, a3);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v94[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v94);
        _os_log_impl(&dword_20AEA4000, v19, v20, "[%s] Using cached validated configuration", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x20F2E9420](v22, -1, -1);
        MEMORY[0x20F2E9420](v21, -1, -1);
      }

      return v18;
    }
  }

  swift_getKeyPath();
  v94[0] = a1;
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  v88 = v24;
  if (a1[v24] == 1 && (swift_getKeyPath(), v93 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v25 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled, swift_beginAccess(), (a1[v25] & 1) == 0))
  {
    v85 = v25;
    swift_getKeyPath();
    v93 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v34 = *&a1[v33];
    if (v34)
    {

      v35 = v34;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      v82 = v37;
      v84 = v35;
      if (os_log_type_enabled(v36, v37))
      {
        log = v36;
        v38 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v91[0] = v80;
        *v38 = 136315650;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v91);
        v39 = v38;
        *(v38 + 12) = 2080;
        v40 = [v35 title];
        if (v40)
        {
          v41 = v40;
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE700000000000000;
          v42 = 0x6E776F6E6B6E75;
        }

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v91);

        v50 = v39;
        *(v39 + 14) = v49;
        *(v39 + 22) = 2080;
        v35 = v84;
        v51 = [v84 bundleID];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v53, v91);

        *(v50 + 24) = v54;
        _os_log_impl(&dword_20AEA4000, log, v82, "[%s] Validating media suggestion: %s from %s", v50, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v80, -1, -1);
        MEMORY[0x20F2E9420](v50, -1, -1);
      }

      else
      {
      }

      MSSuggestion.validatedSuggestion.getter();
      if (v55)
      {
        v83 = v55;
        swift_getKeyPath();
        v91[0] = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v89 = a1[v88];
        swift_getKeyPath();
        v91[0] = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v86 = a1[v85];
        v87 = type metadata accessor for MediaPlaybackConfigurationItem(0);
        v56 = objc_allocWithZone(v87);
        v57 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
        *&v56[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
        v58 = v83;
        ObservationRegistrar.init()();
        v56[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = v89;
        v56[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = v86;
        v59 = *&v56[v57];
        v60 = v58;

        *&v56[v57] = v83;
        v92.receiver = v56;
        v92.super_class = v87;
        v61 = objc_msgSendSuper2(&v92, sel_init);

        swift_beginAccess();
        v18 = v61;
        v62 = specialized Dictionary._Variant.updateValue(_:forKey:)(v18, v96, a3);
        swift_endAccess();

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v91[0] = v66;
          *v65 = 136315138;
          *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v91);
          _os_log_impl(&dword_20AEA4000, v63, v64, "[%s] Successfully validated and cached configuration", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x20F2E9420](v66, -1, -1);
          MEMORY[0x20F2E9420](v65, -1, -1);
        }
      }

      else
      {

        v67 = a1;
        v18 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v68))
        {
          v69 = v35;
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v91[0] = v71;
          *v70 = 136315394;
          *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v91);
          *(v70 + 12) = 2080;
          v72 = [v67 debugDescription];
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v91);

          *(v70 + 14) = v76;
          _os_log_impl(&dword_20AEA4000, v18, v68, "[%s] Media suggestion not playable on this device: %s", v70, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v71, -1, -1);
          v77 = v70;
          v35 = v69;
          MEMORY[0x20F2E9420](v77, -1, -1);
        }

        lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
        swift_allocError();
        *v78 = xmmword_20B44A8E0;
        swift_willThrow();
      }

      return v18;
    }

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v91[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v91);
      _os_log_impl(&dword_20AEA4000, v45, v46, "[%s] Configuration has no media suggestion, validation not needed", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x20F2E9420](v48, -1, -1);
      MEMORY[0x20F2E9420](v47, -1, -1);
    }

    return a1;
  }

  else
  {
    v26 = a1;

    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v91[0] = v96;
      *v30 = 136315650;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v91);
      *(v30 + 12) = 1024;
      swift_getKeyPath();
      v93 = v27;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v30 + 14) = a1[v88];

      *(v30 + 18) = 1024;
      swift_getKeyPath();
      v93 = v27;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v31 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
      swift_beginAccess();
      *(v30 + 20) = v27[v31];

      _os_log_impl(&dword_20AEA4000, v28, v29, "[%s] Configuration doesn't require validation (autoPlay: %{BOOL}d, smartStation: %{BOOL}d)", v30, 0x18u);
      v32 = v96;
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    else
    {
    }

    return v27;
  }
}

void MediaPlaybackStore.sendMediaConfigurationAnalytics(for:configuration:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isHealthDataSubmissionAllowed];

    if (v8)
    {
      [a1 isIndoor];
      _sSo8NSStringCMaTm_0(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
      v20 = NSString.init(stringLiteral:)();
      swift_getKeyPath();
      aBlock[0] = a2;
      lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
      swift_beginAccess();
      LOBYTE(v9) = *(a2 + v9);
      _sSo8NSStringCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      isa = NSNumber.init(integerLiteral:)((v9 & 1) == 0).super.super.isa;
      swift_getKeyPath();
      aBlock[0] = a2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
      swift_beginAccess();
      v12 = NSNumber.init(integerLiteral:)((*(a2 + v11) & 1) == 0).super.super.isa;
      v13 = MEMORY[0x20F2E6C00](*(v3 + 176), *(v3 + 184));
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = v20;
      v14[4] = isa;
      v14[5] = v12;
      aBlock[4] = partial apply for closure #1 in MediaPlaybackStore.sendMediaConfigurationAnalytics(for:configuration:);
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      aBlock[3] = &block_descriptor_78;
      v15 = _Block_copy(aBlock);
      v16 = a1;
      v17 = v20;
      v18 = isa;
      v19 = v12;

      AnalyticsSendEventLazy();
      _Block_release(v15);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t closure #1 in MediaPlaybackStore.sendMediaConfigurationAnalytics(for:configuration:)(void *a1, void *a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B4290B0;
  strcpy((inited + 32), "activity_type");
  *(inited + 46) = -4864;
  [a1 identifier];
  v9 = _HKWorkoutActivityNameForActivityType();
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._object = 0x800000020B456540;
    v14._countAndFlagsBits = 0xD000000000000015;
    if (String.hasPrefix(_:)(v14))
    {
      v15 = String.count.getter();
      v16 = specialized Collection.dropFirst(_:)(v15, v11, v13);
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v11 = MEMORY[0x20F2E6D00](v16, v18, v20, v22);
      v13 = v23;
    }
  }

  else
  {
    v13 = 0x800000020B456520;
    v11 = 0xD000000000000010;
  }

  v24 = MEMORY[0x20F2E6C00](v11, v13);

  *(inited + 48) = v24;
  strcpy((inited + 56), "location_type");
  *(inited + 70) = -4864;
  *(inited + 72) = a2;
  strcpy((inited + 80), "configuration");
  *(inited + 94) = -4864;
  *(inited + 96) = a3;
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x800000020B46B1F0;
  *(inited + 120) = a4;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  return v28;
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError);
  }

  return result;
}

uint64_t dispatch thunk of MediaPlaybackStore.addMediaConfiguration(for:configuration:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 200) + **(*v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of MediaPlaybackStore.addMediaConfiguration(for:configuration:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MediaPlaybackStore.addMediaConfiguration(for:configuration:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);

  return v6(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MediaPlaybackStore.fetchMediaPlaybackConfigurations()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of MediaPlaybackStore.fetchMediaPlaybackConfigurations();

  return v4();
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore23MediaPlaybackStoreErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MediaPlaybackStoreError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaPlaybackStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MediaPlaybackStoreError(void *result, int a2)
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

uint64_t partial apply for closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:);

  return closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaPlaybackConfigurationItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo8NSStringCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t RaceRouteDataStore.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = a1;
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CCD868]) initWithHealthStore_];
  return v2;
}

uint64_t RaceRouteDataStore.init(healthStore:)(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CCD868]) initWithHealthStore_];
  return v1;
}

uint64_t RaceRouteDataStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void RaceRouteDataStore.queryRoute(for:timestampAnchor:pointsLimit:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = objc_allocWithZone(MEMORY[0x277CCD870]);

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = partial apply for closure #1 in RaceRouteDataStore.queryRoute(for:timestampAnchor:pointsLimit:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed HKRaceRouteLocationSeriesQuery, @guaranteed [CLRoutePoint]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_79;
  v20 = _Block_copy(aBlock);
  v21 = [v18 initWithWorkoutUUID:isa timestampAnchor:a2 limit:v20 dataHandler:a5];
  _Block_release(v20);

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.race);
  (*(v13 + 16))(v16, a1, v12);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v6;
    aBlock[0] = v26;
    v27 = v26;
    *v25 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v13 + 8))(v16, v12);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, aBlock);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_20AEA4000, v23, v24, "Race Data Store: executing location query for workout %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v32 = v27;
    v6 = v34;
    MEMORY[0x20F2E9420](v32, -1, -1);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  [*(v6 + 24) executeQuery_];
}

double closure #1 in RaceRouteDataStore.queryRoute(for:timestampAnchor:pointsLimit:completion:)(uint64_t a1, unint64_t a2, void *a3, void (*a4)(id *))
{
  if (a3)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.race);
    v7 = a3;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = MEMORY[0x20F2E7F50]();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v32);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Race Data Store: Failed to query locations %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v32 = a3;
    v33 = 1;
    v15 = a3;
  }

  else if (a2)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.race);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      if (a2 >> 62)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 4) = v21;

      _os_log_impl(&dword_20AEA4000, v18, v19, "Race Data Store: queried route with locations: %ld", v20, 0xCu);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    else
    {
    }

    v28 = specialized _arrayForceCast<A, B>(_:)(a2);
    v29 = specialized _arrayConditionalCast<A, B>(_:)(v28);

    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v30 = v29;
    }

    v32 = v30;
    v33 = 0;
  }

  else
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.race);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v23, v24, "Race Data Store: Locations array is nil.", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    lazy protocol witness table accessor for type RaceError and conformance RaceError();
    v26 = swift_allocError();
    *v27 = 6;
    v32 = v26;
    v33 = 1;
  }

  a4(&v32);
  return outlined consume of Result<RaceRoute, Error>(v32, v33);
}

void RaceRouteDataStore.queryConfigurations(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = [a1 identifier];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v12[4] = partial apply for closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:);
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKRaceRouteCluster]?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_6_8;
  v10 = _Block_copy(v12);

  v11 = a1;

  [v7 fetchRaceRouteClustersForActivityType:v8 completion:v10];
  _Block_release(v10);
}

void closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:)(unint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, unint64_t a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v18 = MEMORY[0x28223BE20](v16, v17);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (a2)
    {
      v30 = a2;
      if (one-time initialization token for race != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static WOLog.race);
      v32 = a2;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315138;
        swift_getErrorValue();
        v37 = MEMORY[0x20F2E7F50](v82[2], v82[3]);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_20AEA4000, v33, v34, "Race Data Store: error fetching configurations: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x20F2E9420](v36, -1, -1);
        MEMORY[0x20F2E9420](v35, -1, -1);
      }

      v40 = a2;
      a3(a2, 1);
    }

    else
    {
      if (one-time initialization token for race != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, static WOLog.race);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_20AEA4000, v64, v65, "Race Data Store: nil cluster array without error", v66, 2u);
        MEMORY[0x20F2E9420](v66, -1, -1);
      }

      a3(MEMORY[0x277D84F90], 0);
    }

    return;
  }

  v70 = v21;
  v71 = v19;
  v72 = v15;
  v73 = v18;
  v74 = v12;
  v76 = a3;
  v77 = a4;
  v78 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v23 = MEMORY[0x277D84F90];
    v75 = v11;
    if (!i)
    {
      break;
    }

    aBlock[0] = MEMORY[0x277D84F90];
    v24 = aBlock;
    v25 = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      goto LABEL_72;
    }

    v11 = 0;
    v5 = (a1 & 0xC000000000000001);
    v26 = a1;
    v79 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v27 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5)
      {
        v28 = MEMORY[0x20F2E7A20](v11, v26);
      }

      else
      {
        if (v11 >= *(v79 + 16))
        {
          goto LABEL_68;
        }

        v28 = *(v26 + 8 * v11 + 32);
      }

      v29 = v28;
      v82[0] = v28;
      closure #1 in closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:)(v82, a5, &v81);

      a1 = v81;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v11;
      if (v27 == i)
      {
        a5 = aBlock[0];
        a1 = v26;
        v23 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  a5 = MEMORY[0x277D84F90];
LABEL_21:
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static WOLog.race);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    if (v78)
    {
      v46 = __CocoaSet.count.getter();
    }

    else
    {
      v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v45 + 4) = v46;

    _os_log_impl(&dword_20AEA4000, v43, v44, "Race Data Store: found clusters: %ld", v45, 0xCu);
    MEMORY[0x20F2E9420](v45, -1, -1);
  }

  else
  {
  }

  v69 = a1;
  v79 = v42;
  aBlock[0] = v23;
  if (a5 >> 62)
  {
    v47 = __CocoaSet.count.getter();
  }

  else
  {
    v47 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = MEMORY[0x277D84F90];
  if (v47)
  {
    v11 = 0;
    v5 = (a5 & 0xC000000000000001);
    v42 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
    while (1)
    {
      if (v5)
      {
        v48 = MEMORY[0x20F2E7A20](v11, a5);
      }

      else
      {
        if (v11 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v48 = *(a5 + 8 * v11 + 32);
      }

      a1 = v48;
      v49 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_66;
      }

      v50 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
      swift_beginAccess();
      if (*(a1 + v50) < 0.0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v11;
      if (v49 == v47)
      {
        i = aBlock[0];
        a1 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }
  }

  i = MEMORY[0x277D84F90];
LABEL_44:

  v51 = v69;

  LOBYTE(v24) = v79;
  v5 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v11))
  {

    goto LABEL_53;
  }

  a5 = swift_slowAlloc();
  *a5 = 134217984;
  if (v78)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((i & 0x8000000000000000) == 0 && (i & 0x4000000000000000) == 0)
  {
    v52 = *(i + 16);
    v53 = __OFSUB__(v25, v52);
    v54 = (v25 - v52);
    if (!v53)
    {
      goto LABEL_52;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    v55 = __CocoaSet.count.getter();
LABEL_57:
    *(v42 + 4) = v55;

    _os_log_impl(&dword_20AEA4000, v11, v24, "Race Data Store: found %ld non-fragmented clusters", v42, 0xCu);
    MEMORY[0x20F2E9420](v42, -1, -1);

    goto LABEL_59;
  }

LABEL_72:
  v42 = v25;
  v67 = __CocoaSet.count.getter();
  v54 = v42 - v67;
  if (__OFSUB__(v42, v67))
  {
    goto LABEL_74;
  }

LABEL_52:
  *(a5 + 4) = v54;

  _os_log_impl(&dword_20AEA4000, v5, v11, "Race Data Store: hiding %ld fragmented clusters", a5, 0xCu);
  MEMORY[0x20F2E9420](a5, -1, -1);

LABEL_53:

  v11 = Logger.logObject.getter();
  LOBYTE(v24) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v24))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    if (i < 0 || (i & 0x4000000000000000) != 0)
    {
      goto LABEL_75;
    }

    v55 = *(i + 16);
    goto LABEL_57;
  }

LABEL_59:
  type metadata accessor for HKRaceRouteCluster(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v56 = static OS_dispatch_queue.main.getter();
  v57 = swift_allocObject();
  v58 = v77;
  v57[2] = v76;
  v57[3] = v58;
  v57[4] = i;
  aBlock[4] = partial apply for closure #3 in closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:);
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_21_3;
  v59 = _Block_copy(aBlock);

  v60 = v70;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = a1;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v61 = v72;
  v62 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v60, v61, v59);
  _Block_release(v59);

  (*(v74 + 8))(v61, v62);
  (*(v71 + 8))(v60, v73);
}

uint64_t closure #1 in closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:)@<X0>(void **a1@<X0>, void *a2@<X1>, void ***a3@<X8>)
{
  v113 = a2;
  v114 = a3;
  v110 = type metadata accessor for UUID();
  v121 = *(v110 - 8);
  v5 = MEMORY[0x28223BE20](v110, v4);
  v112 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v130 = &v107 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v132 = &v107 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v125 = &v107 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v123 = &v107 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v120 = &v107 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v131 = &v107 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v124 = &v107 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v122 = &v107 - v29;
  v30 = type metadata accessor for Date();
  v116 = v30;
  v119 = *(v30 - 8);
  v31 = v119;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v128 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v129 = &v107 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v117 = &v107 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v118 = &v107 - v43;
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v107 - v45;
  v47 = *a1;
  v48 = specialized Occurrence.__allocating_init(count:)(0);
  v49 = [v47 lastWorkoutDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v51 = *(v31 + 40);
  v111 = v48;
  v51(&v48[v50], v46, v30);
  swift_endAccess();
  v52 = [v47 workoutRouteLabel];
  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v53;

  v54 = [v47 clusterUUID];
  v55 = v122;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = [v47 lastWorkoutUUID];
  v57 = v124;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  [v47 lastWorkoutDistance];
  v59 = v58;
  [v47 lastWorkoutDuration];
  v61 = v60;
  v62 = [v47 lastWorkoutDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = [v47 bestWorkoutUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  [v47 bestWorkoutDistance];
  v65 = v64;
  [v47 bestWorkoutDuration];
  v67 = v66;
  v68 = [v47 bestWorkoutDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = [v47 workoutRouteSnapshot];
  v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = v71;
  v127 = v70;

  v107 = [v47 clusterSize];
  v115 = [v47 lastWorkoutStartingPoint];
  [v47 relevanceValue];
  v73 = v72;
  v74 = v120;
  UUID.init()();
  v75 = *(v121 + 16);
  v76 = v123;
  v77 = v55;
  v78 = v110;
  v75(v123, v77, v110);
  v79 = v125;
  v75(v125, v57, v78);
  v80 = *(v119 + 16);
  v81 = v116;
  v80(v129, v118, v116);
  v75(v132, v131, v78);
  v80(v128, v117, v81);
  v75(v130, v74, v78);
  v82 = objc_allocWithZone(type metadata accessor for RaceWorkoutConfiguration(0));
  v83 = &v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  v84 = v108;
  *v83 = v109;
  v83[1] = v84;
  v75(&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v76, v78);
  swift_beginAccess();
  v134 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v75(&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v79, v78);
  *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v59;
  *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v61;
  v85 = v116;
  v80(&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v129, v116);
  v75(&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v132, v78);
  *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v65;
  *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v67;
  v80(&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v128, v85);
  v86 = v115;
  v87 = &v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v88 = v126;
  *v87 = v127;
  v87[1] = v88;
  *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = v107;
  if (v86)
  {
    outlined copy of Data._Representation(v127, v126);
    v89 = v86;
    [v89 coordinate];
    *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = v90;
    [v89 coordinate];
    v92 = v91;

    *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = v92;
  }

  else
  {
    *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
    *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
    outlined copy of Data._Representation(v127, v126);
  }

  *&v82[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = v73;
  v93 = v112;
  v75(v112, v130, v78);
  *&v82[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v94 = v119;
  v95 = *(v119 + 56);
  v95(&v82[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v85);
  v95(&v82[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v85);
  v96 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v97 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v97 - 8) + 56))(&v82[v96], 1, 1, v97);
  v98 = v121;
  (*(v121 + 56))(&v82[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v78);
  v99 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v82[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v75(&v82[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v93, v78);
  v100 = v113;
  *&v82[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v113;
  v82[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v82[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v111;
  swift_beginAccess();
  *&v82[v99] = 0;
  v82[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v101 = type metadata accessor for WorkoutConfiguration(0);
  v133.receiver = v82;
  v133.super_class = v101;
  v102 = v100;
  v103 = objc_msgSendSuper2(&v133, sel_init);

  outlined consume of Data._Representation(v127, v126);
  v104 = *(v98 + 8);
  v104(v93, v78);
  v104(v130, v78);
  v105 = *(v94 + 8);
  v105(v128, v85);
  v104(v132, v78);
  v105(v129, v85);
  v104(v125, v78);
  v104(v123, v78);
  v104(v120, v78);
  v105(v117, v85);
  v104(v131, v78);
  v105(v118, v85);
  v104(v124, v78);
  result = (v104)(v122, v78);
  *v114 = v103;
  return result;
}

double thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKRaceRouteCluster]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for HKRaceRouteCluster(0, &lazy cache variable for type metadata for HKRaceRouteCluster, 0x277CCD860);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v5, a3);

  return result;
}

void protocol witness for RaceRouteDataStoring.queryConfigurations(for:completion:) in conformance RaceRouteDataStore(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v8 = [a1 identifier];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v12[4] = closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:)partial apply;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKRaceRouteCluster]?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_15_7;
  v10 = _Block_copy(v12);

  v11 = a1;

  [v7 fetchRaceRouteClustersForActivityType:v8 completion:v10];
  _Block_release(v10);
}

double thunk for @escaping @callee_guaranteed (@guaranteed HKRaceRouteLocationSeriesQuery, @guaranteed [CLRoutePoint]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4, __n128 a5)
{
  v6 = a3;
  v8 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for HKRaceRouteCluster(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v6, a4);

  return result;
}

uint64_t objectdestroy_2Tm_2()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for HKRaceRouteCluster(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t TrackRunningCoordinator.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningCoordinator);
  return static Message.with(_:)();
}

id Apple_Workout_Core_TrackRunningCoordinator.decoded.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static TrackRunningCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.setter();
  return v1;
}

id TrackRunningMetadataKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrackRunningMetadataKeys.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackRunningMetadataKeys();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TrackRunningMetadataKeys.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TrackRunningMetadataKeys();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t TrackRunningCoordinator.canShowTrackPrompt.getter()
{
  v1 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  swift_beginAccess();
  return *(v0 + v1);
}

void TrackRunningCoordinator.canShowTrackPrompt.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TrackRunningCoordinator.didShowTrackPrompt.getter()
{
  v1 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  swift_beginAccess();
  return *(v0 + v1);
}

void TrackRunningCoordinator.didShowTrackPrompt.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t (*TrackRunningCoordinator.trackModeEnabledLocal.modify(uint64_t *a1))()
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
  return TrackRunningCoordinator.trackModeEnabledLocal.modify;
}

uint64_t (*TrackRunningCoordinator.$trackModeEnabledLocal.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR___WOCoreTrackRunningCoordinator__trackModeEnabledLocal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningCoordinator.$trackModeEnabledLocal.modify;
}

void key path getter for TrackRunningCoordinator.trackModeEnabledMirrored : TrackRunningCoordinator(_BYTE *a4@<X8>)
{
  key path getter for TrackRunningCoordinator.trackModeEnabledMirrored : TrackRunningCoordinator(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

uint64_t (*TrackRunningCoordinator.trackModeEnabledMirrored.modify(uint64_t *a1))()
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
  return TrackRunningCoordinator.trackModeEnabledMirrored.modify;
}

uint64_t (*TrackRunningCoordinator.$trackModeEnabledMirrored.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR___WOCoreTrackRunningCoordinator__trackModeEnabledMirrored;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningCoordinator.$trackModeEnabledMirrored.modify;
}

double key path setter for TrackRunningCoordinator.trackModeEnabledMirrored : TrackRunningCoordinator(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  static Published.subscript.setter();
  return result;
}

uint64_t TrackRunningCoordinator.trackModeEnabledLocal.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*TrackRunningCoordinator.hasTrackUnitsOfMeasure.modify(uint64_t *a1))()
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
  return TrackRunningCoordinator.hasTrackUnitsOfMeasure.modify;
}

uint64_t key path setter for TrackRunningCoordinator.$trackModeEnabledLocal : TrackRunningCoordinator(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t TrackRunningCoordinator.$trackModeEnabledLocal.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*TrackRunningCoordinator.$hasTrackUnitsOfMeasure.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR___WOCoreTrackRunningCoordinator__hasTrackUnitsOfMeasure;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningCoordinator.$hasTrackUnitsOfMeasure.modify;
}

void key path getter for TrackRunningCoordinator.preferredUnit : TrackRunningCoordinator(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for TrackRunningCoordinator.preferredUnit : TrackRunningCoordinator(void **a1, void **a2)
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

uint64_t TrackRunningCoordinator.preferredUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double TrackRunningCoordinator.preferredUnit.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

uint64_t (*TrackRunningCoordinator.preferredUnit.modify(uint64_t *a1))()
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
  return TrackRunningCoordinator.preferredUnit.modify;
}

void TrackRunningCoordinator.trackModeEnabledLocal.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for TrackRunningCoordinator.$trackModeEnabledLocal : TrackRunningCoordinator(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for TrackRunningCoordinator.$preferredUnit : TrackRunningCoordinator(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMd, &_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12NSUnitLengthCGMd, &_s7Combine9PublishedVySo12NSUnitLengthCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t TrackRunningCoordinator.$trackModeEnabledLocal.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t TrackRunningCoordinator.$preferredUnit.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMd, &_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12NSUnitLengthCGMd, &_s7Combine9PublishedVySo12NSUnitLengthCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TrackRunningCoordinator.$preferredUnit.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMd, &_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMR);
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

  v10 = OBJC_IVAR___WOCoreTrackRunningCoordinator__preferredUnit;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12NSUnitLengthCGMd, &_s7Combine9PublishedVySo12NSUnitLengthCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningCoordinator.$preferredUnit.modify;
}

void TrackRunningCoordinator.$trackModeEnabledLocal.modify(uint64_t a1, char a2)
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

uint64_t TrackRunningCoordinator.preferredDistanceUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if (v5 != 1)
  {
    return 0;
  }

  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v0 = v4;
  v1 = [objc_opt_self() miles];
  v2 = static NSObject.== infix(_:_:)();

  if (v2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void *TrackRunningCoordinator.trackId.getter()
{
  v1 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TrackRunningCoordinator.trackId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for TrackRunningCoordinator.trackId : TrackRunningCoordinator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id static TrackRunningCoordinator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static TrackRunningCoordinator.shared;

  return v1;
}

char *TrackRunningCoordinator.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12NSUnitLengthCGMd, &_s7Combine9PublishedVySo12NSUnitLengthCGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - v9;
  v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt] = 1;
  v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt] = 0;
  v11 = OBJC_IVAR___WOCoreTrackRunningCoordinator__trackModeEnabledLocal;
  LOBYTE(v29) = 0;
  Published.init(initialValue:)();
  v12 = *(v7 + 32);
  v12(&v0[v11], v10, v6);
  v13 = OBJC_IVAR___WOCoreTrackRunningCoordinator__trackModeEnabledMirrored;
  LOBYTE(v29) = 0;
  Published.init(initialValue:)();
  v12(&v0[v13], v10, v6);
  v14 = OBJC_IVAR___WOCoreTrackRunningCoordinator__hasTrackUnitsOfMeasure;
  LOBYTE(v29) = 0;
  Published.init(initialValue:)();
  v12(&v0[v14], v10, v6);
  v15 = OBJC_IVAR___WOCoreTrackRunningCoordinator__preferredUnit;
  v29 = [objc_opt_self() meters];
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v15], v5, v1);
  *&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:0 domainName:*MEMORY[0x277CCE4C8] healthStore:static WorkoutCoreInjector.healthStore];
  *&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_domain] = v16;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v17 = static WorkoutCoreInjector.nanoSyncControl;
  *&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_control] = static WorkoutCoreInjector.nanoSyncControl;
  v18 = one-time initialization token for unitManager;
  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = static WorkoutCoreInjector.unitManager;
  *&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_unitManager] = static WorkoutCoreInjector.unitManager;
  v21 = type metadata accessor for TrackRunningCoordinator(0);
  v28.receiver = v0;
  v28.super_class = v21;
  v22 = v20;
  v23 = objc_msgSendSuper2(&v28, sel_init);
  v24 = *&v23[OBJC_IVAR___WOCoreTrackRunningCoordinator_domain];
  v25 = v23;
  [v24 startObservation_];
  TrackRunningCoordinator.fetchPreferredUnit()();

  return v25;
}

id TrackRunningCoordinator.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_domain] stopObservation_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackRunningCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double TrackRunningCoordinator.trackModeEnabledLocal.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
  return result;
}

double @objc TrackRunningCoordinator.trackModeEnabledLocal.setter(void *a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static Published.subscript.setter();
  return result;
}

Swift::Void __swiftcall TrackRunningCoordinator.reset()()
{
  v1 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  swift_beginAccess();
  v0[v1] = 1;
  v2 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  swift_beginAccess();
  v0[v2] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
  v5 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = 0;
}

void closure #1 in TrackRunningCoordinator.forceSync()(char a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.trackRunning);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {

      if (a1)
      {
        return;
      }

      goto LABEL_9;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Received an error forcing a HK sync: %@", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  if (a1)
  {
    return;
  }

LABEL_9:
  if (one-time initialization token for trackRunning != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.trackRunning);
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v14, "Failed to force an HK sync.", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }
}

void TrackRunningCoordinator.fetchPreferredUnit()()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreTrackRunningCoordinator_domain);
  v2 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B46B380);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = partial apply for closure #1 in TrackRunningCoordinator.fetchPreferredUnit();
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  v5[3] = &block_descriptor_55_2;
  v4 = _Block_copy(v5);

  [v1 numberForKey:v2 completion:v4];
  _Block_release(v4);
}

void closure #1 in closure #1 in TrackRunningCoordinator.fetchPreferredUnit()(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v22) = 1;
  v4 = a1;
  static Published.subscript.setter();
  v5 = objc_opt_self();
  v6 = &selRef_meters;
  if ((a2 & 1) == 0)
  {
    v6 = &selRef_miles;
  }

  v7 = [v5 *v6];
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v7;
  v8 = v4;
  static Published.subscript.setter();
  if (one-time initialization token for trackRunning != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.trackRunning);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v21);

    v15 = v21;
    v16 = [v21 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v11, v12, "Found preferred unit for track running: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }
}

Swift::Void __swiftcall TrackRunningCoordinator.storePreferredUnit(_:)(NSUnitLength a1)
{
  isa = a1.super.super.super.isa;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = isa;
  aBlock[4] = partial apply for closure #1 in TrackRunningCoordinator.storePreferredUnit(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_80;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = isa;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in TrackRunningCoordinator.storePreferredUnit(_:)(void *a1, void *a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = a2;
  v5 = v4;
  v6 = a2;
  static Published.subscript.setter();
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v7 = [objc_opt_self() meters];
  LOBYTE(a2) = static NSObject.== infix(_:_:)();

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = *&v5[OBJC_IVAR___WOCoreTrackRunningCoordinator_domain];
  v10 = v8;
  v11 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B46B380);
  aBlock[0] = 0;
  v12 = [v9 setNumber:v10 forKey:v11 error:aBlock];

  v13 = aBlock[0];
  if (v12)
  {
    v14 = *&v5[OBJC_IVAR___WOCoreTrackRunningCoordinator_control];
    aBlock[4] = closure #1 in TrackRunningCoordinator.forceSync();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_76_0;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    [v14 forceNanoSyncWithOptions:0 completion:v15];
    _Block_release(v15);
  }

  else
  {
    v17 = aBlock[0];
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.trackRunning);
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v21, v22, "Unable to set preferred unit for track workouts: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x20F2E9420](v24, -1, -1);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    else
    {
    }
  }
}

void closure #1 in TrackRunningCoordinator.keyValueDomain(didUpdate:)()
{
  if (one-time initialization token for trackRunning != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.trackRunning);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, v1, v2, "Received a HKKeyValueDomain update, reloading preferences.", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  TrackRunningCoordinator.fetchPreferredUnit()();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TrackRunningCoordinator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TrackRunningCoordinator(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double closure #1 in TrackRunningCoordinator.didUpdateFromProximity(_:to:with:)(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.setter();
  return result;
}

void closure #1 in TrackRunningCoordinator.protobuf.getter(_BYTE *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a1 = v3;
}

uint64_t type metadata accessor for NSUnitLength(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized TrackRunningCoordinator.didUpdateFromProximity(_:to:with:)(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 3)
  {
    v19 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(aBlock);

    if (LOBYTE(aBlock[0]) == 1)
    {
      type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v20 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      aBlock[4] = partial apply for closure #1 in TrackRunningCoordinator.didUpdateFromProximity(_:to:with:);
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_67_1;
      v22 = _Block_copy(aBlock);
      v23 = v2;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v14, v8, v22);
      _Block_release(v22);

      (*(v5 + 8))(v8, v4);
      (*(v10 + 8))(v14, v19);
    }
  }

  else if (!*a1)
  {
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.trackRunning);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20AEA4000, v16, v17, "didUpdateFromProximity checking for preferred unit updates.", v18, 2u);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    TrackRunningCoordinator.fetchPreferredUnit()();
  }
}

uint64_t specialized TrackRunningCoordinator.keyValueDomain(didUpdate:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in TrackRunningCoordinator.keyValueDomain(didUpdate:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_73;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void keypath_get_27Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_28Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void type metadata completion function for TrackRunningCoordinator(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<NSUnitLength>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<NSUnitLength>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<NSUnitLength>)
  {
    type metadata accessor for NSUnitLength(255, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<NSUnitLength>);
    }
  }
}

uint64_t static Locale.languageCode(for:)(uint64_t a1, unint64_t a2)
{

  v4 = specialized Collection.prefix(_:)(2, a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x20F2E6D00](v4, v6, v8, v10);

  return v11;
}

uint64_t static Locale.appendRegionCode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd, &_s10Foundation6LocaleV6RegionVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v19 - v11;
  if (String.count.getter() > 2)
  {
  }

  else
  {
    static Locale.current.getter();
    Locale.region.getter();
    (*(v5 + 8))(v8, v4);
    v13 = type metadata accessor for Locale.Region();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of Locale.Region?(v12);
      lazy protocol witness table accessor for type Locale.LocaleError and conformance Locale.LocaleError();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v15 = MEMORY[0x20F2E4880]();
      v17 = v16;
      (*(v14 + 8))(v12, v13);
      v19[0] = a1;
      v19[1] = a2;

      MEMORY[0x20F2E6D80](45, 0xE100000000000000);

      MEMORY[0x20F2E6D80](v15, v17);

      return v19[0];
    }
  }

  return a1;
}

Swift::Int Locale.LocaleError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Locale.LocaleError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale.LocaleError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t specialized static Locale.appLanguageId.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 preferredLocalizations];

  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t outlined destroy of Locale.Region?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd, &_s10Foundation6LocaleV6RegionVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Locale.LocaleError and conformance Locale.LocaleError()
{
  result = lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError;
  if (!lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError;
  if (!lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Locale.LocaleError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Locale.LocaleError(_WORD *result, int a2, int a3)
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

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

unint64_t Apple_Workout_Core_ActivityMoveMode.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_ActivityMoveMode.rawValue.getter()
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

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_ActivityMoveMode@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_ActivityMoveMode()
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_ActivityMoveMode@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_ActivityMoveMode(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_ActivityMoveMode(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ActivityMoveMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_ActivityMoveMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_ActivityMoveMode(uint64_t *a1, uint64_t *a2)
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

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v1 + *(v7 + 24), v6, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKActivitySummary(v6, a1, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v6, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary : Apple_Workout_Core_ActivitySummaryMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + *(v8 + 24), v7, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKActivitySummary(v7, a2, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v11) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v7, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary : Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary(a1, v8, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  v9 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 24);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(a2 + v9, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 24);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v1 + v3, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  outlined init with take of Apple_Workout_Core_HKActivitySummary(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  v4 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_HKActivitySummary.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v3) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
}

void (*Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  return Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.modify;
}

void Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_HKActivitySummary((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v9 + v3, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_HKActivitySummary(v5, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v9 + v3, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_ActivitySummaryMetricsPublisher.hasActivitySummary.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v0 + *(v5 + 24), v4, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v4, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_ActivitySummaryMetricsPublisher.clearActivitySummary()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 24);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + v1, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void Apple_Workout_Core_HKActivitySummary.moveMode.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  *(a1 + 8) = v4;
}

void key path setter for Apple_Workout_Core_HKActivitySummary.moveMode : Apple_Workout_Core_HKActivitySummary(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
}

void Apple_Workout_Core_HKActivitySummary.moveMode.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v7);
    *(v2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
}

void (*Apple_Workout_Core_HKActivitySummary.moveMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return Apple_Workout_Core_HKActivitySummary.moveMode.modify;
}

void Apple_Workout_Core_HKActivitySummary.moveMode.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 24) = v6;

  free(v2);
}

void (*Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  return Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.appleMoveTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  return Apple_Workout_Core_HKActivitySummary.appleMoveTime.modify;
}

BOOL Apple_Workout_Core_HKActivitySummary.hasActiveEnergyBurned.getter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  v8 = *a1;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  return v10;
}

uint64_t Apple_Workout_Core_HKActivitySummary.clearActiveEnergyBurned()(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v10);
    *(v3 + v8) = v10;
  }

  v11 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = *a1;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v7, v10 + v12);
  return swift_endAccess();
}

void (*Apple_Workout_Core_HKActivitySummary.appleExerciseTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  return Apple_Workout_Core_HKActivitySummary.appleExerciseTime.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.appleStandHours.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  return Apple_Workout_Core_HKActivitySummary.appleStandHours.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.activeEnergyBurnedGoal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  return Apple_Workout_Core_HKActivitySummary.activeEnergyBurnedGoal.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.appleMoveTimeGoal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  return Apple_Workout_Core_HKActivitySummary.appleMoveTimeGoal.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.exerciseTimeGoal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  return Apple_Workout_Core_HKActivitySummary.exerciseTimeGoal.modify;
}

uint64_t Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = *(v2 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v9 + v10, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v11 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, a2, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  UnknownStorage.init()();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_HKActivitySummary.activeEnergyBurned : Apple_Workout_Core_HKActivitySummary@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v10 + v11, v9, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKActivitySummary(v9, a3, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  UnknownStorage.init()();
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v9, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_HKActivitySummary.activeEnergyBurned : Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary(a1, v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v17 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a2 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v19 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v19);
    *(a2 + v17) = v19;
  }

  outlined init with take of Apple_Workout_Core_HKActivitySummary(v16, v11, type metadata accessor for Apple_Workout_Core_HKQuantity);
  (*(v13 + 56))(v11, 0, 1, v12);
  v20 = *a5;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v11, v19 + v20);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.setter(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - v8;
  v10 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v12 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v12);
    *(v4 + v10) = v12;
  }

  outlined init with take of Apple_Workout_Core_HKActivitySummary(a1, v9, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v13 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  v14 = *a2;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v9, v12 + v14);
  return swift_endAccess();
}

void (*Apple_Workout_Core_HKActivitySummary.standHoursGoal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  return Apple_Workout_Core_HKActivitySummary.standHoursGoal.modify;
}

void Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    outlined init with copy of Apple_Workout_Core_HKActivitySummary(*(v4 + 120), *(v4 + 112), type metadata accessor for Apple_Workout_Core_HKQuantity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v4 + 128);
      v10 = *(v4 + 72);
      type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
      swift_allocObject();
      v8 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v13 = *(v4 + 96);
    v14 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v12, v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
    (*(v14 + 56))(v16, 0, 1, v13);
    v17 = *a3;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_HKQuantity?(v16, v8 + v17);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_HKActivitySummary(v11, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  else
  {
    v18 = *(v4 + 72);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v18 + v5);
    if ((v19 & 1) == 0)
    {
      v21 = *(v4 + 128);
      v22 = *(v4 + 72);
      type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
      swift_allocObject();
      v20 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v23 = *(v4 + 96);
    v24 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v11, v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
    (*(v24 + 56))(v16, 0, 1, v23);
    v25 = *a3;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_HKQuantity?(v16, v20 + v25);
    swift_endAccess();
  }

  free(v11);
  free(v12);
  free(v15);
  free(v16);

  free(v4);
}

uint64_t Apple_Workout_Core_HKActivitySummary.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_HKActivitySummary.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary, &protocol conformance descriptor for Apple_Workout_Core_HKActivitySummary);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_ActivitySummaryMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_ActivitySummaryMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + *(v14 + 24), v8, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  }

  outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v13, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary, &protocol conformance descriptor for Apple_Workout_Core_HKActivitySummary);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_HKActivitySummary(v13, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_ActivityMoveMode._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v27 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v7 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  v8 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime, 1, 1, v8);
  v27 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime, 1, 1, v8);
  v28 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours, 1, 1, v8);
  v29 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal, 1, 1, v8);
  v30 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal, 1, 1, v8);
  v31 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal, 1, 1, v8);
  v32 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal, 1, 1, v8);
  swift_beginAccess();
  v11 = *(a1 + 16);
  LOBYTE(v8) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v8;
  v12 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v12, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v7);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v13, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v10);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v14, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v15 = v27;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v15);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v16, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v17 = v28;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v17);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v18, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v19 = v29;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v19);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v20, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v21 = v30;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v22, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v23 = v31;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v24, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);

  v25 = v32;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v25);
  swift_endAccess();
  return v1;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKActivitySummary?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Apple_Workout_Core_HKQuantity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Apple_Workout_Core_HKActivitySummary._StorageClass.__deallocating_deinit()
{
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v11);
    *(v4 + v8) = v10;
  }

  return closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(v10, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        }

        else if (result == 2)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
          goto LABEL_5;
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 7:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
            goto LABEL_5;
          case 8:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
            goto LABEL_5;
          case 9:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
LABEL_5:
            closure #2 in closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  result = closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned, 2);
    if (!v4)
    {
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime, 3);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime, 4);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours, 5);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal, 6);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal, 7);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal, 8);
      return closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal, 9);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v19[2] = a3;
  v19[7] = a4;
  v19[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v17, v11, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v11, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_HKActivitySummary(v11, v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_HKActivitySummary(v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
}

BOOL closure #1 in static Apple_Workout_Core_HKActivitySummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v5 = *(v4 - 8);
  v267 = v4;
  v268 = v5;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v239 = &v235 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v240 = &v235 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v243 = &v235 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v246 = &v235 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v250 = &v235 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v254 = &v235 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v258 = &v235 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v262 = &v235 - v28;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR);
  v30 = MEMORY[0x28223BE20](v266, v29);
  v32 = &v235 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v30, v33);
  v244 = &v235 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v248 = &v235 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v252 = &v235 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v256 = &v235 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v260 = &v235 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v263 = &v235 - v50;
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v235 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v56 = MEMORY[0x28223BE20](v54 - 8, v55);
  v58 = (&v235 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = MEMORY[0x28223BE20](v56, v59);
  v242 = &v235 - v61;
  v63 = MEMORY[0x28223BE20](v60, v62);
  v241 = &v235 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v247 = &v235 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v245 = &v235 - v70;
  v72 = MEMORY[0x28223BE20](v69, v71);
  v251 = &v235 - v73;
  v75 = MEMORY[0x28223BE20](v72, v74);
  v249 = &v235 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v255 = &v235 - v79;
  v81 = MEMORY[0x28223BE20](v78, v80);
  v253 = &v235 - v82;
  v84 = MEMORY[0x28223BE20](v81, v83);
  v259 = &v235 - v85;
  v87 = MEMORY[0x28223BE20](v84, v86);
  v257 = &v235 - v88;
  v90 = MEMORY[0x28223BE20](v87, v89);
  v264 = &v235 - v91;
  v93 = MEMORY[0x28223BE20](v90, v92);
  v261 = &v235 - v94;
  v96 = MEMORY[0x28223BE20](v93, v95);
  v265 = &v235 - v97;
  v99 = MEMORY[0x28223BE20](v96, v98);
  v101 = &v235 - v100;
  MEMORY[0x28223BE20](v99, v102);
  v104 = &v235 - v103;
  swift_beginAccess();
  v105 = *(a1 + 16);
  v106 = *(a1 + 24);
  swift_beginAccess();
  v107 = *(a2 + 16);
  v108 = v105 != 0;
  if (!v106)
  {
    v108 = v105;
  }

  if (*(a2 + 24) != 1)
  {
    if (v108 != v107)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (v107)
  {
    if (v108 != 1)
    {
      return 0;
    }

LABEL_10:
    v237 = v58;
    v238 = v32;
    v269 = a2;
    v109 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
    swift_beginAccess();
    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v109, v104, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v110 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
    swift_beginAccess();
    v111 = *(v266 + 48);
    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v104, v53, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v112 = v269;
    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v269 + v110, &v53[v111], &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v113 = v267;
    v115 = v268 + 48;
    v114 = *(v268 + 48);
    if (v114(v53, 1, v267) == 1)
    {

      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v104, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      if (v114(&v53[v111], 1, v113) == 1)
      {
        v236 = v114;
        v268 = v115;
        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v53, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        v116 = v112;
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v53, v101, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      if (v114(&v53[v111], 1, v113) != 1)
      {
        v192 = v262;
        outlined init with take of Apple_Workout_Core_HKActivitySummary(&v53[v111], v262, type metadata accessor for Apple_Workout_Core_HKQuantity);
        if (*v101 != *v192 || (*(v101 + 1) != *(v192 + 8) || *(v101 + 2) != *(v192 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v104, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
          outlined destroy of Apple_Workout_Core_HKActivitySummary(v192, type metadata accessor for Apple_Workout_Core_HKQuantity);
          outlined destroy of Apple_Workout_Core_HKActivitySummary(v101, type metadata accessor for Apple_Workout_Core_HKQuantity);
          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v53, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
LABEL_109:

          goto LABEL_110;
        }

        v236 = v114;
        v268 = v115;
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

        v193 = v192;
        v116 = v269;

        v194 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v104, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        outlined destroy of Apple_Workout_Core_HKActivitySummary(v193, type metadata accessor for Apple_Workout_Core_HKQuantity);
        outlined destroy of Apple_Workout_Core_HKActivitySummary(v101, type metadata accessor for Apple_Workout_Core_HKQuantity);
        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v53, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        if ((v194 & 1) == 0)
        {
          goto LABEL_109;
        }

LABEL_13:
        v117 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
        swift_beginAccess();
        v235 = a1;
        v118 = a1 + v117;
        v119 = v265;
        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v118, v265, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        v120 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
        swift_beginAccess();
        v121 = *(v266 + 48);
        v122 = v263;
        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v119, v263, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v116 + v120, v122 + v121, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        v123 = v267;
        v124 = v236;
        if (v236(v122, 1, v267) == 1)
        {
          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v119, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
          v125 = v124(v122 + v121, 1, v123);
          v126 = v264;
          v127 = v235;
          if (v125 == 1)
          {
            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v122, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
LABEL_16:
            v128 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
            swift_beginAccess();
            outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v127 + v128, v126, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            v129 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
            v130 = v126;
            v131 = v269;
            swift_beginAccess();
            v132 = *(v266 + 48);
            v133 = v260;
            outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v130, v260, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            v134 = v131 + v129;
            v135 = v267;
            outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v134, v133 + v132, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            if (v124(v133, 1, v135) == 1)
            {
              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v130, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
              v136 = v124(v133 + v132, 1, v135);
              v137 = v259;
              v138 = v235;
              if (v136 == 1)
              {
                v236 = v124;
                outlined destroy of Apple_Workout_Core_HKActivitySummary?(v133, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                goto LABEL_19;
              }
            }

            else
            {
              v202 = v257;
              outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v133, v257, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
              v203 = v124(v133 + v132, 1, v135);
              v137 = v259;
              if (v203 != 1)
              {
                v204 = v133 + v132;
                v205 = v254;
                outlined init with take of Apple_Workout_Core_HKActivitySummary(v204, v254, type metadata accessor for Apple_Workout_Core_HKQuantity);
                v138 = v235;
                if (*v202 != *v205 || (*(v202 + 8) != *(v205 + 8) || *(v202 + 16) != *(v205 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v264, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v205, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v202, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  v199 = v260;
                  goto LABEL_107;
                }

                v236 = v124;
                type metadata accessor for UnknownStorage();
                v206 = v202;
                lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                v207 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of Apple_Workout_Core_HKActivitySummary?(v264, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                outlined destroy of Apple_Workout_Core_HKActivitySummary(v205, type metadata accessor for Apple_Workout_Core_HKQuantity);
                outlined destroy of Apple_Workout_Core_HKActivitySummary(v206, type metadata accessor for Apple_Workout_Core_HKQuantity);
                outlined destroy of Apple_Workout_Core_HKActivitySummary?(v260, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                if ((v207 & 1) == 0)
                {
                  goto LABEL_109;
                }

LABEL_19:
                v139 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
                swift_beginAccess();
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v138 + v139, v137, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v140 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
                v141 = v137;
                v142 = v269;
                swift_beginAccess();
                v143 = *(v266 + 48);
                v144 = v256;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v141, v256, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v145 = v142 + v140;
                v146 = v267;
                v147 = v144;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v145, v144 + v143, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v148 = v236;
                if (v236(v144, 1, v146) == 1)
                {
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v141, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v149 = v148(v144 + v143, 1, v146);
                  v150 = v255;
                  if (v149 != 1)
                  {
                    goto LABEL_86;
                  }

                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v147, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                }

                else
                {
                  v208 = v253;
                  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v144, v253, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v209 = v148(v144 + v143, 1, v146);
                  v150 = v255;
                  if (v209 == 1)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v259, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v210 = v208;
LABEL_85:
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v210, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    goto LABEL_86;
                  }

                  v211 = v250;
                  outlined init with take of Apple_Workout_Core_HKActivitySummary(v147 + v143, v250, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  if (*v208 != *v211 || (*(v208 + 8) != *(v211 + 8) || *(v208 + 16) != *(v211 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v259, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v211, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v208, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    v199 = v256;
                    goto LABEL_107;
                  }

                  type metadata accessor for UnknownStorage();
                  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                  v212 = dispatch thunk of static Equatable.== infix(_:_:)();
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v259, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v211, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v208, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v256, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  if ((v212 & 1) == 0)
                  {
                    goto LABEL_109;
                  }
                }

                v151 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
                swift_beginAccess();
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v138 + v151, v150, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v152 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
                v153 = v269;
                swift_beginAccess();
                v154 = *(v266 + 48);
                v155 = v150;
                v156 = v150;
                v157 = v252;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v155, v252, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v158 = v153 + v152;
                v159 = v267;
                v147 = v157;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v158, v157 + v154, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v160 = v236;
                if (v236(v157, 1, v159) == 1)
                {
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v156, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v161 = v160(v157 + v154, 1, v159);
                  v162 = v251;
                  if (v161 != 1)
                  {
                    goto LABEL_86;
                  }

                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v157, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                }

                else
                {
                  v213 = v157;
                  v214 = v249;
                  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v213, v249, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v215 = v160(v147 + v154, 1, v159);
                  v162 = v251;
                  if (v215 == 1)
                  {
                    v216 = v255;
LABEL_84:
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v216, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v210 = v214;
                    goto LABEL_85;
                  }

                  v217 = v246;
                  outlined init with take of Apple_Workout_Core_HKActivitySummary(v147 + v154, v246, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  if (*v214 != *v217 || (*(v214 + 8) != *(v217 + 8) || *(v214 + 16) != *(v217 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v255, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v217, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v214, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    v199 = v252;
                    goto LABEL_107;
                  }

                  type metadata accessor for UnknownStorage();
                  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                  v218 = dispatch thunk of static Equatable.== infix(_:_:)();
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v255, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v217, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v214, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v252, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  if ((v218 & 1) == 0)
                  {
                    goto LABEL_109;
                  }
                }

                v163 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
                swift_beginAccess();
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v138 + v163, v162, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v164 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
                v165 = v162;
                v166 = v269;
                swift_beginAccess();
                v167 = *(v266 + 48);
                v168 = v248;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v165, v248, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v147 = v168;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v166 + v164, v168 + v167, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v169 = v267;
                v170 = v236;
                if (v236(v168, 1, v267) == 1)
                {
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v165, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v171 = v170(v168 + v167, 1, v169);
                  v172 = v247;
                  if (v171 == 1)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v168, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
LABEL_28:
                    v173 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
                    swift_beginAccess();
                    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v138 + v173, v172, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v174 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
                    v175 = v172;
                    v176 = v269;
                    swift_beginAccess();
                    v177 = *(v266 + 48);
                    v178 = v244;
                    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v175, v244, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v179 = v176 + v174;
                    v180 = v177;
                    v147 = v178;
                    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v179, v178 + v177, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v181 = v267;
                    v182 = v236;
                    if (v236(v178, 1, v267) == 1)
                    {
                      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v175, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                      if (v182(v178 + v180, 1, v181) == 1)
                      {
                        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v178, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                        v183 = v238;
                        goto LABEL_31;
                      }

                      goto LABEL_86;
                    }

                    v223 = v178;
                    v224 = v241;
                    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v223, v241, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    if (v182(v147 + v180, 1, v181) == 1)
                    {
                      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v247, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                      v210 = v224;
                      goto LABEL_85;
                    }

                    v225 = v240;
                    outlined init with take of Apple_Workout_Core_HKActivitySummary(v147 + v180, v240, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    if (*v224 == *v225 && (*(v224 + 8) == *(v225 + 8) && *(v224 + 16) == *(v225 + 16) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                    {
                      type metadata accessor for UnknownStorage();
                      lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                      v226 = dispatch thunk of static Equatable.== infix(_:_:)();
                      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v247, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                      outlined destroy of Apple_Workout_Core_HKActivitySummary(v225, type metadata accessor for Apple_Workout_Core_HKQuantity);
                      outlined destroy of Apple_Workout_Core_HKActivitySummary(v224, type metadata accessor for Apple_Workout_Core_HKQuantity);
                      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v244, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                      v183 = v238;
                      if (v226)
                      {
LABEL_31:
                        v184 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
                        swift_beginAccess();
                        v185 = v242;
                        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v138 + v184, v242, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                        v186 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
                        v187 = v269;
                        swift_beginAccess();
                        v188 = *(v266 + 48);
                        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v185, v183, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v187 + v186, v183 + v188, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                        v189 = v267;
                        v190 = v236;
                        if (v236(v183, 1, v267) == 1)
                        {

                          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v242, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                          if (v190(v183 + v188, 1, v189) == 1)
                          {
                            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v183, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                            return 1;
                          }
                        }

                        else
                        {
                          v227 = v237;
                          outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v183, v237, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                          if (v190(v183 + v188, 1, v189) != 1)
                          {
                            v231 = v239;
                            outlined init with take of Apple_Workout_Core_HKActivitySummary(v183 + v188, v239, type metadata accessor for Apple_Workout_Core_HKQuantity);
                            if (*v227 == *v231 && (*(v237 + 1) == *(v239 + 8) && *(v237 + 2) == *(v239 + 16) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                            {
                              type metadata accessor for UnknownStorage();
                              lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                              v232 = v237;
                              v233 = v239;
                              v234 = dispatch thunk of static Equatable.== infix(_:_:)();

                              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v242, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                              outlined destroy of Apple_Workout_Core_HKActivitySummary(v233, type metadata accessor for Apple_Workout_Core_HKQuantity);
                              outlined destroy of Apple_Workout_Core_HKActivitySummary(v232, type metadata accessor for Apple_Workout_Core_HKQuantity);
                              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v238, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                              return (v234 & 1) != 0;
                            }

                            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v242, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                            outlined destroy of Apple_Workout_Core_HKActivitySummary(v239, type metadata accessor for Apple_Workout_Core_HKQuantity);
                            outlined destroy of Apple_Workout_Core_HKActivitySummary(v237, type metadata accessor for Apple_Workout_Core_HKQuantity);
                            v230 = v238;
                            v228 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd;
                            v229 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR;
                            goto LABEL_119;
                          }

                          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v242, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                          outlined destroy of Apple_Workout_Core_HKActivitySummary(v227, type metadata accessor for Apple_Workout_Core_HKQuantity);
                        }

                        v228 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
                        v229 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
                        v230 = v183;
LABEL_119:
                        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v230, v228, v229);
                        return 0;
                      }

                      goto LABEL_109;
                    }

                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v247, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v225, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v224, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    v199 = v244;
LABEL_107:
                    v197 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd;
                    v198 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR;
                    goto LABEL_108;
                  }

LABEL_86:
                  v197 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
                  v198 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
                  v199 = v147;
                  goto LABEL_108;
                }

                v219 = v168;
                v214 = v245;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v219, v245, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v220 = v170(v147 + v167, 1, v169);
                v172 = v247;
                if (v220 != 1)
                {
                  v221 = v243;
                  outlined init with take of Apple_Workout_Core_HKActivitySummary(v147 + v167, v243, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  if (*v214 != *v221 || (*(v214 + 8) != *(v221 + 8) || *(v214 + 16) != *(v221 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v251, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v221, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v214, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    v199 = v248;
                    goto LABEL_107;
                  }

                  type metadata accessor for UnknownStorage();
                  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                  v222 = dispatch thunk of static Equatable.== infix(_:_:)();
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v251, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v221, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v214, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v248, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  if ((v222 & 1) == 0)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_28;
                }

                v216 = v251;
                goto LABEL_84;
              }

              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v264, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
              outlined destroy of Apple_Workout_Core_HKActivitySummary(v202, type metadata accessor for Apple_Workout_Core_HKQuantity);
            }

            v197 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
            v198 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
            v199 = v133;
LABEL_108:
            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v199, v197, v198);
            goto LABEL_109;
          }
        }

        else
        {
          v195 = v261;
          outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v122, v261, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
          v196 = v124(v122 + v121, 1, v123);
          v126 = v264;
          if (v196 != 1)
          {
            v200 = v258;
            outlined init with take of Apple_Workout_Core_HKActivitySummary(v122 + v121, v258, type metadata accessor for Apple_Workout_Core_HKQuantity);
            v127 = v235;
            if (*v195 != *v200 || (*(v195 + 8) != *(v200 + 8) || *(v195 + 16) != *(v200 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v265, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
              outlined destroy of Apple_Workout_Core_HKActivitySummary(v200, type metadata accessor for Apple_Workout_Core_HKQuantity);
              outlined destroy of Apple_Workout_Core_HKActivitySummary(v195, type metadata accessor for Apple_Workout_Core_HKQuantity);
              v199 = v122;
              goto LABEL_107;
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v201 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v265, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            outlined destroy of Apple_Workout_Core_HKActivitySummary(v200, type metadata accessor for Apple_Workout_Core_HKQuantity);
            outlined destroy of Apple_Workout_Core_HKActivitySummary(v195, type metadata accessor for Apple_Workout_Core_HKQuantity);
            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v263, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            if ((v201 & 1) == 0)
            {
              goto LABEL_109;
            }

            goto LABEL_16;
          }

          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v265, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
          outlined destroy of Apple_Workout_Core_HKActivitySummary(v195, type metadata accessor for Apple_Workout_Core_HKQuantity);
        }

        v197 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
        v198 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
        v199 = v122;
        goto LABEL_108;
      }

      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v104, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      outlined destroy of Apple_Workout_Core_HKActivitySummary(v101, type metadata accessor for Apple_Workout_Core_HKQuantity);
    }

    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v53, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR);

LABEL_110:

    return 0;
  }

  if (!v108)
  {
    goto LABEL_10;
  }

  return 0;
}

Swift::Int Apple_Workout_Core_ActivitySummaryMetricsPublisher.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_HKActivitySummary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_HKActivitySummary@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_HKActivitySummary(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary, &protocol conformance descriptor for Apple_Workout_Core_HKActivitySummary);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_ActivityMoveMode@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_HKActivitySummary(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary, &protocol conformance descriptor for Apple_Workout_Core_HKActivitySummary);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary, &protocol conformance descriptor for Apple_Workout_Core_HKActivitySummary);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_ActivitySummaryMetricsPublisher.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSg_ADtMd, _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v30 - v15;
  v31 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v17 = *(v31 + 24);
  v18 = *(v13 + 56);
  v33 = a1;
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(&a1[v17], v16, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(&a2[v17], &v16[v18], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16, v11, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v32;
      outlined init with take of Apple_Workout_Core_HKActivitySummary(&v16[v18], v32, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      v23 = *(v4 + 20);
      v24 = *&v11[v23];
      v25 = *(v22 + v23);
      if (v24 == v25 || (, , v26 = closure #1 in static Apple_Workout_Core_HKActivitySummary.== infix(_:_:)(v24, v25), , , v26))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_HKActivitySummary(v22, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
        outlined destroy of Apple_Workout_Core_HKActivitySummary(v11, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v16, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
        if ((v27 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      outlined destroy of Apple_Workout_Core_HKActivitySummary(v22, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      outlined destroy of Apple_Workout_Core_HKActivitySummary(v11, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      v20 = &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd;
      v21 = &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR;
LABEL_7:
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v16, v20, v21);
      goto LABEL_12;
    }

    outlined destroy of Apple_Workout_Core_HKActivitySummary(v11, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
LABEL_6:
    v20 = &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSg_ADtMd;
    v21 = _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSg_ADtMR;
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v16, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
LABEL_11:
  if (*v33 == *a2)
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v28 & 1;
  }

LABEL_12:
  v28 = 0;
  return v28 & 1;
}

uint64_t specialized static Apple_Workout_Core_HKActivitySummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static Apple_Workout_Core_HKActivitySummary.== infix(_:_:)(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_ActivityMoveMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_ActivityMoveMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_ActivityMoveMode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B17_ActivityMoveModeOGMd, &_sSay11WorkoutCore06Apple_a1_B17_ActivityMoveModeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_ActivityMoveMode] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_ActivityMoveMode(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_ActivityMoveMode(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_ActivityMoveMode(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_ActivityMoveMode(uint64_t result, int a2)
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

void type metadata completion function for Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary?(319, &lazy cache variable for type metadata for Apple_Workout_Core_HKActivitySummary?, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_HKActivitySummary(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_HKActivitySummary._StorageClass(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_HKActivitySummary?(319, &lazy cache variable for type metadata for Apple_Workout_Core_HKQuantity?, type metadata accessor for Apple_Workout_Core_HKQuantity);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Apple_Workout_Core_HKActivitySummary?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_Core_HKActivitySummary?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t TargetZone.PrimaryType.displayString(activityType:)(void *a1)
{
  if (*v1 > 1u)
  {
    if (*v1 != 2)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      v5 = 0xD000000000000011;
      v4 = 0x800000020B46B900;
      goto LABEL_13;
    }

    v6 = [a1 effectiveTypeIdentifier];
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v7 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    if (v6 == 13)
    {
      v8 = "CADENCE_ALERT_TITLE_PEDOMETER";
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v8 = "POWER_ALERT_TITLE";
      v5 = 0xD00000000000001DLL;
    }

LABEL_11:
    v4 = v8 | 0x8000000000000000;
    goto LABEL_13;
  }

  if (*v1)
  {
    v9 = FIUIDistanceTypeForActivityType();
    v10 = MEMORY[0x20F2E8410](v9);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v11 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    if (v10 != 4)
    {
      v4 = 0x800000020B46B960;
      v5 = 0xD000000000000010;
      goto LABEL_13;
    }

    v8 = "PACE_ALERT_TITLE";
    v5 = 0xD000000000000011;
    goto LABEL_11;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  v2 = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = 0x800000020B46B9A0;
  v5 = 0xD000000000000010;
LABEL_13:
  v13 = MEMORY[0x20F2E6C00](v5, v4);
  v14 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v15 = [v3 localizedStringForKey:v13 value:0 table:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v16;
}

id TargetZone.displayString(formattingManager:activityType:)(void *a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  if ((*(v2 + 40) & 1) == 0)
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
    v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];
    goto LABEL_5;
  }

  swift_beginAccess();
  v6 = *(v2 + 24);
  swift_beginAccess();
  if (v6 == *(v2 + 32))
  {
    return TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)(a2, a1, v6);
  }

  TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(a2, a1, v6);
  v66 = v15;
  v68 = v16;
  TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(a2, a1, *(v2 + 32));
  v65 = v17;
  v67 = v18;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  v19 = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = [v20 bundleForClass_];
  v22 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46B9C0);
  v23 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = *(v3 + 16);
  if (v25 > 4)
  {
    if (v25 - 5 < 2)
    {
      v36 = [objc_opt_self() localizedShortPowerUnitString];
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v40 = 0xE100000000000000;
        v38 = 87;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_20B423A20;
      v63 = MEMORY[0x277D837D0];
      *(v62 + 56) = MEMORY[0x277D837D0];
      v64 = lazy protocol witness table accessor for type String and conformance String();
      *(v62 + 32) = v66;
      *(v62 + 40) = v68;
      *(v62 + 96) = v63;
      *(v62 + 104) = v64;
      *(v62 + 64) = v64;
      *(v62 + 72) = v65;
      *(v62 + 80) = v67;
      *(v62 + 136) = v63;
      *(v62 + 144) = v64;
      *(v62 + 112) = v38;
      *(v62 + 120) = v40;
      v61 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_29;
    }

    v9 = [v20 bundleForClass_];
    v10 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
    v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];
LABEL_5:
    v13 = v12;

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v14;
  }

  if (v25 >= 3)
  {
    v41 = [a2 effectiveTypeIdentifier];
    if (v41 == 13)
    {
      v42 = 0xD000000000000029;
    }

    else
    {
      v42 = 0xD000000000000021;
    }

    if (v41 == 13)
    {
      v43 = "SHORT_DESCRIPTION";
    }

    else
    {
      v43 = "NUMBER_RANGE_WITH_UNIT";
    }

    v44 = [v20 bundleForClass_];
    v45 = MEMORY[0x20F2E6C00](v42, v43 | 0x8000000000000000);

    v46 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20B423A20;
    v52 = MEMORY[0x277D837D0];
    *(v51 + 56) = MEMORY[0x277D837D0];
    v53 = lazy protocol witness table accessor for type String and conformance String();
    *(v51 + 32) = v66;
    *(v51 + 40) = v68;
    *(v51 + 96) = v52;
    *(v51 + 104) = v53;
    *(v51 + 64) = v53;
    *(v51 + 72) = v65;
    *(v51 + 80) = v67;
    *(v51 + 136) = v52;
    *(v51 + 144) = v53;
    *(v51 + 112) = v48;
    *(v51 + 120) = v50;
    v14 = static String.localizedStringWithFormat(_:_:)();

    goto LABEL_23;
  }

  v26 = FIUIDistanceTypeForActivityType();
  result = [a1 unitManager];
  if (!result)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = result;
  v28 = [result userDistanceUnitForDistanceType_];

  if (v26 == 2)
  {
    result = [a1 localizedSpeedUnitStringForActivityType_];
    if (result)
    {
      v29 = result;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_20B423A20;
      v34 = MEMORY[0x277D837D0];
      *(v33 + 56) = MEMORY[0x277D837D0];
      v35 = lazy protocol witness table accessor for type String and conformance String();
      *(v33 + 32) = v66;
      *(v33 + 40) = v68;
      *(v33 + 96) = v34;
      *(v33 + 104) = v35;
      *(v33 + 64) = v35;
      *(v33 + 72) = v65;
      *(v33 + 80) = v67;
      *(v33 + 136) = v34;
      *(v33 + 144) = v35;
      *(v33 + 112) = v30;
      *(v33 + 120) = v32;
      v14 = static String.localizedStringWithFormat(_:_:)();

LABEL_23:

      return v14;
    }

    goto LABEL_31;
  }

  result = [a1 localizedPaceUnitStringWithDistanceType:v26 distanceUnit:v28];
  if (result)
  {
    v54 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v55 = MEMORY[0x277D837D0];
    v56 = StringProtocol.localizedUppercase.getter();
    v58 = v57;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_20B423A20;
    *(v59 + 56) = v55;
    v60 = lazy protocol witness table accessor for type String and conformance String();
    *(v59 + 32) = v65;
    *(v59 + 40) = v67;
    *(v59 + 96) = v55;
    *(v59 + 104) = v60;
    *(v59 + 64) = v60;
    *(v59 + 72) = v66;
    *(v59 + 80) = v68;
    *(v59 + 136) = v55;
    *(v59 + 144) = v60;
    *(v59 + 112) = v56;
    *(v59 + 120) = v58;
    v61 = static String.localizedStringWithFormat(_:_:)();

LABEL_29:

    return v61;
  }

LABEL_32:
  __break(1u);
  return result;
}