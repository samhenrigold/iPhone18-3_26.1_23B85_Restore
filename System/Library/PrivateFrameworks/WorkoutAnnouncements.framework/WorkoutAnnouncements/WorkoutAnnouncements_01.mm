uint64_t sub_274C5CCA0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.exerciseRingCompleted;
  return result;
}

uint64_t sub_274C5CCEC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.exerciseRingCompleted = v1;
  return result;
}

uint64_t sub_274C5CD34@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.intervalEnded;
  return result;
}

uint64_t sub_274C5CD80(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.intervalEnded = v1;
  return result;
}

uint64_t sub_274C5CDC8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.moveRingCompleted;
  return result;
}

uint64_t sub_274C5CE14(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.moveRingCompleted = v1;
  return result;
}

uint64_t sub_274C5CE5C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceAheadOfGhost;
  return result;
}

uint64_t sub_274C5CEA8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceAheadOfGhost = v1;
  return result;
}

uint64_t sub_274C5CEF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceBehindGhost;
  return result;
}

uint64_t sub_274C5CF3C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceBehindGhost = v1;
  return result;
}

uint64_t sub_274C5CF84@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceExpired;
  return result;
}

uint64_t sub_274C5CFD0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceExpired = v1;
  return result;
}

uint64_t sub_274C5D018@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceOffRoute;
  return result;
}

uint64_t sub_274C5D064(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceOffRoute = v1;
  return result;
}

uint64_t sub_274C5D0AC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceOnRoute;
  return result;
}

uint64_t sub_274C5D0F8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceOnRoute = v1;
  return result;
}

uint64_t sub_274C5D140@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost;
  return result;
}

uint64_t sub_274C5D18C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost = v1;
  return result;
}

uint64_t sub_274C5D1D4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon;
  return result;
}

uint64_t sub_274C5D220(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon = v1;
  return result;
}

uint64_t sub_274C5D268@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.trackStatusChanged;
  return result;
}

uint64_t sub_274C5D2B4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.trackStatusChanged = v1;
  return result;
}

uint64_t sub_274C5D2FC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.workoutPaused;
  return result;
}

uint64_t sub_274C5D348(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.workoutPaused = v1;
  return result;
}

uint64_t sub_274C5D390@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static BasicVoiceFeedbackAlerts.workoutResumed;
  return result;
}

uint64_t sub_274C5D3DC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static BasicVoiceFeedbackAlerts.workoutResumed = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for BasicVoiceFeedbackAlerts.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BasicVoiceFeedbackAlerts.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, uint64_t a2, __n128 a3)
{
  v3 = 0x747065636361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6573756170;
    }

    else
    {
      v5 = 0x54726F466574756DLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEC0000007961646FLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7463656A6572;
    }

    else
    {
      v5 = 0x747065636361;
    }

    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6573756170;
  if (a2 != 2)
  {
    v8 = 0x54726F466574756DLL;
    v7 = 0xEC0000007961646FLL;
  }

  if (a2)
  {
    v3 = 0x7463656A6572;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = v7;
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

WorkoutAnnouncements::WorkoutReminderControlsDirectInvocation __swiftcall WorkoutReminderControlsDirectInvocation.init(action:identifier:)(WorkoutAnnouncements::WorkoutReminderControlsDirectInvocation::Action action, Swift::String_optional identifier)
{
  *v2 = *action;
  *(v2 + 8) = identifier;
  result.identifier = identifier;
  result.action = action;
  return result;
}

id WorkoutReminderControlsDirectInvocation.asStartLocalRequest(device:)(void *a1)
{
  v3 = type metadata accessor for Parse.DirectInvocation();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v11 = MEMORY[0x277C66D70](0xD00000000000003ELL, 0x8000000274C70280);
  v12 = [v10 initWithIdentifier_];

  v19[8] = v7;
  v20 = v8;
  v21 = v9;
  WorkoutReminderControlsDirectInvocation.asDirectInvocation()();
  isa = Parse.DirectInvocation.userData.getter();
  (*(v4 + 8))(v6, v3);
  if (isa)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(isa);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  [v12 setUserData_];

  v14 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = DeviceState.asInvocationContext.getter();
  v16 = [v14 runSiriKitExecutorCommandWithContext:v15 payload:v12];

  v17 = [v14 wrapCommandInStartLocalRequest_];
  return v17;
}

WorkoutAnnouncements::WorkoutReminderControlsDirectInvocation::Action_optional __swiftcall WorkoutReminderControlsDirectInvocation.Action.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutReminderControlsDirectInvocation.Action.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t WorkoutReminderControlsDirectInvocation.Action.rawValue.getter()
{
  v1 = 0x747065636361;
  v2 = 0x6573756170;
  if (*v0 != 2)
  {
    v2 = 0x54726F466574756DLL;
  }

  if (*v0)
  {
    v1 = 0x7463656A6572;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutReminderControlsDirectInvocation.Action()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutReminderControlsDirectInvocation.Action(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutReminderControlsDirectInvocation.Action(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutReminderControlsDirectInvocation.Action(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x747065636361;
  v4 = 0xE500000000000000;
  v5 = 0x6573756170;
  if (*v1 != 2)
  {
    v5 = 0x54726F466574756DLL;
    v4 = 0xEC0000007961646FLL;
  }

  if (*v1)
  {
    v3 = 0x7463656A6572;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t WorkoutReminderControlsDirectInvocation.init(directInvocation:)@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  v73 = a2;
  v74 = type metadata accessor for Parse.DirectInvocation();
  v3 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Logger();
  v6 = *(v75 - 8);
  v7 = MEMORY[0x28223BE20](v75);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  v76 = a1;
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003ELL && 0x8000000274C70280 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      v44 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      v45 = v75;
      (*(v6 + 16))(v9, v44, v75);
      v46 = v74;
      (*(v3 + 16))(v5, v76, v74);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v77._countAndFlagsBits = v72;
        *v49 = 136315394;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000274C6E800, &v77._countAndFlagsBits);
        *(v49 + 12) = 2080;
        v50 = Parse.DirectInvocation.identifier.getter();
        v52 = v51;
        v53 = *(v3 + 8);
        v54 = v5;
        v55 = v74;
        v53(v54, v74);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v77._countAndFlagsBits);

        *(v49 + 14) = v56;
        _os_log_impl(&dword_274C46000, v47, v48, "Unsupported identifier for %s: %s", v49, 0x16u);
        v57 = v72;
        swift_arrayDestroy();
        MEMORY[0x277C67550](v57, -1, -1);
        MEMORY[0x277C67550](v49, -1, -1);

        v53(v76, v55);
        result = (*(v6 + 8))(v9, v75);
      }

      else
      {

        v58 = *(v3 + 8);
        v58(v76, v46);
        v58(v5, v46);
        result = (*(v6 + 8))(v9, v45);
      }

LABEL_27:
      v59 = v73;
      *v73 = 0;
      v59[1] = 0;
      v59[2] = 1;
      return result;
    }
  }

  v20 = v76;
  v21 = Parse.DirectInvocation.userData.getter();
  if (!v21)
  {
    v38 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    v39 = v75;
    (*(v6 + 16))(v12, v38, v75);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v77._countAndFlagsBits = v43;
      *v42 = 136315138;
      *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000274C6E800, &v77._countAndFlagsBits);
      _os_log_impl(&dword_274C46000, v40, v41, "%s: No user data in the direct invocation", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x277C67550](v43, -1, -1);
      MEMORY[0x277C67550](v42, -1, -1);
    }

    (*(v3 + 8))(v20, v74);
    result = (*(v6 + 8))(v12, v39);
    goto LABEL_27;
  }

  v22 = v21;
  v23 = v75;
  if (!*(v21 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F69746361, 0xE600000000000000), (v25 & 1) == 0) || (outlined init with copy of Any(*(v22 + 56) + 32 * v24, v78), (swift_dynamicCast() & 1) == 0) || (v26 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutReminderControlsDirectInvocation.Action.init(rawValue:), v77), , v26 >= 4))
  {

    v32 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v6 + 16))(v15, v32, v23);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v77._countAndFlagsBits = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000274C6E800, &v77._countAndFlagsBits);
      _os_log_impl(&dword_274C46000, v33, v34, "%s: Found no action in the direct invocation data", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x277C67550](v36, -1, -1);
      MEMORY[0x277C67550](v35, -1, -1);
    }

    (*(v3 + 8))(v20, v74);
    result = (*(v6 + 8))(v15, v23);
    goto LABEL_27;
  }

  if (*(v22 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x696669746E656469, 0xEA00000000007265), (v28 & 1) != 0))
  {
    outlined init with copy of Any(*(v22 + 56) + 32 * v27, v78);

    v29 = swift_dynamicCast();
    if (v29)
    {
      countAndFlagsBits = v77._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v29)
    {
      object = v77._object;
    }

    else
    {
      object = 0;
    }
  }

  else
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v60 = 0x747065636361;
  if (v26 > 2u)
  {
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v61 & 1) == 0 && !object)
    {
      v62 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      v63 = v75;
      (*(v6 + 16))(v17, v62, v75);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v77._countAndFlagsBits = v72;
        *v66 = 136315394;
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000274C6E800, &v77._countAndFlagsBits);
        *(v66 + 12) = 2080;
        if (v26)
        {
          if (v26 == 2)
          {
            v67 = 0xE500000000000000;
            v60 = 0x6573756170;
          }

          else
          {
            v67 = 0xE600000000000000;
            v60 = 0x7463656A6572;
          }
        }

        else
        {
          v67 = 0xE600000000000000;
        }

        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v67, &v77._countAndFlagsBits);

        *(v66 + 14) = v69;
        _os_log_impl(&dword_274C46000, v64, v65, "%s: A prediction identifier is required for %s", v66, 0x16u);
        v70 = v72;
        swift_arrayDestroy();
        MEMORY[0x277C67550](v70, -1, -1);
        MEMORY[0x277C67550](v66, -1, -1);

        (*(v3 + 8))(v76, v74);
        (*(v6 + 8))(v17, v75);
      }

      else
      {

        (*(v3 + 8))(v76, v74);
        (*(v6 + 8))(v17, v63);
      }

      goto LABEL_27;
    }
  }

  result = (*(v3 + 8))(v76, v74);
  v68 = v73;
  *v73 = v26;
  v68[1] = countAndFlagsBits;
  v68[2] = object;
  return result;
}

uint64_t WorkoutReminderControlsDirectInvocation.asDirectInvocation()()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274C6E810;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(inited + 48) = v3;
  *(inited + 56) = v2;
  *(inited + 72) = v5;
  *(inited + 80) = 0x6E6F69746361;
  v6 = 0xE600000000000000;
  *(inited + 88) = 0xE600000000000000;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v6 = 0xE500000000000000;
      v7 = 0x6573756170;
    }

    else
    {
      v6 = 0xEC0000007961646FLL;
      v7 = 0x54726F466574756DLL;
    }
  }

  else if (v1)
  {
    v7 = 0x7463656A6572;
  }

  else
  {
    v7 = 0x747065636361;
  }

  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v7;
  *(inited + 104) = v6;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  return Parse.DirectInvocation.init(identifier:userData:)();
}

unint64_t lazy protocol witness table accessor for type WorkoutReminderControlsDirectInvocation.Action and conformance WorkoutReminderControlsDirectInvocation.Action()
{
  result = lazy protocol witness table cache variable for type WorkoutReminderControlsDirectInvocation.Action and conformance WorkoutReminderControlsDirectInvocation.Action;
  if (!lazy protocol witness table cache variable for type WorkoutReminderControlsDirectInvocation.Action and conformance WorkoutReminderControlsDirectInvocation.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReminderControlsDirectInvocation.Action and conformance WorkoutReminderControlsDirectInvocation.Action);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkoutReminderControlsDirectInvocation.Action] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutReminderControlsDirectInvocation.Action] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutReminderControlsDirectInvocation.Action] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20WorkoutAnnouncements0A32ReminderControlsDirectInvocationV6ActionOGMd, &_sSay20WorkoutAnnouncements0A32ReminderControlsDirectInvocationV6ActionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutReminderControlsDirectInvocation.Action] and conformance [A]);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
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

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

WorkoutAnnouncements::VoiceFeedbackStepType_optional __swiftcall VoiceFeedbackStepType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [VoiceFeedbackStepType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [VoiceFeedbackStepType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [VoiceFeedbackStepType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20WorkoutAnnouncements21VoiceFeedbackStepTypeOGMd, &_sSay20WorkoutAnnouncements21VoiceFeedbackStepTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [VoiceFeedbackStepType] and conformance [A]);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for VoiceFeedbackStepType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType();
  *(a1 + 8) = result;
  return result;
}

uint64_t WorkoutReminderPromptStrategy.parseValueResponse(input:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[12] = a2;
  v3[13] = v4;
  v3[11] = a1;
  v5 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for Parse();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v8 = type metadata accessor for USOParse();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v9 = type metadata accessor for Input();
  v3[27] = v9;
  v3[28] = *(v9 - 8);
  v3[29] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[30] = v10;
  v3[31] = *(v10 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutReminderPromptStrategy.parseValueResponse(input:), 0, 0);
}

uint64_t WorkoutReminderPromptStrategy.parseValueResponse(input:)(uint64_t a1)
{
  v83 = v1;
  v3 = *(v1 + 240);
  v2 = (v1 + 240);
  v4 = v2[4];
  v5 = v2[1];
  v6 = *(v2 - 2);
  v7 = *(v2 - 1);
  v8 = *(v2 - 3);
  v9 = *(v2 - 18);
  v10 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  v76 = *(v5 + 16);
  v77 = v10;
  v76(v4, v10, v3);
  (*(v6 + 16))(v7, v9, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v2[4];
  v15 = *v2;
  v16 = v2[1];
  v18 = *(v2 - 2);
  v17 = *(v2 - 1);
  v19 = *(v2 - 3);
  if (v13)
  {
    v78 = v2[4];
    v73 = v12;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v82 = v21;
    *v20 = 136315394;
    v22 = _typeName(_:qualified:)();
    v74 = v15;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v82);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v18 + 8))(v17, v19);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v82);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_274C46000, v11, v73, "%s Parsing Input: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C67550](v21, -1, -1);
    MEMORY[0x277C67550](v20, -1, -1);

    v29 = *(v16 + 8);
    v30 = v78;
    v31 = v74;
  }

  else
  {

    (*(v18 + 8))(v17, v19);
    v29 = *(v16 + 8);
    v30 = v14;
    v31 = v15;
  }

  v79 = v29;
  v29(v30, v31);
  v32 = v80;
  v33 = v80[23];
  v34 = v80[20];
  v35 = v80[21];
  Input.parse.getter();
  if ((*(v35 + 88))(v33, v34) != *MEMORY[0x277D5C160])
  {
    (*(v80[21] + 8))(v80[23], v80[20]);
LABEL_10:
    v37 = v80 + 32;
    v48 = v80[32];
    v49 = v80[30];
    swift_beginAccess();
    v76(v48, v77, v49);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_274C46000, v50, v51, "Received unsupported type of input", v52, 2u);
      MEMORY[0x277C67550](v52, -1, -1);
    }

    v81 = 4;
    v47 = v79;
    goto LABEL_13;
  }

  v37 = v80 + 26;
  v36 = v80[26];
  v38 = v80[25];
  v39 = v80[24];
  v75 = v80 + 24;
  v40 = v80[23];
  v42 = v80[15];
  v41 = v80[16];
  v43 = v80[14];
  (*(v80[21] + 96))(v40, v80[20]);
  (*(v38 + 32))(v36, v40, v39);
  v44 = USOParse.userParse.getter();
  v45 = MEMORY[0x277C66AE0](v44);
  (*(v42 + 8))(v41, v43);
  if (!*(v45 + 16))
  {
    (*(v80[25] + 8))(v80[26], v80[24]);

    goto LABEL_10;
  }

  (*(v80[18] + 16))(v80[19], v45 + ((*(v80[18] + 80) + 32) & ~*(v80[18] + 80)), v80[17]);

  if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
  {
LABEL_7:
    v46 = v80[25];
    (*(v80[18] + 8))(v80[19], v80[17]);
    v81 = 0;
    v47 = *(v46 + 8);
    v2 = v32 + 24;
    goto LABEL_13;
  }

  if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
  {
    v56 = v80[25];
    (*(v80[18] + 8))(v80[19], v80[17]);
    v47 = *(v56 + 8);
    v57 = 1;
  }

  else
  {
    v59 = v80[21];
    v58 = v80[22];
    v60 = v80[20];
    Input.parse.getter();
    v61 = isProbablyWorkout(from:requireWorkoutIdentifier:)();
    (*(v59 + 8))(v58, v60);
    if (v61)
    {
      goto LABEL_7;
    }

    v62 = v80[33];
    v63 = v80[30];
    swift_beginAccess();
    v76(v62, v77, v63);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_274C46000, v64, v65, "Parse did not contain accept, reject, or workout task", v66, 2u);
      MEMORY[0x277C67550](v66, -1, -1);
    }

    v67 = v80[33];
    v68 = v80[30];
    v69 = v80[25];
    v71 = v80[18];
    v70 = v80[19];
    v72 = v80[17];

    v79(v67, v68);
    (*(v71 + 8))(v70, v72);
    v32 = v80;
    v47 = *(v69 + 8);
    v57 = 4;
  }

  v81 = v57;
  v2 = v75;
LABEL_13:
  v53 = v32[11];
  v47(*v37, *v2);
  *v53 = v81;

  v54 = v32[1];

  return v54();
}

uint64_t WorkoutReminderPromptStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = *v3;
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for USOParse();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Parse();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v68 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v56 - v15;
  v16 = type metadata accessor for Input();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  v25 = *(v21 + 16);
  v69 = v20;
  v25(v23, v24, v20);
  v26 = *(v17 + 16);
  v73 = a1;
  v26(v19, a1, v16);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v60 = v8;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v58 = a2;
    v31 = v30;
    v57 = swift_slowAlloc();
    v75 = v57;
    *v31 = 136315394;
    v32 = _typeName(_:qualified:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v75);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v17 + 8))(v19, v16);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v75);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_274C46000, v27, v28, "%s Handling Input: %s", v31, 0x16u);
    v39 = v57;
    swift_arrayDestroy();
    MEMORY[0x277C67550](v39, -1, -1);
    MEMORY[0x277C67550](v31, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
  }

  (*(v21 + 8))(v23, v69);
  v40 = v70;
  Input.parse.getter();
  v41 = isProbablyWorkout(from:requireWorkoutIdentifier:)();
  v43 = v71;
  v42 = v72;
  v44 = *(v71 + 8);
  v44(v40, v72);
  v45 = v74;
  if (v41)
  {
    return static ActionForInput.handle()();
  }

  v47 = v68;
  Input.parse.getter();
  if ((*(v43 + 88))(v47, v42) == *MEMORY[0x277D5C160])
  {
    (*(v43 + 96))(v47, v42);
    v49 = v65;
    v48 = v66;
    (*(v65 + 32))(v45, v47, v66);
    v50 = v62;
    v51 = USOParse.userParse.getter();
    v52 = MEMORY[0x277C66AE0](v51);
    (*(v63 + 8))(v50, v64);
    if (*(v52 + 16))
    {
      v53 = v59;
      v54 = v60;
      v55 = v61;
      (*(v60 + 16))(v59, v52 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v61);

      if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
      {
        static ActionForInput.handle()();
        (*(v54 + 8))(v53, v55);
        return (*(v65 + 8))(v45, v66);
      }

      (*(v54 + 8))(v53, v55);
      (*(v65 + 8))(v45, v66);
    }

    else
    {
      (*(v49 + 8))(v45, v48);
    }
  }

  else
  {
    v44(v47, v42);
  }

  return static ActionForInput.ignore()();
}

uint64_t WorkoutReminderPromptStrategy.makePromptForValue()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17DismissalSettingsVSgMd, &_s11SiriKitFlow17DismissalSettingsVSgMR);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for DismissalSettings();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[13] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[18] = v5;
  *v5 = v2;
  v5[1] = WorkoutReminderPromptStrategy.makePromptForValue();

  return WorkoutReminderPromptStrategy.announcementDialog()();
}

{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderPromptStrategy.makePromptForValue(), 0, 0);
}

uint64_t WorkoutReminderPromptStrategy.makePromptForValue()()
{
  if (v0[19])
  {
    v1 = v0[13];
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[9];
    v5 = v0[10];
    static DialogPhase.confirmation.getter();
    OutputGenerationManifest.init(dialogPhase:_:)();
    WorkoutReminderPromptStrategy.confirmationSDA()(v1);
    OutputGenerationManifest.nlContextUpdate.setter();
    OutputGenerationManifest.canUseServerTTS.setter();
    DismissalSettings.init(_:)();
    DismissalSettings.minimumAutoDismissalTimeInMs.setter();
    (*(v3 + 16))(v4, v2, v5);
    (*(v3 + 56))(v4, 0, 1, v5);
    OutputGenerationManifest.dismissalSettings.setter();
    v6 = [objc_allocWithZone(MEMORY[0x277D47AE8]) init];
    v0[20] = v6;
    [v6 setNotificationType_];
    static AceService.currentAsync.getter();
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = swift_task_alloc();
    v0[21] = v9;
    v10 = type metadata accessor for SABaseCommand();
    *v9 = v0;
    v9[1] = WorkoutReminderPromptStrategy.makePromptForValue();

    return MEMORY[0x2821BB6A0](v6, v7, v10, v8);
  }

  else
  {
    lazy protocol witness table accessor for type WorkoutReminderErrors and conformance WorkoutReminderErrors();
    swift_allocError();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

{
  v1 = v0[19];
  v2 = v0[8];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = v2[16];
  v4 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v3);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = WorkoutReminderPromptStrategy.makePromptForValue();
  v6 = v0[17];
  v7 = v0[7];

  return MEMORY[0x2821BB480](v7, v1, v6, v3, v4);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = WorkoutReminderPromptStrategy.makePromptForValue();
  }

  else
  {
    v2 = WorkoutReminderPromptStrategy.makePromptForValue();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t WorkoutReminderPromptStrategy.makePromptForValue()(void *a1)
{
  *(*v2 + 176) = v1;

  if (v1)
  {
    v4 = WorkoutReminderPromptStrategy.makePromptForValue();
  }

  else
  {

    v4 = WorkoutReminderPromptStrategy.makePromptForValue();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t WorkoutReminderPromptStrategy.announcementDialog()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](WorkoutReminderPromptStrategy.announcementDialog(), 0, 0);
}

{
  v1 = [*(v0[2] + 16) predictionType];
  if (v1 == 3)
  {
    v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
    v8 = specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:);

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v4 = WorkoutReminderPromptStrategy.announcementDialog();
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
    v8 = specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:);

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v4 = WorkoutReminderPromptStrategy.announcementDialog();
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
    v8 = specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:);

    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v4 = WorkoutReminderPromptStrategy.announcementDialog();
LABEL_7:
    v3[1] = v4;
    v5 = v0[2];

    return v8(0, v2, v5);
  }

  v7 = v0[1];

  return v7(0);
}

uint64_t WorkoutReminderPromptStrategy.announcementDialog()(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  v6 = *(v4 + 8);

  return v6(v5);
}

{
  v4 = *v2;

  if (v1)
  {

    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  v6 = *(v4 + 8);

  return v6(v5);
}

{
  v4 = *v2;

  if (v1)
  {

    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t WorkoutReminderPromptStrategy.confirmationSDA()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v1 + 16) predictionType];
  if (v14 == 3)
  {
    type metadata accessor for UsoTaskBuilder_resume_common_Workout();
    swift_allocObject();
    UsoTaskBuilder_resume_common_Workout.init()();
  }

  else if (v14 == 2)
  {
    type metadata accessor for UsoTaskBuilder_stop_common_Workout();
    swift_allocObject();
    UsoTaskBuilder_stop_common_Workout.init()();
  }

  else
  {
    if (v14 != 1)
    {
      v19 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v11 + 16))(v13, v19, v10);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_274C46000, v20, v21, "Unknown prediction type - unable to build SystemDialogAct", v22, 2u);
        MEMORY[0x277C67550](v22, -1, -1);
      }

      (*(v11 + 8))(v13, v10);
      goto LABEL_13;
    }

    type metadata accessor for UsoTaskBuilder_create_common_Workout();
    swift_allocObject();
    UsoTaskBuilder_create_common_Workout.init()();
  }

  WorkoutReminderPromptStrategy.makeConfirmationAct(for:)(v15, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    outlined destroy of AceOutput?(v5, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
LABEL_13:
    v18 = 1;
    goto LABEL_14;
  }

  (*(v7 + 32))(v9, v5, v6);
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_274C6DB40;
  (*(v7 + 16))(v17 + v16, v9, v6);
  NLContextUpdate.nluSystemDialogActs.setter();

  (*(v7 + 8))(v9, v6);
  v18 = 0;
LABEL_14:
  v23 = type metadata accessor for NLContextUpdate();
  return (*(*(v23 - 8) + 56))(a1, v18, 1, v23);
}

uint64_t WorkoutReminderPromptStrategy.makeConfirmationAct(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for Logger();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v51 - v8;
  v59 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v56 = *(v59 - 8);
  v9 = MEMORY[0x28223BE20](v59);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v51 - v11;
  v65 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v12 = *(v65 - 8);
  v13 = MEMORY[0x28223BE20](v65);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v51 - v19;
  v21 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v51 - v26;
  v28 = a1;
  UsoTaskBuilder.toProtobufUsoGraph()();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of AceOutput?(v20, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    v29 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    v31 = v62;
    v30 = v63;
    v32 = v64;
    (*(v63 + 16))(v62, v29, v64);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v67 = v28;
      v68 = v36;
      *v35 = 136315138;
      type metadata accessor for UsoTaskBuilder();

      v37 = String.init<A>(describing:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v68);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_274C46000, v33, v34, "Failed to create protobuf UsoGraph from Task builder %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x277C67550](v36, -1, -1);
      MEMORY[0x277C67550](v35, -1, -1);
    }

    (*(v30 + 8))(v31, v32);
    v40 = 1;
    v41 = v66;
  }

  else
  {
    v42 = *(v22 + 32);
    v52 = v21;
    v53 = v27;
    v42(v27, v20, v21);
    Siri_Nlu_External_UserWantedToProceed.init()();
    (*(v22 + 16))(v25, v27, v21);
    v51 = v17;
    Siri_Nlu_External_UserWantedToProceed.reference.setter();
    v43 = v54;
    Siri_Nlu_External_UserDialogAct.init()();
    (*(v12 + 16))(v15, v17, v65);
    Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
    v44 = v57;
    Siri_Nlu_External_SystemOffered.init()();
    v45 = v56;
    v46 = v59;
    (*(v56 + 16))(v55, v43, v59);
    Siri_Nlu_External_SystemOffered.offeredAct.setter();
    v41 = v66;
    Siri_Nlu_External_SystemDialogAct.init()();
    v48 = v60;
    v47 = v61;
    (*(v60 + 16))(v58, v44, v61);
    Siri_Nlu_External_SystemDialogAct.offered.setter();
    (*(v48 + 8))(v44, v47);
    (*(v45 + 8))(v43, v46);
    (*(v12 + 8))(v51, v65);
    (*(v22 + 8))(v53, v52);
    v40 = 0;
  }

  v49 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  return (*(*(v49 - 8) + 56))(v41, v40, 1, v49);
}

uint64_t WorkoutReminderPromptStrategy.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 104));

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return WorkoutReminderPromptStrategy.parseValueResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance WorkoutReminderPromptStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return WorkoutReminderPromptStrategy.makePromptForValue()(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return MEMORY[0x2821B9D48](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return MEMORY[0x2821B9D50](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return MEMORY[0x2821B9D38](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance WorkoutReminderPromptStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance WorkoutReminderPromptStrategy;

  return MEMORY[0x2821B9D40](a1, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type WorkoutReminderErrors and conformance WorkoutReminderErrors()
{
  result = lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors;
  if (!lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors;
  if (!lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReminderErrors and conformance WorkoutReminderErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

void __swiftcall BelowTargetZoneModel.init(magnitude:unit:targetZone:)(WorkoutAnnouncements::BelowTargetZoneModel *__return_ptr retstr, Swift::Double magnitude, Swift::String unit, WorkoutAnnouncements::VoiceFeedbackTargetZone *targetZone)
{
  object = unit._object;
  countAndFlagsBits = unit._countAndFlagsBits;
  metricType = targetZone->metricType;
  value = targetZone->paceFormat.value;
  v10 = BYTE1(targetZone[1].minMagnitude);

  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_zoneExitedBelow;
  retstr->magnitude = magnitude;
  retstr->unit._countAndFlagsBits = countAndFlagsBits;
  retstr->unit._object = object;
  retstr->isSingleThreshold = v10;
  retstr->paceFormat.value = value;
  retstr->metricType = metricType;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BelowTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BelowTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BelowTargetZoneModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements20BelowTargetZoneModelV10CodingKeys33_F0F000A9373B30E9B9F0312F54FCF0C1LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements20BelowTargetZoneModelV10CodingKeys33_F0F000A9373B30E9B9F0312F54FCF0C1LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v16 = *(v1 + 3);
  v17 = v9;
  LODWORD(v9) = v1[32];
  v14 = v1[33];
  v15 = v9;
  HIDWORD(v13) = v1[34];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = v8;
  v25 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v14;
    v11 = BYTE4(v13);
    v24 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v10;
    v20 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v11;
    v18 = 5;
    lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t BelowTargetZoneModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements20BelowTargetZoneModelV10CodingKeys33_F0F000A9373B30E9B9F0312F54FCF0C1LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements20BelowTargetZoneModelV10CodingKeys33_F0F000A9373B30E9B9F0312F54FCF0C1LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v28 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v29;
  v27 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v26 = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v20 = v12;
  v25 = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 4;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v24;
  v21 = 5;
  lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v19 & 1;
  (*(v6 + 8))(v8, v5);
  v17 = v22;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 33) = v18;
  *(a2 + 34) = v17;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t lazy protocol witness table accessor for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel.CodingKeys and conformance BelowTargetZoneModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for BelowTargetZoneModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type BelowTargetZoneModel and conformance BelowTargetZoneModel();
  a1[2] = lazy protocol witness table accessor for type BelowTargetZoneModel and conformance BelowTargetZoneModel();
  result = lazy protocol witness table accessor for type BelowTargetZoneModel and conformance BelowTargetZoneModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type BelowTargetZoneModel and conformance BelowTargetZoneModel()
{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel;
  if (!lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel);
  }

  return result;
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.goalCompletion(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.goalHalfwayPoint(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalEnded(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalUpcomingHeartRateZone(conclusionInSingleWindowResponse:executeSashGroupOnWatch:isFirstWindow:isLastWindow:isNextWindowLastWindow:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 40) + **(a9 + 40));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalUpcomingNonPace(conclusionInSingleWindowResponse:executeSashGroupOnWatch:isCadence:isFirstWindow:isHeartRate:isLastWindow:isNextWindowLastWindow:isPower:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = (*(a13 + 48) + **(a13 + 48));
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalUpcomingPace(conclusionInSingleWindowResponse:executeSashGroupOnWatch:isFirstWindow:isLastWindow:isNextWindowLastWindow:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 56) + **(a10 + 56));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.intervalUpcomingSpeed(conclusionInSingleWindowResponse:executeSashGroupOnWatch:isFirstWindow:isLastWindow:isNextWindowLastWindow:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 64) + **(a10 + 64));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.lapCompletionPace(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.lapCompletionSpeed(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.moveRingCompleted(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.pacerGoalCompletion(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 96) + **(a5 + 96));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceAheadOfGhost(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceBehindGhost(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceExpired(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceOffRoute(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 128) + **(a3 + 128));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceOnRoute(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceRouteCompleteRaceWon(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.raceRouteCompletedRaceLost(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.segmentMarked(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 160) + **(a5 + 160));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.trackStatusChanged(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 168) + **(a3 + 168));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.transitionedNotableDistancePace(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 176) + **(a5 + 176));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.transitionedNotableDistanceSpeed(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 184) + **(a5 + 184));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.transitionedNotableTime(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 192) + **(a5 + 192));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.workoutPaused(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 200) + **(a3 + 200));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.workoutResumed(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 208) + **(a3 + 208));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneEnteredNonPace(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 216) + **(a5 + 216));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneEnteredPace(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 224) + **(a5 + 224));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneEnteredSpeed(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 232) + **(a5 + 232));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedAboveNonPace(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 240) + **(a6 + 240));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedAbovePace(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 248) + **(a6 + 248));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedAboveSpeed(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 256) + **(a6 + 256));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedBelowNonPace(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 264) + **(a6 + 264));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedBelowPace(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 272) + **(a6 + 272));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.zoneExitedBelowSpeed(executeSashGroupOnWatch:isSingleThreshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 280) + **(a6 + 280));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for WorkoutVoiceFeedbackCATPatternsExecutor(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutVoiceFeedbackCATPatternsExecutor;
  if (!type metadata singleton initialization cache for WorkoutVoiceFeedbackCATPatternsExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceFeedbackCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  outlined init with copy of URL?(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v12;
}

id SAUIAudioDescription.init(asbd:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v2 setBitsPerChannel_];

  v4 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v2 setBytesPerFrame_];

  v5 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v2 setBytesPerPacket_];

  v6 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v2 setChannelsPerFrame_];

  v7 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v2 setFormatFlags_];

  v8 = *(a1 + 8);
  v9 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v2 setFormatID_];

  v10 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v2 setFramesPerPacket_];

  v11 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v2 setReserved_];

  v12 = MEMORY[0x277C66E20](*a1);
  [v2 setSampleRate_];

  switch(v8)
  {
    case 778924083:
      v13 = MEMORY[0x277D48B48];
      break;
    case 1819304813:
      v13 = MEMORY[0x277D48B40];
      break;
    case 1869641075:
      v13 = MEMORY[0x277D48B50];
      break;
    default:
      v13 = MEMORY[0x277D48B58];
      break;
  }

  [v2 setFormat_];
  return v2;
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.acceptedEndWorkout(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of VoiceFeedbackPatternResolving.executePattern(wrapper:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.acceptedStartWorkout(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.acceptedResumeWorkout(executeSashGroupOnWatch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.end(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.start(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutRemindersCATPatternsExecuting.resume(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutVoiceFeedbackCATPatternsExecuting.exerciseRingCompleted(executeSashGroupOnWatch:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for WorkoutRemindersCATPatternsExecutor(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutRemindersCATPatternsExecutor;
  if (!type metadata singleton initialization cache for WorkoutRemindersCATPatternsExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutRemindersResumeParameters.asKeyValuePairs()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_274C6F060;
  *(v1 + 32) = 0x646E497473727562;
  *(v1 + 40) = 0xEA00000000007865;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = MEMORY[0x277D839F8];
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = 0xD000000000000017;
  *(v1 + 88) = 0x8000000274C701C0;
  v5 = MEMORY[0x277D839B0];
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = v5;
  *(v1 + 128) = 0x74756F6B726F77;
  *(v1 + 136) = 0xE700000000000000;
  if (*(v0 + 24))
  {
    v6 = 0;
    v7 = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = MEMORY[0x277D839F8];
  }

  *(v1 + 144) = v6;
  *(v1 + 168) = v7;
  *(v1 + 176) = 0x4C74756F6B726F77;
  *(v1 + 184) = 0xEF6E6F697461636FLL;
  if (*(v0 + 40))
  {
    v8 = 0;
    v9 = 0;
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
  }

  else
  {
    v8 = *(v0 + 32);
    v9 = MEMORY[0x277D839F8];
  }

  *(v1 + 192) = v8;
  *(v1 + 216) = v9;
  *(v1 + 224) = 0xD000000000000017;
  *(v1 + 232) = 0x8000000274C70430;
  if (*(v0 + 56))
  {
    v10 = 0;
    v11 = 0;
    *(v1 + 248) = 0;
    *(v1 + 256) = 0;
  }

  else
  {
    v10 = *(v0 + 48);
    v11 = MEMORY[0x277D839F8];
  }

  *(v1 + 240) = v10;
  *(v1 + 264) = v11;
  *(v1 + 272) = 0xD000000000000017;
  *(v1 + 280) = 0x8000000274C70450;
  v12 = *(v0 + 72);
  if (v12)
  {
    v13 = *(v0 + 64);
    v14 = MEMORY[0x277D837D0];
  }

  else
  {
    v13 = 0;
    v14 = 0;
    *(v1 + 304) = 0;
  }

  *(v1 + 288) = v13;
  *(v1 + 296) = v12;
  *(v1 + 312) = v14;
  outlined init with copy of WorkoutRemindersResumeParameters(v0, &v16);
  return v2;
}

uint64_t WorkoutRemindersCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  outlined init with copy of URL?(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v12;
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:), 0, 0);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = [*(v1 + 16) workoutType];
  v4 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  *(v5 + 16) = xmmword_274C6F070;
  *(v5 + 32) = 0x646E497473727562;
  *(v5 + 40) = 0xEA00000000007865;
  v6 = MEMORY[0x277D839F8];
  *(v5 + 48) = v4;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000274C701C0;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 96) = v2;
  *(v5 + 120) = v7;
  *(v5 + 128) = 0x5474756F6B726F77;
  *(v5 + 136) = 0xEB00000000657079;
  *(v5 + 168) = v6;
  *(v5 + 144) = v3;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:);

  return v10(0xD000000000000016, 0x8000000274C703D0, v5);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.start(executeSashGroupOnWatch:_:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:), 0, 0);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = [*(v1 + 16) workoutType];
  v4 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  *(v5 + 16) = xmmword_274C6F070;
  *(v5 + 32) = 0x646E497473727562;
  *(v5 + 40) = 0xEA00000000007865;
  v6 = MEMORY[0x277D839F8];
  *(v5 + 48) = v4;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000274C701C0;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 96) = v2;
  *(v5 + 120) = v7;
  *(v5 + 128) = 0x5474756F6B726F77;
  *(v5 + 136) = 0xEB00000000657079;
  *(v5 + 168) = v6;
  *(v5 + 144) = v3;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:);

  return v10(0xD000000000000014, 0x8000000274C703F0, v5);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.end(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  *(v3 + 145) = a1;
  return MEMORY[0x2822009F8](specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:), 0, 0);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:)()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 145);
  *(v0 + 144) = 1;
  v3 = *(v1 + 16);
  v4 = [v3 workoutActivityType];
  v5 = [v3 workoutLocationType];
  v6 = [v3 workoutSwimmingLocationType];
  v7 = AFSiriWorkoutReminder.workoutAnnouncementDialogIdentifier.getter();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 25) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 0;
  *(v0 + 48) = v5;
  *(v0 + 56) = 0;
  *(v0 + 64) = v6;
  *(v0 + 72) = 0;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = WorkoutRemindersResumeParameters.asKeyValuePairs()();
  *(v0 + 112) = v9;
  outlined destroy of WorkoutRemindersResumeParameters(v0 + 16);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:);

  return v12(0xD000000000000017, 0x8000000274C70410, v9);
}

{
  return (*(v0 + 8))(*(v0 + 136));
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:);
  }

  else
  {

    *(v4 + 136) = a1;
    v5 = specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t specialized WorkoutRemindersCATPatternsExecutor.resume(executeSashGroupOnWatch:_:)(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
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

uint64_t getEnumTagSinglePayload for WorkoutRemindersResumeParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutRemindersResumeParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t AFSiriWorkoutReminder.workoutAnnouncementDialogIdentifier.getter()
{
  if ([v0 workoutActivityType] != 46)
  {
    if ([v0 workoutLocationType] != 1)
    {
      v7 = [v0 workoutActivityType];
      v8 = vdupq_n_s64(v7);
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2883D6BF8, v8), vceqq_s64(unk_2883D6C08, v8)))) & 1) != 0 || qword_2883D6C18 == v7 || unk_2883D6C20 == v7 || qword_2883D6C28 == v7)
      {
        v10 = [v0 workoutLocationType];
        v2 = 0xE700000000000000;
        v3 = 0xE700000000000000;
        v4 = 0x726F6F6474756FLL;
        v5 = 0x726F6F646E69;
        if (v10 == 2)
        {
          v2 = 0xE600000000000000;
        }

        else
        {
          v5 = 0x6E776F6E6B6E75;
        }

        v6 = v10 == 3;
        goto LABEL_17;
      }
    }

    return HKWorkoutActivityType.dialogIdentifier.getter([v0 workoutActivityType]);
  }

  if (![v0 workoutSwimmingLocationType])
  {
    return HKWorkoutActivityType.dialogIdentifier.getter([v0 workoutActivityType]);
  }

  v14 = 0;
  v1 = [v0 workoutSwimmingLocationType];
  v2 = 0xE700000000000000;
  v3 = 0xEA00000000007265;
  v4 = 0x7461775F6E65706FLL;
  v5 = 1819242352;
  if (v1 == 1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  v6 = v1 == 2;
LABEL_17:
  if (v6)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v6)
  {
    v12 = v3;
  }

  else
  {
    v12 = v2;
  }

  MEMORY[0x277C66DB0](v11, v12);

  MEMORY[0x277C66DB0](95, 0xE100000000000000);
  v13 = HKWorkoutActivityType.dialogIdentifier.getter([v0 workoutActivityType]);
  MEMORY[0x277C66DB0](v13);

  return v14;
}

uint64_t HKWorkoutActivityType.dialogIdentifier.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x79726568637261;
  switch(v1)
  {
    case 0:
      return 0xD000000000000011;
    case 1:
      return result;
    case 2:
    case 70:
      return 0xD000000000000013;
    case 3:
      return 0x6F746E696D646162;
    case 4:
      v6 = 1702060386;
      return v6 | 0x6C6C616200000000;
    case 5:
      v4 = 0x74656B736162;
      goto LABEL_64;
    case 6:
      v7 = 1819766626;
      return v7 | 0x676E6900000000;
    case 7:
      return 0x676E69786F62;
    case 8:
      return 0x676E69626D696C63;
    case 9:
      return 0x74656B63697263;
    case 10:
      return 0x72745F73736F7263;
    case 11:
      v7 = 1819440483;
      return v7 | 0x676E6900000000;
    case 12:
      v7 = 1818458467;
      return v7 | 0x676E6900000000;
    case 13:
      return 0x65636E6164;
    case 14:
      return 0xD000000000000017;
    case 15:
      return 0x63697470696C6C65;
    case 16:
      return 0xD000000000000011;
    case 17:
      v7 = 1668179302;
      return v7 | 0x676E6900000000;
    case 18:
      v7 = 1752394086;
      return v7 | 0x676E6900000000;
    case 19:
      return 0xD00000000000001CLL;
    case 20:
      return 1718382439;
    case 21:
      return 0x697473616E6D7967;
    case 22:
      v6 = 1684955496;
      return v6 | 0x6C6C616200000000;
    case 23:
      return 0x676E696B6968;
    case 24:
      return 0x79656B636F68;
    case 25:
      v7 = 1953396072;
      return v7 | 0x676E6900000000;
    case 26:
      return 0x6573736F7263616CLL;
    case 27:
      return 0x5F6C61697472616DLL;
    case 28:
      return 0x646E615F646E696DLL;
    case 29:
      return 0xD00000000000001FLL;
    case 30:
      return 0x735F656C64646170;
    case 31:
      return 2036427888;
    case 32:
      return 0xD000000000000018;
    case 33:
      return 0x6274657571636172;
    case 34:
      return 0x676E69776F72;
    case 35:
      return 0x7962677572;
    case 36:
      v7 = 1852732786;
      return v7 | 0x676E6900000000;
    case 37:
      v7 = 1818845555;
      return v7 | 0x676E6900000000;
    case 38:
      v8 = 1952541555;
      return v8 | 0x5F676E6900000000;
    case 39:
      v9 = 2003791475;
      return v9 | 0x6F70735F00000000;
    case 40:
      return 0x726563636F73;
    case 41:
      v6 = 1952870259;
      return v6 | 0x6C6C616200000000;
    case 42:
      return 0x687361757173;
    case 43:
      return 0x6C635F7269617473;
    case 44:
      v8 = 1718777203;
      return v8 | 0x5F676E6900000000;
    case 45:
      return 0x676E696D6D697773;
    case 46:
      return 0x65745F656C626174;
    case 47:
      return 0x73696E6E6574;
    case 48:
      return 0x6E615F6B63617274;
    case 49:
      return 0xD00000000000001DLL;
    case 50:
      v4 = 0x79656C6C6F76;
      goto LABEL_64;
    case 51:
      v7 = 1802264951;
      return v7 | 0x676E6900000000;
    case 52:
      return 0x69665F7265746177;
    case 53:
      return 0x6F705F7265746177;
    case 54:
      return 0x70735F7265746177;
    case 55:
      return 0x6E696C7473657277;
    case 56:
      return 1634168697;
    case 57:
      return 0x6572726162;
    case 58:
      v5 = 1701998435;
      return v5 | 0x6172745F00000000;
    case 59:
    case 69:
      return 0xD000000000000014;
    case 60:
      return 0x6C6C69686E776F64;
    case 61:
      return 0x6C69626978656C66;
    case 62:
      return 0xD000000000000020;
    case 63:
      return 0x706F725F706D756ALL;
    case 64:
      return 0x69786F626B63696BLL;
    case 65:
      return 0x736574616C6970;
    case 66:
      return 0x72616F62776F6E73;
    case 67:
      return 0x737269617473;
    case 68:
      v5 = 1885697139;
      return v5 | 0x6172745F00000000;
    case 71:
      return 0x6968635F696174;
    case 72:
      return 0x61635F646578696DLL;
    case 73:
      return 0x6379635F646E6168;
    case 74:
      v9 = 1668508004;
      return v9 | 0x6F70735F00000000;
    case 75:
      return 0x5F7373656E746966;
    case 76:
      v3 = 0x6F6964726163;
      goto LABEL_15;
    case 77:
      v3 = 0x6C6169636F73;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x645F000000000000;
      break;
    case 78:
      v4 = 0x656C6B636970;
LABEL_64:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
      break;
    case 79:
      result = 0x6E776F646C6F6F63;
      break;
    case 81:
      result = 0x6B69625F6D697773;
      break;
    case 82:
      result = 0x697469736E617274;
      break;
    case 83:
      result = 0xD000000000000011;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

WorkoutAnnouncements::VoiceFeedbackMetricType_optional __swiftcall VoiceFeedbackMetricType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VoiceFeedbackMetricType.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 4) > 0xC)
  {
    *a2 = 8;
  }

  else
  {
    *a2 = byte_274C6F51A[result - 4];
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for VoiceFeedbackMetricType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackMetricType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VoiceFeedbackMetricType(uint64_t result, unsigned int a2, unsigned int a3)
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

void __swiftcall VoiceFeedbackWorkoutStep.init(magnitude:unit:stepType:targetZone:)(WorkoutAnnouncements::VoiceFeedbackWorkoutStep *__return_ptr retstr, Swift::Double_optional magnitude, Swift::String_optional unit, WorkoutAnnouncements::VoiceFeedbackStepType stepType, WorkoutAnnouncements::VoiceFeedbackTargetZone_optional *targetZone)
{
  v6 = v5;
  minMagnitude_low = LOBYTE(targetZone->value.minMagnitude);
  v9 = *(v5 + 32);
  v10 = *(v5 + 40);
  v11 = *(v5 + 48);
  retstr->magnitude.value = *&magnitude.is_nil;
  retstr->magnitude.is_nil = unit.value._countAndFlagsBits & 1;
  retstr->unit.value._countAndFlagsBits = unit.value._object;
  retstr->unit.value._object = stepType;
  retstr->stepType = minMagnitude_low;

  v12 = *v6;
  *(&retstr->targetZone.value.unit + 7) = v6[1];
  *(&retstr->targetZone.value.minMagnitude + 7) = v12;
  *(&retstr->targetZone.value.zoneIndex.value + 5) = v9;
  *(&retstr->targetZone.value.isSingleThreshold + 4) = v10;
  LOWORD(retstr[1].magnitude.value) = v11;
}

uint64_t VoiceFeedbackWorkoutStep.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v40) = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v11 & 1;
    LOBYTE(v40) = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    v33 = v12;
    LOBYTE(v40) = 2;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    if (v15 < 4)
    {
      v32 = v15;
      v60 = 3;
      lazy protocol witness table accessor for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      v17 = v52;
      v16 = v53;
      v28 = v52;
      v29 = v53;
      v18 = v54;
      v19 = v55;
      v26 = v57;
      v27 = v56;
      HIDWORD(v25) = v58;

      v31 = v10;
      *&v35 = v10;
      v30 = v59;
      BYTE8(v35) = v59;
      *&v36 = v33;
      *(&v36 + 1) = v14;
      LOBYTE(v37) = v32;
      *(&v37 + 1) = v17;
      *&v38 = v16;
      *(&v38 + 1) = v18;
      *&v39[0] = v19;
      v20 = v26;
      v21 = v27;
      *(&v39[0] + 1) = v27;
      *&v39[1] = v26;
      LOWORD(v17) = WORD2(v25);
      WORD4(v39[1]) = WORD2(v25);
      v22 = v38;
      a2[2] = v37;
      a2[3] = v22;
      a2[4] = v39[0];
      *(a2 + 74) = *(v39 + 10);
      v23 = v36;
      *a2 = v35;
      a2[1] = v23;
      outlined init with copy of VoiceFeedbackWorkoutStep(&v35, &v40);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      v40 = v31;
      v41 = v30;
      v42 = v33;
      v43 = v14;
      v44 = v32;
      v45 = v28;
      v46 = v29;
      v47 = v18;
      v48 = v19;
      v49 = v21;
      v50 = v20;
      v51 = v17;
      return outlined destroy of VoiceFeedbackWorkoutStep(&v40);
    }

    LOBYTE(v40) = 2;
    type metadata accessor for DecodingError();
    swift_allocError();
    lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>();
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackWorkoutStep.CodingKeys> and conformance KeyedDecodingContainer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance VoiceFeedbackWorkoutStep.CodingKeys()
{
  v1 = 0x647574696E67616DLL;
  v2 = 0x6570795470657473;
  if (*v0 != 2)
  {
    v2 = 0x6F5A746567726174;
  }

  if (*v0)
  {
    v1 = 1953066613;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoiceFeedbackWorkoutStep.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = specialized VoiceFeedbackWorkoutStep.CodingKeys.init(stringValue:)(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoiceFeedbackWorkoutStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoiceFeedbackWorkoutStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VoiceFeedbackWorkoutStep.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements013VoiceFeedbackD4StepV10CodingKeys33_18A63B2CD911CFEF9ACD6291F2D4C790LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v7;
  v29 = *(v1 + 32);
  v8 = *(v1 + 56);
  v16 = *(v1 + 40);
  v17 = v8;
  v9 = *(v1 + 72);
  v19 = *(v1 + 80);
  v20 = v9;
  v18 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep.CodingKeys and conformance VoiceFeedbackWorkoutStep.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  v10 = v23;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v10)
  {
    v12 = v29;
    v13 = v18;
    v15 = v19;
    v14 = v20;
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v24) = v12;
    v30 = 2;
    lazy protocol witness table accessor for type VoiceFeedbackStepType and conformance VoiceFeedbackStepType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = v17;
    v24 = v16;
    v26 = v14;
    v27 = v15;
    v28 = v13;
    v30 = 3;
    lazy protocol witness table accessor for type VoiceFeedbackTargetZone and conformance VoiceFeedbackTargetZone();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t specialized static VoiceFeedbackWorkoutStep.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v20 = *(a2 + 88);
  if (v5)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_13;
    }
  }

  else
  {
    a3.n128_u64[0] = *a2;
    if (*a1 == *a2)
    {
      v21 = *(a2 + 8);
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_13;
    }
  }

  if (!v7)
  {
    v22 = 0;
    if (!v14 && v8 == v15)
    {
      goto LABEL_20;
    }

    return v22 & 1;
  }

  if (!v14)
  {
LABEL_13:
    v22 = 0;
    return v22 & 1;
  }

  if (v6 == *(a2 + 16) && v7 == v14)
  {
    if (v8 != v15)
    {
      goto LABEL_13;
    }

LABEL_20:
    if (v11)
    {
      v37 = v9;
      *v38 = v10;
      *&v38[8] = v11;
      *&v38[24] = v12;
      v39 = v13;
      if (v18)
      {
        v28 = v16;
        *v29 = v17;
        *&v29[8] = v18;
        *&v29[24] = v19;
        v30 = v20;
        v22 = specialized static VoiceFeedbackTargetZone.== infix(_:_:)(&v37, &v28, a3);
        v31[0] = v28;
        v31[1] = *v29;
        v31[2] = *&v29[16];
        v32 = v30;

        swift_bridgeObjectRetain_n();
        outlined destroy of VoiceFeedbackTargetZone(v31);
        v33 = v37;
        v34 = *v38;
        v35 = *&v38[16];
        v36 = v39;
        outlined destroy of VoiceFeedbackTargetZone(&v33);

        return v22 & 1;
      }

      v33 = v37;
      v34 = *v38;
      v35 = *&v38[16];
      v36 = v39;
      swift_bridgeObjectRetain_n();
      outlined destroy of VoiceFeedbackTargetZone(&v33);
    }

    else
    {
      if (!v18)
      {

        v22 = 1;
        return v22 & 1;
      }
    }

    v22 = 0;
    return v22 & 1;
  }

  v24 = v11;
  v25 = v9;
  v26 = *(a2 + 40);
  v27 = *(a2 + 64);
  v22 = 0;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v16 = v26;
    v18 = v27;
    v11 = v24;
    v9 = v25;
    if (v8 == v15)
    {
      goto LABEL_20;
    }
  }

  return v22 & 1;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackWorkoutStep(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackWorkoutStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t specialized VoiceFeedbackWorkoutStep.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795470657473 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5A746567726174 && a2 == 0xEA0000000000656ELL)
  {

    return 3;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

WorkoutAnnouncements::SegmentModel __swiftcall SegmentModel.init(index:)(WorkoutAnnouncements::SegmentModel index)
{
  *v1 = 18;
  *(v1 + 8) = *&index.alertType;
  return index;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SegmentModel.CodingKeys()
{
  if (*v0)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x7079547472656C61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SegmentModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v9 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  *a3 = v9;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SegmentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SegmentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SegmentModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements12SegmentModelV10CodingKeys33_2AB8F4E1749EF8C56127E99B22054B9DLLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements12SegmentModelV10CodingKeys33_2AB8F4E1749EF8C56127E99B22054B9DLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[1] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v8;
  v12 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys);
  }

  return result;
}

uint64_t SegmentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements12SegmentModelV10CodingKeys33_2AB8F4E1749EF8C56127E99B22054B9DLLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements12SegmentModelV10CodingKeys33_2AB8F4E1749EF8C56127E99B22054B9DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SegmentModel.CodingKeys and conformance SegmentModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = 0;
    lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v15;
    v13 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for SegmentModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type SegmentModel and conformance SegmentModel();
  a1[2] = lazy protocol witness table accessor for type SegmentModel and conformance SegmentModel();
  result = lazy protocol witness table accessor for type SegmentModel and conformance SegmentModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SegmentModel and conformance SegmentModel()
{
  result = lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel;
  if (!lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel;
  if (!lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel;
  if (!lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel);
  }

  return result;
}

void __swiftcall UpcomingIntervalModel.init(completedStep:nextStep:)(WorkoutAnnouncements::UpcomingIntervalModel *__return_ptr retstr, WorkoutAnnouncements::VoiceFeedbackWorkoutStep_optional *completedStep, WorkoutAnnouncements::VoiceFeedbackWorkoutStep *nextStep)
{
  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_intervalUpcoming;
  *(&retstr->completedStep.value.magnitude.value + 7) = 0.0;
  *(&retstr->completedStep.value.magnitude + 15) = 0;
  *(&retstr->completedStep.value.unit.value._countAndFlagsBits + 7) = 0;
  *(&retstr->completedStep.value.unit.value._object + 7) = 1;
  *(&retstr->completedStep.value.targetZone.value.minMagnitude + 6) = 0u;
  *(&retstr->completedStep.value.targetZone.value.unit + 6) = 0u;
  *(&retstr->completedStep.value.targetZone.value.zoneIndex.value + 4) = 0u;
  *&retstr->completedStep.value.targetZone.is_nil = 0u;
  v6 = *(&retstr->completedStep.value.targetZone.value.unit + 6);
  v12[2] = *(&retstr->completedStep.value.targetZone.value.minMagnitude + 6);
  v12[3] = v6;
  v13[0] = *(&retstr->completedStep.value.targetZone.value.zoneIndex.value + 4);
  *(v13 + 10) = *&retstr->completedStep.value.targetZone.is_nil;
  v7 = *(&retstr->completedStep.value.unit + 7);
  v12[0] = *(&retstr->completedStep.value.magnitude.value + 7);
  v12[1] = v7;
  outlined destroy of AceOutput?(v12, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  v8 = *(&completedStep->value.targetZone.value.maxMagnitude + 7);
  *(&retstr->completedStep.value.targetZone.value.minMagnitude + 6) = *&completedStep->value.stepType;
  *(&retstr->completedStep.value.targetZone.value.unit + 6) = v8;
  *(&retstr->completedStep.value.targetZone.value.zoneIndex.value + 4) = *(&completedStep->value.targetZone.value.unit._object + 7);
  *&retstr->completedStep.value.targetZone.is_nil = *(&completedStep->value.targetZone.value.zoneIndex.value + 7);
  unit = completedStep->value.unit;
  *(&retstr->completedStep.value.magnitude.value + 7) = *&completedStep->value.magnitude.value;
  *(&retstr->completedStep.value.unit + 7) = unit;
  v10 = *(&nextStep->targetZone.value.maxMagnitude + 7);
  *(&retstr->nextStep.targetZone.value.minMagnitude + 7) = *&nextStep->stepType;
  *(&retstr->nextStep.targetZone.value.unit + 7) = v10;
  *(&retstr->nextStep.targetZone.value.zoneIndex.value + 5) = *(&nextStep->targetZone.value.unit._object + 7);
  *(&retstr->nextStep.targetZone + 1) = *(&nextStep->targetZone.value.zoneIndex.value + 7);
  v11 = nextStep->unit;
  *&retstr->nextStep.magnitude.is_nil = *&nextStep->magnitude.value;
  *&retstr->nextStep.unit.value._object = v11;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance UpcomingIntervalModel.CodingKeys()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x706574537478656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7079547472656C61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UpcomingIntervalModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = specialized UpcomingIntervalModel.CodingKeys.init(stringValue:)(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UpcomingIntervalModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UpcomingIntervalModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpcomingIntervalModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements21UpcomingIntervalModelV10CodingKeys33_2D96C49AE7A0F9B5185DF2CE594465CDLLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements21UpcomingIntervalModelV10CodingKeys33_2D96C49AE7A0F9B5185DF2CE594465CDLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 56);
  v32 = *(v1 + 40);
  v33 = v8;
  v34[0] = *(v1 + 72);
  *(v34 + 10) = *(v1 + 82);
  v9 = *(v1 + 24);
  v30 = *(v1 + 8);
  v31 = v9;
  v10 = *(v1 + 152);
  v37 = *(v1 + 136);
  v38 = v10;
  v39[0] = *(v1 + 168);
  *(v39 + 10) = *(v1 + 178);
  v11 = *(v1 + 120);
  v35 = *(v1 + 104);
  v36 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25) = v7;
  LOBYTE(v22[0]) = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  v12 = v40;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    v27 = v32;
    v28 = v33;
    v29[0] = v34[0];
    *(v29 + 10) = *(v34 + 10);
    v25 = v30;
    v26 = v31;
    v24 = 1;
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v30, v22);
    lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22[2] = v27;
    v22[3] = v28;
    *v23 = v29[0];
    *&v23[10] = *(v29 + 10);
    v22[0] = v25;
    v22[1] = v26;
    outlined destroy of AceOutput?(v22, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
    v19 = v37;
    v20 = v38;
    v21[0] = v39[0];
    *(v21 + 10) = *(v39 + 10);
    v17 = v35;
    v18 = v36;
    v16 = 2;
    outlined init with copy of VoiceFeedbackWorkoutStep(&v35, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[2] = v19;
    v14[3] = v20;
    *v15 = v21[0];
    *&v15[10] = *(v21 + 10);
    v14[0] = v17;
    v14[1] = v18;
    outlined destroy of VoiceFeedbackWorkoutStep(v14);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t UpcomingIntervalModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements21UpcomingIntervalModelV10CodingKeys33_2D96C49AE7A0F9B5185DF2CE594465CDLLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements21UpcomingIntervalModelV10CodingKeys33_2D96C49AE7A0F9B5185DF2CE594465CDLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v38 = 0;
    v87 = 0;
    v36 = 0;
    v37 = 0;
    v39 = 0;
    v35 = 0;
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v46 = 0;
    v47 = 0;
    *&v48 = 0;
    *(&v48 + 1) = 1;
    v49 = 0;
    v50 = v38;
    v51 = v87;
    v52 = v37;
    v53 = v36;
    v54 = v39;
    v55 = v35;
    LOWORD(v56) = 0;
    return outlined destroy of AceOutput?(&v46, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  }

  else
  {
    v33 = v6;
    LOBYTE(v40[0]) = 0;
    lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v46;
    v74[31] = 1;
    lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v10;
    v30 = v75;
    v31 = v76;
    v11 = v77;
    v32 = v78;
    v38 = v79;
    v87 = v80;
    v36 = v82;
    v37 = v81;
    v39 = v83;
    v35 = v84;
    v12 = v85;
    memset(v70, 0, sizeof(v70));
    v71 = 1;
    v72 = 0u;
    v73 = 0u;
    memset(v74, 0, 26);
    outlined destroy of AceOutput?(v70, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
    v64 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v8, v5);
    *&v86[38] = v67;
    *&v86[54] = v68;
    *&v86[70] = v69[0];
    *&v86[80] = *(v69 + 10);
    *&v86[6] = v65;
    *&v86[22] = v66;
    LOBYTE(v40[0]) = v29;
    *(&v40[0] + 1) = v30;
    v40[1] = v31;
    *&v41 = v11;
    v28 = v11;
    v14 = v37;
    v13 = v38;
    *(&v41 + 1) = v32;
    *&v42 = v38;
    *(&v42 + 1) = v87;
    *&v43 = v37;
    v15 = v35;
    v16 = v36;
    *(&v43 + 1) = v36;
    *&v44 = v39;
    *(&v44 + 1) = v35;
    *v45 = v12;
    *&v45[82] = *(v69 + 10);
    *&v45[50] = *&v86[48];
    *&v45[34] = *&v86[32];
    *&v45[2] = *v86;
    *&v45[18] = *&v86[16];
    *&v45[66] = *&v86[64];
    v17 = v40[0];
    v18 = v31;
    v19 = v42;
    *(a2 + 32) = v41;
    *(a2 + 48) = v19;
    *a2 = v17;
    *(a2 + 16) = v18;
    v20 = v43;
    v21 = v44;
    v22 = *&v45[16];
    *(a2 + 96) = *v45;
    *(a2 + 112) = v22;
    *(a2 + 64) = v20;
    *(a2 + 80) = v21;
    v23 = *&v45[32];
    v24 = *&v45[48];
    v25 = *&v45[64];
    v26 = *&v45[80];
    *(a2 + 192) = *&v45[96];
    *(a2 + 160) = v25;
    *(a2 + 176) = v26;
    *(a2 + 128) = v23;
    *(a2 + 144) = v24;
    outlined init with copy of UpcomingIntervalModel(v40, &v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v60 = *&v86[32];
    v61 = *&v86[48];
    v62 = *&v86[64];
    v63 = *&v86[80];
    v58 = *v86;
    LOBYTE(v46) = v29;
    v47 = v30;
    v48 = v31;
    v49 = v28;
    v50 = v32;
    v51 = v13;
    v52 = v87;
    v53 = v14;
    v54 = v16;
    v55 = v39;
    v56 = v15;
    v57 = v12;
    v59 = *&v86[16];
    return outlined destroy of UpcomingIntervalModel(&v46);
  }
}

uint64_t specialized static UpcomingIntervalModel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v63 = *(a1 + 40);
  v64 = v3;
  v65[0] = *(a1 + 72);
  *(v65 + 10) = *(a1 + 82);
  v4 = *(a1 + 24);
  v61 = *(a1 + 8);
  v62 = v4;
  v5 = *(a1 + 120);
  v66 = *(a1 + 104);
  v67 = v5;
  v6 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = *(a1 + 168);
  *(v70 + 10) = *(a1 + 178);
  v69 = v7;
  v70[0] = v8;
  v68 = v6;
  v9 = *a2;
  *(v75 + 10) = *(a2 + 82);
  v10 = *(a2 + 56);
  v73 = *(a2 + 40);
  v74 = v10;
  v11 = *(a2 + 24);
  v71 = *(a2 + 8);
  v72 = v11;
  v75[0] = *(a2 + 72);
  *(v80 + 10) = *(a2 + 178);
  v12 = *(a2 + 168);
  v13 = *(a2 + 136);
  v79 = *(a2 + 152);
  v80[0] = v12;
  v14 = *(a2 + 104);
  v77 = *(a2 + 120);
  v78 = v13;
  v76 = v14;
  if (v2 != v9)
  {
    goto LABEL_9;
  }

  v16 = *(&v62 + 1);
  *&v60[6] = *(a2 + 8);
  *&v60[22] = *(a2 + 3);
  v17 = *(&v72 + 1);
  if (*(&v62 + 1) == 1)
  {
    if (*(&v72 + 1) == 1)
    {
      v50 = *(a1 + 8);
      *&v51 = *(a1 + 3);
      *(&v51 + 1) = 1;
      v18 = *(a1 + 56);
      v52 = *(a1 + 40);
      v53 = v18;
      *v54 = *(a1 + 72);
      *&v54[10] = *(a1 + 82);
      outlined init with copy of VoiceFeedbackWorkoutStep?(&v61, &v45);
      outlined init with copy of VoiceFeedbackWorkoutStep?(&v71, &v45);
      outlined destroy of AceOutput?(&v50, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
LABEL_12:
      v42 = v68;
      v43 = v69;
      v44[0] = v70[0];
      *(v44 + 10) = *(v70 + 10);
      v40 = v66;
      v41 = v67;
      v37 = v78;
      v38 = v79;
      v39[0] = v80[0];
      *(v39 + 10) = *(v80 + 10);
      v35 = v76;
      v36 = v77;
      outlined init with copy of VoiceFeedbackWorkoutStep(&v66, &v50);
      outlined init with copy of VoiceFeedbackWorkoutStep(&v76, &v50);
      v25 = specialized static VoiceFeedbackWorkoutStep.== infix(_:_:)(&v40, &v35, v32);
      v47 = v37;
      v48 = v38;
      v49[0] = v39[0];
      *(v49 + 10) = *(v39 + 10);
      v45 = v35;
      v46 = v36;
      outlined destroy of VoiceFeedbackWorkoutStep(&v45);
      v52 = v42;
      v53 = v43;
      *v54 = v44[0];
      *&v54[10] = *(v44 + 10);
      v50 = v40;
      v51 = v41;
      outlined destroy of VoiceFeedbackWorkoutStep(&v50);
      return v25 & 1;
    }

    v21 = a2;
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v61, &v50);
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v71, &v50);
    goto LABEL_8;
  }

  v19 = *(a1 + 3);
  v50 = *(a1 + 8);
  *&v51 = v19;
  *(&v51 + 1) = *(&v62 + 1);
  *v54 = *(a1 + 72);
  *&v54[10] = *(a1 + 82);
  v20 = *(a1 + 56);
  v52 = *(a1 + 40);
  v53 = v20;
  v47 = v52;
  v48 = v20;
  *(v49 + 10) = *&v54[10];
  v49[0] = *v54;
  v45 = v50;
  v46 = v51;
  if (*(&v72 + 1) == 1)
  {
    v21 = a2;
    v42 = v52;
    v43 = v53;
    v44[0] = *v54;
    *(v44 + 10) = *&v54[10];
    v40 = v50;
    v41 = v51;
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v61, &v35);
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v71, &v35);
    outlined init with copy of VoiceFeedbackWorkoutStep?(&v50, &v35);
    outlined destroy of VoiceFeedbackWorkoutStep(&v40);
LABEL_8:
    v50 = *(a1 + 8);
    *&v51 = *(a1 + 3);
    *(&v51 + 1) = v16;
    v22 = *(a1 + 56);
    v52 = *(a1 + 40);
    v53 = v22;
    *v54 = *(a1 + 72);
    *&v54[10] = *(a1 + 82);
    *&v55[14] = *&v60[14];
    *v55 = *v60;
    v56 = v17;
    *(v59 + 10) = *(v21 + 82);
    v23 = *(v21 + 72);
    v24 = *(v21 + 40);
    v58 = *(v21 + 56);
    v59[0] = v23;
    v57 = v24;
    outlined destroy of AceOutput?(&v50, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSg_ADtMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSg_ADtMR);
    goto LABEL_9;
  }

  v40 = *(a2 + 8);
  v27 = *(a2 + 3);
  v28 = *(a2 + 56);
  v42 = *(a2 + 40);
  v43 = v28;
  v44[0] = *(a2 + 72);
  *(v44 + 10) = *(a2 + 82);
  *&v41 = v27;
  *(&v41 + 1) = *(&v72 + 1);
  outlined init with copy of VoiceFeedbackWorkoutStep?(&v61, &v35);
  outlined init with copy of VoiceFeedbackWorkoutStep?(&v71, &v35);
  outlined init with copy of VoiceFeedbackWorkoutStep?(&v50, &v35);
  v30 = specialized static VoiceFeedbackWorkoutStep.== infix(_:_:)(&v45, &v40, v29);
  v33[2] = v42;
  v33[3] = v43;
  v34[0] = v44[0];
  *(v34 + 10) = *(v44 + 10);
  v33[0] = v40;
  v33[1] = v41;
  outlined destroy of VoiceFeedbackWorkoutStep(v33);
  v37 = v47;
  v38 = v48;
  v39[0] = v49[0];
  *(v39 + 10) = *(v49 + 10);
  v35 = v45;
  v36 = v46;
  outlined destroy of VoiceFeedbackWorkoutStep(&v35);
  v40 = *(a1 + 8);
  *&v41 = *(a1 + 3);
  *(&v41 + 1) = v16;
  v31 = *(a1 + 56);
  v42 = *(a1 + 40);
  v43 = v31;
  v44[0] = *(a1 + 72);
  *(v44 + 10) = *(a1 + 82);
  outlined destroy of AceOutput?(&v40, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  if (v30)
  {
    goto LABEL_12;
  }

LABEL_9:
  v25 = 0;
  return v25 & 1;
}

unint64_t lazy protocol witness table accessor for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel.CodingKeys and conformance UpcomingIntervalModel.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of VoiceFeedbackWorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackWorkoutStep and conformance VoiceFeedbackWorkoutStep);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for UpcomingIntervalModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type UpcomingIntervalModel and conformance UpcomingIntervalModel();
  a1[2] = lazy protocol witness table accessor for type UpcomingIntervalModel and conformance UpcomingIntervalModel();
  result = lazy protocol witness table accessor for type UpcomingIntervalModel and conformance UpcomingIntervalModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UpcomingIntervalModel and conformance UpcomingIntervalModel()
{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel;
  if (!lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20WorkoutAnnouncements013VoiceFeedbackA4StepVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy194_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UpcomingIntervalModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 194))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UpcomingIntervalModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 194) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 194) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

uint64_t specialized UpcomingIntervalModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xED00007065745364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706574537478656ELL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void __swiftcall EnteredTargetZoneModel.init(magnitude:unit:targetZone:)(WorkoutAnnouncements::EnteredTargetZoneModel *__return_ptr retstr, Swift::Double magnitude, Swift::String unit, WorkoutAnnouncements::VoiceFeedbackTargetZone *targetZone)
{
  object = unit._object;
  countAndFlagsBits = unit._countAndFlagsBits;
  metricType = targetZone->metricType;
  value = targetZone->paceFormat.value;
  v10 = BYTE1(targetZone[1].minMagnitude);

  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_zoneEntered;
  retstr->magnitude = magnitude;
  retstr->unit._countAndFlagsBits = countAndFlagsBits;
  retstr->unit._object = object;
  retstr->isSingleThreshold = v10;
  retstr->paceFormat.value = value;
  retstr->metricType = metricType;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EnteredTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EnteredTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnteredTargetZoneModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements22EnteredTargetZoneModelV10CodingKeys33_520EC161D85A1C4F62CA995B21BF7696LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements22EnteredTargetZoneModelV10CodingKeys33_520EC161D85A1C4F62CA995B21BF7696LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v16 = *(v1 + 3);
  v17 = v9;
  LODWORD(v9) = v1[32];
  v14 = v1[33];
  v15 = v9;
  HIDWORD(v13) = v1[34];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = v8;
  v25 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v14;
    v11 = BYTE4(v13);
    v24 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v10;
    v20 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v11;
    v18 = 5;
    lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EnteredTargetZoneModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements22EnteredTargetZoneModelV10CodingKeys33_520EC161D85A1C4F62CA995B21BF7696LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements22EnteredTargetZoneModelV10CodingKeys33_520EC161D85A1C4F62CA995B21BF7696LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v28 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v29;
  v27 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v26 = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v20 = v12;
  v25 = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 4;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v24;
  v21 = 5;
  lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v19 & 1;
  (*(v6 + 8))(v8, v5);
  v17 = v22;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 33) = v18;
  *(a2 + 34) = v17;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t lazy protocol witness table accessor for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel.CodingKeys and conformance EnteredTargetZoneModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EnteredTargetZoneModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel();
  a1[2] = lazy protocol witness table accessor for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel();
  result = lazy protocol witness table accessor for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel()
{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel;
  if (!lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel);
  }

  return result;
}

WorkoutAnnouncements::VoiceFeedbackPaceFormat_optional __swiftcall VoiceFeedbackPaceFormat.init(rawValue:)(Swift::Int rawValue)
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceFeedbackPaceFormat@<X0>(void *result@<X0>, char *a2@<X8>)
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

unint64_t instantiation function for generic protocol witness table for VoiceFeedbackPaceFormat(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  *(a1 + 8) = result;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC150]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1D0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD998]();
}

{
  return MEMORY[0x2821FD9A8]();
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
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAD0]();
}

{
  return MEMORY[0x2821FDAE0]();
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
  return MEMORY[0x2821FDB58]();
}