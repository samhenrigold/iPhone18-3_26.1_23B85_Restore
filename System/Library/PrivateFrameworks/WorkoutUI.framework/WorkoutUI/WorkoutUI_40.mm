id specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

id specialized static EffortUtilities.analyticsTaskIdentifier(workout:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 fiui_finalWorkoutUUID];
  if (result)
  {
    v8 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = UUID.uuidString.getter();
    v11[0] = 0xD000000000000016;
    v11[1] = 0x800000020CBA4400;
    MEMORY[0x20F30BC00](v9);

    v10 = v11[0];
    (*(v3 + 8))(v6, v2);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double specialized static EffortUtilities.sendDidViewTrainingLoadAnalytics(from:)(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrainingLoadURLBuilder.getTrainingLoadSource(from:)(&v10);
  if (v10 == 6)
  {
    static WOLog.trainingLoad.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20C66F000, v5, v6, "Unable to determine source from url", v7, 2u);
      MEMORY[0x20F30E080](v7, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA025ViewedTrainingLoadDetailsfG0AELLV_Tt0B5(0xD000000000000023, 0x800000020CBA4500, v10);
  }

  return result;
}

uint64_t _HKWorkoutIsIndoor(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t specialized static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(void *a1)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GregorianDayRange();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v13 = [objc_opt_self() hk_gregorianCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  static GregorianDayRange.previousWeek(through:gregorianCalendar:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  GregorianDayRange.dayIndexRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance29SleepingSampleDaySummaryQueryCyAA0cdeF0VGMd, &_s13HealthBalance29SleepingSampleDaySummaryQueryCyAA0cdeF0VGMR));
  v15 = SleepingSampleDaySummaryQuery.init(morningIndexRange:gregorianCalendar:continueAfterInitialResults:resultsHandler:)();
  [v18 executeQuery_];

  return (*(v10 + 8))(v12, v17);
}

double specialized static EffortUtilities.sendPostWorkoutAnalytics(workoutActivity:perceivedEffortQuantity:estimatedEffortQuantity:healthStore:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [a1 workoutConfiguration];
  v9 = [v8 activityType];

  v10 = [a1 workoutConfiguration];
  v11 = [v10 locationType];

  v17[0] = 0xD000000000000025;
  v17[1] = 0x800000020CBA4420;
  v17[2] = v9;
  v18 = v11 == 2;
  v19 = a2;
  v20 = a3;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = a3;

  v13 = a2;
  v14 = v12;

  v15 = v13;
  _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA05EndOfafG0AELLV_Tt0g5(v17);

  specialized static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(a4);

  return result;
}

uint64_t specialized static EffortUtilities.sendUpdatedEffortAnalyticsEvent(workout:workoutActivity:perceivedEffortQuantity:estimatedEffortQuantity:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [a1 sourceRevision];
  v9 = [v8 source];

  v10 = [v9 _hasFirstPartyBundleID];
  if (a2)
  {
    v11 = a2;
    v12 = [v11 workoutConfiguration];
    v13 = [v12 activityType];

    v14 = [v11 workoutConfiguration];
    v15 = [v14 locationType];

    IsIndoor = v15 == 2;
  }

  else
  {
    v13 = [a1 workoutActivityType];
    IsIndoor = _HKWorkoutIsIndoor(a1);
  }

  v20[0] = 0xD000000000000029;
  v20[1] = 0x800000020CBA44B0;
  v21 = v10;
  v22 = v13;
  v23 = IsIndoor;
  v24 = a3;
  v25 = a4;
  v17 = a4;
  v18 = a3;
  _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA07UpdatedcfG0AELLV_Tt0g5(v20);
  return outlined destroy of UpdatedEffortAnalyticsEvent(v20);
}

unint64_t lazy protocol witness table accessor for type EffortUtilities.OvernightVitalsState and conformance EffortUtilities.OvernightVitalsState()
{
  result = lazy protocol witness table cache variable for type EffortUtilities.OvernightVitalsState and conformance EffortUtilities.OvernightVitalsState;
  if (!lazy protocol witness table cache variable for type EffortUtilities.OvernightVitalsState and conformance EffortUtilities.OvernightVitalsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortUtilities.OvernightVitalsState and conformance EffortUtilities.OvernightVitalsState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffortUtilities.OvernightVitalsState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EffortUtilities.OvernightVitalsState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of AnalyticsEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double __swift_destroy_boxed_opaque_existential_0Tm_4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t outlined init with take of AnalyticsEvent(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

double specialized closure #1 in static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(void *a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SleepingSampleBaselineAvailability();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SleepingSampleBaselineComparison();
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SleepingSampleDaySummary();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance24SleepingSampleDaySummaryVSgMd, &_s13HealthBalance24SleepingSampleDaySummaryVSgMR);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v44 - v18;
  if (a2)
  {
    static WOLog.trainingLoad.getter();
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    outlined consume of Result<[SleepingSampleDaySummary], Error>(a1, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v7;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v52 = a1;
      v53 = v25;
      *v24 = 136315138;
      v26 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v27 = String.init<A>(describing:)();
      v29 = v4;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v53);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_20C66F000, v21, v22, "Failed to query sleep samples due to %s", v24, 0xCu);
      v31 = __swift_destroy_boxed_opaque_existential_0Tm_4(v25);
      MEMORY[0x20F30E080](v25, -1, -1, v31);
      MEMORY[0x20F30E080](v24, -1, -1);

      (*(v5 + 8))(v23, v29);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    v46 = v19;
    v33 = a1[2];
    if (v33)
    {
      v45 = v13;
      v34 = v13 + 16;
      v35 = *(v13 + 16);
      v36 = (v47 + 8);
      v37 = (v49 + 8);
      v38 = (v34 - 8);
      v39 = a1 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
      v48 = v35;
      v49 = v34;
      v47 = *(v34 + 56);
      while (1)
      {
        v48(v15, v39, v12, v17);
        SleepingSampleDaySummary.timeAsleep.getter();
        SleepingSampleBaselineComparison.availability.getter();
        (*v36)(v11, v50);
        v40 = SleepingSampleBaselineAvailability.isAvailable.getter();
        (*v37)(v9, v51);
        if (v40)
        {
          break;
        }

        (*v38)(v15, v12);
        v39 += v47;
        if (!--v33)
        {
          v41 = 0;
          v42 = 1;
          v13 = v45;
          goto LABEL_13;
        }
      }

      v13 = v45;
      (*(v45 + 32))(v46, v15, v12);
      v42 = 0;
      v41 = 1;
    }

    else
    {
      v41 = 0;
      v42 = 1;
    }

LABEL_13:
    v43 = v46;
    (*(v13 + 56))(v46, v42, 1, v12);
    outlined destroy of SleepingSampleDaySummary?(v43, &_s13HealthBalance24SleepingSampleDaySummaryVSgMd, &_s13HealthBalance24SleepingSampleDaySummaryVSgMR);
    return _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA013LoadAndVitalsfG0AELLV_Tt0g5(0xD000000000000017, 0x800000020CBA44E0, v41);
  }

  return result;
}

double outlined consume of Result<[SleepingSampleDaySummary], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewedTrainingLoadDetailsAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for ViewedTrainingLoadDetailsAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EndOfWorkoutAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for EndOfWorkoutAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeepLinkedToVitalsAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for DeepLinkedToVitalsAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v6;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v45[0] = *v17;
    v45[1] = v18;
    v45[2] = v19;

    v20 = v19;
    a2(&v42, v45);

    v21 = v42;
    v22 = v43;
    v23 = v44;
    v24 = *v46;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v43);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v41 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v41 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v46;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v38;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      outlined consume of [String : NSObject].Iterator._Variant(a1);

      return;
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t outlined destroy of SleepingSampleDaySummary?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized LoadAndVitalsAnalyticsEvent.generatePayload()(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  *(inited + 32) = 0x6174536E4974706FLL;
  *(inited + 40) = 0xEB00000000737574;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x800000020CBA45F0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSNumberCtMd, &_sSS_So8NSNumberCtMR);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);
  v5 = v4;

  return v5;
}

uint64_t getEnumTagSinglePayload for DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource and conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource()
{
  result = lazy protocol witness table cache variable for type DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource and conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource;
  if (!lazy protocol witness table cache variable for type DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource and conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource and conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource);
  }

  return result;
}

void closure #1 in MirroredStartWatchAppView.body.getter(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v38[-v7];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMR);
  MEMORY[0x28223BE20](v40);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v38[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v38[-v15];
  v41 = static Color.black.getter();
  v39 = static Edge.Set.all.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v18 = MEMORY[0x20F30BAD0](0xD000000000000014, 0x800000020CBA4610);
  v19 = [objc_opt_self() imageNamed:v18 inBundle:v17];

  if (v19)
  {
    v20 = Image.init(uiImage:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v43 = v20;
    v44 = v49;
    v45 = v50;
    v46 = v51;
    v47 = v52;
    v48 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();

    v21 = static Alignment.top.getter();
    v23 = v22;
    v24 = a1;
    v25 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    outlined init with take of ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>(v5, v8, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
    v26 = &v8[*(v6 + 36)];
    *v26 = v25;
    *(v26 + 1) = v24;
    *(v26 + 2) = 0;
    v26[24] = 0;
    *(v26 + 4) = 0x4038000000000000;
    *(v26 + 5) = v21;
    *(v26 + 6) = v23;
    v27 = static Alignment.bottom.getter();
    v29 = v28;
    v30 = WorkoutUIBundle.super.isa;
    v54._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0xD000000000000020;
    v31._object = 0x800000020CBA4630;
    v32.value._object = 0x800000020CB936F0;
    v32.value._countAndFlagsBits = 0xD000000000000012;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v54);

    outlined init with take of ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>(v8, v13, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGMR);
    v35 = &v13[*(v40 + 36)];
    *v35 = v34;
    v35[1]._countAndFlagsBits = 0x4038000000000000;
    v35[1]._object = v27;
    v35[2]._countAndFlagsBits = v29;
    outlined init with take of ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>(v13, v16, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMR);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(v16, v10);
    v36 = v42;
    *v42 = v41;
    *(v36 + 8) = v39;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_ACyACyACyACyAA5ImageVAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGAA08_OverlayN0Vy07WorkoutB0012CountdownTopO0VGGARyAS0q6BottomO0VGGtMd, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_ACyACyACyACyAA5ImageVAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGAA08_OverlayN0Vy07WorkoutB0012CountdownTopO0VGGARyAS0q6BottomO0VGGtMR);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(v10, v36 + *(v37 + 48));

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(v16);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(v10);
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for View.body.getter in conformance MirroredStartWatchAppView(uint64_t *a2@<X8>)
{
  v4 = *v2;
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ColorVAA017_SafeAreaIgnoringG0VG_AKyAKyAKyAKyAA5ImageVAA06_FrameG0VGAA31AccessibilityAttachmentModifierVGAA08_OverlayS0Vy07WorkoutB0012CountdownTopT0VGGAZyA_0v6BottomT0VGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ColorVAA017_SafeAreaIgnoringG0VG_AKyAKyAKyAKyAA5ImageVAA06_FrameG0VGAA31AccessibilityAttachmentModifierVGAA08_OverlayS0Vy07WorkoutB0012CountdownTopT0VGGAZyA_0v6BottomT0VGGtGGMR);
  closure #1 in MirroredStartWatchAppView.body.getter(v4, (a2 + *(v6 + 44)));
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAA08_OverlayJ0Vy07WorkoutB0012CountdownTopK0VGGAMyAN0m6BottomK0VGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_AGyAGyAGyAGyAA5ImageVAA06_FrameL0VGAA31AccessibilityAttachmentModifierVGAA08_OverlayQ0Vy07WorkoutB0012CountdownTopR0VGGAVyAW0t6BottomR0VGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_AGyAGyAGyAGyAA5ImageVAA06_FrameL0VGAA31AccessibilityAttachmentModifierVGAA08_OverlayQ0Vy07WorkoutB0012CountdownTopR0VGGAVyAW0t6BottomR0VGGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>, _OverlayModifier<CountdownTopOverlay>>, _OverlayModifier<CountdownBottomOverlay>>)>> and conformance ZStack<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalsHRZoneView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntervalsHRZoneView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in IntervalsHRZoneView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-1] - v8;
  v10 = type metadata accessor for Color.RGBColorSpace();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized IntervalsHRZoneView.withinRange.getter(*(a1 + 8), *(a1 + 40));
  (*(v11 + 104))(v13, *MEMORY[0x277CE0EE0], v10);
  v14 = Color.init(_:red:green:blue:opacity:)();
  if (one-time initialization token for heightOfAlertBackground != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6VStackVyAIyAKyAA0F0VyAIyAKyAKyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA0g8PriorityQ3KeyVGG_AKyAKyAA5ImageVAR0n4UnitP0VGAA012_EnvironmenturS0VyA1_5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAOyAIyAKyAKyA1_A9_GAA010_AlignmentrS0VG_AQtGGAR0n15DescriptionCoreP0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA32_GA14_GAA016_ForegroundStyleS0VyAA5ColorVGGAZG_AKyAA6SpacerVAA010_FlexFrameG0VGAR20IntervalsRangeSliderVSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6VStackVyAIyAKyAA0F0VyAIyAKyAKyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA0g8PriorityQ3KeyVGG_AKyAKyAA5ImageVAR0n4UnitP0VGAA012_EnvironmenturS0VyA1_5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAOyAIyAKyAKyA1_A9_GAA010_AlignmentrS0VG_AQtGGAR0n15DescriptionCoreP0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA32_GA14_GAA016_ForegroundStyleS0VyAA5ColorVGGAZG_AKyAA6SpacerVAA010_FlexFrameG0VGAR20IntervalsRangeSliderVSgtGGMR);
  closure #1 in closure #1 in IntervalsHRZoneView.body.getter(a1, &v9[*(v15 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v9, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMR);
  *&v22 = v14;
  *(&v22 + 1) = 0x4030000000000000;
  *&v23[0] = 10;
  WORD4(v23[0]) = 256;
  *(v23 + 10) = *v29;
  *(&v23[1] + 10) = *&v29[8];
  *(&v23[2] + 10) = *&v29[16];
  *(&v23[3] + 1) = *&v29[23];
  v16 = v22;
  v17 = v23[0];
  v18 = v23[3];
  a2[3] = v23[2];
  a2[4] = v18;
  v19 = v23[1];
  a2[1] = v17;
  a2[2] = v19;
  *a2 = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAA9TupleViewVyACyACyACyACyACyAA6VStackVyAYyACyAWyAYyACyACyAA4TextVAN15MetricValueFontVGAA013_TraitWritingH0VyAA0p8PriorityY3KeyVGG_ACyACyAA5ImageVAN0v4UnitX0VGAA015_EnvironmentKeyzH0VyA12_5ScaleOGGtGGAA07_OffsetK0VG_ACyACyAWyAYyACyACyA12_A20_GAA010_AlignmentzH0VG_A1_tGGAN0v15DescriptionCoreX0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingP0VGA43_GA25_GAJGA9_G_ACyAA6SpacerVAA05_FlexoP0VGAN20IntervalsRangeSliderVSgtGGtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAA9TupleViewVyACyACyACyACyACyAA6VStackVyAYyACyAWyAYyACyACyAA4TextVAN15MetricValueFontVGAA013_TraitWritingH0VyAA0p8PriorityY3KeyVGG_ACyACyAA5ImageVAN0v4UnitX0VGAA015_EnvironmentKeyzH0VyA12_5ScaleOGGtGGAA07_OffsetK0VG_ACyACyAWyAYyACyACyA12_A20_GAA010_AlignmentzH0VG_A1_tGGAN0v15DescriptionCoreX0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingP0VGA43_GA25_GAJGA9_G_ACyAA6SpacerVAA05_FlexoP0VGAN20IntervalsRangeSliderVSgtGGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v6, a2 + *(v20 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(&v22, v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAGyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_AGyAGyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_AGyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtGGMR);
  v24[0] = v14;
  v24[1] = 0x4030000000000000;
  v24[2] = 10;
  v25 = 256;
  v26 = *v29;
  v27 = *&v29[8];
  *v28 = *&v29[16];
  *&v28[14] = *&v29[23];
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMR);
}

uint64_t closure #1 in closure #1 in IntervalsHRZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v73 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGMR);
  MEMORY[0x28223BE20](v70);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMR);
  MEMORY[0x28223BE20](v10);
  v71 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA0g8PriorityQ3KeyVGG_AKyAKyAA5ImageVAP0n4UnitP0VGAA012_EnvironmenturS0VyA_5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAMyAIyAKyAKyA_A7_GAA010_AlignmentrS0VG_AOtGGAP0n15DescriptionCoreP0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA0g8PriorityQ3KeyVGG_AKyAKyAA5ImageVAP0n4UnitP0VGAA012_EnvironmenturS0VyA_5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAMyAIyAKyAKyA_A7_GAA010_AlignmentrS0VG_AOtGGAP0n15DescriptionCoreP0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMR);
  closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter(a1, &v7[*(v18 + 44)]);
  v19 = static Edge.Set.bottom.getter();
  if (one-time initialization token for bottomOffset != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGMR) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = static Edge.Set.leading.getter();
  if (one-time initialization token for contentLeadingTrailingPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GMR) + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  *&v7[*(v5 + 36)] = xmmword_20CB71760;
  v39 = *(a1 + 40);
  v40 = *(a1 + 8);
  specialized IntervalsHRZoneView.withinRange.getter(v40, v39);
  v41 = *(v3 + 104);
  v68 = *MEMORY[0x277CE0EE0];
  v69 = v3 + 104;
  v67 = v41;
  v41(v74);
  v42 = Color.init(_:red:green:blue:opacity:)();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v7, v9, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GMR);
  *&v9[*(v70 + 36)] = v42;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v9, v14, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGMR);
  *&v14[*(v10 + 36)] = 0x3FF0000000000000;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v14, v17, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMR);
  if (one-time initialization token for horizontalSpacingToSlider != -1)
  {
    swift_once();
  }

  v43 = v17;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v75[55] = v80;
  *&v75[71] = v81;
  *&v75[87] = v82;
  *&v75[103] = v83;
  *&v75[7] = v77;
  *&v75[23] = v78;
  v76 = 1;
  *&v75[39] = v79;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ((dispatch thunk of HeartRateTargetZone.isEffectivelyCustomSingleThreshold.getter() & 1) == 0)
  {
    v50 = specialized IntervalsHRZoneView.targetState.getter(v40, v39);
    v52 = v51;
    specialized IntervalsHRZoneView.withinRange.getter(v40, v39);
    v67(v74, v68, v73);
    v53 = Color.init(_:red:green:blue:opacity:)();
    specialized IntervalsRangeSlider.init(state:color:)(v50, v52 & 1, v53, &v84);
    v44 = v84;
    v45 = v85;
    v46 = v86;
    v47 = v87;
    v48 = v88;
    v49 = v89;
  }

  v73 = v48;
  v74 = v49;
  v54 = v47;
  v55 = v45;
  v56 = v71;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v43, v71, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMR);
  v57 = v72;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v56, v72, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMR);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_ACyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATG_ACyAA6SpacerVAA010_FlexFrameQ0VGAL20IntervalsRangeSliderVSgtMR);
  v59 = v57 + *(v58 + 48);
  v60 = *&v75[80];
  *(v59 + 73) = *&v75[64];
  *(v59 + 89) = v60;
  *(v59 + 105) = *&v75[96];
  v61 = *&v75[16];
  *(v59 + 9) = *v75;
  *(v59 + 25) = v61;
  v62 = *&v75[48];
  *(v59 + 41) = *&v75[32];
  *v59 = 0;
  *(v59 + 8) = 1;
  *(v59 + 120) = *&v75[111];
  *(v59 + 57) = v62;
  v63 = (v57 + *(v58 + 64));
  *v63 = v44;
  v63[1] = v55;
  v63[2] = v46;
  v63[3] = v54;
  v64 = v74;
  v63[4] = v73;
  v63[5] = v64;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v43, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMR);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v56, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityN3KeyVGG_ACyACyAA5ImageVAL0k4UnitM0VGAA012_EnvironmentsoP0VyAW5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAWA3_GAA010_AlignmentoP0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingQ0VGA26_GA8_GAA016_ForegroundStyleP0VyAA5ColorVGGATGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMR);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMR);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  *v22 = static VerticalAlignment.lastTextBaseline.getter();
  *(v22 + 1) = 0x4008000000000000;
  v22[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA0g8PriorityP3KeyVGG_AKyAKyAA5ImageVAN0m4UnitO0VGAA012_EnvironmenttqR0VyAY5ScaleOGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA0g8PriorityP3KeyVGG_AKyAKyAA5ImageVAN0m4UnitO0VGAA012_EnvironmenttqR0VyAY5ScaleOGGtGGMR);
  closure #1 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter(&v22[*(v23 + 44)]);
  *&v22[*(v17 + 44)] = xmmword_20CB8CDA0;
  *v9 = static VerticalAlignment.firstTextBaseline.getter();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA010_AlignmentnO0VG_AA4TextVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA010_AlignmentnO0VG_AA4TextVtGGMR);
  closure #2 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter(a1, &v9[*(v24 + 44)]);
  KeyPath = swift_getKeyPath();
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v9, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMR);
  v26 = &v6[*(v4 + 44)];
  *v26 = 0;
  *(v26 + 1) = KeyPath;
  v26[16] = 0;
  if (one-time initialization token for multilineMaximumLineHeight != -1)
  {
    swift_once();
  }

  v27 = *&static MetricDescriptionCoreFont.multilineMaximumLineHeight;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v27 = v27 + 1.0;
  }

  v28 = swift_getKeyPath();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v6, v15, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMR);
  v29 = &v15[*(v10 + 36)];
  *v29 = 0;
  *(v29 + 1) = v27;
  *(v29 + 2) = v28;
  v29[24] = 0;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v22, v19, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v15, v12, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  v30 = v34;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v19, v34, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMR);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAEyAGyACyACyAUA1_GAA010_AlignmentnO0VG_AItGGAJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAEyAGyACyACyAUA1_GAA010_AlignmentnO0VG_AItGGAJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v12, v30 + *(v31 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v15, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v22, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v12, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v19, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityM3KeyVGG_ACyACyAA5ImageVAJ0j4UnitL0VGAA012_EnvironmentrnO0VyAU5ScaleOGGtGGAA13_OffsetEffectVGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter@<X0>(_OWORD *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v44 = specialized IntervalsHRZoneView.valueString.getter(v8);
  v45 = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = Text.init<A>(_:)();
  v32 = v12;
  v33 = v13;
  v15 = v14;
  v34 = v16;
  KeyPath = swift_getKeyPath();
  v17 = v15 & 1;
  LOBYTE(v44) = v15 & 1;
  LOBYTE(v40) = 0;
  v18 = Image.init(systemName:)();
  v19 = swift_getKeyPath();
  v20 = &v10[*(v4 + 44)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v22 = *MEMORY[0x277CE1050];
  v23 = type metadata accessor for Image.Scale();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v10 = v18;
  *(v10 + 1) = v19;
  v10[16] = 0;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v10, v6, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  v24 = v33;
  *&v40 = v12;
  *(&v40 + 1) = v33;
  LOBYTE(v41) = v17;
  *(&v41 + 1) = *v39;
  DWORD1(v41) = *&v39[3];
  v25 = v34;
  v26 = KeyPath;
  *(&v41 + 1) = v34;
  LOWORD(v42) = 256;
  *(&v42 + 2) = v37;
  WORD3(v42) = v38;
  *(&v42 + 1) = KeyPath;
  LOBYTE(v43) = 0;
  DWORD1(v43) = *&v36[3];
  *(&v43 + 1) = *v36;
  *(&v43 + 1) = 0x3FF0000000000000;
  v27 = v40;
  v28 = v41;
  v29 = v43;
  a2[2] = v42;
  a2[3] = v29;
  *a2 = v27;
  a2[1] = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityJ3KeyVGG_ACyACyAA5ImageVAF0g4UnitI0VGAA012_EnvironmentokL0VyAQ5ScaleOGGtMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityJ3KeyVGG_ACyACyAA5ImageVAF0g4UnitI0VGAA012_EnvironmentokL0VyAQ5ScaleOGGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v6, a2 + *(v30 + 48), &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(&v40, &v44, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityJ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityJ3KeyVGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v6, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  v44 = v32;
  v45 = v24;
  v46 = v17;
  *v47 = *v39;
  *&v47[3] = *&v39[3];
  v48 = v25;
  v49 = 256;
  v50 = v37;
  v51 = v38;
  v52 = v26;
  v53 = 0;
  *&v54[3] = *&v36[3];
  *v54 = *v36;
  v55 = 0x3FF0000000000000;
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(&v44, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityJ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA21_TraitWritingModifierVyAA014LayoutPriorityJ3KeyVGGMR);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v30 - v9);
  v11 = Image.init(_internalSystemName:)();
  v12 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v14 = *MEMORY[0x277CE1050];
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v10 = v11;
  v16 = static VerticalAlignment.firstTextBaseline.getter();
  v17 = (v10 + *(v5 + 44));
  *v17 = v16;
  v17[1] = closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in IntervalsHRZoneView.body.getter;
  v17[2] = 0;
  v30[2] = MEMORY[0x20F305B10](*(a1 + 24), *(a1 + 32));
  v30[3] = v18;
  lazy protocol witness table accessor for type String and conformance String();
  v19 = StringProtocol.localizedUppercase.getter();
  v21 = v20;

  v30[0] = v19;
  v30[1] = v21;
  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v11) = v25;
  v27 = v26;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v10, v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v7, a2, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VG_AA4TextVtMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VG_AA4TextVtMR) + 48);
  *v28 = v22;
  *(v28 + 8) = v24;
  *(v28 + 16) = v11 & 1;
  *(v28 + 24) = v27;
  outlined copy of Text.Storage(v22, v24, v11 & 1);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  outlined consume of Text.Storage(v22, v24, v11 & 1);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
}

uint64_t protocol witness for View.body.getter in conformance IntervalsHRZoneView@<X0>(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = v2[2];
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_FrameG0VG_AA6HStackVyAIyAKyAKyAKyAKyAKyAA6VStackVyAIyAKyA3_yAIyAKyAKyAA4TextVAV15MetricValueFontVGAA013_TraitWritingN0VyAA0G16PriorityTraitKeyVGG_AKyAKyAA5ImageVAV0Y8UnitFontVGAA022_EnvironmentKeyWritingN0VyA18_5ScaleOGGtGGAA07_OffsetQ0VG_AKyAKyA3_yAIyAKyAKyA18_A26_GAA017_AlignmentWritingN0VG_A7_tGGAV0Y19DescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA49_GA31_GARGA15_G_AKyAA6SpacerVAA05_FlexuG0VGAV20IntervalsRangeSliderVSgtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_FrameG0VG_AA6HStackVyAIyAKyAKyAKyAKyAKyAA6VStackVyAIyAKyA3_yAIyAKyAKyAA4TextVAV15MetricValueFontVGAA013_TraitWritingN0VyAA0G16PriorityTraitKeyVGG_AKyAKyAA5ImageVAV0Y8UnitFontVGAA022_EnvironmentKeyWritingN0VyA18_5ScaleOGGtGGAA07_OffsetQ0VG_AKyAKyA3_yAIyAKyAKyA18_A26_GAA017_AlignmentWritingN0VG_A7_tGGAV0Y19DescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA49_GA31_GARGA15_G_AKyAA6SpacerVAA05_FlexuG0VGAV20IntervalsRangeSliderVSgtGGtGGMR);
  closure #1 in IntervalsHRZoneView.body.getter(v8, (a2 + *(v6 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyA_yAGyACyACyAA4TextVAR15MetricValueFontVGAA013_TraitWritingK0VyAA0s8PriorityZ3KeyVGG_ACyACyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA14_5ScaleOGGtGGAA07_OffsetN0VG_ACyACyA_yAGyACyACyA14_A22_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA45_GA27_GANGA11_G_ACyAA6SpacerVAA05_FlexrS0VGAR20IntervalsRangeSliderVSgtGGtGGAR0W3RowVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyA_yAGyACyACyAA4TextVAR15MetricValueFontVGAA013_TraitWritingK0VyAA0s8PriorityZ3KeyVGG_ACyACyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA14_5ScaleOGGtGGAA07_OffsetN0VG_ACyACyA_yAGyACyACyA14_A22_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA45_GA27_GANGA11_G_ACyAA6SpacerVAA05_FlexrS0VGAR20IntervalsRangeSliderVSgtGGtGGAR0W3RowVGMR);
  *(a2 + *(result + 36)) = 0;
  return result;
}

BOOL specialized IntervalsHRZoneView.withinRange.getter(uint64_t a1, double a2)
{
  *&v3 = COERCE_DOUBLE(HeartRateMetricsPublisher.currentHeartRate.getter());
  if (v4)
  {
    return 0;
  }

  v6 = *&v3;
  v7 = dispatch thunk of HeartRateTargetZone.isEffectivelyCustomSingleThreshold.getter();
  v8 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.applicableRange.getter());
  if ((v7 & 1) == 0)
  {
    if (v10)
    {
      if (v6 >= 0.0)
      {
        v12 = 300.0;
        return v12 > v6;
      }
    }

    else if (v8 <= v6)
    {
      v12 = v9;
      return v12 > v6;
    }

    return 0;
  }

  v11 = v9;
  if (v10)
  {
    v11 = 300.0;
  }

  return vabdd_f64(v6, v11) <= a2;
}

double specialized IntervalsHRZoneView.percentageOfRangeValue.getter(uint64_t a1, double a2)
{
  v4 = HeartRateMetricsPublisher.currentHeartRate.getter();
  v5 = 0.0;
  if ((v6 & 1) == 0)
  {
    v7 = *&v4;
    if (specialized IntervalsHRZoneView.withinRange.getter(a1, a2))
    {
      v8 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.applicableRange.getter());
      if (v9)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v8;
      }

      dispatch thunk of HeartRateTargetZone.applicableRange.getter();
      if (v12)
      {
        v13 = 300.0;
      }

      else
      {
        v13 = v11;
      }

      v14 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.applicableRange.getter());
      if (v15)
      {
        v14 = 0.0;
      }

      return (v7 - v10) / (v13 - v14);
    }
  }

  return v5;
}

uint64_t specialized IntervalsHRZoneView.targetState.getter(uint64_t a1, double a2)
{
  v4 = HeartRateMetricsPublisher.currentHeartRate.getter();
  if (v5)
  {
    return 0;
  }

  v7 = *&v4;
  dispatch thunk of HeartRateTargetZone.applicableRange.getter();
  if (v9)
  {
    if (v7 <= 300.0)
    {
      goto LABEL_5;
    }

    return 1;
  }

  if (v8 < v7)
  {
    return 1;
  }

LABEL_5:
  v10 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.applicableRange.getter());
  if (v11)
  {
    if (v7 >= 0.0)
    {
      return specialized IntervalsHRZoneView.percentageOfRangeValue.getter(a1, a2);
    }

    return 0;
  }

  if (v7 < v10)
  {
    return 0;
  }

  return specialized IntervalsHRZoneView.percentageOfRangeValue.getter(a1, a2);
}

uint64_t specialized IntervalsHRZoneView.valueString.getter(double a1)
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  v13 = HeartRateMetricsPublisher.currentHeartRate.getter();
  if (v14)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v23._object = 0xE000000000000000;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v16.value._object = 0xEB00000000656C62;
    v17._object = 0x800000020CB9A400;
    v17._countAndFlagsBits = 0xD000000000000011;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v23)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v22[0] = v13;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v4, v6);
    (*(v2 + 8))(v4, v1);
    v21 = *(v7 + 8);
    v21(v9, v6);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, MEMORY[0x277CC9168]);
    BinaryFloatingPoint.formatted<A>(_:)();
    v21(v12, v6);
    return v22[1];
  }
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<Spacer, _FlexFrameLayout>, IntervalsRangeSlider?)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for IntervalsPowerZoneView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntervalsPowerZoneView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-1] - v8;
  v10 = type metadata accessor for Color.RGBColorSpace();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized IntervalsPowerZoneView.withinRange.getter(*(a1 + 40));
  (*(v11 + 104))(v13, *MEMORY[0x277CE0EE0], v10);
  v14 = Color.init(_:red:green:blue:opacity:)();
  if (one-time initialization token for heightOfAlertBackground != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6VStackVyAIyAKyAA0F0VyAIyAKyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAA5ImageVAR0n4UnitP0VGAA30_EnvironmentKeyWritingModifierVyAW5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAOyAIyAKyAKyAWA3_GAA010_AlignmentuV0VG_AQtGGAR0n15DescriptionCoreP0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA26_GA8_GAA016_ForegroundStyleV0VyAA5ColorVGGAA06_TraituV0VyAA0g13PriorityTraitT0VGG_AA6SpacerVAA012_ConditionalJ0VyAKyAR20IntervalsRangeSliderVAA07_HiddenV0VGA47_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6VStackVyAIyAKyAA0F0VyAIyAKyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAA5ImageVAR0n4UnitP0VGAA30_EnvironmentKeyWritingModifierVyAW5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAOyAIyAKyAKyAWA3_GAA010_AlignmentuV0VG_AQtGGAR0n15DescriptionCoreP0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA26_GA8_GAA016_ForegroundStyleV0VyAA5ColorVGGAA06_TraituV0VyAA0g13PriorityTraitT0VGG_AA6SpacerVAA012_ConditionalJ0VyAKyAR20IntervalsRangeSliderVAA07_HiddenV0VGA47_GtGGMR);
  closure #1 in closure #1 in IntervalsPowerZoneView.body.getter(a1, &v9[*(v15 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v9, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMR);
  *&v22 = v14;
  *(&v22 + 1) = 0x4030000000000000;
  *&v23[0] = 10;
  WORD4(v23[0]) = 256;
  *(v23 + 10) = *v29;
  *(&v23[1] + 10) = *&v29[8];
  *(&v23[2] + 10) = *&v29[16];
  *(&v23[3] + 1) = *&v29[23];
  v16 = v22;
  v17 = v23[0];
  v18 = v23[3];
  a2[3] = v23[2];
  a2[4] = v18;
  v19 = v23[1];
  a2[1] = v17;
  a2[2] = v19;
  *a2 = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAA9TupleViewVyACyACyACyACyACyAA6VStackVyAYyACyAWyAYyACyAA4TextVAN15MetricValueFontVG_ACyACyAA5ImageVAN0v4UnitX0VGAA022_EnvironmentKeyWritingH0VyA6_5ScaleOGGtGGAA07_OffsetK0VG_ACyACyAWyAYyACyACyA6_A14_GAA017_AlignmentWritingH0VG_A1_tGGAN0v15DescriptionCoreX0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingP0VGA37_GA19_GAJGAA013_TraitWritingH0VyAA0P16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalD0VyACyAN20IntervalsRangeSliderVAA07_HiddenH0VGA53_GtGGtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAA9TupleViewVyACyACyACyACyACyAA6VStackVyAYyACyAWyAYyACyAA4TextVAN15MetricValueFontVG_ACyACyAA5ImageVAN0v4UnitX0VGAA022_EnvironmentKeyWritingH0VyA6_5ScaleOGGtGGAA07_OffsetK0VG_ACyACyAWyAYyACyACyA6_A14_GAA017_AlignmentWritingH0VG_A1_tGGAN0v15DescriptionCoreX0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingP0VGA37_GA19_GAJGAA013_TraitWritingH0VyAA0P16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalD0VyACyAN20IntervalsRangeSliderVAA07_HiddenH0VGA53_GtGGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v6, a2 + *(v20 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(&v22, v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGyACyAEyAGyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_AGyAGyACyAEyAGyAGyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalG0VyAGyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtGGMR);
  v24[0] = v14;
  v24[1] = 0x4030000000000000;
  v24[2] = 10;
  v25 = 256;
  v26 = *v29;
  v27 = *&v29[8];
  *v28 = *&v29[16];
  *&v28[14] = *&v29[23];
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMR);
}

uint64_t closure #1 in closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = type metadata accessor for PowerZonesAlertZoneType();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Color.RGBColorSpace();
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGMR);
  MEMORY[0x28223BE20](v68);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
  MEMORY[0x28223BE20](v14);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  MEMORY[0x28223BE20](v19);
  v76 = &v67 - v20;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAA5ImageVAP0n4UnitP0VGAA30_EnvironmentKeyWritingModifierVyAU5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAMyAIyAKyAKyAUA1_GAA010_AlignmentuV0VG_AOtGGAP0n15DescriptionCoreP0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAA5ImageVAP0n4UnitP0VGAA30_EnvironmentKeyWritingModifierVyAU5ScaleOGGtGGAA13_OffsetEffectVG_AKyAKyAMyAIyAKyAKyAUA1_GAA010_AlignmentuV0VG_AOtGGAP0n15DescriptionCoreP0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMR);
  closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter(&v11[*(v21 + 44)]);
  v22 = static Edge.Set.bottom.getter();
  if (one-time initialization token for bottomOffset != -1)
  {
    swift_once();
  }

  v71 = v4;
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGMR) + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.leading.getter();
  if (one-time initialization token for contentLeadingTrailingPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GMR) + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  *&v11[*(v9 + 36)] = xmmword_20CB71760;
  v42 = *(a1 + 40);
  specialized IntervalsPowerZoneView.withinRange.getter(v42);
  v43 = *MEMORY[0x277CE0EE0];
  v44 = *(v75 + 104);
  v75 += 104;
  v44(v8, v43, v74);
  v45 = Color.init(_:red:green:blue:opacity:)();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v11, v13, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GMR);
  *&v13[*(v68 + 36)] = v45;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v13, v18, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGMR);
  *&v18[*(v14 + 36)] = 0x3FF0000000000000;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v18, v76, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
  if (one-time initialization token for horizontalSpacingToSlider != -1)
  {
    swift_once();
  }

  v68 = static IntervalsTargetView.horizontalSpacingToSlider;
  v46 = specialized IntervalsPowerZoneView.targetState.getter(v42);
  v48 = v47;
  specialized IntervalsPowerZoneView.withinRange.getter(v42);
  v44(v8, v43, v74);
  v49 = Color.init(_:red:green:blue:opacity:)();
  v50 = v71;
  specialized IntervalsRangeSlider.init(state:color:)(v46, v48 & 1, v49, v77);
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  v51 = v69;
  v52 = v70;
  if ((*(v69 + 88))(v50, v70) == *MEMORY[0x277D7E428])
  {
    (*(v51 + 96))(v50, v52);
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
    v54 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v54 - 8) + 8))(&v50[v53], v54);
  }

  else
  {
    (*(v51 + 8))(v50, v52);
  }

  specialized View.isHidden(_:)(v78);
  outlined destroy of IntervalsRangeSlider(v77);
  v55 = v72;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v76, v72, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
  v56 = v78[0];
  v57 = v78[1];
  v58 = v78[2];
  v59 = v78[3];
  v60 = v78[4];
  v61 = v78[5];
  LODWORD(v75) = v79;
  v62 = v73;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v55, v73, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalD0VyACyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAA012_ConditionalD0VyACyAL20IntervalsRangeSliderVAA07_HiddenS0VGA41_GtMR);
  v64 = v62 + *(v63 + 48);
  *v64 = v68;
  *(v64 + 8) = 0;
  v65 = v62 + *(v63 + 64);
  *v65 = v56;
  *(v65 + 8) = v57;
  *(v65 + 16) = v58;
  *(v65 + 24) = v59;
  *(v65 + 32) = v60;
  *(v65 + 40) = v61;
  *(v65 + 48) = v75 & 1;
  outlined copy of _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>.Storage();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v76, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
  outlined consume of _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>.Storage(v56, v57, v58);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v55, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAL0k4UnitM0VGAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAIyAGyACyACyAqYGAA010_AlignmentrS0VG_AKtGGAL0k15DescriptionCoreM0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA14_PaddingLayoutVGA20_GA2_GAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMR);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  *v21 = static VerticalAlignment.lastTextBaseline.getter();
  *(v21 + 1) = 0x4008000000000000;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAA5ImageVAN0m4UnitO0VGAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAA5ImageVAN0m4UnitO0VGAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGtGGMR);
  closure #1 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter(&v21[*(v22 + 44)]);
  *&v21[*(v16 + 44)] = xmmword_20CB8CF90;
  *v8 = static VerticalAlignment.firstTextBaseline.getter();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA010_AlignmentnO0VG_AA4TextVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA010_AlignmentnO0VG_AA4TextVtGGMR);
  closure #2 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter(&v8[*(v23 + 44)]);
  KeyPath = swift_getKeyPath();
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v8, v5, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMR);
  v25 = &v5[*(v3 + 44)];
  *v25 = 0;
  *(v25 + 1) = KeyPath;
  v25[16] = 0;
  if (one-time initialization token for multilineMaximumLineHeight != -1)
  {
    swift_once();
  }

  v26 = *&static MetricDescriptionCoreFont.multilineMaximumLineHeight;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v26 = v26 + 1.0;
  }

  v27 = swift_getKeyPath();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v5, v14, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMR);
  v28 = &v14[*(v9 + 36)];
  *v28 = 0;
  *(v28 + 1) = v26;
  *(v28 + 2) = v27;
  v28[24] = 0;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v21, v18, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v14, v11, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  v29 = v33;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v18, v33, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMR);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAEyAGyACyACyAoWGAA010_AlignmentqR0VG_AItGGAJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVG_ACyACyAEyAGyACyACyAoWGAA010_AlignmentqR0VG_AItGGAJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v11, v29 + *(v30 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v21, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v11, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v18, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAJ0j4UnitL0VGAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGtGGAA13_OffsetEffectVGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v44 = specialized IntervalsPowerZoneView.valueString.getter(v8);
  v45 = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = Text.init<A>(_:)();
  v33 = v12;
  v34 = v13;
  v15 = v14;
  v35 = v16;
  KeyPath = swift_getKeyPath();
  v17 = v15 & 1;
  LOBYTE(v44) = v15 & 1;
  LOBYTE(v40) = 0;
  v18 = Image.init(systemName:)();
  v19 = swift_getKeyPath();
  v20 = &v10[*(v4 + 44)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v22 = *MEMORY[0x277CE1050];
  v23 = type metadata accessor for Image.Scale();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v10 = v18;
  *(v10 + 1) = v19;
  v10[16] = 0;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v10, v6, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  v24 = v34;
  *&v40 = v12;
  *(&v40 + 1) = v34;
  LOBYTE(v41) = v17;
  *(&v41 + 1) = *v39;
  DWORD1(v41) = *&v39[3];
  v25 = v35;
  v26 = KeyPath;
  *(&v41 + 1) = v35;
  LOWORD(v42) = 256;
  *(&v42 + 2) = v37;
  WORD3(v42) = v38;
  *(&v42 + 1) = KeyPath;
  v43 = 0;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  *(a2 + 48) = 0;
  *(a2 + 16) = v28;
  *(a2 + 32) = v29;
  *a2 = v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAF0g4UnitI0VGAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGtMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_ACyACyAA5ImageVAF0g4UnitI0VGAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v6, a2 + *(v30 + 48), &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(&v40, &v44, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v6, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageV07WorkoutB014MetricUnitFontVGAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  v44 = v33;
  v45 = v24;
  v46 = v17;
  *v47 = *v39;
  *&v47[3] = *&v39[3];
  v48 = v25;
  v49 = 256;
  v50 = v37;
  v51 = v38;
  v52 = v26;
  v53 = 0;
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(&v44, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMR);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (v29 - v8);
  v10 = Image.init(_internalSystemName:)();
  v11 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v13 = *MEMORY[0x277CE1050];
  v14 = type metadata accessor for Image.Scale();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v9 = v10;
  v15 = static VerticalAlignment.firstTextBaseline.getter();
  v16 = (v9 + *(v4 + 44));
  *v16 = v15;
  v16[1] = closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in IntervalsPowerZoneView.body.getter;
  v16[2] = 0;
  v29[2] = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)();
  v29[3] = v17;
  lazy protocol witness table accessor for type String and conformance String();
  v18 = StringProtocol.localizedUppercase.getter();
  v20 = v19;

  v29[0] = v18;
  v29[1] = v20;
  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(v10) = v24;
  v26 = v25;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v9, v6, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v6, a2, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VG_AA4TextVtMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VG_AA4TextVtMR) + 48);
  *v27 = v21;
  *(v27 + 8) = v23;
  *(v27 + 16) = v10 & 1;
  *(v27 + 24) = v26;
  outlined copy of Text.Storage(v21, v23, v10 & 1);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v9, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  outlined consume of Text.Storage(v21, v23, v10 & 1);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(v6, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
}

double specialized View.isHidden(_:)@<D0>(uint64_t a2@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalsRangeSliderVAA15_HiddenModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalsRangeSliderVAA15_HiddenModifierVGMR);
  lazy protocol witness table accessor for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type IntervalsRangeSlider and conformance IntervalsRangeSlider();
  _ConditionalContent<>.init(storage:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance IntervalsPowerZoneView@<X0>(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = v2[2];
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_FrameG0VG_AA6HStackVyAIyAKyAKyAKyAKyAKyAA6VStackVyAIyAKyA3_yAIyAKyAA4TextVAV15MetricValueFontVG_AKyAKyAA5ImageVAV0Y8UnitFontVGAA022_EnvironmentKeyWritingN0VyA12_5ScaleOGGtGGAA07_OffsetQ0VG_AKyAKyA3_yAIyAKyAKyA12_A20_GAA017_AlignmentWritingN0VG_A7_tGGAV0Y19DescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA43_GA25_GARGAA013_TraitWritingN0VyAA0G16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalJ0VyAKyAV20IntervalsRangeSliderVAA07_HiddenN0VGA59_GtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_FrameG0VG_AA6HStackVyAIyAKyAKyAKyAKyAKyAA6VStackVyAIyAKyA3_yAIyAKyAA4TextVAV15MetricValueFontVG_AKyAKyAA5ImageVAV0Y8UnitFontVGAA022_EnvironmentKeyWritingN0VyA12_5ScaleOGGtGGAA07_OffsetQ0VG_AKyAKyA3_yAIyAKyAKyA12_A20_GAA017_AlignmentWritingN0VG_A7_tGGAV0Y19DescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingG0VGA43_GA25_GARGAA013_TraitWritingN0VyAA0G16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalJ0VyAKyAV20IntervalsRangeSliderVAA07_HiddenN0VGA59_GtGGtGGMR);
  closure #1 in IntervalsPowerZoneView.body.getter(v8, (a2 + *(v6 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyA_yAGyACyAA4TextVAR15MetricValueFontVG_ACyACyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGtGGAA07_OffsetN0VG_ACyACyA_yAGyACyACyA8_A16_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA39_GA21_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalD0VyACyAR20IntervalsRangeSliderVAA07_HiddenK0VGA55_GtGGtGGAR0W3RowVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyA_yAGyACyAA4TextVAR15MetricValueFontVG_ACyACyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGtGGAA07_OffsetN0VG_ACyACyA_yAGyACyACyA8_A16_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA39_GA21_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalD0VyACyAR20IntervalsRangeSliderVAA07_HiddenK0VGA55_GtGGtGGAR0W3RowVGMR);
  *(a2 + *(result + 36)) = 0;
  return result;
}

void specialized IntervalsPowerZoneView.currentRange.getter()
{
  v0 = type metadata accessor for PowerZonesAlertZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D7E430])
  {
    (*(v1 + 8))(v3, v0);
    goto LABEL_9;
  }

  (*(v1 + 96))(v3, v0);
  v4 = *v3;

  if (!PowerMetricsPublisher.livePowerZones.getter())
  {
LABEL_9:
    dispatch thunk of PowerZonesAlertTargetZone.applicableRange.getter();
    return;
  }

  v5 = dispatch thunk of LiveZones.zones.getter();

  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](v4, v5);
    goto LABEL_7;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_7:

    dispatch thunk of Zone.logicalSpan.getter();

    return;
  }

  __break(1u);
}

BOOL specialized IntervalsPowerZoneView.withinRange.getter(double a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = PowerMetricsPublisher.currentPower.getter();
  if (v7)
  {
    return 0;
  }

  v9 = *&v6;
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D7E428])
  {
    (*(v3 + 96))(v5, v2);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
    v11 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v11 - 8) + 8))(&v5[v10], v11);
    specialized IntervalsPowerZoneView.currentRange.getter();
    return vabdd_f64(v9, v12) <= a1;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    specialized IntervalsPowerZoneView.currentRange.getter();
    return v14 <= v9 && v13 > v9;
  }
}

uint64_t specialized IntervalsPowerZoneView.targetState.getter(double a1)
{
  *&v2 = COERCE_DOUBLE(PowerMetricsPublisher.currentPower.getter());
  if (v3)
  {
    goto LABEL_2;
  }

  v5 = *&v2;
  specialized IntervalsPowerZoneView.currentRange.getter();
  if (v6 < v5)
  {
    return 1;
  }

  specialized IntervalsPowerZoneView.currentRange.getter();
  if (v7 > v5)
  {
LABEL_2:
    *&result = 0.0;
    return result;
  }

  *&v8 = COERCE_DOUBLE(PowerMetricsPublisher.currentPower.getter());
  if ((v9 & 1) != 0 || (v10 = *&v8, !specialized IntervalsPowerZoneView.withinRange.getter(a1)))
  {
    *&result = 0.0;
  }

  else
  {
    specialized IntervalsPowerZoneView.currentRange.getter();
    v12 = v10 - v11;
    specialized IntervalsPowerZoneView.currentRange.getter();
    v14 = v13;
    specialized IntervalsPowerZoneView.currentRange.getter();
    *&result = v12 / (v14 - v15);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalsRangeSliderVAA15_HiddenModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalsRangeSliderVAA15_HiddenModifierVGMR);
    lazy protocol witness table accessor for type IntervalsRangeSlider and conformance IntervalsRangeSlider();
    lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalsRangeSlider, _HiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalsRangeSlider and conformance IntervalsRangeSlider()
{
  result = lazy protocol witness table cache variable for type IntervalsRangeSlider and conformance IntervalsRangeSlider;
  if (!lazy protocol witness table cache variable for type IntervalsRangeSlider and conformance IntervalsRangeSlider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalsRangeSlider and conformance IntervalsRangeSlider);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t specialized IntervalsPowerZoneView.valueString.getter(double a1)
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  v13 = PowerMetricsPublisher.currentPower.getter();
  if (v14)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v23._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0x45554C41564F4ELL;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v16._object = 0xE700000000000000;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v23)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v22[0] = v13;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v4, v6);
    (*(v2 + 8))(v4, v1);
    v21 = *(v7 + 8);
    v21(v9, v6);
    _s10Foundation24FloatingPointFormatStyleVySdGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, MEMORY[0x277CC9168]);
    BinaryFloatingPoint.formatted<A>(_:)();
    v21(v12, v6);
    return v22[1];
  }
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>>, MetricRow> and con()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>>, MetricRow> a;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>>, MetricRow> a)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyA_yAGyACyAA4TextVAR15MetricValueFontVG_ACyACyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGtGGAA07_OffsetN0VG_ACyACyA_yAGyACyACyA8_A16_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA39_GA21_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalD0VyACyAR20IntervalsRangeSliderVAA07_HiddenK0VGA55_GtGGtGGAR0W3RowVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyA_yAGyACyAA4TextVAR15MetricValueFontVG_ACyACyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGtGGAA07_OffsetN0VG_ACyACyA_yAGyACyACyA8_A16_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA39_GA21_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalD0VyACyAR20IntervalsRangeSliderVAA07_HiddenK0VGA55_GtGGtGGAR0W3RowVGMR);
    _s10Foundation24FloatingPointFormatStyleVySdGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAEyAGyAGyAGyAGyAGyAA6VStackVyAEyAGyA_yAEyAGyAA4TextVAR15MetricValueFontVG_AGyAGyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGtGGAA07_OffsetN0VG_AGyAGyA_yAEyAGyAGyA8_A16_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA39_GA21_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalG0VyAGyAR20IntervalsRangeSliderVAA07_HiddenK0VGA55_GtGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAEyAGyAGyAGyAGyAGyAA6VStackVyAEyAGyA_yAEyAGyAA4TextVAR15MetricValueFontVG_AGyAGyAA5ImageVAR0w4UnitY0VGAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGtGGAA07_OffsetN0VG_AGyAGyA_yAEyAGyAGyA8_A16_GAA017_AlignmentWritingK0VG_A3_tGGAR0w15DescriptionCoreY0VGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGAA08_PaddingS0VGA39_GA21_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAA012_ConditionalG0VyAGyAR20IntervalsRangeSliderVAA07_HiddenK0VGA55_GtGGtGGMR, MEMORY[0x277CE11A8]);
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Image, MetricUnitFont>, _EnvironmentKeyWritingModifier<Image.Scale>>)>>, _OffsetEffect>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, _ConditionalContent<ModifiedContent<IntervalsRangeSlider, _HiddenModifier>, IntervalsRangeSlider>)>>)>>, MetricRow> a);
  }

  return result;
}

uint64_t _s10Foundation24FloatingPointFormatStyleVySdGACyxGAA0dE0AAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for NextIntervalHintView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NextIntervalHintView(uint64_t result, int a2, int a3)
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

__n128 NextIntervalHintView.body.getter@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  if (a1)
  {

    v6 = WorkoutStep.goal.getter();
    v7 = [v6 goalTypeIdentifier];

    v8 = WorkoutStep.goal.getter();
    v9 = v8;
    if (v7 == 2)
    {
      [v8 doubleValue];
      v11 = v10;

      type metadata accessor for ElapsedTimeFormatter();
      v12 = MEMORY[0x20F305C20](1, 0, v11);
      v14 = v13;
    }

    else
    {
      v12 = NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)();
      v14 = v20;
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = WorkoutUIBundle.super.isa;
    v45._object = 0xE000000000000000;
    v22._object = 0x800000020CBA4660;
    v22._countAndFlagsBits = 0xD000000000000015;
    v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v23.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v45);

    v26 = WorkoutStep.goal.getter();
    v27 = [v26 goalTypeIdentifier];

    LOBYTE(v26) = v27 != 0;
    v28 = swift_allocObject();
    v28[2] = a1;
    v28[3] = a2;
    v28[4] = a1;
    swift_retain_n();
    v29 = a2;
    _s9WorkoutUI25NextIntervalOrLegPillViewV11description17metricDescription06centerK11OnCapHeight4iconACyxGSS_SSSbxyctcfC05SwiftB015ModifiedContentVyAKyAI5ImageVAI18_AspectRatioLayoutVGAI06_FrameW0VG_Tt3g5(v12, v14, v25._countAndFlagsBits, v25._object, v26, partial apply for closure #1 in NextIntervalHintView.body.getter, v28, v35);
    v41 = v35[4];
    v42 = v35[5];
    v43 = v36;
    v37 = v35[0];
    v38 = v35[1];
    v39 = v35[2];
    v40 = v35[3];
    outlined init with copy of NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>(v35, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMR);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMR);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<Image> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMR);
    _ConditionalContent<>.init(storage:)();

    outlined destroy of NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>(v35);
    v41 = v33[4];
    v42 = v33[5];
    v43 = v34;
    v37 = v33[0];
    v38 = v33[1];
    v39 = v33[2];
    v40 = v33[3];
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v44._object = 0xE000000000000000;
    v16._object = 0x800000020CBA4660;
    v16._countAndFlagsBits = 0xD000000000000015;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v44._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v44);

    specialized NextIntervalOrLegPillView<>.init(isLast:metricDescription:)(1, v19._countAndFlagsBits, v19._object, v33);
    HIBYTE(v34) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMR);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMR);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<Image> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMR);
    _ConditionalContent<>.init(storage:)();
  }

  v30 = v42;
  a3[4] = v41;
  a3[5] = v30;
  a3[6].n128_u16[0] = v43;
  v31 = v38;
  *a3 = v37;
  a3[1] = v31;
  result = v40;
  a3[2] = v39;
  a3[3] = result;
  return result;
}

double closure #1 in NextIntervalHintView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for StepType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  WorkoutStep.stepType.getter();
  StepType.scaleableImage.getter();
  (*(v7 + 8))(v9, v6);
  Image.init(uiImage:)();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v10 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *&v14[38] = v17;
  *&v14[22] = v16;
  *&v14[6] = v15;
  v11 = *&v14[16];
  *(a1 + 18) = *v14;
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v11;
  result = *&v14[32];
  *(a1 + 50) = *&v14[32];
  *(a1 + 64) = *&v14[46];
  return result;
}

uint64_t lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, NextIntervalOrLegPillView<Image>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, NextIntervalOrLegPillView<Image>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, NextIntervalOrLegPillView<Image>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025NextIntervalOrLegPillViewVyAA08ModifiedD0VyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGGAFyAJGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB025NextIntervalOrLegPillViewVyAA08ModifiedD0VyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGGAFyAJGGMR);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB015ModifiedContentVyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameO0VGGMR);
    lazy protocol witness table accessor for type NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance NextIntervalOrLegPillView<A>(&lazy protocol witness table cache variable for type NextIntervalOrLegPillView<Image> and conformance NextIntervalOrLegPillView<A>, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMd, &_s9WorkoutUI25NextIntervalOrLegPillViewVy05SwiftB05ImageVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<NextIntervalOrLegPillView<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, NextIntervalOrLegPillView<Image>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuickStartWorkoutControlType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for QuickStartWorkoutControlType(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for QuickStartWorkoutControlType(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PowerTargetValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for PowerTargetValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void PowerTargetValue.body.getter(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = specialized PowerTargetValue.valueString.getter(a1, a2 & 1, a4);
  v9 = v8;
  v10 = 0;
  if (a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = [objc_opt_self() localizedShortPowerUnitString];
      if (v12)
      {
        v13 = v12;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v14;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }
  }

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
}

uint64_t specialized PowerTargetValue.valueString.getter(uint64_t a1, char a2, double a3)
{
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  if ((a2 & 1) != 0 || (a1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = WorkoutUIBundle.super.isa;
    v25._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0x4E5F43495254454DLL;
    v20._object = 0xEE0045554C41564FLL;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v25)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v24[0] = a1;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v8, v10);
    (*(v6 + 8))(v8, v5);
    v17 = *(v11 + 8);
    v17(v13, v10);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
    BinaryFloatingPoint.formatted<A>(_:)();
    v17(v16, v10);
    return v24[1];
  }
}

uint64_t getEnumTagSinglePayload for PaceTargetValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for PaceTargetValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void PaceTargetValue.value.getter()
{
  v1 = *v0;
  if (specialized PaceTargetValue.speedUnavailable()(*(v0 + 16), *(v0 + 32) & 1, *v0))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = WorkoutUIBundle.super.isa;
    v11._object = 0xE000000000000000;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._object = 0x800000020CB97E50;
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v11);
    goto LABEL_7;
  }

  v6 = *(v0 + 8);
  v7 = [objc_opt_self() meterUnit];
  v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v1];

  v9 = FIUIDistanceTypeForActivityType();
  v10 = MEMORY[0x20F30D340](v9);
  v2 = [v6 localizedPaceStringWithDistance:v8 overDuration:v10 paceFormat:FIUIDistanceTypeForActivityType() distanceType:1.0];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_7:

    return;
  }

  __break(1u);
}

void PaceTargetValue.body.getter(uint64_t a1@<X8>)
{
  PaceTargetValue.value.getter();
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 16);
  v8 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v8) == 4 && (v9 = [*(v1 + 8) localizedSpeedUnitStringForActivityType_]) != 0)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

uint64_t specialized PaceTargetValue.speedUnavailable()(uint64_t a1, char a2, double a3)
{
  v5 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v5) == 4 && a3 >= 0.0 && (_sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8), _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810), v6 = static FIUIWorkoutActivityType.indoorCycle.getter(), v7 = static NSObject.== infix(_:_:)(), v6, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v9 = FIUIDistanceTypeForActivityType();
    v10 = MEMORY[0x20F30D340](v9);
    v8 = a2 | (a3 < 0.0);
    if (v10 != 4)
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t _sSo8NSObjectCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

id HKWorkoutMetricType.accessibilityLocalizedName(for:)(void *a1, uint64_t a2)
{
  [a1 effectiveTypeIdentifier];
  result = HKWorkoutMetricTypeAccessibilityLocalizedName();
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double IntervalsActiveTargetZoneView.rawValue.getter()
{
  v0 = type metadata accessor for TargetZone.ZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7DE48])
  {
    MetricsPublisher.rollingPace.getter();
    return result;
  }

  if (v4 == *MEMORY[0x277D7DE40])
  {
    MetricsPublisher.averagePace.getter();
    return result;
  }

  if (v4 == *MEMORY[0x277D7DE60])
  {
    MetricsPublisher.currentPace.getter();
    return result;
  }

  if (v4 == *MEMORY[0x277D7DE70])
  {
    *&v6 = COERCE_DOUBLE(MetricsPublisher.currentCadence.getter());
LABEL_11:
    result = 0.0;
    v8 = *&v6;
    v9 = (v7 & 1) == 0;
    goto LABEL_12;
  }

  if (v4 == *MEMORY[0x277D7DE58])
  {
    *&v6 = COERCE_DOUBLE(MetricsPublisher.averageCadence.getter());
    goto LABEL_11;
  }

  if (v4 == *MEMORY[0x277D7DE68])
  {
    MetricsPublisher.powerMetricsPublisher.getter();
    v10 = PowerMetricsPublisher.currentPower.getter();
LABEL_20:
    v12 = *&v10;
    v13 = v11;

    result = 0.0;
    v8 = v12;
    v9 = (v13 & 1) == 0;
LABEL_12:
    if (v9)
    {
      return v8;
    }

    return result;
  }

  if (v4 == *MEMORY[0x277D7DE50])
  {
    MetricsPublisher.powerMetricsPublisher.getter();
    v10 = PowerMetricsPublisher.averagePower.getter();
    goto LABEL_20;
  }

  result = 0.0;
  if (v4 != *MEMORY[0x277D7DE78])
  {
    (*(v1 + 8))(v3, v0, 0.0);
    return 0.0;
  }

  return result;
}

BOOL IntervalsActiveTargetZoneView.withinRange.getter()
{
  v0 = type metadata accessor for TargetZone.ZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of TargetZone.isSingleThreshold.getter();
  v5 = IntervalsActiveTargetZoneView.rawValue.getter();
  dispatch thunk of TargetZone.min.getter();
  if (v4)
  {
    v7 = vabdd_f64(v5, v6);
    TargetZone.type.getter();
    v8 = (*(v1 + 88))(v3, v0);
    if (v8 == *MEMORY[0x277D7DE48] || v8 == *MEMORY[0x277D7DE40] || v8 == *MEMORY[0x277D7DE60])
    {
      v9.n128_u64[0] = 0x3FCC9C4DA9003EEALL;
    }

    else
    {
      v9.n128_u64[0] = 5.0;
      if (v8 != *MEMORY[0x277D7DE70] && v8 != *MEMORY[0x277D7DE58] && v8 != *MEMORY[0x277D7DE68] && v8 != *MEMORY[0x277D7DE50])
      {
        (*(v1 + 8))(v3, v0, v9);
        v9.n128_u64[0] = 0;
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      return 0;
    }

    v7 = IntervalsActiveTargetZoneView.rawValue.getter();
    dispatch thunk of TargetZone.max.getter();
  }

  return v7 <= v9.n128_f64[0];
}

uint64_t IntervalsActiveTargetZoneView.targetState.getter()
{
  v0 = IntervalsActiveTargetZoneView.rawValue.getter();
  dispatch thunk of TargetZone.max.getter();
  if (v1 < v0)
  {
    return 1;
  }

  v3 = IntervalsActiveTargetZoneView.rawValue.getter();
  dispatch thunk of TargetZone.min.getter();
  if (v3 >= v4)
  {
    if (IntervalsActiveTargetZoneView.withinRange.getter())
    {
      v5 = IntervalsActiveTargetZoneView.rawValue.getter();
      dispatch thunk of TargetZone.min.getter();
      v7 = v5 - v6;
      dispatch thunk of TargetZone.max.getter();
      v9 = v8;
      dispatch thunk of TargetZone.min.getter();
      *&result = v7 / (v9 - v10);
    }

    else
    {
      *&result = 0.0;
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t closure #1 in IntervalsActiveTargetZoneView.body.getter@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-1] - v8;
  v10 = type metadata accessor for Color.RGBColorSpace();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntervalsActiveTargetZoneView.withinRange.getter();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0EE0], v10);
  v14 = Color.init(_:red:green:blue:opacity:)();
  if (one-time initialization token for heightOfAlertBackground != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6VStackVyAIyAKy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AKyAKyAKyAA0F0VyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAW5ScaleOGGAA010_AlignmentuV0VG_AA4TextVtGGAN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGARGtGGAA08_PaddingG0VGA20_GARGAA016_ForegroundStyleV0VyAA5ColorVGGAA06_TraituV0VyAA0g13PriorityTraitT0VGG_AA6SpacerVAN0M11RangeSliderVSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6VStackVyAIyAKy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AKyAKyAKyAA0F0VyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAW5ScaleOGGAA010_AlignmentuV0VG_AA4TextVtGGAN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGARGtGGAA08_PaddingG0VGA20_GARGAA016_ForegroundStyleV0VyAA5ColorVGGAA06_TraituV0VyAA0g13PriorityTraitT0VGG_AA6SpacerVAN0M11RangeSliderVSgtGGMR);
  closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter(a1, &v9[*(v15 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v9, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMR);
  *&v22 = v14;
  *(&v22 + 1) = 0x4030000000000000;
  *&v23[0] = 10;
  WORD4(v23[0]) = 256;
  *(v23 + 10) = *v29;
  *(&v23[1] + 10) = *&v29[8];
  *(&v23[2] + 10) = *&v29[16];
  *(&v23[3] + 1) = *&v29[23];
  v16 = v22;
  v17 = v23[0];
  v18 = v23[3];
  a2[3] = v23[2];
  a2[4] = v18;
  v19 = v23[1];
  a2[1] = v17;
  a2[2] = v19;
  *a2 = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAA9TupleViewVyACyACyACyACyACyAA6VStackVyAYyACyAN20IntervalsTargetValueVAA07_OffsetK0VG_ACyACyACyAWyAYyACyACyAA5ImageVAA022_EnvironmentKeyWritingH0VyA6_5ScaleOGGAA017_AlignmentWritingH0VG_AA4TextVtGGAN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA3_GtGGAA08_PaddingP0VGA31_GA3_GAJGAA013_TraitWritingH0VyAA0P16PriorityTraitKeyVGG_AA6SpacerVAN0U11RangeSliderVSgtGGtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAA9TupleViewVyACyACyACyACyACyAA6VStackVyAYyACyAN20IntervalsTargetValueVAA07_OffsetK0VG_ACyACyACyAWyAYyACyACyAA5ImageVAA022_EnvironmentKeyWritingH0VyA6_5ScaleOGGAA017_AlignmentWritingH0VG_AA4TextVtGGAN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA3_GtGGAA08_PaddingP0VGA31_GA3_GAJGAA013_TraitWritingH0VyAA0P16PriorityTraitKeyVGG_AA6SpacerVAN0U11RangeSliderVSgtGGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v6, a2 + *(v20 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(&v22, v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6VStackVyAEyAGy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AGyAGyAGyACyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAJ25MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGANGtGGAA14_PaddingLayoutVGA14_GANGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAJ0J11RangeSliderVSgtGGMR);
  v24[0] = v14;
  v24[1] = 0x4030000000000000;
  v24[2] = 10;
  v25 = 256;
  v26 = *v29;
  v27 = *&v29[8];
  *v28 = *&v29[16];
  *&v28[14] = *&v29[23];
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v24, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVGMR);
}

uint64_t closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGMR);
  MEMORY[0x28223BE20](v61);
  v10 = &v59 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
  MEMORY[0x28223BE20](v60);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AKyAKyAKyAA6HStackVyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAU5ScaleOGGAA010_AlignmentuV0VG_AA4TextVtGGAL25MetricDescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAPGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_AKyAKyAKyAA6HStackVyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAU5ScaleOGGAA010_AlignmentuV0VG_AA4TextVtGGAL25MetricDescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAPGtGGMR);
  closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter(a1, &v8[*(v18 + 44)]);
  v19 = static Edge.Set.bottom.getter();
  if (one-time initialization token for bottomOffset != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGMR) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = static Edge.Set.leading.getter();
  if (one-time initialization token for contentLeadingTrailingPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GMR) + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  *&v8[*(v6 + 36)] = xmmword_20CB71760;
  IntervalsActiveTargetZoneView.withinRange.getter();
  v39 = *MEMORY[0x277CE0EE0];
  v40 = *(v3 + 104);
  v40(v5, v39, v64);
  v41 = Color.init(_:red:green:blue:opacity:)();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v8, v10, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGMR);
  *&v10[*(v61 + 36)] = v41;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v10, v14, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGMR);
  *&v14[*(v60 + 36)] = 0x3FF0000000000000;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v14, v17, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
  if (one-time initialization token for horizontalSpacingToSlider != -1)
  {
    swift_once();
  }

  v61 = static IntervalsTargetView.horizontalSpacingToSlider;
  if (dispatch thunk of TargetZone.isSingleThreshold.getter())
  {
    v64 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  else
  {
    active = IntervalsActiveTargetZoneView.targetState.getter();
    v49 = v48;
    IntervalsActiveTargetZoneView.withinRange.getter();
    v40(v5, v39, v64);
    v50 = Color.init(_:red:green:blue:opacity:)();
    specialized IntervalsRangeSlider.init(state:color:)(active, v49 & 1, v50, &v65);
    v64 = v65;
    v42 = v66;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
  }

  v51 = v17;
  v52 = v17;
  v53 = v62;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v52, v62, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
  v54 = v63;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v53, v63, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAH0I11RangeSliderVSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGG_AA6SpacerVAH0I11RangeSliderVSgtMR);
  v56 = v54 + *(v55 + 48);
  *v56 = v61;
  *(v56 + 8) = 0;
  v57 = (v54 + *(v55 + 64));
  *v57 = v64;
  v57[1] = v42;
  v57[2] = v43;
  v57[3] = v44;
  v57[4] = v45;
  v57[5] = v46;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v51, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v53, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA010_AlignmentrS0VG_AA4TextVtGGAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGALGtGGAA14_PaddingLayoutVGA14_GALGAA016_ForegroundStyleS0VyAA5ColorVGGAA06_TraitrS0VyAA019LayoutPriorityTraitQ0VGGMR);
}

void closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMR) - 8;
  MEMORY[0x28223BE20](v37);
  v36 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMR);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v43 = *a1;
  v13 = *(a1 + 2);
  v12 = *(a1 + 3);
  v14 = *(a1 + 4);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(&v43, v42, &_s7SwiftUI14ObservedObjectVy11WorkoutCore16MetricsPublisherCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore16MetricsPublisherCGMR);
  type metadata accessor for MetricsPublisher();
  lazy protocol witness table accessor for type MetricsPublisher and conformance MetricsPublisher();
  v40 = v13;

  v15 = v12;
  v16 = v36;
  v38 = v15;
  v17 = v14;
  v18 = ObservedObject.init(wrappedValue:)();
  v20 = v19;
  v21 = *(a1 + 5);
  *v7 = static VerticalAlignment.firstTextBaseline.getter();
  *(v7 + 1) = 0x4010000000000000;
  v7[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA010_AlignmentnO0VG_AA4TextVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA010_AlignmentnO0VG_AA4TextVtGGMR);
  closure #1 in closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter(&v7[*(v22 + 44)]);
  KeyPath = swift_getKeyPath();
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v7, v16, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMR);
  v24 = v16 + *(v37 + 44);
  *v24 = 0;
  *(v24 + 8) = KeyPath;
  *(v24 + 16) = 0;
  if (one-time initialization token for multilineMaximumLineHeight != -1)
  {
    swift_once();
  }

  v25 = *&static MetricDescriptionCoreFont.multilineMaximumLineHeight;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v25 = v25 + 1.0;
  }

  v26 = swift_getKeyPath();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(v16, v11, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGMR);
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR) + 36)];
  *v27 = 0;
  *(v27 + 1) = v25;
  *(v27 + 2) = v26;
  v27[24] = 0;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v7, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGGMR);
  v28 = *(a1 + 6);
  v29 = &v11[*(v39 + 36)];
  *v29 = 0;
  *(v29 + 1) = v28;
  v30 = v41;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v11, v41, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMR);
  *a2 = v18;
  a2[1] = v20;
  v31 = v38;
  a2[2] = v40;
  a2[3] = v31;
  a2[4] = v17;
  a2[5] = 0;
  a2[6] = v21;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA010_AlignmentqR0VG_AA4TextVtGGAD25MetricDescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAHGtMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalsTargetValueVAA13_OffsetEffectVG_ACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA010_AlignmentqR0VG_AA4TextVtGGAD25MetricDescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAHGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v30, a2 + *(v32 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMR);
  v33 = v20;

  v34 = v31;
  v35 = v17;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v11, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v30, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA010_AlignmentkL0VG_AA4TextVtGG07WorkoutB025MetricDescriptionCoreFontVGAW26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA13_OffsetEffectVGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (v29 - v8);
  v10 = Image.init(_internalSystemName:)();
  v11 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v13 = *MEMORY[0x277CE1050];
  v14 = type metadata accessor for Image.Scale();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v9 = v10;
  v15 = static VerticalAlignment.firstTextBaseline.getter();
  v16 = (v9 + *(v4 + 44));
  *v16 = v15;
  v16[1] = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalsActiveTargetZoneView.body.getter;
  v16[2] = 0;
  v29[2] = TargetZone.displayString(formattingManager:activityType:)();
  v29[3] = v17;
  lazy protocol witness table accessor for type String and conformance String();
  v18 = StringProtocol.localizedUppercase.getter();
  v20 = v19;

  v29[0] = v18;
  v29[1] = v20;
  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(v10) = v24;
  v26 = v25;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v9, v6, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v6, a2, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VG_AA4TextVtMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VG_AA4TextVtMR) + 48);
  *v27 = v21;
  *(v27 + 8) = v23;
  *(v27 + 16) = v10 & 1;
  *(v27 + 24) = v26;
  outlined copy of Text.Storage(v21, v23, v10 & 1);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v9, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
  outlined consume of Text.Storage(v21, v23, v10 & 1);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(v6, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA010_AlignmenthI0VGMR);
}

double default argument 4 of IntervalsActiveTargetZoneView.init(metricsPublisher:targetZone:formattingManager:activityType:valueVerticalOffset:alertRangeVerticalOffset:)()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  if (v3 == v6)
  {
    v7 = -6.0;
  }

  else
  {
    v7 = -2.0;
  }

  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  if (v10 > 2u)
  {
    v7 = -6.0;
  }

  v11 = [v0 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v0 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v0 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v0 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    return v7 * (v19 / v22 * 0.95);
  }

  return v7;
}

void default argument 5 of IntervalsActiveTargetZoneView.init(metricsPublisher:targetZone:formattingManager:activityType:valueVerticalOffset:alertRangeVerticalOffset:)()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  specialized UIDevice.screenType.getter();

  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [v2 mainScreen];
  [v6 nativeScale];
  v8 = v7;

  if (v5 != v8)
  {
    v9 = [v2 mainScreen];
    [v9 scale];

    v10 = [v2 mainScreen];
    [v10 nativeScale];
  }
}

uint64_t protocol witness for View.body.getter in conformance IntervalsActiveTargetZoneView@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = *(v2 + 32);
  v9 = *(v2 + 48);
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_FrameG0VG_AA6HStackVyAIyAKyAKyAKyAKyAKyAA6VStackVyAIyAKyAV20IntervalsTargetValueVAA07_OffsetQ0VG_AKyAKyAKyA3_yAIyAKyAKyAA5ImageVAA022_EnvironmentKeyWritingN0VyA12_5ScaleOGGAA017_AlignmentWritingN0VG_AA4TextVtGGAV25MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA9_GtGGAA08_PaddingG0VGA37_GA9_GARGAA013_TraitWritingN0VyAA0G16PriorityTraitKeyVGG_AA6SpacerVAV0X11RangeSliderVSgtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_FrameG0VG_AA6HStackVyAIyAKyAKyAKyAKyAKyAA6VStackVyAIyAKyAV20IntervalsTargetValueVAA07_OffsetQ0VG_AKyAKyAKyA3_yAIyAKyAKyAA5ImageVAA022_EnvironmentKeyWritingN0VyA12_5ScaleOGGAA017_AlignmentWritingN0VG_AA4TextVtGGAV25MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA9_GtGGAA08_PaddingG0VGA37_GA9_GARGAA013_TraitWritingN0VyAA0G16PriorityTraitKeyVGG_AA6SpacerVAV0X11RangeSliderVSgtGGtGGMR);
  closure #1 in IntervalsActiveTargetZoneView.body.getter(v8, (a2 + *(v6 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyAR20IntervalsTargetValueVAA07_OffsetN0VG_ACyACyACyA_yAGyACyACyAA5ImageVAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGAA017_AlignmentWritingK0VG_AA4TextVtGGAR25MetricDescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA5_GtGGAA08_PaddingS0VGA33_GA5_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAR0V11RangeSliderVSgtGGtGGAR9MetricRowVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyAR20IntervalsTargetValueVAA07_OffsetN0VG_ACyACyACyA_yAGyACyACyAA5ImageVAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGAA017_AlignmentWritingK0VG_AA4TextVtGGAR25MetricDescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA5_GtGGAA08_PaddingS0VGA33_GA5_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAR0V11RangeSliderVSgtGGtGGAR9MetricRowVGMR);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for IntervalsActiveTargetZoneView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for IntervalsActiveTargetZoneView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsPublisher and conformance MetricsPublisher()
{
  result = lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher;
  if (!lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher)
  {
    type metadata accessor for MetricsPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyAR20IntervalsTargetValueVAA07_OffsetN0VG_ACyACyACyA_yAGyACyACyAA5ImageVAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGAA017_AlignmentWritingK0VG_AA4TextVtGGAR25MetricDescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA5_GtGGAA08_PaddingS0VGA33_GA5_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAR0V11RangeSliderVSgtGGtGGAR9MetricRowVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAGyACyACyACyACyACyAA6VStackVyAGyACyAR20IntervalsTargetValueVAA07_OffsetN0VG_ACyACyACyA_yAGyACyACyAA5ImageVAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGAA017_AlignmentWritingK0VG_AA4TextVtGGAR25MetricDescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA5_GtGGAA08_PaddingS0VGA33_GA5_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAR0V11RangeSliderVSgtGGtGGAR9MetricRowVGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>();
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>>, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAEyAGyAGyAGyAGyAGyAA6VStackVyAEyAGyAR20IntervalsTargetValueVAA07_OffsetN0VG_AGyAGyAGyA_yAEyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGAA017_AlignmentWritingK0VG_AA4TextVtGGAR25MetricDescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA5_GtGGAA08_PaddingS0VGA33_GA5_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAR0V11RangeSliderVSgtGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA12_FrameLayoutVG_AA6HStackVyAEyAGyAGyAGyAGyAGyAA6VStackVyAEyAGyAR20IntervalsTargetValueVAA07_OffsetN0VG_AGyAGyAGyA_yAEyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingK0VyA8_5ScaleOGGAA017_AlignmentWritingK0VG_AA4TextVtGGAR25MetricDescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA5_GtGGAA08_PaddingS0VGA33_GA5_GANGAA013_TraitWritingK0VyAA0S16PriorityTraitKeyVGG_AA6SpacerVAR0V11RangeSliderVSgtGGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _FrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<IntervalsTargetValue, _OffsetEffect>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _AlignmentWritingModifier>, Text)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _OffsetEffect>)>>, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, IntervalsRangeSlider?)>>)>> and conformance ZStack<A>);
  }

  return result;
}

uint64_t WorkoutVoiceOutroState.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x20F30CD90](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x20F30CD90](v3);
  }

  MEMORY[0x20F30CD90](2);

  return String.hash(into:)();
}

Swift::Int WorkoutVoiceOutroState.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x20F30CD90](2);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutVoiceOutroState()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x20F30CD90](2);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutVoiceOutroState(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x20F30CD90](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x20F30CD90](v3);
  }

  MEMORY[0x20F30CD90](2);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutVoiceOutroState(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x20F30CD90](2);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x20F30CD90](v3);
  return Hasher._finalize()();
}

uint64_t specialized static WorkoutVoiceOutroState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    outlined consume of WorkoutVoiceOutroState(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    outlined consume of WorkoutVoiceOutroState(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of WorkoutVoiceOutroState(v4, v5);
      outlined copy of WorkoutVoiceOutroState(v2, v3);
      outlined consume of WorkoutVoiceOutroState(v2, v3);
      outlined consume of WorkoutVoiceOutroState(v4, v5);
      return v11 & 1;
    }

    outlined copy of WorkoutVoiceOutroState(v9, v3);
    outlined copy of WorkoutVoiceOutroState(v2, v3);
    outlined consume of WorkoutVoiceOutroState(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    outlined copy of WorkoutVoiceOutroState(*a2, *(a2 + 8));
    outlined copy of WorkoutVoiceOutroState(v2, v3);
    outlined consume of WorkoutVoiceOutroState(v2, v3);
    outlined consume of WorkoutVoiceOutroState(v4, v5);
    return 0;
  }

  v6 = 1;
  outlined consume of WorkoutVoiceOutroState(*a1, 1uLL);
  outlined consume of WorkoutVoiceOutroState(v4, 1uLL);
  return v6;
}

unint64_t lazy protocol witness table accessor for type WorkoutVoiceOutroState and conformance WorkoutVoiceOutroState()
{
  result = lazy protocol witness table cache variable for type WorkoutVoiceOutroState and conformance WorkoutVoiceOutroState;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceOutroState and conformance WorkoutVoiceOutroState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceOutroState and conformance WorkoutVoiceOutroState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceOutroState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceOutroState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WorkoutVoiceOutroState(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for IntervalsTargetView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalsTargetView(uint64_t result, int a2, int a3)
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

void one-time initialization function for heightOfView()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB8D818[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static IntervalsTargetView.heightOfView = *&v3;
}

void one-time initialization function for bottomOffset()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  if (v3 == v6)
  {
    v7 = 10.0;
  }

  else
  {
    v7 = 14.0;
  }

  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  if (v10 > 2u)
  {
    v7 = 10.0;
  }

  v11 = [v0 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v0 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v0 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v0 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    v7 = v7 * (v19 / v22 * 0.95);
  }

  static IntervalsTargetView.bottomOffset = *&v7;
}

void one-time initialization function for heightOfAlertBackground()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  if (v3 == v6)
  {
    v7 = 72.0;
  }

  else
  {
    v7 = 76.0;
  }

  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  if (v10 <= 4u)
  {
    if (v10 < 3u)
    {
      goto LABEL_11;
    }

    *&v11 = 75.0;
  }

  else if (v10 > 8u)
  {
    *&v11 = 84.0;
  }

  else
  {
    *&v11 = 80.0;
  }

  v7 = *&v11;
LABEL_11:

  v12 = [v0 mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = [v0 mainScreen];
  [v15 nativeScale];
  v17 = v16;

  if (v14 != v17)
  {
    v18 = [v0 mainScreen];
    [v18 scale];
    v20 = v19;

    v21 = [v0 mainScreen];
    [v21 nativeScale];
    v23 = v22;

    v7 = v7 * (v20 / v23 * 0.95);
  }

  static IntervalsTargetView.heightOfAlertBackground = *&v7;
}

void one-time initialization function for horizontalSpacingToSlider()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  if (v3 == v6)
  {
    v7 = 5.0;
  }

  else
  {
    v7 = 2.0;
  }

  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  if (v10 > 2u)
  {
    v7 = 5.0;
  }

  v11 = [v0 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v0 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v0 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v0 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    v7 = v7 * (v19 / v22 * 0.95);
  }

  static IntervalsTargetView.horizontalSpacingToSlider = *&v7;
}

uint64_t IntervalsTargetView.body.getter@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v189 = a3;
  v197 = a4;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMR);
  MEMORY[0x28223BE20](v171);
  v172 = &v147 - v6;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMR);
  MEMORY[0x28223BE20](v169);
  v170 = &v147 - v7;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMR);
  MEMORY[0x28223BE20](v166);
  v168 = &v147 - v8;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMR);
  MEMORY[0x28223BE20](v162);
  v164 = &v147 - v9;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMR);
  MEMORY[0x28223BE20](v154);
  v157 = &v147 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMR);
  MEMORY[0x28223BE20](v149);
  v150 = &v147 - v11;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMR);
  MEMORY[0x28223BE20](v153);
  v152 = &v147 - v12;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMR);
  MEMORY[0x28223BE20](v156);
  v155 = &v147 - v13;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
  MEMORY[0x28223BE20](v159);
  v158 = &v147 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  MEMORY[0x28223BE20](v161);
  v160 = &v147 - v15;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  MEMORY[0x28223BE20](v165);
  v163 = &v147 - v16;
  v148 = type metadata accessor for HeartRateMetricView(0);
  MEMORY[0x28223BE20](v148);
  v151 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  MEMORY[0x28223BE20](v178);
  v167 = &v147 - v18;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAMyAMyAMy07WorkoutB0025IntervalsActiveTargetZoneF0VAA14_PaddingLayoutVGARGAA13_OffsetEffectVGAA06_FrameT0VG_Qo_ACyACyACyACyACyACyAN012EnergyMetricF0VA1_GACyAN09HeartRateyF0VAN0z13RateAggregateyF0VGGACyACyA6_AN0ryF0VGACyAN06TimeInryF0VA10_GGGACyACyACyA13_AN04PaceyF0VGACyA18_A18_GGACyA20_ACyAN08DistanceyF0VAN04LapsyF0VGGGGACyACyACyACyACyACyAN07CadenceyF0VAA05EmptyF0VGA31_GA31_GACyAN015ElevationChangeyF0VAN016CurrentElevationyF0VGGACyACyAN05PoweryF0VA44_GACyA44_AN014FlightsClimbedyF0VGGGACyACyACyAN015SegmentDurationyF0VAN014DistanceDetailyF0VGACyA18_A1_GGACyACyA1_A44_GACyA44_AMyAMyAN0n4TimeF0VAN0Y6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA54_A18_GACyAN012StrideLengthyF0VA77_GGACyACyAN019VerticalOscillationyF0VA81_GACyAN017GroundContactTimeyF0VA84_GGGACyACyA38_AN016DownhillRunCountyF0VGACyA33_AA6HStackVyAA05TupleF0VyAMyAA4TextVAN0Y9ValueFontVG_AMyAMyA96_AN0Y19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAMyAMyAMy07WorkoutB0025IntervalsActiveTargetZoneF0VAA14_PaddingLayoutVGARGAA13_OffsetEffectVGAA06_FrameT0VG_Qo_ACyACyACyACyACyACyAN012EnergyMetricF0VA1_GACyAN09HeartRateyF0VAN0z13RateAggregateyF0VGGACyACyA6_AN0ryF0VGACyAN06TimeInryF0VA10_GGGACyACyACyA13_AN04PaceyF0VGACyA18_A18_GGACyA20_ACyAN08DistanceyF0VAN04LapsyF0VGGGGACyACyACyACyACyACyAN07CadenceyF0VAA05EmptyF0VGA31_GA31_GACyAN015ElevationChangeyF0VAN016CurrentElevationyF0VGGACyACyAN05PoweryF0VA44_GACyA44_AN014FlightsClimbedyF0VGGGACyACyACyAN015SegmentDurationyF0VAN014DistanceDetailyF0VGACyA18_A1_GGACyACyA1_A44_GACyA44_AMyAMyAN0n4TimeF0VAN0Y6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA54_A18_GACyAN012StrideLengthyF0VA77_GGACyACyAN019VerticalOscillationyF0VA81_GACyAN017GroundContactTimeyF0VA84_GGGACyACyA38_AN016DownhillRunCountyF0VGACyA33_AA6HStackVyAA05TupleF0VyAMyAA4TextVAN0Y9ValueFontVG_AMyAMyA96_AN0Y19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_GMR);
  MEMORY[0x28223BE20](v175);
  v176 = &v147 - v19;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMR);
  MEMORY[0x28223BE20](v196);
  v179 = &v147 - v20;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy07WorkoutB0025IntervalsActiveTargetZoneC0VAA14_PaddingLayoutVGANGAA13_OffsetEffectVGAA06_FrameR0VG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy07WorkoutB0025IntervalsActiveTargetZoneC0VAA14_PaddingLayoutVGANGAA13_OffsetEffectVGAA06_FrameR0VG_Qo_MR);
  v174 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = &v147 - v21;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy07WorkoutB0018IntervalsPowerZoneC0VAA14_PaddingLayoutVGANGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy07WorkoutB0018IntervalsPowerZoneC0VAA14_PaddingLayoutVGANGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_MR);
  v181 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v180 = &v147 - v22;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAMyAMyAMy07WorkoutB0015IntervalsHRZoneF0VAA14_PaddingLayoutVGARGAA13_OffsetEffectVGAA06_FrameR0VG_Qo_AgAEAhIQrAK_tFQOyAMyAMyAMyAMyAN0o9PowerZoneF0VARGARGAVGAYG_Qo_GACyAgAEAhIQrAK_tFQOyAMyAMyAMyAMyAN0o12ActiveTargetwF0VARGARGAVGAYG_Qo_ACyACyACyACyACyACyAN012EnergyMetricF0VA16_GACyAN015HeartRateMetricF0VAN024HeartRateAggregateMetricF0VGGACyACyA21_AN0w6MetricF0VGACyAN06TimeInw6MetricF0VA25_GGGACyACyACyA28_AN010PaceMetricF0VGACyA33_A33_GGACyA35_ACyAN014DistanceMetricF0VAN010LapsMetricF0VGGGGACyACyACyACyACyACyAN013CadenceMetricF0VAA05EmptyF0VGA46_GA46_GACyAN021ElevationChangeMetricF0VAN022CurrentElevationMetricF0VGGACyACyAN0v6MetricF0VA59_GACyA59_AN020FlightsClimbedMetricF0VGGGACyACyACyAN021SegmentDurationMetricF0VAN020DistanceDetailMetricF0VGACyA33_A16_GGACyACyA16_A59_GACyA59_AMyAMyAN0n4TimeF0VAN12MetricDetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA69_A33_GACyAN018StrideLengthMetricF0VA92_GGACyACyAN025VerticalOscillationMetricF0VA96_GACyAN023GroundContactTimeMetricF0VA99_GGGACyACyA53_AN022DownhillRunCountMetricF0VGACyA48_AA6HStackVyAA05TupleF0VyAMyAA4TextVAN15MetricValueFontVG_AMyAMyA111_AN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAMyAMyAMy07WorkoutB0015IntervalsHRZoneF0VAA14_PaddingLayoutVGARGAA13_OffsetEffectVGAA06_FrameR0VG_Qo_AgAEAhIQrAK_tFQOyAMyAMyAMyAMyAN0o9PowerZoneF0VARGARGAVGAYG_Qo_GACyAgAEAhIQrAK_tFQOyAMyAMyAMyAMyAN0o12ActiveTargetwF0VARGARGAVGAYG_Qo_ACyACyACyACyACyACyAN012EnergyMetricF0VA16_GACyAN015HeartRateMetricF0VAN024HeartRateAggregateMetricF0VGGACyACyA21_AN0w6MetricF0VGACyAN06TimeInw6MetricF0VA25_GGGACyACyACyA28_AN010PaceMetricF0VGACyA33_A33_GGACyA35_ACyAN014DistanceMetricF0VAN010LapsMetricF0VGGGGACyACyACyACyACyACyAN013CadenceMetricF0VAA05EmptyF0VGA46_GA46_GACyAN021ElevationChangeMetricF0VAN022CurrentElevationMetricF0VGGACyACyAN0v6MetricF0VA59_GACyA59_AN020FlightsClimbedMetricF0VGGGACyACyACyAN021SegmentDurationMetricF0VAN020DistanceDetailMetricF0VGACyA33_A16_GGACyACyA16_A59_GACyA59_AMyAMyAN0n4TimeF0VAN12MetricDetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA69_A33_GACyAN018StrideLengthMetricF0VA92_GGACyACyAN025VerticalOscillationMetricF0VA96_GACyAN023GroundContactTimeMetricF0VA99_GGGACyACyA53_AN022DownhillRunCountMetricF0VGACyA48_AA6HStackVyAA05TupleF0VyAMyAA4TextVAN15MetricValueFontVG_AMyAMyA111_AN25MetricDescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGG_GMR);
  MEMORY[0x28223BE20](v193);
  v195 = &v147 - v23;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAMyAMyAMy07WorkoutB0015IntervalsHRZoneF0VAA14_PaddingLayoutVGARGAA13_OffsetEffectVGAA06_FrameR0VG_Qo_AgAEAhIQrAK_tFQOyAMyAMyAMyAMyAN0o9PowerZoneF0VARGARGAVGAYG_Qo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAMyAMyAMy07WorkoutB0015IntervalsHRZoneF0VAA14_PaddingLayoutVGARGAA13_OffsetEffectVGAA06_FrameR0VG_Qo_AgAEAhIQrAK_tFQOyAMyAMyAMyAMyAN0o9PowerZoneF0VARGARGAVGAYG_Qo__GMR);
  MEMORY[0x28223BE20](v184);
  v186 = &v147 - v24;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMR);
  MEMORY[0x28223BE20](v194);
  v187 = &v147 - v25;
  v26 = type metadata accessor for AccessibilityChildBehavior();
  v191 = *(v26 - 8);
  v192 = v26;
  MEMORY[0x28223BE20](v26);
  v190 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy07WorkoutB0015IntervalsHRZoneC0VAA14_PaddingLayoutVGANGAA13_OffsetEffectVGAA06_FrameP0VG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy07WorkoutB0015IntervalsHRZoneC0VAA14_PaddingLayoutVGANGAA13_OffsetEffectVGAA06_FrameP0VG_Qo_MR);
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v182 = &v147 - v28;
  v29 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v29 - 8);
  v30 = type metadata accessor for StepType();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  MetricsPublisher.intervalsMetricsPublisher.getter();
  v35 = IntervalsMetricsPublisher.intervalThisStep.getter();

  if (v35)
  {
    v36 = a2;
  }

  else
  {
    (*(v31 + 104))(v33, *MEMORY[0x277D7E708], v30);
    type metadata accessor for NLSessionActivityGoal();
    static NLSessionActivityGoal.makeOpenGoal()();
    v36 = a2;
    v37 = a2;
    UUID.init()();
    type metadata accessor for WorkoutStep();
    swift_allocObject();
    WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  }

  v38 = WorkoutStep.activeHeartRateTargetZone.getter();

  if (v38)
  {
    MetricsPublisher.heartRateMetricsPublisher.getter();
    type metadata accessor for HeartRateMetricsPublisher();
    _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type HeartRateMetricsPublisher and conformance HeartRateMetricsPublisher, MEMORY[0x277D7E500], MEMORY[0x277D7E4F8]);
    v39 = v38;
    v40 = v189;
    v41 = v36;
    v42 = ObservedObject.init(wrappedValue:)();
    v44 = v43;
    v45 = static Edge.Set.leading.getter();
    if (one-time initialization token for contentLeadingTrailingPadding != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    LOBYTE(v198) = 0;
    v54 = static Edge.Set.trailing.getter();
    LOBYTE(v210) = 1;
    if (one-time initialization token for bottomOffset != -1)
    {
      swift_once();
    }

    v55 = static IntervalsTargetView.bottomOffset;
    if (one-time initialization token for heightOfView != -1)
    {
      swift_once();
    }

    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v198 = v42;
    *(&v198 + 1) = v44;
    *&v199 = v39;
    *(&v199 + 1) = v40;
    *&v200 = v41;
    *(&v200 + 1) = 0x4014000000000000;
    LOBYTE(v201) = v45;
    *(&v201 + 1) = v47;
    *&v202 = v49;
    *(&v202 + 1) = v51;
    *&v203 = v53;
    BYTE8(v203) = 0;
    LOBYTE(v204[0]) = v54;
    *(v204 + 8) = 0u;
    *(&v204[1] + 8) = 0u;
    BYTE8(v204[2]) = 1;
    *&v205 = 0;
    *(&v205 + 1) = v55;
    v56 = v190;
    static AccessibilityChildBehavior.combine.getter();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMR);
    v58 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v59 = v182;
    View.accessibilityElement(children:)();
    (*(v191 + 8))(v56, v192);
    v220 = v206;
    v221 = v207;
    v222 = v208;
    v216 = v204[0];
    v217 = v204[1];
    v218 = v204[2];
    v219 = v205;
    v212 = v200;
    v213 = v201;
    v214 = v202;
    v215 = v203;
    v210 = v198;
    v211 = v199;
    outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(&v210, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMR);
    v60 = v39;
    v61 = v183;
    v62 = v185;
    (*(v183 + 16))(v186, v59, v185);
    swift_storeEnumTagMultiPayload();
    *&v198 = v57;
    *(&v198 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMR);
    v64 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    *&v198 = v63;
    *(&v198 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    v65 = v187;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE(v65, v195, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
    _ConditionalContent<>.init(storage:)();

    outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio(v65, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMR);
    return (*(v61 + 8))(v59, v62);
  }

  else
  {
    MetricsPublisher.intervalsMetricsPublisher.getter();
    v67 = IntervalsMetricsPublisher.intervalThisStep.getter();

    if (!v67)
    {
      (*(v31 + 104))(v33, *MEMORY[0x277D7E708], v30);
      type metadata accessor for NLSessionActivityGoal();
      static NLSessionActivityGoal.makeOpenGoal()();
      v68 = v36;
      UUID.init()();
      type metadata accessor for WorkoutStep();
      swift_allocObject();
      WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
    }

    v69 = WorkoutStep.activePowerZonesAlertTargetZone.getter();

    if (v69)
    {
      MetricsPublisher.powerMetricsPublisher.getter();
      type metadata accessor for PowerMetricsPublisher();
      _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type PowerMetricsPublisher and conformance PowerMetricsPublisher, MEMORY[0x277D7E3B0], MEMORY[0x277D7E3A8]);
      v70 = v69;
      v71 = v189;
      v72 = v36;
      v73 = ObservedObject.init(wrappedValue:)();
      v75 = v74;
      v76 = static Edge.Set.leading.getter();
      if (one-time initialization token for contentLeadingTrailingPadding != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v84 = v83;
      LOBYTE(v198) = 0;
      v85 = static Edge.Set.trailing.getter();
      LOBYTE(v210) = 1;
      if (one-time initialization token for bottomOffset != -1)
      {
        swift_once();
      }

      v86 = static IntervalsTargetView.bottomOffset;
      if (one-time initialization token for heightOfView != -1)
      {
        swift_once();
      }

      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v198 = v73;
      *(&v198 + 1) = v75;
      *&v199 = v70;
      *(&v199 + 1) = v71;
      *&v200 = v72;
      *(&v200 + 1) = 0x4014000000000000;
      LOBYTE(v201) = v76;
      *(&v201 + 1) = v78;
      *&v202 = v80;
      *(&v202 + 1) = v82;
      *&v203 = v84;
      BYTE8(v203) = 0;
      LOBYTE(v204[0]) = v85;
      *(v204 + 8) = 0u;
      *(&v204[1] + 8) = 0u;
      BYTE8(v204[2]) = 1;
      *&v205 = 0;
      *(&v205 + 1) = v86;
      v87 = v190;
      static AccessibilityChildBehavior.combine.getter();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMR);
      v89 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      v189 = v70;
      v90 = v180;
      View.accessibilityElement(children:)();
      (*(v191 + 8))(v87, v192);
      v220 = v206;
      v221 = v207;
      v222 = v208;
      v216 = v204[0];
      v217 = v204[1];
      v218 = v204[2];
      v219 = v205;
      v212 = v200;
      v213 = v201;
      v214 = v202;
      v215 = v203;
      v210 = v198;
      v211 = v199;
      outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(&v210, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMR);
      v91 = v181;
      v92 = v188;
      (*(v181 + 16))(v186, v90, v188);
      swift_storeEnumTagMultiPayload();
      v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMR);
      v94 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      *&v198 = v93;
      *(&v198 + 1) = v94;
      swift_getOpaqueTypeConformance2();
      *&v198 = v88;
      *(&v198 + 1) = v89;
      swift_getOpaqueTypeConformance2();
      v95 = v187;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE(v95, v195, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
      _ConditionalContent<>.init(storage:)();

      outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio(v95, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMR);
      return (*(v91 + 8))(v90, v92);
    }

    else
    {
      MetricsPublisher.intervalsMetricsPublisher.getter();
      v96 = IntervalsMetricsPublisher.intervalThisStep.getter();

      if (!v96)
      {
        (*(v31 + 104))(v33, *MEMORY[0x277D7E708], v30);
        type metadata accessor for NLSessionActivityGoal();
        static NLSessionActivityGoal.makeOpenGoal()();
        v97 = v36;
        UUID.init()();
        type metadata accessor for WorkoutStep();
        swift_allocObject();
        WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
      }

      v98 = WorkoutStep.activeTargetZone.getter();

      if (v98)
      {
        v99 = v34;

        v100 = v189;
        v101 = v36;
        v102 = default argument 4 of IntervalsActiveTargetZoneView.init(metricsPublisher:targetZone:formattingManager:activityType:valueVerticalOffset:alertRangeVerticalOffset:)();
        default argument 5 of IntervalsActiveTargetZoneView.init(metricsPublisher:targetZone:formattingManager:activityType:valueVerticalOffset:alertRangeVerticalOffset:)();
        v104 = v103;
        type metadata accessor for MetricsPublisher();
        _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090], MEMORY[0x277D7E088]);
        v105 = ObservedObject.init(wrappedValue:)();
        v107 = v106;
        v108 = static Edge.Set.leading.getter();
        if (one-time initialization token for contentLeadingTrailingPadding != -1)
        {
          swift_once();
        }

        EdgeInsets.init(_all:)();
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v116 = v115;
        LOBYTE(v198) = 0;
        v117 = static Edge.Set.trailing.getter();
        LOBYTE(v210) = 1;
        if (one-time initialization token for bottomOffset != -1)
        {
          swift_once();
        }

        v118 = static IntervalsTargetView.bottomOffset;
        if (one-time initialization token for heightOfView != -1)
        {
          swift_once();
        }

        static Alignment.leading.getter();
        _FrameLayout.init(width:height:alignment:)();
        *&v198 = v105;
        *(&v198 + 1) = v107;
        *&v199 = v98;
        *(&v199 + 1) = v100;
        *&v200 = v101;
        *(&v200 + 1) = v102;
        *&v201 = v104;
        BYTE8(v201) = v108;
        *&v202 = v110;
        *(&v202 + 1) = v112;
        *&v203 = v114;
        *(&v203 + 1) = v116;
        LOBYTE(v204[0]) = 0;
        BYTE8(v204[0]) = v117;
        memset(&v204[1], 0, 32);
        LOBYTE(v205) = 1;
        *(&v205 + 1) = 0;
        *&v206 = v118;
        v119 = v190;
        static AccessibilityChildBehavior.combine.getter();
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMR);
        active = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        v122 = v173;
        View.accessibilityElement(children:)();
        (*(v191 + 8))(v119, v192);
        v220 = v206;
        v221 = v207;
        v222 = v208;
        v223 = v209;
        v216 = v204[0];
        v217 = v204[1];
        v218 = v204[2];
        v219 = v205;
        v212 = v200;
        v213 = v201;
        v214 = v202;
        v215 = v203;
        v210 = v198;
        v211 = v199;
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(&v210, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMR);
        v123 = v174;
        v124 = v177;
        (*(v174 + 16))(v176, v122, v177);
        swift_storeEnumTagMultiPayload();
        *&v198 = v120;
        *(&v198 + 1) = active;
        swift_getOpaqueTypeConformance2();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
        v125 = v179;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE( v125,  v195,  &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd,  &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
        _ConditionalContent<>.init(storage:)();

        outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio( v125,  &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd,  &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMR);
        return (*(v123 + 8))(v122, v124);
      }

      else
      {
        MetricsPublisher.heartRateMetricsPublisher.getter();
        v126 = HeartRateMetricsPublisher.currentHeartRate.getter();
        v128 = v127;

        MetricsPublisher.heartRateMetricsPublisher.getter();
        v129 = v148;
        v130 = v151;
        HeartRateMetricsPublisher.currentHeartRateValueType.getter();

        MetricsPublisher.heartRateMetricsPublisher.getter();
        v131 = HeartRateMetricsPublisher.isStaleHeartRate.getter();

        MetricsPublisher.workoutStatePublisher.getter();
        v132 = WorkoutStatePublisher.workoutPaused.getter();

        MetricsPublisher.workoutStatePublisher.getter();
        v133 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

        v134 = v130 + v129[9];
        *v134 = swift_getKeyPath();
        *(v134 + 8) = 0;
        v135 = v130 + v129[10];
        *v135 = swift_getKeyPath();
        *(v135 + 8) = 0;
        v136 = v130 + v129[11];
        *v136 = swift_getKeyPath();
        *(v136 + 8) = 0;
        *(v130 + v129[12]) = 0x3FD6666666666666;
        v137 = (v130 + v129[13]);
        *v137 = 0;
        v137[1] = 0;
        *v130 = v126;
        *(v130 + 8) = v128 & 1;
        *(v130 + v129[6]) = v131 & 1;
        *(v130 + v129[7]) = v132 & 1;
        *(v130 + v129[8]) = v133 & 1;
        outlined init with copy of HeartRateMetricView(v130, v150);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for HeartRateAggregateMetricView(0);
        _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView, &protocol conformance descriptor for HeartRateMetricView);
        _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView, &protocol conformance descriptor for HeartRateAggregateMetricView);
        v138 = v152;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v138, v157, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMR);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR);
        _s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_0(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
        lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
        v139 = v155;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v138, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMR);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v139, v164, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMR);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMR);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
        v140 = v158;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v139, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMR);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v140, v168, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMR);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
        v141 = v160;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v140, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v141, v170, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMR);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
        v142 = v163;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v141, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v142, v172, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMR);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
        v143 = v167;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v142, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
        outlined destroy of HeartRateMetricView(v130);
        outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v143, v176, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
        swift_storeEnumTagMultiPayload();
        v144 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMR);
        v145 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        *&v210 = v144;
        *(&v210 + 1) = v145;
        swift_getOpaqueTypeConformance2();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
        v146 = v179;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE( v146,  v195,  &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd,  &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
        _ConditionalContent<>.init(storage:)();
        outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio( v146,  &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd,  &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMR);
        return outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(v143, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
      }
    }
  }
}

uint64_t _s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGMR);
    lazy protocol witness table accessor for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView()
{
  result = lazy protocol witness table cache variable for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView;
  if (!lazy protocol witness table cache variable for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalsActiveTargetZoneView and conformance IntervalsActiveTargetZoneView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameJ0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGAHGMR);
    lazy protocol witness table accessor for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsHRZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB019IntervalsHRZoneViewVAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type IntervalsHRZoneView and conformance IntervalsHRZoneView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalsHRZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalsHRZoneView and conformance IntervalsHRZoneView()
{
  result = lazy protocol witness table cache variable for type IntervalsHRZoneView and conformance IntervalsHRZoneView;
  if (!lazy protocol witness table cache variable for type IntervalsHRZoneView and conformance IntervalsHRZoneView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalsHRZoneView and conformance IntervalsHRZoneView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameK0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGAHGMR);
    lazy protocol witness table accessor for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalsPowerZoneView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022IntervalsPowerZoneViewVAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalsPowerZoneView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView()
{
  result = lazy protocol witness table cache variable for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView;
  if (!lazy protocol witness table cache variable for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalsPowerZoneView and conformance IntervalsPowerZoneView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationC;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationC)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0025IntervalsActiveTargetZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameS0VG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA_GACyAL09HeartRatexE0VAL0yz9AggregatexE0VGGACyACyA4_AL0qxE0VGACyAL06TimeInqxE0VA8_GGGACyACyACyA11_AL04PacexE0VGACyA16_A16_GGACyA18_ACyAL08DistancexE0VAL04LapsxE0VGGGGACyACyACyACyACyACyAL07CadencexE0VAA05EmptyE0VGA29_GA29_GACyAL015ElevationChangexE0VAL016CurrentElevationxE0VGGACyACyAL05PowerxE0VA42_GACyA42_AL014FlightsClimbedxE0VGGGACyACyACyAL015SegmentDurationxE0VAL014DistanceDetailxE0VGACyA16_A_GGACyACyA_A42_GACyA42_AKyAKyAL0m4TimeE0VAL0X6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA52_A16_GACyAL012StrideLengthxE0VA75_GGACyACyAL019VerticalOscillationxE0VA79_GACyAL017GroundContactTimexE0VA82_GGGACyACyA36_AL016DownhillRunCountxE0VGACyA31_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0X9ValueFontVG_AKyAKyA94_AL0X19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029IntervalsActiveTargetZoneViewVAA14_PaddingLayoutVGAHGAA13_OffsetEffectVGAA06_FrameL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalsActiveTargetZoneView, _PaddingLayout>, _PaddingLayout>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationC);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentE(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevatio(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0>, _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalCo()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0>, _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_Conditi;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0>, _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_Conditi)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GACyAeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n12ActiveTargetvE0VAPGAPGATGAWG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA14_GACyAL09HeartRatezE0VAL018HeartRateAggregatezE0VGGACyACyA19_AL0vzE0VGACyAL06TimeInvzE0VA23_GGGACyACyACyA26_AL04PacezE0VGACyA31_A31_GGACyA33_ACyAL08DistancezE0VAL04LapszE0VGGGGACyACyACyACyACyACyAL07CadencezE0VAA05EmptyE0VGA44_GA44_GACyAL015ElevationChangezE0VAL016CurrentElevationzE0VGGACyACyAL0uzE0VA57_GACyA57_AL014FlightsClimbedzE0VGGGACyACyACyAL015SegmentDurationzE0VAL014DistanceDetailzE0VGACyA31_A14_GGACyACyA14_A57_GACyA57_AKyAKyAL0m4TimeE0VAL0Z6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA67_A31_GACyAL012StrideLengthzE0VA90_GGACyACyAL019VerticalOscillationzE0VA94_GACyAL017GroundContactTimezE0VA97_GGGACyACyA51_AL016DownhillRunCountzE0VGACyA46_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0Z9ValueFontVG_AKyAKyA109_AL0Z19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA08ModifiedD0VyAKyAKyAKy07WorkoutB0015IntervalsHRZoneE0VAA14_PaddingLayoutVGAPGAA13_OffsetEffectVGAA06_FrameQ0VG_Qo_AeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n9PowerZoneE0VAPGAPGATGAWG_Qo_GACyAeAEAfGQrAI_tFQOyAKyAKyAKyAKyAL0n12ActiveTargetvE0VAPGAPGATGAWG_Qo_ACyACyACyACyACyACyAL012EnergyMetricE0VA14_GACyAL09HeartRatezE0VAL018HeartRateAggregatezE0VGGACyACyA19_AL0vzE0VGACyAL06TimeInvzE0VA23_GGGACyACyACyA26_AL04PacezE0VGACyA31_A31_GGACyA33_ACyAL08DistancezE0VAL04LapszE0VGGGGACyACyACyACyACyACyAL07CadencezE0VAA05EmptyE0VGA44_GA44_GACyAL015ElevationChangezE0VAL016CurrentElevationzE0VGGACyACyAL0uzE0VA57_GACyA57_AL014FlightsClimbedzE0VGGGACyACyACyAL015SegmentDurationzE0VAL014DistanceDetailzE0VGACyA31_A14_GGACyACyA14_A57_GACyA57_AKyAKyAL0m4TimeE0VAL0Z6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA67_A31_GACyAL012StrideLengthzE0VA90_GGACyACyAL019VerticalOscillationzE0VA94_GACyAL017GroundContactTimezE0VA97_GGGACyACyA51_AL016DownhillRunCountzE0VGACyA46_AA6HStackVyAA05TupleE0VyAKyAA4TextVAL0Z9ValueFontVG_AKyAKyA109_AL0Z19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeM();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0>, _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_Conditi);
  }

  return result;
}

void IntervalsRangeSlider.body.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = *(v1 + 32);
  v22 = v3;
  swift_retain_n();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5EA80;
  v7 = static Edge.Set.trailing.getter();
  *(inited + 32) = v7;
  v8 = static Edge.Set.top.getter();
  *(inited + 33) = v8;
  v9 = static Edge.Set.bottom.getter();
  *(inited + 34) = v9;
  v10 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v7)
  {
    v10 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v8)
  {
    v10 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v9)
  {
    v10 = Edge.Set.init(rawValue:)();
  }

  v11 = objc_opt_self();
  v12 = [v11 mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = [v11 mainScreen];
  [v15 nativeScale];
  v17 = v16;

  v18 = 0uLL;
  v19 = 0uLL;
  if (v14 != v17)
  {
    EdgeInsets.init(_all:)();
    *(&v18 + 1) = v20;
    *(&v19 + 1) = v21;
  }

  *a1 = partial apply for closure #1 in IntervalsRangeSlider.body.getter;
  *(a1 + 8) = v4;
  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  *(a1 + 32) = v24;
  *(a1 + 40) = v25;
  *(a1 + 48) = v26;
  *(a1 + 56) = v27;
  *(a1 + 64) = v28;
  *(a1 + 72) = v10;
  *(a1 + 80) = v18;
  *(a1 + 96) = v19;
  *(a1 + 112) = v14 == v17;
}

uint64_t closure #1 in IntervalsRangeSlider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  MEMORY[0x28223BE20](v36);
  v5 = &v31 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMR);
  MEMORY[0x28223BE20](v34);
  v31 = (&v31 - v6);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA15_PositionLayoutVGAA010_AnimationN0VySdGGtGGAA6VStackVyAIyAS_AKyAA6SpacerVAA06_FrameR0VGAUtGGGA4_yAIyAU_A9_AStGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA15_PositionLayoutVGAA010_AnimationN0VySdGGtGGAA6VStackVyAIyAS_AKyAA6SpacerVAA06_FrameR0VGAUtGGGA4_yAIyAU_A9_AStGG_GMR);
  MEMORY[0x28223BE20](v33);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA15_PositionLayoutVGAA010_AnimationN0VySdGGtGGAA6VStackVyAIyAS_AKyAA6SpacerVAA06_FrameR0VGAUtGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA15_PositionLayoutVGAA010_AnimationN0VySdGGtGGAA6VStackVyAIyAS_AKyAA6SpacerVAA06_FrameR0VGAUtGG_GMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMR);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMR);
  MEMORY[0x28223BE20](v15);
  v17 = (&v31 - v16);
  v18 = *a2;
  if (*(a2 + 8))
  {
    v32 = v12;
    v19 = static HorizontalAlignment.center.getter();
    if (v18 == 0.0)
    {
      v27 = v31;
      *v31 = v19;
      *(v27 + 8) = 0;
      *(v27 + 16) = 1;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAA6SpacerVAA06_FrameG0VGAA6CircleVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAA6SpacerVAA06_FrameG0VGAA6CircleVtGGMR);
      closure #2 in closure #1 in IntervalsRangeSlider.body.getter(a2, v27 + *(v28 + 44));
      outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v27, v11, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMR, MEMORY[0x277CE11A8]);
      v29 = MEMORY[0x277CE1198];
      lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMR, MEMORY[0x277CE1198]);
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v14, v8, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR, v29);
      _ConditionalContent<>.init(storage:)();
      outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v14, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMR);
      v21 = v27;
      v22 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd;
      v23 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMR;
    }

    else
    {
      *v5 = v19;
      *(v5 + 1) = 0;
      v5[16] = 1;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA06_FrameG0VGAMyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA06_FrameG0VGAMyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
      closure #3 in closure #1 in IntervalsRangeSlider.body.getter(a2, &v5[*(v20 + 44)]);
      outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v5, v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR, MEMORY[0x277CE1198]);
      _ConditionalContent<>.init(storage:)();
      v21 = v5;
      v22 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd;
      v23 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR;
    }
  }

  else
  {
    *v17 = static Alignment.center.getter();
    v17[1] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA09_PositionG0VGAA010_AnimationO0VySdGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA09_PositionG0VGAA010_AnimationO0VySdGGtGGMR);
    closure #1 in closure #1 in IntervalsRangeSlider.body.getter(a2, v17 + *(v25 + 44), v18);
    outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v17, v11, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMR, MEMORY[0x277CE11A8]);
    v26 = MEMORY[0x277CE1198];
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMR, MEMORY[0x277CE1198]);
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v14, v8, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAIyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR, v26);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v14, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMR);
    v21 = v17;
    v22 = &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd;
    v23 = &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMR;
  }

  return outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v21, v22, v23);
}

uint64_t closure #1 in closure #1 in IntervalsRangeSlider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = *(a1 + 40);
  v14 = *(type metadata accessor for RoundedRectangle() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(&v12[v14], v15, v16);
  *v12 = v13;
  *(v12 + 1) = v13;
  *&v12[*(v7 + 44)] = static Color.black.getter();
  v17 = *(a1 + 24) * 0.5;
  GeometryProxy.size.getter();
  v19 = (1.0 - a3) * v18;
  v20 = static Animation.default.getter();
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v12, v9, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v9, a2, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationI0VySdGGtMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationI0VySdGGtMR) + 48);
  *v21 = v17;
  *(v21 + 8) = v19;
  *(v21 + 16) = v20;
  *(v21 + 24) = a3;

  outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v12, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);

  return outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v9, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
}

uint64_t closure #2 in closure #1 in IntervalsRangeSlider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(a1 + 40);
  v11 = *(type metadata accessor for RoundedRectangle() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(&v9[v11], v12, v13);
  *v9 = v10;
  *(v9 + 1) = v10;
  *&v9[*(v4 + 44)] = static Color.black.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = v26;
  v22 = v24;
  v14 = v28;
  v15 = v29;
  v32 = 1;
  v31 = v25;
  v30 = v27;
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v9, v6, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  LOBYTE(v4) = v32;
  v16 = v31;
  LOBYTE(a1) = v30;
  v17 = v23;
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v6, v23, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v18 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtMR) + 48);
  *v18 = 0;
  *(v18 + 8) = v4;
  v19 = v21;
  *(v18 + 16) = v22;
  *(v18 + 24) = v16;
  *(v18 + 32) = v19;
  *(v18 + 40) = a1;
  *(v18 + 48) = v14;
  *(v18 + 56) = v15;
  outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v9, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  return outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v6, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
}

uint64_t closure #3 in closure #1 in IntervalsRangeSlider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = v23;
  v12 = v25;
  v21 = v28;
  v22 = v27;
  v31 = 1;
  v30 = v24;
  v29 = v26;
  v13 = *(a1 + 40);
  v14 = *(type metadata accessor for RoundedRectangle() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(&v10[v14], v15, v16);
  *v10 = v13;
  *(v10 + 1) = v13;
  *&v10[*(v5 + 44)] = static Color.black.getter();
  LOBYTE(v5) = v31;
  LOBYTE(v15) = v30;
  LOBYTE(v14) = v29;
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v10, v7, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  *a2 = 0;
  *(a2 + 8) = v5;
  *(a2 + 16) = v11;
  *(a2 + 24) = v15;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  v17 = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAEyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtMd, &_s7SwiftUI6CircleV_AA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGAEyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGtMR);
  outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v7, a2 + *(v18 + 64), &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v10, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  return outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(v7, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
}

void specialized IntervalsRangeSlider.init(state:color:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  specialized UIDevice.screenType.getter();

  v10 = objc_opt_self();
  v11 = [v10 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v10 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 == v16)
  {
    v17 = 55.0;
  }

  else
  {
    v18 = [v10 mainScreen];
    [v18 scale];
    v20 = v19;

    v21 = [v10 mainScreen];
    [v21 nativeScale];
    v23 = v22;

    v17 = v20 / v23 * 0.95 * 55.0;
  }

  *a4 = a1;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0x4018000000000000;
  *(a4 + 32) = v17;
  *(a4 + 40) = 0x4014000000000000;
}

uint64_t getEnumTagSinglePayload for IntervalsRangeSlider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntervalsRangeSlider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6ZStackVyAA9TupleViewVyAA08ModifiedD0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AIyAIyAA6CircleVAA15_PositionLayoutVGAA010_AnimationM0VySdGGtGGAA6VStackVyAGyAQ_AIyAA6SpacerVAA06_FrameQ0VGAStGGGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAGyAA6CircleVAA15_PositionLayoutVGAA010_AnimationL0VySdGGtGGMR, MEMORY[0x277CE11A8]);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AGyAA6SpacerVAA12_FrameLayoutVGAA6CircleVtGGMR, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for IntervalsRangeSlider.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalsRangeSlider.State(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for IntervalsRangeSlider.State(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for IntervalsRangeSlider.State(uint64_t result, int a2)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA14GeometryReaderVyAA012_ConditionalD0VyAGyAA6ZStackVyAA9TupleViewVyACyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAKyAS_ACyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAKyAU_A9_AStGGGGARGA8_GAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA14GeometryReaderVyAA012_ConditionalD0VyAGyAA6ZStackVyAA9TupleViewVyACyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAKyAS_ACyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAKyAU_A9_AStGGGGARGA8_GAA08_PaddingS0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA012_ConditionalD0VyAGyAA6ZStackVyAA9TupleViewVyACyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAKyAS_ACyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAKyAU_A9_AStGGGGARGA8_GMd, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA012_ConditionalD0VyAGyAA6ZStackVyAA9TupleViewVyACyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAKyAS_ACyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAKyAU_A9_AStGGGGARGA8_GMR);
    lazy protocol witness table accessor for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA012_ConditionalD0VyAGyAA6ZStackVyAA9TupleViewVyACyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAKyAS_ACyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAKyAU_A9_AStGGGGARGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA012_ConditionalD0VyAGyAA6ZStackVyAA9TupleViewVyACyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_ACyACyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAKyAS_ACyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAKyAU_A9_AStGGGGARGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA19_ConditionalContentVyAEyAA6ZStackVyAA9TupleViewVyAA08ModifiedF0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAIyAS_AKyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAIyAU_A9_AStGGGGMd, &_s7SwiftUI14GeometryReaderVyAA19_ConditionalContentVyAEyAA6ZStackVyAA9TupleViewVyAA08ModifiedF0VyAA16RoundedRectangleVAA24_ForegroundStyleModifierVyAA5ColorVGG_AKyAKyAA6CircleVAA15_PositionLayoutVGAA010_AnimationO0VySdGGtGGAA6VStackVyAIyAS_AKyAA6SpacerVAA06_FrameS0VGAUtGGGA4_yAIyAU_A9_AStGGGGMR, MEMORY[0x277CDF7D8]);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<_ConditionalContent<_ConditionalContent<ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>>, VStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>, Circle)>>>, VStack<TupleView<(Circle, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>)>>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<RoundedRectangle, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<Circle, _PositionLayout>, _AnimationModifier<Double>>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void AddWorkoutRowView.init(title:uiImage:)(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  FIUISizeForIconSize();
  *(a3 + 72) = v6;
  *(a3 + 80) = v7;
  v8 = type metadata accessor for AddWorkoutRowView(0);
  FIUISizeForIconSize();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v9 = [objc_opt_self() keyColors];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v9 nonGradientTextColor];

  if (!v11)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v12 = *(v8 + 36);
  *(a3 + v12) = Color.init(uiColor:)();
  v13 = *(v8 + 40);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  v14 = swift_storeEnumTagMultiPayload();
  *a3 = a1(v14);
  *(a3 + 8) = v15;
  *(a3 + 16) = v17 & 1;
  if (a2)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

  *(a3 + 24) = v16;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = v18;
}

void AddWorkoutRowView.init(title:symbolName:)(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 56) = swift_getKeyPath();
  *(a4 + 64) = 0;
  FIUISizeForIconSize();
  *(a4 + 72) = v8;
  *(a4 + 80) = v9;
  v10 = type metadata accessor for AddWorkoutRowView(0);
  FIUISizeForIconSize();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v11 = [objc_opt_self() keyColors];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 nonGradientTextColor];

    if (v13)
    {
      v14 = *(v10 + 36);
      *(a4 + v14) = Color.init(uiColor:)();
      v15 = *(v10 + 40);
      *(a4 + v15) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
      v16 = swift_storeEnumTagMultiPayload();
      *a4 = a1(v16);
      *(a4 + 8) = v17;
      *(a4 + 16) = v18 & 1;
      *(a4 + 24) = v19;
      *(a4 + 32) = a2;
      *(a4 + 40) = a3;
      *(a4 + 48) = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t AddWorkoutRowView.isEnabled.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 56);
  if (*(v0 + 64) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v7 = outlined consume of Environment<Bool>.Content(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for AddWorkoutRowView(uint64_t a1)
{
  result = type metadata singleton initialization cache for AddWorkoutRowView;
  if (!type metadata singleton initialization cache for AddWorkoutRowView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AddWorkoutRowView.body.getter()
{
  v1 = type metadata accessor for AddWorkoutRowView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = type metadata accessor for AdaptiveStackType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = AddWorkoutRowView.useAccessibilityLayout.getter();
  v9 = MEMORY[0x277D0A6F0];
  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277D0A6E8];
  }

  (*(v5 + 104))(v7, *v9, v4);
  static HorizontalAlignment.leading.getter();
  AddWorkoutRowView.useAccessibilityLayout.getter();
  outlined init with copy of AddWorkoutRowView(v0, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  outlined init with take of AddWorkoutRowView(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  static VerticalAlignment.center.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAA5ImageVAKGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_sT0VGSg_AA4TextVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAA5ImageVAKGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_sT0VGSg_AA4TextVtGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?, Text)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?, Text)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAA5ImageVAKGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_sT0VGSg_AA4TextVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5GroupVyAA012_ConditionalF0VyAA5ImageVAKGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_sT0VGSg_AA4TextVtGMR, MEMORY[0x277CE14C0]);
  return AdaptiveStack.init(type:verticalAlignment:horizontalAlignment:spacing:content:)();
}

uint64_t AddWorkoutRowView.useAccessibilityLayout.getter()
{
  v16 = type metadata accessor for EnvironmentValues();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AddWorkoutRowView(0);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(v0 + *(v11 + 40), v6, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t closure #1 in AddWorkoutRowView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 48);
  if (v9 == 255)
  {
    _s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgWOi0_(&v91);
  }

  else
  {
    v10 = a1[4];
    v11 = a1[5];
    v46 = *(a1 + 48);
    v44 = v11;
    if (v9)
    {
      v12 = v6;
      v13 = [v10 imageWithRenderingMode_];
      Image.init(uiImage:)();
      (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v12);
      v14 = Image.resizable(capInsets:resizingMode:)();

      (*(v5 + 8))(v8, v12);
      *&v79 = v14;
      BYTE8(v79) = 1;
      v43 = v14;
    }

    else
    {
      outlined copy of AddWorkoutRowView.WorkoutIconType?(v10, v11, v9);
      outlined copy of AddWorkoutRowView.WorkoutIconType(v10, v11, 0);
      *&v79 = Image.init(_internalSystemName:)();
      BYTE8(v79) = 0;
      v43 = v79;
    }

    _ConditionalContent<>.init(storage:)();
    v42 = v91;
    v15 = BYTE8(v91);
    if (AddWorkoutRowView.isEnabled.getter())
    {
      v16 = static Color.accentColor.getter();
    }

    else
    {
      type metadata accessor for AddWorkoutRowView(0);
      v16 = Color.opacity(_:)();
    }

    *(&v40 + 1) = v16;
    v45 = v10;
    *&v40 = swift_getKeyPath();
    v17 = AddWorkoutRowView.useAccessibilityLayout.getter();
    v41 = v15;
    if (v17)
    {
      type metadata accessor for AddWorkoutRowView(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
      ScaledMetric.wrappedValue.getter();
    }

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v18 = v41;
    LOBYTE(v55) = v41;
    AddWorkoutRowView.useAccessibilityLayout.getter();
    AddWorkoutRowView.useAccessibilityLayout.getter();
    v19 = v45;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    outlined consume of AddWorkoutRowView.WorkoutIconType?(v19, v44, v46);
    *&v79 = v42;
    BYTE8(v79) = v18;
    BYTE9(v79) = 1;
    v80 = v40;
    v85 = v51;
    v86 = v52;
    v81 = v47;
    v82 = v48;
    v83 = v49;
    v84 = v50;
    v87 = v53;
    v88 = v67;
    v89 = v68;
    v90 = v69;
    _s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgWOi_();
    v99 = v87;
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v95 = v83;
    v96 = v84;
    v97 = v85;
    v98 = v86;
    v91 = v79;
    v92 = v80;
    v93 = v81;
    v94 = v82;
  }

  if (AddWorkoutRowView.isEnabled.getter())
  {
    static Color.primary.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v100;
  v64 = v100;
  v65 = v101;
  v28 = v101;
  v66 = v102;
  v29 = v95;
  v30 = v96;
  v60 = v96;
  v61 = v97;
  v31 = v97;
  v32 = v98;
  v62 = v98;
  v63 = v99;
  v55 = v91;
  v33 = v91;
  v34 = v92;
  v35 = v94;
  v56 = v92;
  v57 = v93;
  v36 = v93;
  v58 = v94;
  v59 = v95;
  v75 = v99;
  v76 = v100;
  v77 = v101;
  v78 = v102;
  v71 = v95;
  v72 = v96;
  v73 = v97;
  v74 = v98;
  v67 = v91;
  v68 = v92;
  v69 = v93;
  v70 = v94;
  *(a2 + 128) = v99;
  *(a2 + 144) = v27;
  v37 = v102;
  *(a2 + 160) = v28;
  *(a2 + 176) = v37;
  *(a2 + 64) = v29;
  *(a2 + 80) = v30;
  *(a2 + 96) = v31;
  *(a2 + 112) = v32;
  *a2 = v33;
  *(a2 + 16) = v34;
  v24 &= 1u;
  v54 = v24;
  *(a2 + 32) = v36;
  *(a2 + 48) = v35;
  *(a2 + 192) = v20;
  *(a2 + 200) = v22;
  *(a2 + 208) = v24;
  *(a2 + 216) = v26;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(&v67, &v79, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgMR);
  outlined copy of Text.Storage(v20, v22, v24);

  outlined consume of Text.Storage(v20, v22, v24);

  v87 = v63;
  v88 = v64;
  v89 = v65;
  v90 = v66;
  v83 = v59;
  v84 = v60;
  v85 = v61;
  v86 = v62;
  v79 = v55;
  v80 = v56;
  v81 = v57;
  v82 = v58;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(&v79);
}

uint64_t key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t outlined init with copy of AddWorkoutRowView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddWorkoutRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double outlined consume of AddWorkoutRowView.WorkoutIconType(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t outlined init with take of AddWorkoutRowView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddWorkoutRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in AddWorkoutRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddWorkoutRowView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #1 in AddWorkoutRowView.body.getter(v4, a1);
}

void AddWorkoutRowView.init(activityType:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddWorkoutRowView(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 localizedName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v46 = v9;
  v47 = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v45 = v17;
  v18 = [a1 symbolName];
  if (v18)
  {
    v19 = v18;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    static Platform.current.getter();
    v22 = Platform.rawValue.getter();
    if (v22 != Platform.rawValue.getter())
    {
      *(a2 + 56) = swift_getKeyPath();
      *(a2 + 64) = 0;
      FIUISizeForIconSize();
      *(a2 + 72) = v34;
      *(a2 + 80) = v35;
      FIUISizeForIconSize();
      v46 = v36;
      lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      ScaledMetric.init(wrappedValue:)();
      v37 = [objc_opt_self() keyColors];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 nonGradientTextColor];

        if (v39)
        {
          v40 = *(v4 + 36);
          v41 = Color.init(uiColor:)();

          *(a2 + v40) = v41;
          v42 = *(v4 + 40);
          *(a2 + v42) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
          swift_storeEnumTagMultiPayload();
          *a2 = v12;
          *(a2 + 8) = v14;
          *(a2 + 16) = v16 & 1;
          v43 = v44;
          *(a2 + 24) = v45;
          *(a2 + 32) = v43;
          *(a2 + 40) = v21;
          *(a2 + 48) = 0;
          return;
        }

LABEL_17:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  v23 = FIUIStaticScalableWorkoutIconImage();
  *(v7 + 7) = swift_getKeyPath();
  v7[64] = 0;
  FIUISizeForIconSize();
  *(v7 + 9) = v24;
  *(v7 + 10) = v25;
  FIUISizeForIconSize();
  v46 = v26;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v27 = [objc_opt_self() keyColors];
  if (!v27)
  {
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 nonGradientTextColor];

  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = *(v4 + 36);
  v31 = Color.init(uiColor:)();

  *&v7[v30] = v31;
  v32 = *(v4 + 40);
  *&v7[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  *v7 = v12;
  *(v7 + 1) = v14;
  v7[16] = v16 & 1;
  if (v23)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

  *(v7 + 3) = v45;
  *(v7 + 4) = v23;
  *(v7 + 5) = 0;
  v7[48] = v33;
  outlined init with take of AddWorkoutRowView(v7, a2);
}

void type metadata completion function for AddWorkoutRowView(uint64_t a1)
{
  type metadata accessor for AddWorkoutRowView.WorkoutIconType?(319, &lazy cache variable for type metadata for AddWorkoutRowView.WorkoutIconType?, &type metadata for AddWorkoutRowView.WorkoutIconType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AddWorkoutRowView.WorkoutIconType?(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ScaledMetric<CGFloat>(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Environment<DynamicTypeSize>(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for AddWorkoutRowView.WorkoutIconType?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Environment<DynamicTypeSize>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<DynamicTypeSize>)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<DynamicTypeSize>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?, Text)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for AddWorkoutRowView.WorkoutIconType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AddWorkoutRowView.WorkoutIconType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAIGGAA17_FlipForRTLEffectVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA01_qR0VGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double outlined copy of AddWorkoutRowView.WorkoutIconType(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

double outlined consume of AddWorkoutRowView.WorkoutIconType?(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of AddWorkoutRowView.WorkoutIconType(a1, a2, a3 & 1);
  }

  return result;
}

double outlined copy of AddWorkoutRowView.WorkoutIconType?(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of AddWorkoutRowView.WorkoutIconType(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Image, Image>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FrameLayout>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
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

uint64_t AddWorkoutList.init(goalStore:dependenciesWrapper:addingWorkoutDisabled:popularSectionDisabled:onSelectionComplete:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = a3;
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for AddWorkoutList(0);
  v14 = (a7 + v13[5]);
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  *v14 = EnvironmentObject.init()();
  v14[1] = v15;
  v16 = v13[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  State.init(wrappedValue:)();
  *(a7 + v16) = v24;
  *(a7 + v13[15]) = 0x4024000000000000;
  *(a7 + v13[9]) = a1;
  v17 = objc_allocWithZone(type metadata accessor for GuidedWorkoutLocalizationProvider());
  swift_unknownObjectRetain();
  *(a7 + v13[10]) = [v17 init];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWheelchairUseProviding_pMd, &_sSo24WOWheelchairUseProviding_pMR);
  Dependencies.resolve<A>(failureHandler:)();

  *(a7 + v13[11]) = v24;
  type metadata accessor for AddWorkoutDataSource();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v18 = AddWorkoutDataSource.init(wheelchairStatusProvider:bypassReadinessChecker:)();
  v19 = (a7 + v13[6]);
  *v19 = v18;
  v19[1] = 0;
  type metadata accessor for SeymourDataSource(0);

  Dependencies.resolve<A>(failureHandler:)();

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v21 = a7 + v13[8];
  *v21 = _s9WorkoutUI03AddA4ListV9goalStore19dependenciesWrapper06addingA8Disabled014popularSectionJ019onSelectionCompleteACSo32WOCompoundActivityTypesProviding_p_AA012DependenciesH0CS2byycSgtcfcAA17SeymourDataSourceCycfu_TA_0;
  *(v21 + 1) = v24;
  v21[16] = 0;
  v22 = (a7 + v13[12]);
  *v22 = a5;
  v22[1] = a6;
  *(a7 + v13[13]) = v9;
  *(a7 + v13[14]) = a4;
  return result;
}

uint64_t AddWorkoutList.dismiss.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t AddWorkoutList.disclaimerTitle.getter()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v14._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CBA4730;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB5DA70;
  type metadata accessor for AddWorkoutList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMR);
  State.wrappedValue.getter();
  v5 = v13;
  if (v13)
  {
    v6 = [v13 localizedName];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  v11 = String.init(format:_:)();

  return v11;
}

void AddWorkoutList.disclaimerMessage.getter()
{
  v1 = [*(v0 + *(type metadata accessor for AddWorkoutList(0) + 44)) isWheelchairUser];
  type metadata accessor for WorkoutCoreInjector();
  v2 = static WorkoutCoreInjector.shared.getter();
  v3 = dispatch thunk of WorkoutCoreInjector.inject()();

  if (v1)
  {
    v4 = MEMORY[0x20F30BAD0](0xD000000000000020, 0x800000020CBA4700);
    v5 = [v3 localizationKeyForEnergyBaseKey_];

    if (v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x20F30BAD0](0xD000000000000019, 0x800000020CBA46E0);
  v5 = [v3 localizationKeyForEnergyBaseKey_];

  if (!v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v14._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v14);
}

uint64_t AddWorkoutList.activityMoveMode.getter()
{
  v9[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for WorkoutCoreInjector();
  v0 = static WorkoutCoreInjector.shared.getter();
  v1 = dispatch thunk of WorkoutCoreInjector.inject()();

  v9[0] = 0;
  v2 = [v1 activityMoveModeWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = v9[0];
    v5 = [v3 activityMoveMode];
  }

  else
  {
    v6 = v9[0];
    v7 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return 1;
  }

  return v5;
}

uint64_t AddWorkoutList.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>();
  return NavigationView.init(content:)();
}

uint64_t closure #1 in AddWorkoutList.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v71 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListSectionSpacing();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addn3RowC0VGAFyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0hp6InsetsS3KeyVGGGSg_ANyAFyAFyAA4TextVAA012_EnvironmentwtU0VyAA0X9AlignmentOGGAA16_FlexFrameLayoutVGA2PGSgAFyAFyANyA9_AA7ForEachVySay0N4Core08StandardnonP0CGSSAVGAPGAA01_yw9TransformU0VySbGGA1_yAA0k10IndexLabelW0VGGSgA22_ySaySSGSSAFyAFyANyA9_A27_SgAPGA31_GA35_GGtGGA1_yAA0hk7SpacingsW0VGGA11_yAA0hK7SpacingVSgGG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addn3RowC0VGAFyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0hp6InsetsS3KeyVGGGSg_ANyAFyAFyAA4TextVAA012_EnvironmentwtU0VyAA0X9AlignmentOGGAA16_FlexFrameLayoutVGA2PGSgAFyAFyANyA9_AA7ForEachVySay0N4Core08StandardnonP0CGSSAVGAPGAA01_yw9TransformU0VySbGGA1_yAA0k10IndexLabelW0VGGSgA22_ySaySSGSSAFyAFyANyA9_A27_SgAPGA31_GA35_GGtGGA1_yAA0hk7SpacingsW0VGGA11_yAA0hK7SpacingVSgGG_SSQo_MR);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v12 = &v64 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Adds3RowC0VGAKyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0mu6InsetsX3KeyVGGGSg_ASyAKyAKyAA4TextVAA015_EnvironmentKeyyZ0VyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2UGSgAKyAKyASyA14_AA7ForEachVySay0S4Core08StandardstsU0CGSSA_GAUGAA024_EnvironmentKeyTransformZ0VySbGGA6_yAA0P13IndexLabelKeyVGGSgA27_ySaySSGSSAKyAKyASyA14_A32_SgAUGA36_GA40_GGtGGA6_yAA0mp7SpacingX3KeyVGGA16_yAA0mP7SpacingVSgGG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Adds3RowC0VGAKyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0mu6InsetsX3KeyVGGGSg_ASyAKyAKyAA4TextVAA015_EnvironmentKeyyZ0VyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2UGSgAKyAKyASyA14_AA7ForEachVySay0S4Core08StandardstsU0CGSSA_GAUGAA024_EnvironmentKeyTransformZ0VySbGGA6_yAA0P13IndexLabelKeyVGGSgA27_ySaySSGSSAKyAKyASyA14_A32_SgAUGA36_GA40_GGtGGA6_yAA0mp7SpacingX3KeyVGGA16_yAA0mP7SpacingVSgGG_SSQo__Qo_MR);
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v67 = &v64 - v13;
  v76._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationI4ItemV0jkL0OFQOyAcAE0hJ0yQrqd__SyRd__lFQOyAA08ModifiedG0VyANyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addv3RowC0VGANyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0pX14InsetsTraitKeyVGGGSg_AVyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2XGSgANyANyAVyA17_AA7ForEachVySay0V4Core08StandardvwvX0CGSSA2_GAXGAA32_EnvironmentKeyTransformModifierVySbGGA9_yAA0S13IndexLabelKeyVGGSgA30_ySaySSGSSANyANyAVyA17_A35_SgAXGA39_GA43_GGtGGA9_yAA0pS15SpacingTraitKeyVGGA19_yAA0pS7SpacingVSgGG_SSQo__Qo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0fN0VyytAZyAA07DefaultU5LabelVGGQo_Qo_Md, &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationI4ItemV0jkL0OFQOyAcAE0hJ0yQrqd__SyRd__lFQOyAA08ModifiedG0VyANyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addv3RowC0VGANyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0pX14InsetsTraitKeyVGGGSg_AVyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2XGSgANyANyAVyA17_AA7ForEachVySay0V4Core08StandardvwvX0CGSSA2_GAXGAA32_EnvironmentKeyTransformModifierVySbGGA9_yAA0S13IndexLabelKeyVGGSgA30_ySaySSGSSANyANyAVyA17_A35_SgAXGA39_GA43_GGtGGA9_yAA0pS15SpacingTraitKeyVGGA19_yAA0pS7SpacingVSgGG_SSQo__Qo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0fN0VyytAZyAA07DefaultU5LabelVGGQo_Qo_MR);
  v74 = *(v76._countAndFlagsBits - 8);
  MEMORY[0x28223BE20](v76._countAndFlagsBits);
  v73 = &v64 - v14;
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA6ButtonVy07WorkoutB003Addh3RowD0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listj6InsetsO3KeyVGGGSg_AEyAOyAOyAA4TextVAA012_EnvironmenttpQ0VyAA0U9AlignmentOGGAA16_FlexFrameLayoutVGA2GGSgAOyAOyAEyA2_AA7ForEachVySay0H4Core08StandardhihJ0CGSSAMGAGGAA01_vt9TransformQ0VySbGGAVyAA0e10IndexLabelT0VGGSgA15_ySaySSGSSAOyAOyAEyA2_A20_SgAGGA24_GA28_GGtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA6ButtonVy07WorkoutB003Addh3RowD0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listj6InsetsO3KeyVGGGSg_AEyAOyAOyAA4TextVAA012_EnvironmenttpQ0VyAA0U9AlignmentOGGAA16_FlexFrameLayoutVGA2GGSgAOyAOyAEyA2_AA7ForEachVySay0H4Core08StandardhihJ0CGSSAMGAGGAA01_vt9TransformQ0VySbGGAVyAA0e10IndexLabelT0VGGSgA15_ySaySSGSSAOyAOyAEyA2_A20_SgAGGA24_GA28_GGtGMR);
  lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA6ButtonVy07WorkoutB003Addh3RowD0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listj6InsetsO3KeyVGGGSg_AEyAOyAOyAA4TextVAA012_EnvironmenttpQ0VyAA0U9AlignmentOGGAA16_FlexFrameLayoutVGA2GGSgAOyAOyAEyA2_AA7ForEachVySay0H4Core08StandardhihJ0CGSSAMGAGGAA01_vt9TransformQ0VySbGGAVyAA0e10IndexLabelT0VGGSgA15_ySaySSGSSAOyAOyAEyA2_A20_SgAGGA24_GA28_GGtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA6ButtonVy07WorkoutB003Addh3RowD0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listj6InsetsO3KeyVGGGSg_AEyAOyAOyAA4TextVAA012_EnvironmenttpQ0VyAA0U9AlignmentOGGAA16_FlexFrameLayoutVGA2GGSgAOyAOyAEyA2_AA7ForEachVySay0H4Core08StandardhihJ0CGSSAMGAGGAA01_vt9TransformQ0VySbGGAVyAA0e10IndexLabelT0VGGSgA15_ySaySSGSSAOyAOyAEyA2_A20_SgAGGA24_GA28_GGtGMR, MEMORY[0x277CE14C0]);
  List<>.init(content:)();
  v72 = type metadata accessor for AddWorkoutList(0);
  v77 = a1;
  static ListSectionSpacing.custom(_:)();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGMd, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGMR) + 36);
  (*(v5 + 16))(&v10[v15], v7, v4);
  v16 = *(v5 + 56);
  v16(&v10[v15], 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v64 = v8;
  v18 = &v10[*(v8 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR) + 28);
  (*(v5 + 32))(v18 + v19, v7, v4);
  v16(v18 + v19, 0, 1, v4);
  *v18 = KeyPath;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v84._object = 0xE000000000000000;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._object = 0x800000020CB95260;
  v22._countAndFlagsBits = 0xD000000000000012;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v84._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v84);

  v81 = v24;
  v25 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  v26 = lazy protocol witness table accessor for type String and conformance String();
  v27 = MEMORY[0x277D837D0];
  v28 = v64;
  View.navigationTitle<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMR);
  v29 = v70;
  v30 = v68;
  v31 = v71;
  (*(v70 + 104))(v68, *MEMORY[0x277CDDDC0], v71);
  v81._countAndFlagsBits = v28;
  v81._object = v27;
  v82 = v25;
  v83 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v67;
  v34 = v66;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v29 + 8))(v30, v31);
  v35 = (*(v65 + 8))(v12, v34);
  MEMORY[0x28223BE20](v35);
  v36 = v77;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_MR);
  v81._countAndFlagsBits = v34;
  v81._object = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v40 = lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, MEMORY[0x277CDD7A8]);
  v81._countAndFlagsBits = v39;
  v81._object = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v73;
  v43 = v75;
  View.toolbar<A>(content:)();
  (*(v69 + 8))(v33, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMR);
  type metadata accessor for ToolbarPlacement();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20CB5DA70;
  static ToolbarPlacement.navigationBar.getter();
  v81._countAndFlagsBits = v43;
  v81._object = v37;
  v82 = v38;
  v83 = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v78;
  countAndFlagsBits = v76._countAndFlagsBits;
  MEMORY[0x20F30A770](2, v44, v76._countAndFlagsBits, v45);

  (*(v74 + 8))(v42, countAndFlagsBits);
  v48 = v72;
  v80 = *&v36[*(v72 + 28)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMR);
  State.projectedValue.getter();
  v76 = v81;
  v49 = v82;
  v50 = AddWorkoutList.disclaimerTitle.getter();
  v52 = v51;
  AddWorkoutList.disclaimerMessage.getter();
  v54 = v53;
  v56 = v55;
  v57 = *&v36[*(v48 + 36)];
  v58 = &v36[*(v48 + 48)];
  v59 = *v58;
  v60 = v58[1];
  v61 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMR) + 36));
  *v61 = v76;
  v61[1]._countAndFlagsBits = v49;
  v61[1]._object = v50;
  v61[2]._countAndFlagsBits = v52;
  v61[2]._object = v54;
  v61[3]._countAndFlagsBits = v56;
  v61[3]._object = v57;
  v61[4]._countAndFlagsBits = v59;
  v61[4]._object = v60;
  v62 = *(type metadata accessor for WorkoutDisclaimerSheet(0) + 36);
  *(&v61->_countAndFlagsBits + v62) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  return outlined copy of (@escaping @callee_guaranteed () -> ())?(v59, v60);
}

uint64_t closure #1 in closure #1 in AddWorkoutList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR, MEMORY[0x277CDF028]);
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, MEMORY[0x277CDD7A8]);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in AddWorkoutList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AddWorkoutList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.cancel.getter();
  outlined init with copy of AddWorkoutList(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  outlined init with take of AddWorkoutList(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x20F30AF90](v7, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AddWorkoutList.body.getter, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AddWorkoutList.body.getter(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(a1, v7, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

void closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = type metadata accessor for AddWorkoutList(0);
  v82 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v83 = v4;
  v84 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySSGSSAA15ModifiedContentVyAFyAA7SectionVyAA4TextVACySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0g10IndexLabelR0VGGGMd, &_s7SwiftUI7ForEachVySaySSGSSAA15ModifiedContentVyAFyAA7SectionVyAA4TextVACySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0g10IndexLabelR0VGGGMR);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd, &_s11WorkoutCore28FitnessUILocalizationFeatureOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v80 = v78 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMR);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v81 = v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v96 = v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v94 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v98 = v78 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA013ListRowInsetsG3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA013ListRowInsetsG3KeyVGGMR);
  MEMORY[0x28223BE20](v79);
  v20 = v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v93 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v97 = v78 - v24;
  v92 = a1;
  type metadata accessor for SeymourDataSource(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type SeymourDataSource and conformance SeymourDataSource, type metadata accessor for SeymourDataSource, &protocol conformance descriptor for SeymourDataSource);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v99);

  if (v99 == 1 && (StateObject.wrappedValue.getter(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v99), , , , v99 == 1))
  {
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v99);

    v26 = 1;
    v27 = v96;
    v28 = v92;
    v29 = v91;
    if (v99 == 1)
    {
      v78[1] = v78;
      MEMORY[0x28223BE20](v25);
      *v20 = static HorizontalAlignment.center.getter();
      *(v20 + 1) = 0;
      v20[16] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7DividerVGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7DividerVGMR);
      Divider.init()();
      v30 = &v20[*(v79 + 36)];
      *v30 = *(v28 + v3[15]);
      *(v30 + 1) = 0;
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      v30[32] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMR);
      lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<AddWorkoutRowView> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMR, MEMORY[0x277CDF028]);
      lazy protocol witness table accessor for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
      Section<>.init(footer:content:)();
      v26 = 0;
    }
  }

  else
  {
    v26 = 1;
    v27 = v96;
    v28 = v92;
    v29 = v91;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGMR);
  v32 = 1;
  (*(*(v31 - 8) + 56))(v97, v26, 1, v31);
  v33 = *(v28 + v3[13]);
  if (v33 == 1)
  {
    closure #4 in closure #1 in AddWorkoutList.addWorkoutListView()(&v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    Section<>.init(header:content:)();
    v32 = 0;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGMR);
  v35 = 1;
  v36 = (*(*(v34 - 8) + 56))(v98, v32, 1, v34);
  if ((*(v28 + v3[14]) & 1) == 0)
  {
    MEMORY[0x28223BE20](v36);
    v37 = type metadata accessor for FitnessUILocalizationFeature();
    v38 = v80;
    (*(*(v37 - 8) + 56))(v80, 1, 1, v37);
    v39 = String.fitnessUILocalizedString(feature:)();
    v41 = v40;
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v38, &_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd, &_s11WorkoutCore28FitnessUILocalizationFeatureOSgMR);
    v99 = v39;
    v100 = v41;
    lazy protocol witness table accessor for type String and conformance String();
    v99 = Text.init<A>(_:)();
    v100 = v42;
    LOBYTE(v101) = v43 & 1;
    v102 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGMR);
    lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>();
    v45 = v81;
    Section<>.init(header:content:)();
    KeyPath = swift_getKeyPath();
    v47 = swift_allocObject();
    *(v47 + 16) = v33;
    v48 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGMR) + 36));
    *v48 = KeyPath;
    v48[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_22;
    v48[2] = v47;
    LocalizedStringKey.init(stringLiteral:)();
    v49 = v45 + *(v29 + 36);
    *v49 = Text.init(_:tableName:bundle:comment:)();
    *(v49 + 8) = v50;
    *(v49 + 16) = v51 & 1;
    *(v49 + 24) = v52;
    v53 = *MEMORY[0x277CDDDD0];
    v54 = type metadata accessor for SectionIndexLabel();
    v55 = *(v54 - 8);
    (*(v55 + 104))(v49, v53, v54);
    (*(v55 + 56))(v49, 0, 1, v54);
    outlined init with take of ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>(v45, v27);
    v35 = 0;
  }

  (*(v90 + 56))(v27, v35, 1, v29);
  v56 = v28 + v3[6];
  v58 = *v56;
  v57 = *(v56 + 8);
  v99 = v58;
  v100 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore03AddD10DataSourceCGMd, &_s7SwiftUI5StateVy11WorkoutCore03AddD10DataSourceCGMR);
  State.wrappedValue.getter();
  v59 = dispatch thunk of AddWorkoutDataSource.alphabeticGroups.getter();

  v60 = *(v59 + 16);
  if (!v60)
  {
    v61 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v61 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v59 + 16), 0);
  v62 = specialized Sequence._copySequenceContents(initializing:)(&v99, v61 + 4, v60, v59);
  v63 = v99;

  outlined consume of [String : [StandardWorkoutAddWorkoutRow]].Iterator._Variant(v63);
  if (v62 == v60)
  {
    v28 = v92;
LABEL_14:
    v99 = v61;
    specialized MutableCollection<>.sort(by:)(&v99);

    swift_getKeyPath();
    v64 = v84;
    outlined init with copy of AddWorkoutList(v28, v84);
    v65 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v66 = swift_allocObject();
    outlined init with take of AddWorkoutList(v64, v66 + v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMR);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83980]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>();
    v67 = v95;
    ForEach<>.init(_:id:content:)();
    v68 = v93;
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v97, v93, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMR);
    v69 = v94;
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v98, v94, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMR);
    v70 = v85;
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v27, v85, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMR);
    v71 = v87;
    v72 = *(v87 + 16);
    v73 = v86;
    v74 = v88;
    v72(v86, v67, v88);
    v75 = v89;
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v68, v89, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMR);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSg_ACyAMyAMyAA4TextVAA012_EnvironmentsoP0VyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA2EGSgAMyAMyACyA0_AA7ForEachVySay0G4Core08StandardghgI0CGSSAKGAEGAA01_us9TransformP0VySbGGATyAA0c10IndexLabelS0VGGSgA13_ySaySSGSSAMyAMyACyA0_A18_SgAEGA22_GA26_GGtMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSg_ACyAMyAMyAA4TextVAA012_EnvironmentsoP0VyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA2EGSgAMyAMyACyA0_AA7ForEachVySay0G4Core08StandardghgI0CGSSAKGAEGAA01_us9TransformP0VySbGGATyAA0c10IndexLabelS0VGGSgA13_ySaySSGSSAMyAMyACyA0_A18_SgAEGA22_GA26_GGtMR);
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v69, v75 + v76[12], &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMR);
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v70, v75 + v76[16], &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMR);
    v72((v75 + v76[20]), v73, v74);
    v77 = *(v71 + 8);
    v77(v95, v74);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v96, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMR);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v98, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMR);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v97, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMR);
    v77(v73, v74);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v70, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMR);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v94, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMR);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v93, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMR);
    return;
  }

  __break(1u);

  __break(1u);
}

double closure #1 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1)
{
  v2 = type metadata accessor for AddWorkoutList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of AddWorkoutList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of AddWorkoutList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  type metadata accessor for AddWorkoutRowView(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type AddWorkoutRowView and conformance AddWorkoutRowView, type metadata accessor for AddWorkoutRowView, &protocol conformance descriptor for AddWorkoutRowView);
  Button.init(action:label:)();
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1)
{
  v1 = type metadata accessor for DismissAction();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AddWorkoutList(0);
  type metadata accessor for SeymourDataSource(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type SeymourDataSource and conformance SeymourDataSource, type metadata accessor for SeymourDataSource, &protocol conformance descriptor for SeymourDataSource);
  v5 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider);
  v6 = v5[3];
  v7 = v5[5];
  __swift_project_boxed_opaque_existential_2(v5, v6);
  (*(v7 + 24))(v6, v7);

  AddWorkoutList.dismiss.getter(v4);
  DismissAction.callAsFunction()();
  return (*(v2 + 8))(v4, v1);
}

void closure #2 in closure #1 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1@<X8>)
{
  *(a1 + 56) = swift_getKeyPath();
  *(a1 + 64) = 0;
  FIUISizeForIconSize();
  *(a1 + 72) = v2;
  *(a1 + 80) = v3;
  v4 = type metadata accessor for AddWorkoutRowView(0);
  FIUISizeForIconSize();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v5 = [objc_opt_self() keyColors];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 nonGradientTextColor];

  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = *(v4 + 36);
  *(a1 + v8) = Color.init(uiColor:)();
  v9 = *(v4 + 40);
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v17._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000020;
  v11._object = 0x800000020CBA4770;
  v12.value._countAndFlagsBits = 0xD000000000000013;
  v12.value._object = 0x800000020CB99A10;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17);

  lazy protocol witness table accessor for type String and conformance String();
  *a1 = Text.init<A>(_:)();
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0xD000000000000010;
  *(a1 + 40) = 0x800000020CB9A1A0;
  *(a1 + 48) = 0;
}

double closure #4 in closure #1 in AddWorkoutList.addWorkoutListView()@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000030;
  v3._object = 0x800000020CBA47A0;
  v4.value._object = 0x800000020CB936F0;
  v4.value._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v28);

  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.body.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v21[23] = v22;
  *&v21[7] = v6;
  *&v21[55] = v24;
  *&v21[71] = v25;
  *&v21[87] = v26;
  *&v21[103] = v27;
  *&v21[39] = v23;
  *(a1 + 105) = *&v21[64];
  *(a1 + 121) = *&v21[80];
  *(a1 + 137) = *&v21[96];
  *(a1 + 41) = *v21;
  *(a1 + 57) = *&v21[16];
  result = *&v21[32];
  *(a1 + 73) = *&v21[32];
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 152) = *(&v27 + 1);
  *(a1 + 89) = *&v21[48];
  return result;
}

uint64_t closure #5 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1)
{
  v2 = type metadata accessor for AddWorkoutList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v10[3] = *(a1 + *(v5 + 32) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore03AddD10DataSourceCGMd, &_s7SwiftUI5StateVy11WorkoutCore03AddD10DataSourceCGMR);
  State.wrappedValue.getter();
  v6 = dispatch thunk of AddWorkoutDataSource.popular.getter();

  v10[2] = v6;
  outlined init with copy of AddWorkoutList(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  outlined init with take of AddWorkoutList(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore08Standarda3AddA3RowCGMd, &_sSay11WorkoutCore08Standarda3AddA3RowCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMR);
  lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type [StandardWorkoutAddWorkoutRow] and conformance [A], &_sSay11WorkoutCore08Standarda3AddA3RowCGMd, &_sSay11WorkoutCore08Standarda3AddA3RowCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<AddWorkoutRowView> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMR, MEMORY[0x277CDF028]);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8], MEMORY[0x277D7D9B8]);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  String.init<A>(_:)();
  lazy protocol witness table accessor for type String and conformance String();
  Text.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGSgMd, &_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGSgMR);
  lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?();
  Section<>.init(header:content:)();
  v5 = *(a2 + *(type metadata accessor for AddWorkoutList(0) + 52));
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGMR) + 36));
  *v8 = KeyPath;
  v8[1] = closure #1 in View.disabled(_:)partial apply;
  v8[2] = v7;
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMR) + 36);

  *v9 = Text.init<A>(_:)();
  *(v9 + 8) = v10;
  *(v9 + 16) = v11 & 1;
  *(v9 + 24) = v12;
  v13 = *MEMORY[0x277CDDDD0];
  v14 = type metadata accessor for SectionIndexLabel();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  return (*(v15 + 56))(v9, 0, 1, v14);
}

void closure #1 in closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for AddWorkoutList(0);
  v8 = v7 - 8;
  v30 = *(v7 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGMR);
  v10 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = a1;
  v32 = &v29 - v11;
  v12 = (a1 + *(v8 + 32));
  v13 = *v12;
  v14 = v12[1];
  v35 = *v12;
  v36 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore03AddD10DataSourceCGMd, &_s7SwiftUI5StateVy11WorkoutCore03AddD10DataSourceCGMR);
  State.wrappedValue.getter();
  v15 = dispatch thunk of AddWorkoutDataSource.alphabeticGroups.getter();

  if (!*(v15 + 16))
  {

    goto LABEL_7;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_7:
    v28 = 1;
    v26 = v33;
    v27 = v34;
    goto LABEL_8;
  }

  v35 = v13;
  v36 = v14;
  State.wrappedValue.getter();
  v18 = dispatch thunk of AddWorkoutDataSource.alphabeticGroups.getter();

  if (*(v18 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v19)
    {

      v35 = specialized Array._copyToContiguousArray()(v20);
      specialized MutableCollection<>.sort(by:)(&v35);

      outlined init with copy of AddWorkoutList(v31, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v22 = swift_allocObject();
      outlined init with take of AddWorkoutList(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore08Standarda3AddA3RowCGMd, &_sSay11WorkoutCore08Standarda3AddA3RowCGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMR);
      lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type [StandardWorkoutAddWorkoutRow] and conformance [A], &_sSay11WorkoutCore08Standarda3AddA3RowCGMd, &_sSay11WorkoutCore08Standarda3AddA3RowCGMR, MEMORY[0x277D83980]);
      lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<AddWorkoutRowView> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMR, MEMORY[0x277CDF028]);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8], MEMORY[0x277D7D9B8]);
      v23 = v32;
      ForEach<>.init(_:content:)();
      v25 = v33;
      v24 = v34;
      (*(v10 + 32))(v34, v23, v33);
      v26 = v25;
      v27 = v24;
      v28 = 0;
LABEL_8:
      (*(v10 + 56))(v27, v28, 1, v26);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
}

double closure #1 in closure #5 in closure #1 in AddWorkoutList.addWorkoutListView()(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for AddWorkoutList(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *a1;
  outlined init with copy of AddWorkoutList(a2, &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  outlined init with take of AddWorkoutList(&v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v16 = v10;
  type metadata accessor for AddWorkoutRowView(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type AddWorkoutRowView and conformance AddWorkoutRowView, type metadata accessor for AddWorkoutRowView, &protocol conformance descriptor for AddWorkoutRowView);
  v13 = v10;
  Button.init(action:label:)();
  return result;
}

uint64_t closure #1 in closure #1 in closure #5 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();
  AddWorkoutList.activityMoveMode.getter();
  v8 = FIUIWorkoutActivityType.shouldShowOtherWorkoutCalorieDisclaimer(activityMoveMode:)();

  if (v8)
  {
    v9 = dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();
    v16 = *(a2 + *(type metadata accessor for AddWorkoutList(0) + 28));
    v15[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMR);
    return State.wrappedValue.setter();
  }

  else
  {
    v11 = type metadata accessor for AddWorkoutList(0);
    v12 = *(a2 + *(v11 + 36));
    v13 = dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();
    [v12 showActivityType_];

    v14 = (a2 + *(v11 + 48));
    if (*v14)
    {
      (*v14)();
    }

    AddWorkoutList.dismiss.getter(v6);
    DismissAction.callAsFunction()();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t protocol witness for View.body.getter in conformance AddWorkoutList()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>();
  return NavigationView.init(content:)();
}

uint64_t one-time initialization function for ShowGuidedWalkFitnessPlusAudioWorkouts()
{
  result = MEMORY[0x20F30BAD0](0xD000000000000026, 0x800000020CBA46B0);
  static NSNotificationName.ShowGuidedWalkFitnessPlusAudioWorkouts = result;
  return result;
}

uint64_t one-time initialization function for ShowGuidedRunFitnessPlusAudioWorkouts()
{
  result = MEMORY[0x20F30BAD0](0xD000000000000025, 0x800000020CBA4680);
  static NSNotificationName.ShowGuidedRunFitnessPlusAudioWorkouts = result;
  return result;
}

id static NSNotificationName.ShowGuidedWalkFitnessPlusAudioWorkouts.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t type metadata accessor for AddWorkoutList(uint64_t a1)
{
  result = type metadata singleton initialization cache for AddWorkoutList;
  if (!type metadata singleton initialization cache for AddWorkoutList)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationI4ItemV0jkL0OFQOyAcAE0hJ0yQrqd__SyRd__lFQOyAA08ModifiedG0VyANyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addv3RowC0VGANyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0pX14InsetsTraitKeyVGGGSg_AVyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2XGSgANyANyAVyA17_AA7ForEachVySay0V4Core08StandardvwvX0CGSSA2_GAXGAA32_EnvironmentKeyTransformModifierVySbGGA9_yAA0S13IndexLabelKeyVGGSgA30_ySaySSGSSANyANyAVyA17_A35_SgAXGA39_GA43_GGtGGA9_yAA0pS15SpacingTraitKeyVGGA19_yAA0pS7SpacingVSgGG_SSQo__Qo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0fN0VyytAZyAA07DefaultU5LabelVGGQo_Qo_Md, &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationI4ItemV0jkL0OFQOyAcAE0hJ0yQrqd__SyRd__lFQOyAA08ModifiedG0VyANyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addv3RowC0VGANyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0pX14InsetsTraitKeyVGGGSg_AVyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2XGSgANyANyAVyA17_AA7ForEachVySay0V4Core08StandardvwvX0CGSSA2_GAXGAA32_EnvironmentKeyTransformModifierVySbGGA9_yAA0S13IndexLabelKeyVGGSgA30_ySaySSGSSANyANyAVyA17_A35_SgAXGA39_GA43_GGtGGA9_yAA0pS15SpacingTraitKeyVGGA19_yAA0pS7SpacingVSgGG_SSQo__Qo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0fN0VyytAZyAA07DefaultU5LabelVGGQo_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Adds3RowC0VGAKyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0mu6InsetsX3KeyVGGGSg_ASyAKyAKyAA4TextVAA015_EnvironmentKeyyZ0VyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2UGSgAKyAKyASyA14_AA7ForEachVySay0S4Core08StandardstsU0CGSSA_GAUGAA024_EnvironmentKeyTransformZ0VySbGGA6_yAA0P13IndexLabelKeyVGGSgA27_ySaySSGSSAKyAKyASyA14_A32_SgAUGA36_GA40_GGtGGA6_yAA0mp7SpacingX3KeyVGGA16_yAA0mP7SpacingVSgGG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Adds3RowC0VGAKyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0mu6InsetsX3KeyVGGGSg_ASyAKyAKyAA4TextVAA015_EnvironmentKeyyZ0VyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2UGSgAKyAKyASyA14_AA7ForEachVySay0S4Core08StandardstsU0CGSSA_GAUGAA024_EnvironmentKeyTransformZ0VySbGGA6_yAA0P13IndexLabelKeyVGGSgA27_ySaySSGSSAKyAKyASyA14_A32_SgAUGA36_GA40_GGtGGA6_yAA0mp7SpacingX3KeyVGGA16_yAA0mP7SpacingVSgGG_SSQo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addn3RowC0VGAFyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0hp6InsetsS3KeyVGGGSg_ANyAFyAFyAA4TextVAA012_EnvironmentwtU0VyAA0X9AlignmentOGGAA16_FlexFrameLayoutVGA2PGSgAFyAFyANyA9_AA7ForEachVySay0N4Core08StandardnonP0CGSSAVGAPGAA01_yw9TransformU0VySbGGA1_yAA0k10IndexLabelW0VGGSgA22_ySaySSGSSAFyAFyANyA9_A27_SgAPGA31_GA35_GGtGGA1_yAA0hk7SpacingsW0VGGA11_yAA0hK7SpacingVSgGG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addn3RowC0VGAFyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0hp6InsetsS3KeyVGGGSg_ANyAFyAFyAA4TextVAA012_EnvironmentwtU0VyAA0X9AlignmentOGGAA16_FlexFrameLayoutVGA2PGSgAFyAFyANyA9_AA7ForEachVySay0N4Core08StandardnonP0CGSSAVGAPGAA01_yw9TransformU0VySbGGA1_yAA0k10IndexLabelW0VGGSgA22_ySaySSGSSAFyAFyANyA9_A27_SgAPGA31_GA35_GGtGGA1_yAA0hk7SpacingsW0VGGA11_yAA0hK7SpacingVSgGG_SSQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type WorkoutDisclaimerSheet and conformance WorkoutDisclaimerSheet, type metadata accessor for WorkoutDisclaimerSheet, &protocol conformance descriptor for WorkoutDisclaimerSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGMd, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGMR);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA6ButtonVy07WorkoutB003Addj3RowF0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0cl6InsetsQ3KeyVGGGSg_AIyASyASyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2KGSgASyASyAIyA6_AA7ForEachVySay0J4Core08StandardjkjL0CGSSAQGAKGAA01_wu9TransformS0VySbGGAZyAA0g10IndexLabelU0VGGSgA19_ySaySSGSSASyASyAIyA6_A24_SgAKGA28_GA32_GGtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA6ButtonVy07WorkoutB003Addj3RowF0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0cl6InsetsQ3KeyVGGGSg_AIyASyASyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2KGSgASyASyAIyA6_AA7ForEachVySay0J4Core08StandardjkjL0CGSSAQGAKGAA01_wu9TransformS0VySbGGAZyAA0g10IndexLabelU0VGGSgA19_ySaySSGSSASyASyAIyA6_A24_SgAKGA28_GA32_GGtGGMR, MEMORY[0x277CDE5A0]);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for AddWorkoutList(uint64_t a1)
{
  _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_5(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>(319);
    if (v2 <= 0x3F)
    {
      _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_5(319, &lazy cache variable for type metadata for State<AddWorkoutDataSource>, MEMORY[0x277D7D918], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        _s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMaTm_0(319, &lazy cache variable for type metadata for State<FIUIWorkoutActivityType?>, &_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for StateObject<SeymourDataSource>(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for WOCompoundActivityTypesProviding(319, &lazy cache variable for type metadata for WOCompoundActivityTypesProviding, &protocolRef_WOCompoundActivityTypesProviding);
            if (v6 <= 0x3F)
            {
              type metadata accessor for GuidedWorkoutLocalizationProvider();
              if (v7 <= 0x3F)
              {
                type metadata accessor for WOCompoundActivityTypesProviding(319, &lazy cache variable for type metadata for WOWheelchairUseProviding, &protocolRef_WOWheelchairUseProviding);
                if (v8 <= 0x3F)
                {
                  _s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMaTm_0(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for StateObject<SeymourDataSource>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateObject<SeymourDataSource>)
  {
    type metadata accessor for SeymourDataSource(255);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type SeymourDataSource and conformance SeymourDataSource, type metadata accessor for SeymourDataSource, &protocol conformance descriptor for SeymourDataSource);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateObject<SeymourDataSource>);
    }
  }
}

uint64_t type metadata accessor for WOCompoundActivityTypesProviding(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void _s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with copy of AddWorkoutList(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddWorkoutList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AddWorkoutList(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddWorkoutList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGMR);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<AddWorkoutRowView> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = lazy protocol witness table accessor for type String and conformance String();
        v16 = StringProtocol.localizedStandardCompare<A>(_:)();
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (StringProtocol.localizedStandardCompare<A>(_:)() != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = lazy protocol witness table accessor for type String and conformance String();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                if (StringProtocol.localizedStandardCompare<A>(_:)() != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v10);
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
            goto LABEL_98;
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          specialized Array.remove(at:)(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = v10;
  v10 = *a1;
  if (!*a1)
  {
    goto LABEL_126;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_119:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
        goto LABEL_98;
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      specialized Array.remove(at:)(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
        goto LABEL_98;
      }
    }

    goto LABEL_123;
  }

LABEL_98:
}

{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v80 = *(v9 + 2);
    if (v80 >= 2)
    {
      do
      {
        v81 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v80 - 1);
        v82 = *&v9[16 * v80];
        v83 = *&v9[16 * v80 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((v81 + 8 * v82), (v81 + 8 * *&v9[16 * v80 + 16]), (v81 + 8 * v83), v7);
        if (v5)
        {
          break;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v80 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v9[16 * v80];
        *v84 = v82;
        *(v84 + 1) = v83;
        specialized Array.remove(at:)(v6);
        v80 = *(v9 + 2);
        v6 = a3;
      }

      while (v80 > 1);
    }

LABEL_102:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v86 = v5;
      v11 = 8 * v10;
      v12 = *v6 + 8 * v10 + 16;
      type metadata accessor for StandardWorkoutAddWorkoutRow();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8], MEMORY[0x277D7D9B0]);
      v13 = dispatch thunk of static Comparable.< infix(_:_:)();
      v14 = v10;
      v15 = v13;
      v16 = v14;
      v17 = v14 + 2;
      while (v7 != v17)
      {
        ++v17;
        v12 += 8;
        if ((v15 & 1) != (dispatch thunk of static Comparable.< infix(_:_:)() & 1))
        {
          v7 = v17 - 1;
          break;
        }
      }

      v5 = v86;
      v6 = a3;
      if (v15)
      {
        if (v7 < v16)
        {
          goto LABEL_121;
        }

        v10 = v16;
        if (v16 < v7)
        {
          v18 = 8 * v7 - 8;
          v19 = v7;
          v20 = v16;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v21 = *(v22 + v11);
              *(v22 + v11) = *(v22 + v18);
              *(v22 + v18) = v21;
            }

            ++v20;
            v18 -= 8;
            v11 += 8;
          }

          while (v20 < v19);
        }

        v8 = v7;
      }

      else
      {
        v8 = v7;
        v10 = v16;
      }
    }

    v23 = v6[1];
    if (v8 < v23)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_120;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_119;
    }

    v33 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v35 = *(v9 + 2);
    v34 = *(v9 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v9);
    }

    *(v9 + 2) = v36;
    v37 = &v9[16 * v35];
    *(v37 + 4) = v10;
    *(v37 + 5) = v8;
    v38 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v35)
    {
      v5 = v33;
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 4);
          v41 = *(v9 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_61:
          if (v43)
          {
            goto LABEL_108;
          }

          v56 = &v9[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_111;
          }

          v62 = &v9[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_115;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v66 = &v9[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_75:
        if (v61)
        {
          goto LABEL_110;
        }

        v69 = &v9[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v72 < v60)
        {
          goto LABEL_4;
        }

LABEL_82:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v78 = *&v9[16 * v77 + 32];
        v7 = *&v9[16 * v39 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v78), (*v6 + 8 * *&v9[16 * v39 + 32]), (*v6 + 8 * v7), v38);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v7 < v78)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v77 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v79 = &v9[16 * v77];
        *(v79 + 4) = v78;
        *(v79 + 5) = v7;
        specialized Array.remove(at:)(v39);
        v36 = *(v9 + 2);
        if (v36 <= 1)
        {
          goto LABEL_4;
        }
      }

      v44 = &v9[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_106;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_107;
      }

      v51 = &v9[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_109;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_112;
      }

      if (v55 >= v47)
      {
        v73 = &v9[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_116;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v5 = v33;
LABEL_4:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_122;
  }

  v24 = v8;
  if (v10 + a4 >= v23)
  {
    v25 = v6[1];
  }

  else
  {
    v25 = v10 + a4;
  }

  if (v25 < v10)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v24 == v25)
  {
    v8 = v24;
    goto LABEL_40;
  }

  v87 = v5;
  v26 = *v6;
  type metadata accessor for StandardWorkoutAddWorkoutRow();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8], MEMORY[0x277D7D9B0]);
  v27 = v26 + 8 * v24 - 8;
  v7 = v10 - v24;
  v90 = v25;
LABEL_33:
  v28 = v24;
  v29 = v7;
  v30 = v27;
  while (1)
  {
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
LABEL_32:
      v24 = v28 + 1;
      v27 += 8;
      --v7;
      v8 = v90;
      if (v24 != v90)
      {
        goto LABEL_33;
      }

      v5 = v87;
      v6 = a3;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v31 = *v30;
    *v30 = v30[1];
    v30[1] = v31;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

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
}

{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = lazy protocol witness table accessor for type String and conformance String();
        v16 = StringProtocol.localizedStandardCompare<A>(_:)();
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (StringProtocol.localizedStandardCompare<A>(_:)() != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = lazy protocol witness table accessor for type String and conformance String();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                if (StringProtocol.localizedStandardCompare<A>(_:)() != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v10);
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
            goto LABEL_98;
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          specialized Array.remove(at:)(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = v10;
  v10 = *a1;
  if (!*a1)
  {
    goto LABEL_126;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_119:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
        goto LABEL_98;
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      specialized Array.remove(at:)(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
        goto LABEL_98;
      }
    }

    goto LABEL_123;
  }

LABEL_98:
}

uint64_t partial apply for closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AddWorkoutList(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()(v5, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<SectionIndexLabelKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA20SectionIndexLabelKeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA20SectionIndexLabelKeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGMR);
    lazy protocol witness table accessor for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>();
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardg3AddG3RowCGSSAA6ButtonVy0gB00jgK4ViewVGGSgAA05EmptyM0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardg3AddG3RowCGSSAA6ButtonVy0gB00jgK4ViewVGGSgAA05EmptyM0VGMR);
    lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGSgMd, &_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGSgMR);
    lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?);
  }

  return result;
}

uint64_t _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA013ListRowInsetsG3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA013ListRowInsetsG3KeyVGGMR);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type VStack<Divider> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7DividerVGMd, &_s7SwiftUI6VStackVyAA7DividerVGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AddWorkoutList.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddWorkoutList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore08Standardh3AddH3RowC_Tt1g5();
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_93()
{
  v1 = type metadata accessor for AddWorkoutList(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  outlined consume of StateObject<SeymourDataSource>.Storage(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v3 + v1[12]))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_65Tm_0()
{
  v1 = type metadata accessor for AddWorkoutList(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  outlined consume of StateObject<SeymourDataSource>.Storage(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v3 + v1[12]))
  {
  }

  return swift_deallocObject();
}

void partial apply for closure #2 in closure #1 in closure #5 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1@<X8>)
{
  v3 = dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();

  AddWorkoutRowView.init(activityType:)(v3, a1);
}

uint64_t getEnumTagSinglePayload for CadenceTargetValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for CadenceTargetValue(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void CadenceTargetValue.body.getter(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v7 = specialized CadenceTargetValue.valueString.getter(a1, a2 & 1, a5);
  v9 = v8;
  v10 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = v12;
  *(a4 + 24) = v14;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
}