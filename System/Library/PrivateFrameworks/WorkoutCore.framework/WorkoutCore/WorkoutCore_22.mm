void specialized static MetricPlatterProvider.filterUnsupportedMetrics(from:supportedMetrics:)(uint64_t a1, unint64_t a2)
{
  v37 = a2;
  v2 = a1;
  v3 = *(a1 + 16);

  if (v3)
  {
    v4 = 0;
    v36 = v2 + 32;
    v35 = xmmword_20B423A90;
    while (1)
    {
      v5 = &v36[16 * v4];
LABEL_4:
      if (v4 >= v3)
      {
        break;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_40;
      }

      v6 = *v5;
      v7 = *(v5 + 1);
      v8 = v5[1];
      v38 = v6;
      v39 = v4 + 1;
      switch(v6)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v9 & 1) == 0)
          {
            switch(v38)
            {
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
              case 9:
              case 10:
              case 11:
              case 12:
              case 13:
              case 14:
              case 15:
                v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v10)
                {
                  goto LABEL_14;
                }

                ++v4;
                v5 += 16;
                if (v39 == v3)
                {
                  return;
                }

                goto LABEL_4;
              default:
                goto LABEL_13;
            }
          }

          break;
        default:

LABEL_13:

          break;
      }

LABEL_14:
      v42 = v8;
      if (v7)
      {
        v11 = *(v7 + 16);
        if (v11)
        {
          v33 = v3;
          v34 = v2;

          v12 = 32;
          v13 = MEMORY[0x277D84F90];
          do
          {
            v16 = *(v7 + v12);
            isa = UInt._bridgeToObjectiveC()().super.super.isa;
            v40 = isa;
            MEMORY[0x28223BE20](isa, v18);
            v32[2] = &v40;
            v19 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v32, v37);

            if (v19)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v41 = v13;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
                v13 = v41;
              }

              v15 = *(v13 + 16);
              v14 = *(v13 + 24);
              if (v15 >= v14 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
                v13 = v41;
              }

              *(v13 + 16) = v15 + 1;
              *(v13 + 8 * v15 + 32) = v16;
            }

            v12 += 8;
            --v11;
          }

          while (v11);
          swift_bridgeObjectRelease_n();
          v8 = v42;
          v3 = v33;
          v2 = v34;
        }

        else
        {

          v13 = MEMORY[0x277D84F90];
        }
      }

      else
      {

        v13 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v35;
      v22 = v39;
      *(inited + 32) = v38;
      *(inited + 33) = v8;
      *(inited + 40) = v13;
      v23 = *(v2 + 2);
      if (v23 < v22)
      {
        goto LABEL_41;
      }

      v24 = __OFSUB__(v22, v4);
      v25 = v22 - v4;
      if (v24)
      {
        goto LABEL_42;
      }

      v24 = __OFSUB__(1, v25);
      v26 = 1 - v25;
      if (v24)
      {
        goto LABEL_43;
      }

      v27 = v23 + v26;
      if (__OFADD__(v23, v26))
      {
        goto LABEL_44;
      }

      v28 = inited;

      v29 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v2;
      if (!v29 || v27 > *(v2 + 3) >> 1)
      {
        if (v23 <= v27)
        {
          v30 = v27;
        }

        else
        {
          v30 = v23;
        }

        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v30, 1, v2);
        v43 = v2;
      }

      v31 = v4;
      v4 = v39;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v31, v39, 1, v28);
      swift_setDeallocating();
      swift_arrayDestroy();

      if (v4 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for MetricPlatterProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricPlatterProvider(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSNumber();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
  }

  return result;
}

uint64_t MediaPlaybackController.initiateMoodStationPlayback(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Station.Mood();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackController.initiateMoodStationPlayback(for:), v1, 0);
}

uint64_t MediaPlaybackController.initiateMoodStationPlayback(for:)()
{
  HKWorkoutActivityType.moodForWorkoutType.getter([*(v0 + 16) identifier], *(v0 + 48));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = MediaPlaybackController.initiateMoodStationPlayback(for:);
  v2 = *(v0 + 48);

  return MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(v2);
}

{
  v1 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);
  if (v1)
  {

    return MEMORY[0x2822009F8](MediaPlaybackController.initiateMoodStationPlayback(for:), 0, 0);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "No mood station identifier returned from request", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }
}

{
  v3 = *v0;

  swift_unknownObjectRelease();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t MediaPlaybackController.initiateMoodStationPlayback(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return MEMORY[0x2822009F8](MediaPlaybackController.initiateMoodStationPlayback(for:), v4, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = v2[9];
  v4 = static MusicSiriRepresentationAppIntentDispatcher.shared;
  v5 = unk_27C7299A0;
  v2[10] = static MusicSiriRepresentationAppIntentDispatcher.shared;
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v2;
  v6[1] = MediaPlaybackController.initiateMoodStationPlayback(for:);
  v7 = v2[8];

  return MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:)(v7, v3, v4, v5);
}

id static NLSessionActivityFactory.make(configuration:uuid:formattingManager:elevationUnit:healthStore:builder:experienceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(NLSessionActivity);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithConfiguration:a1 UUID:isa formattingManager:a3 elevationUnit:a4 healthStore:a5 builder:a6 experienceType:a7];

  return v15;
}

id NLSessionActivityFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NLSessionActivityFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLSessionActivityFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NLSessionActivityFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLSessionActivityFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static PowerZonesPlatterMetricsProvider.metrics(workoutSettingsManager:shouldShowCadenceMetrics:)(void *a1, char a2)
{
  v30 = xmmword_20B438CD0;
  v2 = 5;
  if (a2)
  {
    v2 = 15;
  }

  v31 = 43;
  v32 = v2;
  v3 = [a1 supportedMetrics];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = (v5 & 0xC000000000000001) == 0;
    v7 = v5 == 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    v7 = 1;
  }

  v8 = 0;
  v9 = v5 + 56;
  v10 = MEMORY[0x277D84F90];
  v26 = v7;
  v27 = v6;
  do
  {
    if (v7)
    {
      goto LABEL_9;
    }

    v11 = *(&v30 + v8);
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v13 = v12;
    if (v6)
    {
      if (!*(v5 + 16))
      {

        goto LABEL_9;
      }

      v28 = v11;
      v14 = v10;
      type metadata accessor for NSNumber();
      v15 = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v16 = -1 << *(v5 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
LABEL_7:

        v7 = v26;
        v6 = v27;
LABEL_8:
        v10 = v14;
        goto LABEL_9;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = *(*(v5 + 48) + 8 * v17);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v7 = v26;
      v6 = v27;
      v11 = v28;
    }

    else
    {
      v14 = v10;
      v21 = __CocoaSet.contains(_:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = v14;
    v29 = v14;
    v22 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
      v10 = v29;
    }

    v24 = *(v10 + 16);
    v23 = *(v10 + 24);
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      v10 = v29;
    }

    *(v10 + 16) = v24 + 1;
    *(v10 + 8 * v24 + 32) = v22;
LABEL_9:
    ++v8;
  }

  while (v8 != 4);

  return v10;
}

uint64_t getEnumTagSinglePayload for PowerZonesPlatterMetricsProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PowerZonesPlatterMetricsProvider(_WORD *result, int a2, int a3)
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

uint64_t HKActivityMoveMode.supportsMetricPlatterType(_:activityType:)(unsigned __int8 *a1, id a2, uint64_t a3)
{
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000059, 0x800000020B45CE50, "WorkoutCore/MetricPlatterSupport.swift", 38, 2, 157, 0);
      __break(1u);
      return result;
    }

    v3 = *a1;
    if (v3 == 13)
    {
      return 0;
    }

    if (v3 == 12)
    {
      return [a2 effectiveTypeIdentifier] == 13;
    }
  }

  return 1;
}

Swift::Bool __swiftcall LiveWorkoutConfiguration.supportsMetricPlatterType(_:)(WorkoutCore::MetricPlatterType a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = 1;
  if (v3 <= 4)
  {
    if (v3 >= 2)
    {
      if (v3 - 2 >= 2)
      {
        v8 = v6 == 3;
      }

      else
      {
        v8 = v6 == 1;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (v3 > 0xF)
    {
      goto LABEL_10;
    }

    if (((1 << v3) & 0xF580) == 0)
    {
      if (v3 == 9)
      {
LABEL_12:
        v7 = v6 != 1;
        goto LABEL_17;
      }

      if (v3 == 11)
      {
        v8 = v6 == 4;
        goto LABEL_14;
      }

LABEL_10:
      if (v3 == 5)
      {
        v8 = v6 == 2;
LABEL_14:
        v7 = v8;
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

LABEL_17:
  v9 = LiveWorkoutConfiguration.currentActivityType.getter();
  LOBYTE(v19[0]) = v3;
  v10 = specialized FIUIWorkoutActivityType.supportsMetricPlatterType(_:isGymKit:)(v19);

  v11 = *(v2 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode);
  v12 = LiveWorkoutConfiguration.currentActivityType.getter();
  if (v11 != 1)
  {
    if (v11 != 2)
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000059, 0x800000020B45CE50, "WorkoutCore/MetricPlatterSupport.swift", 38, 2, 157, 0);
      __break(1u);
      return result;
    }

    if (v3 == 12)
    {
      v15 = v12;
      v16 = [v12 effectiveTypeIdentifier];

      v13 = v16 != 13;
      goto LABEL_26;
    }

    if (v3 == 13)
    {

      v13 = 1;
      goto LABEL_26;
    }
  }

  v13 = 0;
  if (v3 <= 0xD)
  {
    v14 = 0;
    if (((1 << v3) & 0x3400) == 0)
    {
LABEL_27:
      if (v3 == 3)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v19);

        v17 = v20;
LABEL_34:
        if (v14 & 1 | ((v7 & v10 & 1) == 0) | v13 & 1)
        {
          return 0;
        }

        return v17 ^ 1;
      }

      goto LABEL_28;
    }

LABEL_26:
    v14 = v13;
    v13 = specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)();
    goto LABEL_27;
  }

  v14 = 0;
LABEL_28:
  if (v3 == 7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v19);

    v17 = v19[0];
    goto LABEL_34;
  }

  v17 = 0;
  result = 0;
  if (!(v14 & 1 | ((v7 & v10 & 1) == 0) | v13 & 1))
  {
    return v17 ^ 1;
  }

  return result;
}

Swift::Bool __swiftcall ConfigurationType.supportsMetricPlatterType(_:)(WorkoutCore::MetricPlatterType a1)
{
  v2 = *a1;
  v3 = *v1;
  result = 1;
  if (v2 <= 4)
  {
    v5 = v3 == 1;
    v6 = v3 == 3;
    if ((v2 - 2) < 2)
    {
      v6 = v5;
    }

    return v2 < 2 || v6;
  }

  else
  {
    if (v2 <= 0xF)
    {
      if (((1 << v2) & 0xF580) != 0)
      {
        return result;
      }

      if (v2 == 9)
      {
        return v3 != 1;
      }

      if (v2 == 11)
      {
        return v3 == 4;
      }
    }

    v7 = v3 == 2;
    v8 = v3 != 1;
    if (v2 == 5)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }
}

Swift::Bool __swiftcall LiveWorkoutConfiguration.userSupportsMetricPlatterType(_:)(WorkoutCore::MetricPlatterType a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode);
  v4 = LiveWorkoutConfiguration.currentActivityType.getter();
  if (v3 == 2)
  {
    if (v2 != 12)
    {
      if (v2 == 13)
      {

        return 0;
      }

      goto LABEL_6;
    }

    v6 = v4;
    v7 = [v4 effectiveTypeIdentifier];

    return v7 == 13;
  }

  else
  {
    if (v3 == 1)
    {
LABEL_6:

      return 1;
    }

    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000059, 0x800000020B45CE50, "WorkoutCore/MetricPlatterSupport.swift", 38, 2, 157, 0);
    __break(1u);
  }

  return result;
}

double key path getter for LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath : LiveWorkoutConfiguration@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

double key path setter for LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath : LiveWorkoutConfiguration(__int128 *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return result;
}

void key path getter for ActivityPausedRingsObserver.isPaused : ActivityPausedRingsObserver(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void key path setter for ActivityPausedRingsObserver.isPaused : ActivityPausedRingsObserver(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  ActivityPausedRingsObserver.isPaused.didset();
}

uint64_t specialized FIUIWorkoutActivityType.supportsMetricPlatterType(_:isGymKit:)(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 1;
  switch(v2)
  {
    case 2:
    case 3:
      v4 = FIUIWorkoutActivityType.configurationTypes.getter();
      v5 = 1;
      goto LABEL_20;
    case 4:
      v4 = FIUIWorkoutActivityType.configurationTypes.getter();
      v5 = 3;
      goto LABEL_20;
    case 5:
      v4 = FIUIWorkoutActivityType.configurationTypes.getter();
      v5 = 2;
LABEL_20:
      v11 = specialized Set.contains(_:)(v5, v4);

      return v11;
    case 6:
      v9 = sel_supportsSegments;
      return [v1 v9];
    case 9:
      v9 = sel_supportsDistanceSplits;
      return [v1 v9];
    case 10:
      return [objc_opt_self() fiui:objc_msgSend(v1 isHeartRateSupportedForActivityType:sel_identifier) isIndoor:{objc_msgSend(v1, sel_isIndoor)}];
    case 11:
      v9 = sel_isPartOfMultiSport;
      return [v1 v9];
    case 12:
      v10 = [v1 effectiveTypeIdentifier];
      if (v10 == 13)
      {
        goto LABEL_26;
      }

      if (v10 != 37 || ([v1 isIndoor] & 1) != 0)
      {
LABEL_16:
        result = 0;
      }

      else
      {
        result = [objc_opt_self() isRunningFormAvailable];
      }

      break;
    case 13:
      return [v1 effectiveTypeIdentifier] == 13;
    case 14:
      v6 = [v1 effectiveTypeIdentifier];
      if (v6 == 70 || v6 == 52)
      {
        goto LABEL_7;
      }

      v7 = [v1 effectiveTypeIdentifier];
      result = 0;
      v8 = v7 - 13;
      if (v8 <= 0x3A)
      {
        if (((1 << v8) & 0x400000001000001) != 0)
        {
LABEL_7:
          result = [v1 isIndoor] ^ 1;
        }

        else if (((1 << v8) & 0x800000000800) != 0)
        {
LABEL_26:
          result = 1;
        }
      }

      break;
    case 15:
      if ([v1 effectiveTypeIdentifier] != 13)
      {
        goto LABEL_16;
      }

      result = [objc_opt_self() fiui:1 activitySupportsMetricType:v1 activityType:1 activityMoveMode:?];
      break;
    default:
      return result;
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11WorkoutCore0D28ConfigurationOccurrenceStoreC0dF6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCG_AF0dF0Cs5NeverOTg504_s11d8Core0A28fgh19C11deduplicate33_41jklmno25CLLySayAA0aC0CGAHFAgC0aC6I57AELLCcfu0_32b7aaa5b2ee757458ba0f95a71f2c664dAjGTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }

    v28 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = __CocoaSet.startIndex.getter();
    v26 = v3;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v28 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v4 = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v25 = v4;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v25;
    v9 = v26;
    v11 = v27;
    specialized Set.subscript.getter(v25, v26, v27, a1);
    v13 = *(v12 + 16);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v23)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy11WorkoutCore0B28ConfigurationOccurrenceStoreC0bD6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLC_GMd, &_sSh5IndexVy11WorkoutCore0B28ConfigurationOccurrenceStoreC0bD6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLC_GMR);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      v7(v24, 0);
      if (v6 == v2)
      {
LABEL_28:
        outlined consume of Set<WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder>.Index._Variant(v25, v26, v27);
        return;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = 1 << *(a1 + 32);
      if (v10 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v10 >> 6;
      v16 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v16 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            outlined consume of Set<WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder>.Index._Variant(v10, v9, 0);
            v14 = __clz(__rbit64(v21)) + v18;
            goto LABEL_27;
          }
        }

        outlined consume of Set<WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder>.Index._Variant(v10, v9, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v9;
      v27 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
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
}

void specialized Collection.firstIndex(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2E7A20](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t WorkoutConfigurationOccurrenceStore.loadDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*WorkoutConfigurationOccurrenceStore.loadDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return WorkoutConfigurationOccurrenceStore.loadDelegate.modify;
}

void WorkoutConfigurationOccurrenceStore.loadDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t WorkoutConfigurationOccurrenceStore.modificationCountPublisher.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WorkoutConfigurationOccurrenceStore.modificationCountPublished.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t WorkoutConfigurationOccurrenceStore.count.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t WorkoutConfigurationOccurrenceStore.syncComplete.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutConfigurationOccurrenceStore.syncComplete.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *WorkoutConfigurationOccurrenceStore.__allocating_init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[3];
  v20 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = a2[3];
  v11 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v14 = a3[3];
  v15 = a3[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  *(&v19 + 1) = v15;
  *&v19 = v20;
  v17 = specialized WorkoutConfigurationOccurrenceStore.__allocating_init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(v10, v13, v16, a4, a5, a6, v24, v9, v14, v12, v19, v11);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a3);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a2);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
  return v17;
}

char *WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v9 = a1[3];
  v28 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  MEMORY[0x28223BE20](v10, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a2[3];
  v27 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  MEMORY[0x28223BE20](v15, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = a3[3];
  v20 = a3[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a3, v19);
  MEMORY[0x28223BE20](v21, v21);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = specialized WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(v12, v17, v23, v29, v30, v31, v32, v9, v19, v14, v28, v20, v27);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a3);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a2);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
  return v25;
}

void closure #1 in WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.app);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[WOSync] ConfigurationStore received %@, reloading workout_configurations", v8, 0xCu);
    _sSo8NSObjectCSgWOhTm_3(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    WorkoutConfigurationOccurrenceStore.reload()();
  }
}

id WorkoutConfigurationOccurrenceStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for WorkoutConfigurationOccurrenceStore(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t closure #1 in static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9)
{
  swift_beginAccess();
  *(a3 + 16) = a1;

  swift_beginAccess();
  v18 = *(a4 + 16);
  *(a4 + 16) = a2;
  v19 = a2;

  swift_beginAccess();
  v20 = *(a3 + 16);
  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  v54 = a8;
  if (v21)
  {
    v56[0] = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    v23 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x20F2E7A20](v23, v20);
      }

      else
      {
        v24 = *(v20 + 8 * v23 + 32);
      }

      v25 = v24;
      ++v23;
      v26 = specialized WorkoutConfiguration.sanitized()();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v21 != v23);

    v22 = v56[0];
  }

  a8 = a5;
  swift_beginAccess();
  *(a5 + 16) = v22;

  static Date.timeIntervalSinceReferenceDate.getter();
  v28 = v27;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static WOLog.app);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    a9 = v28 - a9;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v55[0] = v21;
    *v20 = 134218498;
    swift_beginAccess();
    v30 = *(a3 + 16);
    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
      *(v20 + 4) = v31;

      *(v20 + 12) = 2080;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v32 = Optional.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v55);

      *(v20 + 14) = v34;
      *(v20 + 22) = 2048;
      *(v20 + 24) = a9;
      _os_log_impl(&dword_20AEA4000, v9, v10, "[ConfigurationStore] loaded %ld workout_configurations from database, error: %s, elapsed time: %f seconds", v20, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v21);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);

      goto LABEL_18;
    }

LABEL_32:
    v31 = __CocoaSet.count.getter();
    goto LABEL_16;
  }

LABEL_18:
  swift_beginAccess();
  v35 = *(a4 + 16);
  swift_beginAccess();
  *(a6 + 16) = v35 == 0;
  if (v35)
  {
    v36 = v35;
    v37 = _convertErrorToNSError(_:)();
    v38 = [v37 code];

    if (v38 == 101)
    {

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 67109120;
        swift_beginAccess();
        *(v41 + 4) = *(a6 + 16);

        _os_log_impl(&dword_20AEA4000, v39, v40, "[ConfigurationStore] cannot load workout_configurations before first unlock (loaded: %{BOOL}d), start monitoring first unlock", v41, 8u);
        MEMORY[0x20F2E9420](v41, -1, -1);
      }

      else
      {
      }

      v42 = a7[3];
      v43 = a7[4];
      __swift_project_boxed_opaque_existential_1(a7, v42);
      (*(v43 + 40))(v42, v43);
    }
  }

  swift_beginAccess();
  if (*(a6 + 16) == 1)
  {
    v44 = a7[3];
    v45 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v44);
    (*(v45 + 48))(v44, v45);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20AEA4000, v46, v47, "[ConfigurationStore] workout_configurations loaded, stop monitoring first unlock", v48, 2u);
      MEMORY[0x20F2E9420](v48, -1, -1);
    }
  }

  swift_beginAccess();
  v49 = *(a6 + 16);
  swift_beginAccess();
  v50 = *(a8 + 16);

  v54(v49, v50);
}

uint64_t WorkoutConfigurationOccurrenceStore.fetchConfigurationSynchronously(configurationUUID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v61 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v61 - v12;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v66 = v10;
  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static WOLog.app);
  v70 = *(v3 + 16);
  v70(v13, a1, v2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67 = a1;
    v65 = v19;
    v72 = v19;
    *v18 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v15;
    v23 = v22;
    v71 = *(v3 + 8);
    v71(v13, v2);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v72);
    v15 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_20AEA4000, v16, v17, "[ConfigurationStore] loading workout_configuration with id %s from database", v18, 0xCu);
    v25 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm_6(v65);
    a1 = v67;
    MEMORY[0x20F2E9420](v25, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  else
  {

    v71 = *(v3 + 8);
    v71(v13, v2);
  }

  v26 = *(v69 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 24);
  v27 = *(v69 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 32);
  __swift_project_boxed_opaque_existential_1((v69 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient), v26);
  v28 = (*(v27 + 32))(a1, v26, v27);
  v30 = v29;
  v69 = v3;
  if (v29)
  {
    v31 = v66;
    v70(v66, a1, v2);
    v32 = v30;
    v33 = v30;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v65 = v15;
      v37 = v36;
      v38 = swift_slowAlloc();
      v67 = a1;
      v63 = v38;
      v64 = swift_slowAlloc();
      v72 = v64;
      *v37 = 136315394;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v62 = v34;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v71(v31, v2);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v72);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2112;
      v43 = v30;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v44;
      v45 = v63;
      *v63 = v44;
      v46 = v35;
      v47 = v62;
      _os_log_impl(&dword_20AEA4000, v62, v46, "[ConfigurationStore] Error loading configuration with uuid: %s: %@", v37, 0x16u);
      _sSo8NSObjectCSgWOhTm_3(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      a1 = v67;
      MEMORY[0x20F2E9420](v45, -1, -1);
      v48 = v64;
      __swift_destroy_boxed_opaque_existential_1Tm_6(v64);
      MEMORY[0x20F2E9420](v48, -1, -1);
      MEMORY[0x20F2E9420](v37, -1, -1);
    }

    else
    {

      v71(v31, v2);
    }
  }

  v49 = v68;
  v70(v68, a1, v2);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = v28;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v72 = v54;
    *v53 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v71(v49, v2);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v72);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_20AEA4000, v50, v51, "[ConfigurationStore] loaded workout_configuration with id %s from database", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v54);
    MEMORY[0x20F2E9420](v54, -1, -1);
    v59 = v53;
    v28 = v52;
    MEMORY[0x20F2E9420](v59, -1, -1);
  }

  else
  {

    v71(v49, v2);
  }

  return v28;
}

Swift::Void __swiftcall WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(Swift::Bool enteringForeground)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v78 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v71 - v10;
  v77 = v12;
  MEMORY[0x28223BE20](v9, v13);
  v15 = &v71 - v14;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.app);
  v17 = v1;
  v18 = Logger.logObject.getter();
  LODWORD(v79) = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v18, v79);
  v20 = &unk_27C729000;
  v76 = v11;
  if (v19)
  {
    v21 = swift_slowAlloc();
    *v21 = 67110144;
    v22 = v17[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded];
    *(v21 + 4) = v22 ^ 1;
    v75 = v3;
    *(v21 + 8) = 1024;
    *(v21 + 10) = v22;
    *(v21 + 14) = 1024;
    v23 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
    swift_beginAccess();
    *(v21 + 16) = v17[v23];
    *(v21 + 20) = 1024;
    v24 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
    swift_beginAccess();
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v17[v24], v81);
    v25 = enteringForeground;
    v26 = v15;
    v27 = v4;
    v28 = v82;
    v29 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v30 = *(v29 + 32);
    v31 = v28;
    enteringForeground = v25;
    v20 = &unk_27C729000;
    v32 = v29;
    v4 = v27;
    v15 = v26;
    LOBYTE(v24) = v30(v31, v32);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v81);
    *(v21 + 22) = v24 & 1;

    *(v21 + 26) = 1024;
    v3 = v75;
    *(v21 + 28) = enteringForeground;
    _os_log_impl(&dword_20AEA4000, v18, v79, "[ConfigurationStore] loadIfNeeded: %{BOOL}d (loaded: %{BOOL}d, syncComplete: %{BOOL}d, unlockedSinceBoot: %{BOOL}d, enteringForeground: %{BOOL}d", v21, 0x20u);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  else
  {
  }

  if (v17[v20[487]])
  {
    WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
    WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(enteringForeground);
  }

  else
  {
    v33 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
    swift_beginAccess();
    if (v17[v33] == 1)
    {
      v34 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
      swift_beginAccess();
      outlined init with copy of UnlockedSinceBootMonitorProtocol(&v17[v34], v81);
      v35 = v82;
      v36 = v83;
      __swift_project_boxed_opaque_existential_1(v81, v82);
      LOBYTE(v35) = (*(v36 + 32))(v35, v36);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v81);
      if (v35)
      {
        UUID.init()();
        outlined init with copy of UnlockedSinceBootMonitorProtocol(&v17[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager], v81);
        v37 = v82;
        v38 = v83;
        __swift_project_boxed_opaque_existential_1(v81, v82);
        v80[0] = 3;
        v39 = (*(v38 + 8))(v80, v15, 0xD00000000000002CLL, 0x800000020B45CFD0, v37, v38, 15.0);
        __swift_destroy_boxed_opaque_existential_1Tm_6(v81);
        v40 = v76;
        v79 = *(v4 + 16);
        v79(v76, v15, v3);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v73 = v42;
          v74 = v15;
          v43 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v81[0] = v72;
          *v43 = 136315650;
          *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1702256979, 0xE400000000000000, v81);
          *(v43 + 12) = 2080;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v40;
          v46 = v44;
          v48 = v47;
          v75 = v4;
          v76 = *(v4 + 8);
          v76(v45, v3);
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v81);

          *(v43 + 14) = v49;
          *(v43 + 22) = 2080;
          if (v39)
          {
            if (v39 == 2)
            {
              v50 = 0xEC00000065746165;
              v51 = 0x7243746F6E6E6163;
            }

            else if (v39 == 1)
            {
              v50 = 0xED00007374736978;
              v51 = 0x4579646165726C61;
            }

            else
            {
              v51 = 0;
              v50 = 0xE000000000000000;
            }
          }

          else
          {
            v50 = 0xE700000000000000;
            v51 = 0x73736563637573;
          }

          v4 = v75;
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, v81);

          *(v43 + 24) = v61;
          _os_log_impl(&dword_20AEA4000, v41, v73, "[ConfigurationStore] load background assertion (%s, %s) acquired: %s", v43, 0x20u);
          v62 = v72;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v62, -1, -1);
          MEMORY[0x20F2E9420](v43, -1, -1);

          v15 = v74;
          v60 = v76;
        }

        else
        {

          v60 = *(v4 + 8);
          v60(v40, v3);
        }

        v63 = &v17[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v64 = *(v63 + 1);
          ObjectType = swift_getObjectType();
          (*(v64 + 8))(ObjectType, v64);
          swift_unknownObjectRelease();
        }

        v66 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient;
        outlined init with copy of UnlockedSinceBootMonitorProtocol(&v17[v34], v81);
        v67 = v78;
        v79(v78, v15, v3);
        v68 = (*(v4 + 80) + 25) & ~*(v4 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = v17;
        *(v69 + 24) = 3;
        (*(v4 + 32))(v69 + v68, v67, v3);
        v70 = v17;
        specialized static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:completion:)(&v17[v66], v81, partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:), v69);

        __swift_destroy_boxed_opaque_existential_1Tm_6(v81);
        v60(v15, v3);
      }

      else
      {
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_20AEA4000, v55, v56, "[ConfigurationStore] Device is locked since boot, skip load workout_configurations, start monitoring first unlock", v57, 2u);
          MEMORY[0x20F2E9420](v57, -1, -1);
        }

        outlined init with copy of UnlockedSinceBootMonitorProtocol(&v17[v34], v81);
        v58 = v82;
        v59 = v83;
        __swift_project_boxed_opaque_existential_1(v81, v82);
        (*(v59 + 40))(v58, v59);
        __swift_destroy_boxed_opaque_existential_1Tm_6(v81);
      }
    }

    else
    {
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_20AEA4000, v52, v53, "[ConfigurationStore] Paired sync in progress, skip load workout_configurations", v54, 2u);
        MEMORY[0x20F2E9420](v54, -1, -1);
      }
    }
  }
}

double closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(char a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v43) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v12);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v37 - v20;
  *(a3 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded) = a1;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v15 + 16);
  v23(v21, a5, v14);
  v44 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23(v44, v21, v14);
  v24 = v43;
  v25 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = a2;
  *(v26 + 32) = v24;
  (*(v15 + 32))(v26 + v25, v21, v14);
  v27 = objc_opt_self();

  if ([v27 isMainThread])
  {
    v28 = v44;
    closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(v22, a2, v24, v44);

    v29 = v28;
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v43 = static OS_dispatch_queue.main.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:);
    *(v30 + 24) = v26;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_127;
    v31 = _Block_copy(aBlock);

    v32 = v37;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v33 = v39;
    v34 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v43;
    MEMORY[0x20F2E7580](0, v32, v33, v31);
    _Block_release(v31);

    (*(v41 + 8))(v33, v34);
    (*(v38 + 8))(v32, v40);
    v29 = v44;
  }

  (*(v15 + 8))(v29, v14);

  return result;
}

void closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v86 = a4;
  v87 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v88 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v97 = &v86 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v99[0] = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v95 = v5;
    v91 = v6;
    if (!i)
    {
      break;
    }

    v13 = 0;
    v6 = a2 & 0xC000000000000001;
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v14 = MEMORY[0x20F2E7A20](v13, a2);
      }

      else
      {
        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v14 = *(a2 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
      swift_beginAccess();
      if (*&v15[v17])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v13;
      if (v16 == i)
      {
        v18 = v99[0];
        v5 = v95;
        v6 = v91;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_17:
  v19 = WorkoutConfigurationOccurrenceStore.deduplicate(_:)(v18);

  if (v19 >> 62)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v20;
  if (v20)
  {
    v21 = 0;
    v94 = v19 & 0xC000000000000001;
    v93 = v19 & 0xFFFFFFFFFFFFFF8;
    v96 = (v6 + 16);
    v92 = (v6 + 8);
    v22 = MEMORY[0x277D84F98];
    v6 = v90;
    while (1)
    {
      if (v94)
      {
        v25 = MEMORY[0x20F2E7A20](v21, v19);
      }

      else
      {
        if (v21 >= *(v93 + 16))
        {
          goto LABEL_72;
        }

        v25 = *(v19 + 8 * v21 + 32);
      }

      v26 = v25;
      a2 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_71;
      }

      v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v28 = *v96;
      v29 = &v26[v27];
      v30 = v97;
      (*v96)(v97, v29, v5);
      v31 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99[0] = v22;
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
      v34 = v22[2];
      v35 = (v33 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_73;
      }

      v37 = v33;
      if (v22[3] >= v36)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v22 = v99[0];
          if (v33)
          {
            goto LABEL_21;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v22 = v99[0];
          if (v37)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v97);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_78;
        }

        v5 = v38;
        v22 = v99[0];
        if (v37)
        {
LABEL_21:
          v23 = v22[7];
          v24 = *(v23 + 8 * v5);
          *(v23 + 8 * v5) = v31;

          v5 = v95;
          (*v92)(v97, v95);
          goto LABEL_22;
        }
      }

      v22[(v5 >> 6) + 8] |= 1 << v5;
      v40 = v91;
      v6 = v97;
      v41 = v95;
      v28(v22[6] + *(v91 + 72) * v5, v97, v95);
      *(v22[7] + 8 * v5) = v31;
      v5 = v41;

      (*(v40 + 8))(v6, v41);
      v42 = v22[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_74;
      }

      v22[2] = v44;
      v6 = v90;
LABEL_22:
      ++v21;
      if (a2 == v6)
      {
        goto LABEL_40;
      }
    }
  }

  v22 = MEMORY[0x277D84F98];
LABEL_40:

  v45 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  v46 = Strong;
  swift_beginAccess();
  *&v46[v45] = v22;

  WorkoutConfigurationOccurrenceStore.configurations.didset();
  v46[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated] = 1;
  if (v46[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded] != 1)
  {
    goto LABEL_53;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static WOLog.app);
  v48 = v46;
  v49 = v46;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = *(*&v48[v45] + 16);

    _os_log_impl(&dword_20AEA4000, v50, v51, "[ConfigurationStore] loaded %ld workout_configurations", v52, 0xCu);
    MEMORY[0x20F2E9420](v52, -1, -1);
  }

  else
  {

    v50 = v49;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v53 = static Published.subscript.modify();
  if (!__OFADD__(*v54, 1))
  {
    ++*v54;
    v53(v99, 0);

    v55 = v49;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v99);

      *(v58 + 4) = v99[0];

      _os_log_impl(&dword_20AEA4000, v56, v57, "[ConfigurationStore] modificationCountPublished: %ld, post data updated notification for loaded workout_configurations", v58, 0xCu);
      MEMORY[0x20F2E9420](v58, -1, -1);
    }

    else
    {

      v56 = v55;
    }

    v5 = v95;

    v59 = v55 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v60 = *(v59 + 1);
      ObjectType = swift_getObjectType();
      (*(v60 + 16))(ObjectType, v60);
      swift_unknownObjectRelease();
    }

    v62 = [objc_opt_self() defaultCenter];
    [v62 postNotificationName:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0 userInfo:0];

    v46 = Strong;
LABEL_53:
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v46[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager], v99);
    v63 = v100;
    v64 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    v98 = v87;
    v65 = v86;
    (*(v64 + 16))(&v98, v86, v63, v64);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v99);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static WOLog.app);
    v67 = v91;
    v68 = v88;
    (*(v91 + 16))(v88, v65, v5);
    v69 = v5;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v99[0] = v73;
      v74 = v87;
      v75 = 0xE700000000000000;
      v76 = 0x6E6F6973736553;
      *v72 = 136315394;
      if (v74 == 1)
      {
        v76 = 0x797265766F636552;
        v75 = 0xE800000000000000;
      }

      if (!v74)
      {
        v76 = 1702256979;
        v75 = 0xE400000000000000;
      }

      if (v74 <= 2)
      {
        v77 = v76;
      }

      else
      {
        v77 = 1702256979;
      }

      if (v74 <= 2)
      {
        v78 = v75;
      }

      else
      {
        v78 = 0xE400000000000000;
      }

      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v99);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v80 = v88;
      v81 = v95;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      (*(v91 + 8))(v80, v81);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v99);

      *(v72 + 14) = v85;
      _os_log_impl(&dword_20AEA4000, v70, v71, "[ConfigurationStore] load background assertion (%s, %s) released", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v73, -1, -1);
      MEMORY[0x20F2E9420](v72, -1, -1);
    }

    else
    {

      (*(v67 + 8))(v68, v69);
    }

    return;
  }

  __break(1u);
LABEL_78:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void $defer #1 () in WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(a1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager, v28);
  v11 = v29;
  v12 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  HIBYTE(v27) = a2;
  (*(v12 + 16))(&v27 + 7, a3, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v28);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.app);
  (*(v7 + 16))(v10, a3, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v17;
    v18 = 0xE700000000000000;
    v19 = 0x6E6F6973736553;
    *v16 = 136315394;
    if (a2 == 1)
    {
      v19 = 0x797265766F636552;
      v18 = 0xE800000000000000;
    }

    if (!a2)
    {
      v19 = 1702256979;
      v18 = 0xE400000000000000;
    }

    if (a2 <= 2u)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1702256979;
    }

    if (a2 <= 2u)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v28);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v28);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_20AEA4000, v14, v15, "[ConfigurationStore] load background assertion (%s, %s) released", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

Swift::Void __swiftcall WorkoutConfigurationOccurrenceStore.reload()()
{
  v1 = v0;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[ConfigurationStore] reload workout_configurations", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded) = 0;

  WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(0);
}

void *WorkoutConfigurationOccurrenceStore.cachedConfiguration(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *WorkoutConfigurationOccurrenceStore.alternativeConfiguration(for:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_alternativeConfigurations);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v5)
  {
    v6 = *(*(v2 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t WorkoutConfigurationOccurrenceStore.deletedConfiguration(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 24);
  v4 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient), v3);
  v5 = (*(v4 + 48))(a1, v3, v4);

  return v5;
}

uint64_t closure #1 in WorkoutConfigurationOccurrenceStore.defaultConfiguration(with:)(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v33 - v21;
  v23 = [*a1 openGoalUUID];
  if (v23)
  {
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v5 + 56);
    v25(v22, 0, 1, v4);
  }

  else
  {
    v25 = *(v5 + 56);
    v25(v22, 1, 1, v4);
  }

  (*(v5 + 16))(v19, a2, v4);
  v25(v19, 0, 1, v4);
  v26 = *(v8 + 48);
  _s10Foundation4UUIDVSgWOcTm_0(v22, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _s10Foundation4UUIDVSgWOcTm_0(v19, &v11[v26], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = *(v5 + 48);
  if (v27(v11, 1, v4) != 1)
  {
    v29 = v34;
    _s10Foundation4UUIDVSgWOcTm_0(v11, v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v27(&v11[v26], 1, v4) != 1)
    {
      v30 = v33;
      (*(v5 + 32))(v33, &v11[v26], v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v5 + 8);
      v31(v30, v4);
      _sSo8NSObjectCSgWOhTm_3(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      _sSo8NSObjectCSgWOhTm_3(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v31(v34, v4);
      _sSo8NSObjectCSgWOhTm_3(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v28 & 1;
    }

    _sSo8NSObjectCSgWOhTm_3(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v29, v4);
    goto LABEL_9;
  }

  _sSo8NSObjectCSgWOhTm_3(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _sSo8NSObjectCSgWOhTm_3(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v27(&v11[v26], 1, v4) != 1)
  {
LABEL_9:
    _sSo8NSObjectCSgWOhTm_3(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v28 = 0;
    return v28 & 1;
  }

  _sSo8NSObjectCSgWOhTm_3(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v28 = 1;
  return v28 & 1;
}

void WorkoutConfigurationOccurrenceStore.goalConfiguration(for:goal:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v95 = *(v4 - 8);
  v96 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v93 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v98 = &v89 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v97 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v89 - v15;
  v92 = a2;
  v94 = a1;
  if (!a2)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    v17 = 0;
    goto LABEL_53;
  }

  v91 = v16;
  v17 = a2;
  v18 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v19 = v18;
  v102[0] = MEMORY[0x277D84F90];
  v20 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v22 = MEMORY[0x277D84F90];
    if (i)
    {
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
      do
      {
        v25 = v23;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x20F2E7A20](v25, v19);
          }

          else
          {
            if (v25 >= *(v20 + 16))
            {
              goto LABEL_35;
            }

            v26 = *(v19 + 8 * v25 + 32);
          }

          v27 = v26;
          v23 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          type metadata accessor for GoalWorkoutConfiguration(0);
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v25;
          if (v23 == i)
          {
            goto LABEL_21;
          }
        }

        MEMORY[0x20F2E6F30]();
        if (*((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 = v102[0];
      }

      while (v23 != i);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

LABEL_21:

    v102[0] = v22;
    if (v24 >> 62)
    {
      break;
    }

    v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_40;
    }

LABEL_23:
    v29 = 0;
    v99 = (v24 & 0xC000000000000001);
    while (1)
    {
      if (v99)
      {
        v30 = MEMORY[0x20F2E7A20](v29, v24);
      }

      else
      {
        if (v29 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v30 = *(v24 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v19 = v24;
      _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v101);

      v33 = v101;
      v34 = static NSObject.== infix(_:_:)();

      if (v34)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v29;
      if (v32 == v20)
      {
        goto LABEL_40;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v20 = __CocoaSet.count.getter();
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_40:

  v102[0] = specialized Array._copyToContiguousArray()(v35);
  specialized MutableCollection<>.sort(by:)(v102);

  v36 = v102[0];
  if (v102[0] < 0 || (v102[0] & 0x4000000000000000) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_52;
    }

LABEL_43:
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x20F2E7A20](0, v36);
    }

    else
    {
      if (!*(v36 + 16))
      {
        __break(1u);

        __break(1u);
        return;
      }

      v37 = *(v36 + 32);
    }

    v38 = v37;

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static WOLog.app);
    v40 = v17;
    v41 = v38;
    v42 = v94;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v102[0] = v47;
      *v45 = 136315650;
      v48 = WorkoutConfiguration.logDisplayName.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v102);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2112;
      *(v45 + 14) = v40;
      *(v45 + 22) = 2112;
      *(v45 + 24) = v42;
      *v46 = v92;
      v46[1] = v42;
      v51 = v40;
      v52 = v42;
      _os_log_impl(&dword_20AEA4000, v43, v44, "[goalConfiguration] found goal workout_configuration %s for optionalGoal: %@, activityType: %@", v45, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v47);
      MEMORY[0x20F2E9420](v47, -1, -1);
      MEMORY[0x20F2E9420](v45, -1, -1);
    }

    v53 = v91;
    (*(v95 + 56))(v91, 1, 1, v96);
    GoalWorkoutConfiguration.copyWith(activityType:goal:uuid:occurrence:)(v42, 0, v53, 0);

    _sSo8NSObjectCSgWOhTm_3(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    if (*(v102[0] + 16))
    {
      goto LABEL_43;
    }

LABEL_52:

    v28 = v17;
LABEL_53:
    v91 = v17;
    v54 = v28;
    v55 = v97;
    UUID.init()();
    v90 = specialized Occurrence.__allocating_init(count:)(0);
    v56 = v95;
    v57 = *(v95 + 16);
    v58 = v98;
    v59 = v55;
    v60 = v96;
    v57(v98, v59, v96);
    v61 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration(0));
    swift_beginAccess();
    v101 = v54;
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v99 = v54;
    Published.init(initialValue:)();
    swift_endAccess();
    v62 = v93;
    v57(v93, v58, v60);
    v63 = v57;
    *&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v64 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    v65 = type metadata accessor for Date();
    v66 = *(*(v65 - 8) + 56);
    v66(&v61[v64], 1, 1, v65);
    v66(&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v65);
    v67 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v68 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v68 - 8) + 56))(&v61[v67], 1, 1, v68);
    (*(v56 + 56))(&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v60);
    v69 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v63(&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v62, v60);
    v70 = v94;
    *&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v94;
    v61[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    *&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v90;
    swift_beginAccess();
    *&v61[v69] = 0;
    v61[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v71 = type metadata accessor for WorkoutConfiguration(0);
    v100.receiver = v61;
    v100.super_class = v71;
    v72 = v70;
    v73 = objc_msgSendSuper2(&v100, sel_init);

    v74 = *(v56 + 8);
    v74(v62, v60);
    v74(v98, v60);
    v74(v97, v60);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static WOLog.app);
    v76 = v91;
    v77 = v72;
    v78 = v73;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v101 = v83;
      *v81 = 136315650;
      v84 = WorkoutConfiguration.logDisplayName.getter();
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v101);

      *(v81 + 4) = v86;
      *(v81 + 12) = 2112;
      *(v81 + 14) = v76;
      *(v81 + 22) = 2112;
      *(v81 + 24) = v77;
      *v82 = v92;
      v82[1] = v77;
      v87 = v76;
      v88 = v77;
      _os_log_impl(&dword_20AEA4000, v79, v80, "[goalConfiguration] goal workout_configuration not found, created transient %s for optionalGoal: %@, activityType: %@", v81, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v83);
      MEMORY[0x20F2E9420](v83, -1, -1);
      MEMORY[0x20F2E9420](v81, -1, -1);
    }
  }
}

void *WorkoutConfigurationOccurrenceStore.allConfigurations()()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(*(v2 + 16), 0);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v8, v4 + 4, v3, v2);
  v6 = v8;

  sub_20AEBDF2C(v6);
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t WorkoutConfigurationOccurrenceStore.allManagedConfigurations()()
{
  v0 = WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
  swift_beginAccess();
  v1 = *(v0 + 136);

  return v1;
}

uint64_t WorkoutConfigurationOccurrenceStore.configurations(for:)(uint64_t a1)
{
  v2 = WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
  swift_beginAccess();
  v3 = *(v2 + 136);

  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  return v6;
}

double WorkoutConfigurationOccurrenceStore.stopSyncing(for:)(uint64_t a1)
{
  WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
  WorkoutManagedConfigurationsStore.stopSyncing(for:)(a1);

  return result;
}

uint64_t WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder.logString.getter()
{
  _StringGuts.grow(_:)(39);

  v1 = WorkoutConfiguration.logString.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45D2B0);
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    WorkoutConfiguration.logString.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = Optional.description.getter();
  v6 = v5;

  MEMORY[0x20F2E6D80](v4, v6);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0x72756769666E6F63;
}

uint64_t WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v1 + v2) + 1);
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v2 + v3) + 1);
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v5 = *(v2 + v4);
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(*v1 + 16);
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v2 + v3) + 1);
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v5 = *(v2 + v4);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  v7[3] = type metadata accessor for WorkoutConfiguration(0);
  v7[4] = &protocol witness table for WorkoutConfiguration;
  v7[0] = v3;
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x1D0);
  v5 = v3;
  LOBYTE(v3) = v4(v7);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v7);
  return v3 & 1;
}

void WorkoutConfiguration.appendAlternativeUUIDs(from:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A90;
  v4 = type metadata accessor for UUID();
  *(v3 + 56) = v4;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v3 + 32));
  v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v7 = *(v4 - 8);
  (*(v7 + 16))(boxed_opaque_existential_0Tm, a1 + v6, v4);
  v8 = objc_allocWithZone(MEMORY[0x277CBEB40]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArray_];

  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v12 = MEMORY[0x277D84F90];
  if (*(v1 + v11))
  {
    v13 = *(v1 + v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  specialized _arrayForceCast<A, B>(_:)(v13);

  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v10 addObjectsFromArray_];

  v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  if (*(a1 + v15))
  {
    v16 = *(a1 + v15);
  }

  else
  {
    v16 = v12;
  }

  specialized _arrayForceCast<A, B>(_:)(v16);

  v17 = Array._bridgeToObjectiveC()().super.isa;

  [v10 addObjectsFromArray_];

  v18 = [v10 array];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = specialized _arrayConditionalCast<A, B>(_:)(v19);

  if (v20)
  {
    if (*(v20 + 16) < 0x65uLL)
    {
    }

    else
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v20, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), 0, 0xC9uLL);
      v22 = v21;

      v20 = v22;
    }

    *(v1 + v11) = v20;
  }

  else
  {
  }
}

void closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:)(uint64_t a1, unint64_t a2, char *a3)
{
  v35 = a3;
  v34 = type metadata accessor for UUID();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v7);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.app);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_10;
  }

  v3 = swift_slowAlloc();
  *v3 = 134218240;
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    *(v3 + 4) = i;

    *(v3 + 12) = 2048;
    v14 = a2 >> 62 ? __CocoaSet.count.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v3 + 14) = v14;

    _os_log_impl(&dword_20AEA4000, v10, v11, "[deduplicate] found %ld duplicates in %ld workout_configurations", v3, 0x16u);
    MEMORY[0x20F2E9420](v3, -1, -1);

LABEL_10:
    swift_beginAccess();
    v15 = *(a1 + 16);
    if (v15 >> 62)
    {
      v10 = __CocoaSet.count.getter();
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return;
      }
    }

    if (v10 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_23:
    ;
  }

  v30 = &v35[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient];
  v28 = (v6 + 16);
  v29 = v15 & 0xC000000000000001;
  v27 = (v6 + 8);

  v16 = 0;
  v31 = v10;
  v32 = v15;
  v17 = v34;
  do
  {
    if (v29)
    {
      v18 = MEMORY[0x20F2E7A20](v16, v15);
    }

    else
    {
      v18 = *(v15 + 8 * v16 + 32);
    }

    ++v16;
    v19 = *(v30 + 4);
    v36 = *(v30 + 3);
    __swift_project_boxed_opaque_existential_1(v30, v36);
    v20 = *(v18 + 16);
    v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v22 = v33;
    (*v28)(v33, v20 + v21, v17);
    v23 = swift_allocObject();
    v24 = v35;
    *(v23 + 16) = v18;
    *(v23 + 24) = v24;
    v25 = *(v19 + 72);

    v26 = v24;
    v25(v22, partial apply for closure #1 in closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:), v23, v36, v19);

    (*v27)(v22, v17);
    v15 = v32;
  }

  while (v31 != v16);
}

void closure #1 in closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:)(int a1, void *a2, uint64_t a3, char *a4)
{
  v79 = a1;
  v7 = type metadata accessor for UUID();
  v80 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static WOLog.app);
  v14 = v11;
  v15 = a2;
  v78 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v75 = a3;
    v76 = a4;
    v18 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v83[0] = v74;
    *v18 = 136315906;
    v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v20 = v80;
    (*(v80 + 16))(v10, &v14[v19], v7);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v10, v7);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v83);

    *(v18 + 4) = v24;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v79 & 1;
    *(v18 + 18) = 2080;
    v77 = v7;
    if (a2)
    {
      swift_getErrorValue();
      v25 = MEMORY[0x20F2E7F50](v81, v82);
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v84[1] = v25;
    v84[2] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v50 = Optional.description.getter();
    v52 = v51;

    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v83);

    *(v18 + 20) = v53;
    *(v18 + 28) = 2080;
    v54 = WorkoutConfiguration.logString.getter();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v83);

    *(v18 + 30) = v56;
    _os_log_impl(&dword_20AEA4000, v16, v17, "[deduplicate] Remove duplicated workout_configuration: %s, success: %{BOOL}d, error: %s, %s", v18, 0x26u);
    v57 = v74;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v57, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    v7 = v77;
    a4 = v76;
    a3 = v75;
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!a2)
    {
LABEL_13:
      v58 = *(a3 + 24);
      if (v58)
      {
        v59 = *&a4[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 24];
        v60 = *&a4[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 32];
        __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient], v59);
        v61 = swift_allocObject();
        v61[2] = v58;
        v61[3] = a4;
        v61[4] = v14;
        v62 = a4;
        v63 = *(v60 + 64);
        v64 = v58;
        v65 = v14;
        v66 = v64;
        v67 = v62;
        v63(v66, partial apply for closure #1 in closure #1 in closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:), v61, v59, v60);
      }

      else
      {
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_20AEA4000, v68, v69, "[deduplicate] Failed to save alternativeUUIDs from duplicated holder", v70, 2u);
          MEMORY[0x20F2E9420](v70, -1, -1);
        }

        v71 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
        swift_beginAccess();
        v72 = v80;
        (*(v80 + 16))(v10, &v14[v71], v7);
        WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(v10);
        (*(v72 + 8))(v10, v7);
      }

      return;
    }
  }

  v28 = v14;
  v29 = a2;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v7;
    v78 = swift_slowAlloc();
    v84[0] = v78;
    *v32 = 136315906;
    v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v35 = v80;
    (*(v80 + 16))(v10, &v28[v34], v33);

    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v35 + 8))(v10, v33);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v84);

    *(v32 + 4) = v39;
    *(v32 + 12) = 1024;
    *(v32 + 14) = v79 & 1;
    *(v32 + 18) = 2080;
    swift_getErrorValue();
    v83[0] = MEMORY[0x20F2E7F50](v83[3], v83[4]);
    v83[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v41 = Optional.description.getter();
    v43 = v42;

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v84);

    *(v32 + 20) = v44;
    *(v32 + 28) = 2080;
    v45 = WorkoutConfiguration.logString.getter();
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v84);

    *(v32 + 30) = v48;
    _os_log_impl(&dword_20AEA4000, v30, v31, "[deduplicate] Failed to remove duplicated workout_configuration: %s, success: %{BOOL}d, error: %s, %s", v32, 0x26u);
    v49 = v78;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v49, -1, -1);
    MEMORY[0x20F2E9420](v32, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in closure #1 in closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:)(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v46 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);
  v15 = a3;
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v43 = v18;
    v44 = a5;
    v45 = a4;
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = v42;
    *v19 = 136316162;
    v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    swift_beginAccess();
    v50 = *&v15[v20];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGSgMd, &_sSay10Foundation4UUIDVGSgMR);
    v21 = Optional.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v49);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v10 + 16))(v13, &v15[v24], v9);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v10 + 8))(v13, v9);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v49);

    *(v19 + 14) = v28;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v46 & 1;
    *(v19 + 28) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v29 = MEMORY[0x20F2E7F50](v47, v48);
      a2 = v30;
    }

    else
    {
      v29 = 0;
    }

    v31 = v43;
    v50 = v29;
    v51 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v32 = Optional.description.getter();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v49);

    *(v19 + 30) = v35;
    *(v19 + 38) = 2080;
    v36 = WorkoutConfiguration.logString.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v49);

    *(v19 + 40) = v38;
    _os_log_impl(&dword_20AEA4000, v17, v31, "[deduplicate] Save alternativeUUIDs %s to workout_configuration: %s, success: %{BOOL}d, error: %s, %s", v19, 0x30u);
    v39 = v42;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v39, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);

    a5 = v44;
  }

  else
  {
  }

  v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v10 + 16))(v13, a5 + v40, v9);
  WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(v13);
  return (*(v10 + 8))(v13, v9);
}

void closure #3 in static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:)(char **a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v69 = type metadata accessor for UUID();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v4);
  v67 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v71 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v70 = &v65 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v65 - v15;
  v17 = *a1;
  v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v19 = *&v17[v18];
  v20 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v65 = *(v19 + v20);
  v21 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v22 = *(v7 + 16);
  v22(v16, v19 + v21, v6);
  v66 = specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(v16, v76);
  v23 = *(v7 + 8);
  v73 = v7 + 8;
  v72 = v23;
  v23(v16, v6);
  v24 = v71;
  v75 = v18;
  v74 = v17;
  v25 = *&v17[v18];
  v26 = v22;
  v27 = v70;
  v28 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v26(v27, v25 + v28, v6);
  v29 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v26(v24, v25 + v29, v6);
  Date.timeIntervalSinceReferenceDate.getter();
  v31 = v30;
  Date.timeIntervalSinceReferenceDate.getter();
  if (v32 <= v31)
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v35 = v34;
    Date.timeIntervalSinceReferenceDate.getter();
    v37 = v36;
    v33 = v72;
    v72(v24, v6);
    v33(v27, v6);
    if (v35 - v37 >= 86400.0)
    {
      v38 = 0;
    }

    else
    {
      v38 = 1000000;
    }

    LODWORD(v71) = v38;
  }

  else
  {
    v33 = v72;
    v72(v24, v6);
    v33(v27, v6);
    LODWORD(v71) = 0;
  }

  v39 = v74;
  v40 = v74;
  Date.timeIntervalSinceReferenceDate.getter();
  v42 = v41;
  v43 = *&v39[v75];
  v44 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v26(v16, v43 + v44, v6);
  Date.timeIntervalSinceReferenceDate.getter();
  v46 = v45;

  v33(v16, v6);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static WOLog.app);
  v48 = v40;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    LODWORD(v76) = v65 & ~(v65 >> 31);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v80 = v52;
    *v51 = 136315650;
    v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v54 = v68;
    v55 = &v48[v53];
    v56 = v67;
    v57 = v69;
    (*(v68 + 16))(v67, v55, v69);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    (*(v54 + 8))(v56, v57);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v80);

    *(v51 + 4) = v61;
    *(v51 + 12) = 2080;
    v77 = v76;
    v78 = v66;
    v79 = v71;
    v62 = WorkoutConfigurationWeight.description.getter();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v80);

    *(v51 + 14) = v64;
    *(v51 + 22) = 2048;
    *(v51 + 24) = v42 - v46;
    _os_log_impl(&dword_20AEA4000, v49, v50, "sorted workout_configuration %s (weight: %s, secondsAgo: %f)", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v52, -1, -1);
    MEMORY[0x20F2E9420](v51, -1, -1);
  }
}

void closure #2 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(void **a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v126 = a4;
  LODWORD(v5) = a2;
  v125 = type metadata accessor for UUID();
  v7 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v8);
  v124 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static WOLog.race);
  v13 = v10;
  v123 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v128[0] = v121;
    *v16 = 136315394;
    v127 = v5;
    v120 = v14;
    v17 = WorkoutConfigurationFilterType.displayName.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v128);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v21 = *(v7 + 16);
    v22 = &v13[v20];
    v23 = v124;
    LODWORD(v122) = v5;
    v5 = v7;
    v24 = v125;
    v21(v124, v22, v125);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = a3;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v5 + 8);
    v30 = v24;
    v7 = v5;
    LOBYTE(v5) = v122;
    v29(v23, v30);
    v31 = v26;
    a3 = v25;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v28, v128);

    *(v16 + 14) = v32;
    v14 = v120;
    _os_log_impl(&dword_20AEA4000, v120, v15, "Race: filter (%s) candidate race workout_configuration: %s", v16, 0x16u);
    v33 = v121;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v33, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  type metadata accessor for RaceWorkoutConfiguration(0);
  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    v64 = v13;
    v46 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v129 = v67;
      *v66 = 136315394;
      LOBYTE(v128[0]) = v5;
      v68 = WorkoutConfigurationFilterType.displayName.getter();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v129);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      v71 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v72 = *(v7 + 16);
      v73 = &v64[v71];
      v74 = v124;
      v75 = v7;
      v76 = v125;
      v72(v124, v73, v125);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v75 + 8))(v74, v76);
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v129);

      *(v66 + 14) = v80;
      _os_log_impl(&dword_20AEA4000, v46, v65, "Race: filter (%s) race workout_configuration: %s is not RaceWorkoutConfiguration, skip...", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v67, -1, -1);
      MEMORY[0x20F2E9420](v66, -1, -1);
    }

    goto LABEL_15;
  }

  v35 = v34;
  v36 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
  v37 = *(v34 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
  v38 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  v39 = *(v34 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
  v40 = v13;
  v130.latitude = v37;
  v130.longitude = v39;
  if (!CLLocationCoordinate2DIsValid(v130) || (v41 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*&v35[v36] longitude:*&v35[v38]]) == 0)
  {
    v46 = v40;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v129 = v123;
      *v49 = 136315394;
      LOBYTE(v128[0]) = v5;
      v50 = WorkoutConfigurationFilterType.displayName.getter();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v129);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2080;
      v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v54 = *(v7 + 16);
      v55 = v46 + v53;
      v56 = v124;
      v57 = v7;
      v58 = v125;
      v54(v124, v55, v125);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v57 + 8))(v56, v58);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v129);

      *(v49 + 14) = v62;
      _os_log_impl(&dword_20AEA4000, v47, v48, "Race: filter (%s) race workout_configuration %s lastWorkoutStartingPoint is nil, skip...", v49, 0x16u);
      v63 = v123;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v63, -1, -1);
      MEMORY[0x20F2E9420](v49, -1, -1);
    }

LABEL_15:
    v45 = 0;
    goto LABEL_16;
  }

  v42 = v41;
  [v41 distanceFromLocation_];
  v44 = v43;
  if (v43 <= 1000.0)
  {
    v81 = v40;
    v45 = v35;
  }

  else
  {
    v45 = 0;
  }

  v82 = v45;
  v83 = v40;
  v122 = v82;
  v84 = a3;
  v85 = v42;
  v118 = v42;
  v86 = v85;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  v121 = v86;

  v120 = v84;
  v123 = v83;

  v119 = v88;
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v116 = v87;
    v90 = v5;
    v91 = v89;
    v115 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v129 = v117;
    *v91 = 136316674;
    LOBYTE(v128[0]) = v90;
    v92 = WorkoutConfigurationFilterType.displayName.getter();
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v129);
    v95 = v122;
    v96 = v94;

    *(v91 + 4) = v96;
    *(v91 + 12) = 2080;
    v97 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v98 = &v35[v97];
    v99 = v124;
    v100 = v125;
    (*(v7 + 16))(v124, v98, v125);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v121;
    v103 = v101;
    v105 = v104;
    (*(v7 + 8))(v99, v100);
    v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v129);

    *(v91 + 14) = v106;
    *(v91 + 22) = 1024;

    *(v91 + 24) = v45 != 0;
    *(v91 + 28) = 2112;
    v107 = v120;
    *(v91 + 30) = v120;
    *(v91 + 38) = 2112;
    *(v91 + 40) = v102;
    v108 = v115;
    v109 = v118;
    *v115 = v107;
    v108[1] = v109;
    *(v91 + 48) = 2048;
    *(v91 + 50) = v44;
    *(v91 + 58) = 2048;
    *(v91 + 60) = 0x408F400000000000;
    v110 = v107;
    v111 = v102;
    v112 = v116;
    _os_log_impl(&dword_20AEA4000, v116, v119, "Race: filter (%s) race workout_configuration %s nearby: %{BOOL}d (currentLocation: %@, lastWorkoutStartingPoint: %@, distance: %f, max distance: %f meters)", v91, 0x44u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v108, -1, -1);
    v113 = v117;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v113, -1, -1);
    MEMORY[0x20F2E9420](v91, -1, -1);
  }

  else
  {

    v114 = v122;
  }

LABEL_16:
  *v126 = v45;
}

void closure #1 in static WorkoutConfigurationOccurrenceStore.sortedRaceConfigurations(_:filterType:)(void **a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  type metadata accessor for RaceWorkoutConfiguration(0);
  v13 = swift_dynamicCastClass();
  v14 = one-time initialization token for race;
  if (v13)
  {
    v15 = v13;
    v53 = v8;
    v55 = a3;
    v16 = v12;
    if (v14 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.race);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v54 = v3;
      v22 = v21;
      v52 = swift_slowAlloc();
      v57 = v52;
      *v22 = 136315394;
      v56 = a2;
      v23 = WorkoutConfigurationFilterType.displayName.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v57);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v27 = v53;
      (*(v53 + 16))(v11, v15 + v26, v7);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v27 + 8))(v11, v7);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v57);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_20AEA4000, v19, v20, "Race: filter (%s) race workout_configuration %s", v22, 0x16u);
      v32 = v52;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    a3 = v55;
  }

  else
  {
    v54 = v3;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.race);
    v34 = v12;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      LODWORD(v53) = v36;
      v38 = v8;
      v39 = v37;
      v40 = swift_slowAlloc();
      v55 = a3;
      v41 = v40;
      v57 = v40;
      *v39 = 136315394;
      v56 = a2;
      v42 = WorkoutConfigurationFilterType.displayName.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v57);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      (*(v38 + 16))(v11, &v34[v45], v7);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v38 + 8))(v11, v7);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v57);

      *(v39 + 14) = v49;
      _os_log_impl(&dword_20AEA4000, v35, v53, "Race: filter (%s) race workout_configuration: %s is not RaceWorkoutConfiguration, skip...", v39, 0x16u);
      swift_arrayDestroy();
      v50 = v41;
      a3 = v55;
      MEMORY[0x20F2E9420](v50, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    v15 = 0;
  }

  *a3 = v15;
}

void closure #4 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(void **a1, char a2, const char *a3, ...)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.race);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v49 = v15;
    v50 = v14;
    v51 = a3;
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *v16 = 136316418;
    v52[0] = a2;
    v17 = WorkoutConfigurationFilterType.displayName.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v53);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = &v13[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
    swift_beginAccess();
    v22 = *v20;
    v21 = v20[1];

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v53);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v46 = *(v7 + 16);
    v46(v10, &v13[v24], v6);
    v45[1] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v7;
    v28 = v27;
    v45[0] = *(v26 + 8);
    (v45[0])(v10, v6);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, &v53);

    *(v16 + 24) = v29;
    *(v16 + 32) = 2080;
    v30 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
    swift_beginAccess();
    v46(v10, &v13[v30], v6);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (v45[0])(v10, v6);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v53);

    *(v16 + 34) = v34;
    *(v16 + 42) = 2112;
    v35 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
    v54.latitude = *&v13[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude];
    v36 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
    v54.longitude = *&v13[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude];
    if (CLLocationCoordinate2DIsValid(v54))
    {
      v37 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*&v13[v35] longitude:*&v13[v36]];
      v38 = v37;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    v39 = v51;
    v40 = v49;
    *(v16 + 44) = v37;
    v41 = v47;
    *v47 = v38;
    *(v16 + 52) = 2048;
    v42 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
    swift_beginAccess();
    *(v16 + 54) = *&v13[v42];
    v43 = v50;
    _os_log_impl(&dword_20AEA4000, v50, v40, v39, v16, 0x3Eu);
    _sSo8NSObjectCSgWOhTm_3(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v41, -1, -1);
    v44 = v48;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v44, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {
  }
}

void WorkoutConfigurationOccurrenceStore.topSuggested(limit:)(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Date.init()();
  v8 = (*(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock))(v7);
  v9 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  v51 = v3;
  v50 = v4;
  v54 = a1;
  if (v8 == 2)
  {
    swift_beginAccess();

    v11 = specialized _NativeDictionary.filter(_:)(v10);
  }

  else
  {
    swift_beginAccess();
    v11 = *(v1 + v9);
  }

  v12 = specialized _NativeDictionary.filter(_:)(v11);
  v52 = 0;

  v13 = 0;
  v58 = MEMORY[0x277D84F90];
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v16 = ~(-1 << v14);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v12 + 64);
  v18 = (v14 + 63) >> 6;
  while (v17)
  {
LABEL_14:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = *(*(v12 + 56) + ((v13 << 9) | (8 * v20)));
    v22 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
    v23 = v21;
    v56[0] = MEMORY[0x20F2E7290](5, &type metadata for ConfigurationType, v22);
    specialized Set._Variant.insert(_:)(&v57, 0);
    specialized Set._Variant.insert(_:)(&v57, 1);
    specialized Set._Variant.insert(_:)(&v57, 2);
    specialized Set._Variant.insert(_:)(&v57, 3);
    specialized Set._Variant.insert(_:)(&v57, 4);
    v24 = v56[0];
    v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    if (*(v24 + 16) && (v25 = v23[v11], Hasher.init(_seed:)(), v11 = v56, MEMORY[0x20F2E7FF0](v25 + 1), v26 = Hasher._finalize()(), v27 = -1 << *(v24 + 32), v28 = v26 & ~v27, ((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
    {
      v29 = ~v27;
      while (*(*(v24 + 48) + v28) != v25)
      {
        v28 = (v28 + 1) & v29;
        if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
      swift_beginAccess();
      if (*&v23[v11])
      {
      }

      else
      {
        v11 = &v58;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }
    }

    else
    {
LABEL_8:
    }
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v12 + 64 + 8 * v19);
    ++v13;
    if (v17)
    {
      v13 = v19;
      goto LABEL_14;
    }
  }

  v13 = &v50;
  MEMORY[0x28223BE20](v30, v31);
  v32 = ObjectType;
  *(&v50 - 2) = v55;
  *(&v50 - 1) = v32;

  v56[0] = specialized Array._copyToContiguousArray()(v33);
  v11 = v56;
  v34 = v52;
  specialized MutableCollection<>.sort(by:)(partial apply for closure #2 in WorkoutConfigurationOccurrenceStore.topSuggested(limit:), (&v50 - 4));
  if (v34)
  {
    goto LABEL_70;
  }

  v15 = v54;
  if ((v54 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = v56[0];
  LODWORD(v13) = v56[0] < 0 || (v56[0] & 0x4000000000000000) != 0;
  if ((v13 & 1) == 0)
  {
    v35 = *(v56[0] + 16);
    if (v35 >= v54)
    {
      v36 = v54;
    }

    else
    {
      v36 = *(v56[0] + 16);
    }

    if (v54)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (v35 >= v37)
    {
      goto LABEL_36;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_56:
  v34 = __CocoaSet.count.getter();
  if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    if (v34 >= v15)
    {
      v49 = v15;
    }

    else
    {
      v49 = v34;
    }

    if (v34 < 0)
    {
      v49 = v15;
    }

    if (v15)
    {
      v37 = v49;
    }

    else
    {
      v37 = 0;
    }

    if (__CocoaSet.count.getter() < v37)
    {
      goto LABEL_66;
    }

LABEL_36:
    if ((v11 & 0xC000000000000001) != 0 && v37)
    {
      type metadata accessor for WorkoutConfiguration(0);

      v38 = 0;
      do
      {
        v39 = v38 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v38);
        v38 = v39;
      }

      while (v37 != v39);
    }

    else
    {
    }

    if (v13)
    {
      v40 = _CocoaArrayWrapper.subscript.getter();
      v18 = v41;
      v34 = v42;
      v37 = v43;

      v11 = v40;
      if (v37)
      {
LABEL_47:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v46 = swift_dynamicCastClass();
        if (!v46)
        {
          swift_unknownObjectRelease();
          v46 = MEMORY[0x277D84F90];
        }

        v47 = *(v46 + 16);

        if (__OFSUB__(v37 >> 1, v34))
        {
          goto LABEL_67;
        }

        if (v47 == (v37 >> 1) - v34)
        {
          v48 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v44 = v51;
          v45 = v50;
          if (!v48)
          {
LABEL_52:
            swift_unknownObjectRelease();
          }

          (*(v45 + 8))(v55, v44);
          return;
        }

LABEL_68:
        swift_unknownObjectRelease_n();
      }
    }

    else
    {
      v34 = 0;
      v18 = v11 + 32;
      v37 = (2 * v37) | 1;
      if (v37)
      {
        goto LABEL_47;
      }
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v11, v18, v34, v37, type metadata accessor for WorkoutConfiguration);
    v44 = v51;
    v45 = v50;
    goto LABEL_52;
  }

  __break(1u);
LABEL_70:

  __break(1u);
}

char *WorkoutConfigurationOccurrenceStore.topSuggestedOpenGoal(for:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Date();
  v53 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v55 = v5;
  Date.init()();
  v52 = a1;
  v6 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v7 = v6;
  v58[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v51 = v2;
    v2 = 0;
    v9 = v7 & 0xC000000000000001;
    v56 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x20F2E7A20](v2, v7);
      }

      else
      {
        if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v2 + 32);
      }

      v11 = v10;
      v12 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      if (*(v11 + v13) || (type metadata accessor for GoalWorkoutConfiguration(0), !swift_dynamicCastClass()))
      {
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v14 = v11;
        static Published.subscript.getter(&v59);

        v15 = v59;
        v16 = [v59 isEqual_];

        if (v16)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v9 = v56;
      }

      ++v2;
      if (v12 == i)
      {
        v2 = v51;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  MEMORY[0x28223BE20](v17, v18);
  v19 = ObjectType;
  *(&v50 - 2) = v55;
  *(&v50 - 1) = v19;

  v58[0] = specialized Array._copyToContiguousArray()(v20);
  specialized MutableCollection<>.sort(by:)(partial apply for closure #2 in WorkoutConfigurationOccurrenceStore.topSuggestedOpenGoal(for:), (&v50 - 4));

  v21 = v58[0];
  if ((v58[0] & 0x8000000000000000) != 0 || (v58[0] & 0x4000000000000000) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_24;
    }
  }

  else if (*(v58[0] + 16))
  {
LABEL_24:
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x20F2E7A20](0, v21);
      goto LABEL_27;
    }

    if (*(v21 + 16))
    {
      v22 = *(v21 + 32);
LABEL_27:
      v23 = v22;

      v24 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v23, v52, 1);
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.app);
      v26 = v24;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v2;
        v32 = swift_slowAlloc();
        v59 = v32;
        *v29 = 138412546;
        v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v34 = *&v26[v33];
        *(v29 + 4) = v34;
        *v30 = v34;
        *(v29 + 12) = 2080;
        v35 = v34;
        v36 = WorkoutConfiguration.logDisplayName.getter();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v59);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_20AEA4000, v27, v28, "[topSuggestedOpenGoal] occurrence (%@) found for workout_configuration: %s", v29, 0x16u);
        _sSo8NSObjectCSgWOhTm_3(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm_6(v32);
        v39 = v32;
        v2 = v31;
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v29, -1, -1);
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_40;
  }

  v40 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v21 = specialized static WorkoutConfiguration.make(activityType:goal:)(v52, v40);

  if (one-time initialization token for app != -1)
  {
LABEL_40:
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static WOLog.app);
  v26 = v21;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58[0] = v45;
    *v44 = 136315138;
    v46 = WorkoutConfiguration.logDisplayName.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v58);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_20AEA4000, v42, v43, "[topSuggestedOpenGoal] workout_configuration not found, created transient: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v45);
    MEMORY[0x20F2E9420](v45, -1, -1);
    MEMORY[0x20F2E9420](v44, -1, -1);
  }

LABEL_37:
  (*(v53 + 8))(v55, v2);
  return v26;
}

uint64_t WorkoutConfigurationOccurrenceStore.numberOfCompletedActivities(for:)(void *a1)
{
  v1 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2E7A20](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v10 = *&v8[v9];

    v11 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v12 = *&v10[v11];

    ++v5;
    v13 = __OFADD__(v6, v12);
    v6 += v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  return v6;
}

void WorkoutConfigurationOccurrenceStore.addOccurrence(for:modificationDate:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v5 + 16))(v8, &a1[v9], v4);
  v10 = specialized WorkoutConfiguration.sanitized()();
  v11 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v12 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v2 + v11);
  *(v2 + v11) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v8, isUniquelyReferenced_nonNull_native);
  (*(v5 + 8))(v8, v4);
  *(v2 + v11) = v28;
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v18 = 138412546;
    v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v22 = *&v15[v21];
    *(v18 + 4) = v22;
    *v19 = v22;
    *(v18 + 12) = 2080;
    v23 = v22;
    v24 = WorkoutConfiguration.logDisplayName.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_20AEA4000, v16, v17, "Added new occurrence (%@) for workout_configuration (%s)", v18, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v20);
    MEMORY[0x20F2E9420](v20, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v15);
}

void WorkoutConfigurationOccurrenceStore.updateExistingOccurrence(for:postUpdate:)(char *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v7 + 16))(v10, &a1[v11], v6);
  v12 = specialized WorkoutConfiguration.sanitized()();
  v13 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v14 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v3 + v13);
  *(v3 + v13) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v10, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v10, v6);
  *(v3 + v13) = v30;
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.app);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v20 = 138412546;
    v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v24 = *&v17[v23];
    *(v20 + 4) = v24;
    *v21 = v24;
    *(v20 + 12) = 2080;
    v25 = v24;
    v26 = WorkoutConfiguration.logDisplayName.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v30);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_20AEA4000, v18, v19, "Updated existing occurrence (%@) for workout_configuration (%s)", v20, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v22);
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  if (a2)
  {
    WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v17);
  }
}

void WorkoutConfigurationOccurrenceStore.saveOccurrence(for:modificationDate:postUpdate:)(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v45 = a3;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v42 = v16;
  v17 = *&a1[v16];
  (*(v12 + 16))(v15, a2, v11);
  v18 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v19 = *(v12 + 40);
  v20 = v17;
  v21 = &v17[v18];
  v22 = a1;
  v19(v21, v15, v11);
  swift_endAccess();

  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v25 = v43;
  v24 = v44;
  (*(v43 + 16))(v10, &a1[v23], v44);
  v26 = specialized WorkoutConfiguration.sanitized()();
  v27 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v28 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v4 + v27);
  *(v4 + v27) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v10, isUniquelyReferenced_nonNull_native);
  (*(v25 + 8))(v10, v24);
  *(v4 + v27) = v46;
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static WOLog.app);
  v31 = a1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47[0] = v36;
    *v34 = 138412546;
    v37 = *&v22[v42];
    *(v34 + 4) = v37;
    *v35 = v37;
    *(v34 + 12) = 2080;
    v38 = v37;
    v39 = WorkoutConfiguration.logDisplayName.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v47);

    *(v34 + 14) = v41;
    _os_log_impl(&dword_20AEA4000, v32, v33, "Saved occurrence (%@) for workout_configuration (%s)", v34, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v36);
    MEMORY[0x20F2E9420](v36, -1, -1);
    MEMORY[0x20F2E9420](v34, -1, -1);
  }

  if (v45)
  {
    WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v31);
  }
}

void WorkoutConfigurationOccurrenceStore.registerOccurrence(for:completionDate:)(char *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12[-v6];
  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v9 = *&a1[v8];
  if (v9)
  {

    WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
    WorkoutManagedConfigurationsStore.updateManagedOccurrence(externalProvider:managedConfiguration:completionDate:)(v9, a1, a2);
  }

  else
  {
    v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID;
    swift_beginAccess();
    _s10Foundation4UUIDVSgWOcTm_0(&a1[v10], v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v11 = type metadata accessor for UUID();
    LODWORD(v10) = (*(*(v11 - 8) + 48))(v7, 1, v11);
    _sSo8NSObjectCSgWOhTm_3(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v10 == 1)
    {
      WorkoutConfigurationOccurrenceStore._registerUserOccurrence(configuration:completionDate:)(a1, a2);
    }
  }
}

void WorkoutConfigurationOccurrenceStore._registerUserOccurrence(configuration:completionDate:)(char *a1, char *a2)
{
  v112 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v105, v4);
  v104 = &v104 - v5;
  v111 = type metadata accessor for Date();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v6);
  v109 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 1);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v116 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v104 - v14;
  v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v17 = *(v9 + 16);
  v120 = a1;
  v115 = v16;
  v17(v15, &a1[v16], v8);
  v18 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v121 = v2;
  v19 = *&v2[v18];
  if (*(v19 + 16))
  {

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    if (v21)
    {
      v22 = v8;
      v23 = *(v9 + 8);
      v24 = *(*(v19 + 56) + 8 * v20);
      v114 = v23;
      v23(v15, v22);
      v8 = v22;

      v25 = 0;
      goto LABEL_6;
    }
  }

  v114 = *(v9 + 8);
  v114(v15, v8);
  v25 = 1;
LABEL_6:
  v117 = v17;
  v118 = v9 + 16;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v107 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v107, static WOLog.app);
  v27 = v120;
  v108 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v119 = v9;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v125 = v32;
    *v31 = 136315394;
    if (v25)
    {
      v33 = 7824750;
    }

    else
    {
      v33 = 0;
    }

    if (v25)
    {
      v34 = 0xE300000000000000;
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    v35 = v8;
    v36 = v25;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v125);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    v38 = WorkoutConfiguration.logDisplayName.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v125);

    *(v31 + 14) = v40;
    v25 = v36;
    v8 = v35;
    _os_log_impl(&dword_20AEA4000, v28, v29, "Register %s occurrence for workout_configuration (%s)", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v32, -1, -1);
    MEMORY[0x20F2E9420](v31, -1, -1);
  }

  v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v42 = *&v41[v27];
  v113 = v25;
  v106 = v41;
  if (v25)
  {
    v43 = 1;
  }

  else
  {
    v44 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v45 = *&v42[v44];
    v43 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_26;
    }
  }

  v46 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  *&v42[v46] = v43;
  v47 = v110;
  v48 = v109;
  v49 = v111;
  v110[2](v109, v112, v111);
  v50 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v51 = v47[5];
  v52 = v42;
  v51(&v42[v50], v48, v49);
  swift_endAccess();

  v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v54 = *&v27[v53];
  v55 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v27, v54, 1);

  v56 = specialized WorkoutConfiguration.sanitized()();
  v57 = v116;
  v117(v116, &v120[v115], v8);
  v58 = v121;
  swift_beginAccess();
  v59 = v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122[0] = *&v58[v18];
  *&v58[v18] = 0x8000000000000000;
  v112 = v59;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v57, isUniquelyReferenced_nonNull_native);
  v111 = v8;
  v114(v57, v8);
  *&v58[v18] = v122[0];
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  v41 = v27;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v124[0] = v65;
    *v63 = 138412546;
    v66 = *&v106[v27];
    *(v63 + 4) = v66;
    *v64 = v66;
    *(v63 + 12) = 2080;
    v67 = v66;
    v68 = WorkoutConfiguration.logDisplayName.getter();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v124);

    *(v63 + 14) = v70;
    _os_log_impl(&dword_20AEA4000, v61, v62, "Incremented occurrence (%@) for workout_configuration (%s)", v63, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v64, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v65);
    MEMORY[0x20F2E9420](v65, -1, -1);
    MEMORY[0x20F2E9420](v63, -1, -1);
  }

  WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v41);
  v71 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v72 = v113;
  if (v41[v71] != 2)
  {
    v90 = *&v121[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 24];
    v91 = *&v121[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 32];
    __swift_project_boxed_opaque_existential_1(&v121[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient], v90);
    v92 = swift_allocObject();
    *(v92 + 16) = v72;
    *(v92 + 24) = v41;
    v93 = *(v91 + 64);
    v94 = v41;
    v95 = v112;
    v93(v112, partial apply for closure #1 in WorkoutConfigurationOccurrenceStore._registerUserOccurrence(configuration:completionDate:), v92, v90, v91);

    return;
  }

  type metadata accessor for RaceWorkoutConfiguration(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v73 = v41;
  }

  if (one-time initialization token for race != -1)
  {
    goto LABEL_34;
  }

LABEL_26:
  __swift_project_value_buffer(v107, static WOLog.race);
  v74 = v8;
  v75 = v41;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v110 = v75;
    v113 = v77;
    v121 = v74;
    v78 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v123 = v109;
    *v78 = 136315650;
    v79 = v116;
    v80 = v111;
    v81 = v117;
    v117(v116, &v120[v115], v111);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    v114(v79, v80);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v123);

    *(v78 + 4) = v85;
    *(v78 + 12) = 2080;
    if (v8)
    {
      v86 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
      v87 = v121;
      swift_beginAccess();
      v88 = v104;
      v81(v104, &v87[v86], v80);
      v89 = 0;
    }

    else
    {
      v89 = 1;
      v88 = v104;
      v87 = v121;
    }

    (*(v119 + 56))(v88, v89, 1, v80);
    v96 = Optional.description.getter();
    v98 = v97;
    _sSo8NSObjectCSgWOhTm_3(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v123);

    *(v78 + 14) = v99;
    *(v78 + 22) = 2080;
    v100 = WorkoutConfiguration.logDisplayName.getter();
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v123);

    *(v78 + 24) = v102;
    _os_log_impl(&dword_20AEA4000, v76, v113, "Race: not saving transient race workout_configuration %s created from race route clusterUUID %s (%s)", v78, 0x20u);
    v103 = v109;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v103, -1, -1);
    MEMORY[0x20F2E9420](v78, -1, -1);
  }

  else
  {
  }
}

void closure #1 in WorkoutConfigurationOccurrenceStore._registerUserOccurrence(configuration:completionDate:)(int a1, void *a2, char a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.app);
  v14 = a4;
  v15 = a2;
  v39 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v38) = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136316162;
    if (a3)
    {
      v20 = 7824750;
    }

    else
    {
      v20 = 0;
    }

    if (a3)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v42);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v9 + 16))(v12, &v14[v23], v8);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v9 + 8))(v12, v8);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v42);

    *(v18 + 14) = v27;
    *(v18 + 22) = 1024;
    *(v18 + 24) = BYTE4(v38) & 1;
    *(v18 + 28) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      a2 = v29;
    }

    else
    {
      v28 = 0;
    }

    v40 = v28;
    v41 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v31 = Optional.description.getter();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v42);

    *(v18 + 30) = v34;
    *(v18 + 38) = 2080;
    v35 = WorkoutConfiguration.logDisplayName.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v42);

    *(v18 + 40) = v37;
    _os_log_impl(&dword_20AEA4000, v39, v16, "Saved %s occurrence for sanitized copy workout_configuration: %s, success: %{BOOL}d, error: %s (%s)", v18, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  else
  {
    v30 = v39;
  }
}

void WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  if (v7)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.app);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v12 = 138412546;
      v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      swift_beginAccess();
      v16 = *&v9[v15];
      *(v12 + 4) = v16;
      *v13 = v16;
      *(v12 + 12) = 2080;
      v17 = v16;
      v18 = WorkoutConfiguration.logDisplayName.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Removed occurrence (%@) for workout_configuration (%s)", v12, 0x16u);
      _sSo8NSObjectCSgWOhTm_3(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v14);
      MEMORY[0x20F2E9420](v14, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v9);
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.app);
    (*(v3 + 16))(v6, a1, v2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v24 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v3 + 8))(v6, v2);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v31);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Remove occurrence by %s for workout_configuration not found", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v25);
      MEMORY[0x20F2E9420](v25, -1, -1);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t WorkoutConfigurationOccurrenceStore.displayOccurrence(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v61 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v60 = &v56 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v19 + 16))(v22, a1 + v23, v18);
  v24 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v25 = *(v1 + v24);
  if (!*(v25 + 16))
  {
    goto LABEL_6;
  }

  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
  if ((v27 & 1) == 0)
  {

LABEL_6:
    (*(v19 + 8))(v22, v18);
    return 0;
  }

  v28 = *(v19 + 8);
  v29 = *(*(v25 + 56) + 8 * v26);
  v59 = v7;
  v30 = v29;
  v28(v22, v18);

  Date.init()();
  v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v32 = *(v30 + v31);
  v33 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v57 = *(v32 + v33) & ~(*(v32 + v33) >> 31);
  v34 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v35 = v61;
  v36 = v61[2];
  v36(v14, v32 + v34, v3);
  v58 = specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(v14, v17);
  v37 = v35[1];
  v37(v14, v3);
  v61 = v30;
  v38 = *(v30 + v31);
  v39 = v59;
  v40 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v41 = v60;
  v36(v60, v38 + v40, v3);
  v42 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v36(v39, v38 + v42, v3);
  Date.timeIntervalSinceReferenceDate.getter();
  v44 = v43;
  Date.timeIntervalSinceReferenceDate.getter();
  if (v45 <= v44)
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v49 = v48;
    Date.timeIntervalSinceReferenceDate.getter();
    v51 = v50;
    v37(v39, v3);
    v37(v41, v3);
    v37(v17, v3);
    v46 = v49 - v51 >= 86400.0;
  }

  else
  {
    v37(v39, v3);
    v37(v41, v3);
    v37(v17, v3);
    v46 = 1;
  }

  v62 = v57;
  v63 = dispatch thunk of CustomStringConvertible.description.getter();
  v64 = v52;
  MEMORY[0x20F2E6D80](47, 0xE100000000000000);
  v62 = v58;
  v53 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v53);

  MEMORY[0x20F2E6D80](100, 0xE100000000000000);
  if (v46)
  {
    v54 = 0;
  }

  else
  {
    v54 = 4927787;
  }

  if (v46)
  {
    v55 = 0xE000000000000000;
  }

  else
  {
    v55 = 0xE300000000000000;
  }

  MEMORY[0x20F2E6D80](v54, v55);

  return v63;
}

void WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  v14 = objc_opt_self();
  v15 = a1;
  v16 = v1;
  if ([v14 isMainThread])
  {
    closure #1 in WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v16, v15);
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v21 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:);
    *(v17 + 24) = v13;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_69_0;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v21;
    MEMORY[0x20F2E7580](0, v12, v7, v18);
    _Block_release(v18);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
  }
}

void closure #1 in WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = static Published.subscript.modify();
  if (__OFADD__(*v5, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v5;
    v4(v29, 0);

    if (one-time initialization token for app == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.app);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 134218242;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v28);

    *(v11 + 4) = v28[0];

    *(v11 + 12) = 2080;
    v13 = WorkoutConfiguration.logDisplayName.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v29);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[ConfigurationStore] modificationCountPublished: %ld, post data updated notification for workout_configuration: %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
  }

  v16 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B4282E0;
  v29[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29[1] = v18;
  v19 = @"NLSmartGoalStoreDidUpdateOccurrenceData";
  AnyHashable.init<A>(_:)();
  v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v21 = *&v8[v20];
  *(inited + 96) = _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  *(inited + 72) = v21;
  v28[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28[1] = v22;
  v23 = v21;
  AnyHashable.init<A>(_:)();
  v24 = type metadata accessor for UUID();
  *(inited + 168) = v24;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 144));
  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_0Tm, &v8[v26], v24);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 postNotificationName:v19 object:0 userInfo:isa];
}

id WorkoutConfigurationOccurrenceStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutConfigurationOccurrenceStore@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutConfigurationOccurrenceStore(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for WorkoutConfigurationCacheProtocol.modificationCountPublisher.getter in conformance WorkoutConfigurationOccurrenceStore()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t protocol witness for WorkoutConfigurationCacheProtocol.deletedConfiguration(for:) in conformance WorkoutConfigurationOccurrenceStore(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 48))(a1, v4, v5);

  return v6;
}

char *closure #1 in static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(void *a1, void *a2)
{
  v279 = a2;
  v3 = type metadata accessor for Date();
  v277 = *(v3 - 1);
  v278 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v275 = v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v276 = v247 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v280 = v9;
  v281 = v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v267 = v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v268 = v247 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v271 = v247 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v272 = v247 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v274 = v247 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v273 = v247 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v265 = v247 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v263 = v247 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v269 = v247 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v270 = v247 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42 = MEMORY[0x28223BE20](v40 - 8, v41);
  v261 = v247 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v262 = (v247 - v46);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v266 = v247 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v264 = v247 - v52;
  v54 = MEMORY[0x28223BE20](v51, v53);
  v56 = v247 - v55;
  v58 = MEMORY[0x28223BE20](v54, v57);
  v60 = v247 - v59;
  v62 = MEMORY[0x28223BE20](v58, v61);
  v64 = v247 - v63;
  v66 = MEMORY[0x28223BE20](v62, v65);
  v68 = v247 - v67;
  v70 = MEMORY[0x28223BE20](v66, v69);
  v72 = v247 - v71;
  v74 = MEMORY[0x28223BE20](v70, v73);
  v76 = v247 - v75;
  MEMORY[0x28223BE20](v74, v77);
  v79 = v247 - v78;
  type metadata accessor for GoalWorkoutConfiguration(0);
  v80 = a1;
  if (swift_dynamicCastClass())
  {
    (*(v281 + 56))(v79, 1, 1, v280);
    v81 = a1;
    v82 = GoalWorkoutConfiguration.copyWith(activityType:goal:uuid:occurrence:)(v279, 0, v79, 0);
LABEL_5:
    v83 = v82;

    v84 = v79;
LABEL_6:
    _sSo8NSObjectCSgWOhTm_3(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return v83;
  }

  v255 = v60;
  v256 = v56;
  v258 = v64;
  v259 = v68;
  v257 = v76;
  v260 = v72;
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    (*(v281 + 56))(v79, 1, 1, v280);
    v81 = a1;
    v82 = IntervalWorkoutConfiguration.copyWith(activityType:intervalWorkout:uuid:occurrence:)(v279, 0, v79, 0);
    goto LABEL_5;
  }

  v86 = type metadata accessor for RaceWorkoutConfiguration(0);
  v87 = swift_dynamicCastClass();
  v88 = v281;
  if (v87)
  {
    v89 = v87;
    v250 = v86;
    v90 = v281 + 56;
    v91 = *(v281 + 56);
    v92 = v257;
    v93 = v280;
    v91(v257, 1, 1, v280);
    v91(v260, 1, 1, v93);
    v94 = v278;
    v95 = v277 + 56;
    v96 = *(v277 + 56);
    v96(v270, 1, 1, v278);
    v91(v259, 1, 1, v93);
    v251 = v96;
    v252 = v95;
    v96(v269, 1, 1, v94);
    v261 = v90;
    v253 = v91;
    v91(v258, 1, 1, v93);
    v97 = (v89 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
    swift_beginAccess();
    v98 = v97[1];
    v249 = *v97;
    v99 = v92;
    v100 = v281;
    v101 = v255;
    _s10Foundation4UUIDVSgWOcTm_0(v99, v255, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v102 = v100 + 48;
    v103 = *(v100 + 48);
    v104 = v103(v101, 1, v93);
    v248 = v98;
    if (v104 == 1)
    {
      v105 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
      swift_beginAccess();
      (*(v100 + 16))(v273, v89 + v105, v93);
      LODWORD(v105) = v103(v101, 1, v93);
      v106 = v80;

      v107 = v256;
      if (v105 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v101, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v100 + 32))(v273, v101, v93);
      v122 = v80;

      v107 = v256;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v285);

    LODWORD(v256) = v285;
    _s10Foundation4UUIDVSgWOcTm_0(v260, v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v123 = v103(v107, 1, v93);
    v124 = v93;
    v262 = v103;
    v247[1] = v102;
    if (v123 == 1)
    {
      v125 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
      swift_beginAccess();
      (*(v281 + 16))(v274, v89 + v125, v93);
      v126 = v103(v107, 1, v93);
      v127 = v270;
      if (v126 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v281 + 32))(v274, v107, v93);
      v127 = v270;
    }

    v128 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    swift_beginAccess();
    v129 = *(v89 + v128);
    v130 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
    swift_beginAccess();
    v131 = *(v89 + v130);
    v132 = v263;
    _s10Foundation4UUIDVSgWOcTm_0(v127, v263, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v133 = v277;
    v134 = v278;
    v135 = *(v277 + 48);
    v136 = v135(v132, 1, v278);
    v254 = v80;
    if (v136 == 1)
    {
      v137 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
      swift_beginAccess();
      (*(v133 + 16))(v276, v89 + v137, v134);
      if (v135(v132, 1, v134) != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v132, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v133 + 32))(&OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate, v276, v132, v134);
    }

    v138 = v264;
    _s10Foundation4UUIDVSgWOcTm_0(v259, v264, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v139 = v262;
    v140 = v262(v138, 1, v124);
    v141 = v272;
    if (v140 == 1)
    {
      v142 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
      swift_beginAccess();
      (*(v281 + 16))(v141, v89 + v142, v124);
      v143 = v139(v138, 1, v124);
      v144 = v265;
      if (v143 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v138, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v281 + 32))(v272, v138, v124);
      v144 = v265;
    }

    v145 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    swift_beginAccess();
    v146 = *(v89 + v145);
    v147 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
    swift_beginAccess();
    v148 = *(v89 + v147);
    _s10Foundation4UUIDVSgWOcTm_0(v269, v144, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v149 = v278;
    if (v135(v144, 1, v278) == 1)
    {
      v150 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
      swift_beginAccess();
      (*(v277 + 16))(v275, v89 + v150, v149);
      v151 = v135(v144, 1, v149);
      v152 = v281;
      if (v151 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v144, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v277 + 32))(v275, v144, v149);
      v152 = v281;
    }

    v153 = (v89 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
    swift_beginAccess();
    v154 = *v153;
    v155 = v153[1];
    v156 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
    swift_beginAccess();
    v264 = *(v89 + v156);
    v265 = v155;
    v157 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
    v158 = *(v89 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
    v159 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
    v160 = *(v89 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
    v267 = v154;
    outlined copy of Data._Representation(v154, v155);
    v290.latitude = v158;
    v290.longitude = v160;
    v161 = CLLocationCoordinate2DIsValid(v290);
    v162 = 0;
    v163 = v273;
    if (v161)
    {
      v162 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v89 + v157) longitude:*(v89 + v159)];
    }

    v164 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
    swift_beginAccess();
    v165 = *(v89 + v164);
    v166 = v266;
    _s10Foundation4UUIDVSgWOcTm_0(v258, v266, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v167 = v280;
    v168 = v262;
    if (v262(v166, 1, v280) == 1)
    {
      v169 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      (*(v152 + 16))(v271, v89 + v169, v167);
      if (v168(v166, 1, v167) != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v166, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v152 + 32))(v271, v166, v167);
    }

    v170 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v171 = *(v89 + v170);
    v172 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    swift_beginAccess();
    v173 = *(v89 + v172);
    v174 = objc_allocWithZone(v250);
    v175 = &v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
    v176 = v248;
    *v175 = v249;
    v175[1] = v176;
    v177 = *(v152 + 16);
    v177(&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v163, v167);
    swift_beginAccess();
    v283 = v256;
    v266 = v173;

    v263 = v171;
    Published.init(initialValue:)();
    swift_endAccess();
    v177(&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v274, v167);
    *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v129;
    *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v131;
    v178 = *(v277 + 16);
    v179 = v278;
    v178(&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v276, v278);
    v177(&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v272, v167);
    *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v146;
    *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v148;
    v178(&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v275, v179);
    v180 = &v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
    v181 = v267;
    v182 = v264;
    v183 = v265;
    *v180 = v267;
    v180[1] = v183;
    *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = v182;
    if (v162)
    {
      outlined copy of Data._Representation(v181, v183);
      v162 = v162;
      [v162 coordinate];
      *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = v184;
      [v162 coordinate];
      v186 = v185;

      *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = v186;
    }

    else
    {
      *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
      *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
      outlined copy of Data._Representation(v181, v183);
    }

    v187 = v268;
    v188 = v271;
    *&v174[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = v165;
    v189 = v280;
    v177(v187, v188, v280);
    *&v174[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v190 = v278;
    v191 = v251;
    v251(&v174[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v278);
    v191(&v174[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v190);
    v192 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v193 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v193 - 8) + 56))(&v174[v192], 1, 1, v193);
    v253(&v174[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v189);
    v194 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v174[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v177(&v174[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v187, v189);
    v195 = v279;
    *&v174[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v279;
    v174[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
    v196 = v263;
    *&v174[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v263;
    swift_beginAccess();
    *&v174[v194] = v266;
    v174[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v197 = type metadata accessor for WorkoutConfiguration(0);
    v282.receiver = v174;
    v282.super_class = v197;
    v198 = v196;
    v199 = v195;
    v83 = objc_msgSendSuper2(&v282, sel_init);

    outlined consume of Data._Representation(v267, v265);
    v200 = *(v281 + 8);
    v200(v187, v189);
    v200(v271, v189);
    v201 = *(v277 + 8);
    v201(v275, v190);
    v200(v272, v189);
    v201(v276, v190);
    v200(v274, v189);
    v200(v273, v189);
    _sSo8NSObjectCSgWOhTm_3(v258, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v269, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v259, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v270, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v260, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v84 = v257;
    goto LABEL_6;
  }

  v108 = type metadata accessor for PacerWorkoutConfiguration(0);
  v109 = swift_dynamicCastClass();
  v110 = v80;
  if (v109)
  {
    v111 = v109;
    v112 = v262;
    v113 = v280;
    v274 = *(v88 + 56);
    v275 = (v88 + 56);
    (v274)(v262, 1, 1, v280);
    swift_getKeyPath();
    swift_getKeyPath();
    v114 = v110;
    v115 = v112;
    v276 = v114;
    static Published.subscript.getter(v288);

    v273 = v288[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v288);

    v116 = v288[0];
    v117 = v115;
    v118 = v261;
    _s10Foundation4UUIDVSgWOcTm_0(v117, v261, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v119 = v88;
    v120 = *(v88 + 48);
    if (v120(v118, 1, v113) == 1)
    {
      v121 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      (*(v119 + 16))(v267, v111 + v121, v113);
      if (v120(v118, 1, v113) != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v118, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v119 + 32))(v267, v118, v113);
    }

    v229 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v230 = *(v111 + v229);
    v231 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    swift_beginAccess();
    v271 = *(v111 + v231);
    v232 = objc_allocWithZone(v108);
    swift_beginAccess();
    v233 = v273;
    v284 = v273;
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v270 = v230;

    v273 = v233;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    v284 = v116;
    v272 = v116;
    Published.init(initialValue:)();
    swift_endAccess();
    v234 = *(v119 + 16);
    v235 = v268;
    v234(v268, v267, v113);
    *&v232[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v236 = v278;
    v237 = *(v277 + 56);
    v237(&v232[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v278);
    v237(&v232[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v236);
    v238 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v239 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v239 - 8) + 56))(&v232[v238], 1, 1, v239);
    (v274)(&v232[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v113);
    v240 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v232[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v234(&v232[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v235, v113);
    v241 = v279;
    *&v232[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v279;
    v232[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
    v242 = v270;
    *&v232[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v270;
    swift_beginAccess();
    *&v232[v240] = v271;
    v232[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v243 = type metadata accessor for WorkoutConfiguration(0);
    v286.receiver = v232;
    v286.super_class = v243;
    v244 = v241;
    v245 = v242;
    v83 = objc_msgSendSuper2(&v286, sel_init);

    v246 = *(v119 + 8);
    v246(v235, v113);
    v246(v267, v113);
    v84 = v262;
    goto LABEL_6;
  }

  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v202 = type metadata accessor for Logger();
    __swift_project_value_buffer(v202, static WOLog.app);
    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v288[0] = v206;
      *v205 = 136315138;
      *(v205 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000020B45D2D0, v288);
      _os_log_impl(&dword_20AEA4000, v203, v204, "[ConfigurationStore] %s doesn't support workout_configuration copy with activityType", v205, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v206);
      MEMORY[0x20F2E9420](v206, -1, -1);
      MEMORY[0x20F2E9420](v205, -1, -1);
    }
  }

  v207 = v279;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v208 = type metadata accessor for Logger();
  __swift_project_value_buffer(v208, static WOLog.app);
  v278 = v80;
  v209 = v207;
  v210 = Logger.logObject.getter();
  v211 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v210, v211))
  {
    v212 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v279 = swift_slowAlloc();
    v287[0] = v279;
    *v212 = 136315650;
    v214 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v215 = &v278[v214];
    v216 = v268;
    v217 = v280;
    (*(v88 + 16))(v268, v215, v280);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v218 = dispatch thunk of CustomStringConvertible.description.getter();
    v219 = v88;
    v221 = v220;
    (*(v219 + 8))(v216, v217);
    v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v221, v287);

    *(v212 + 4) = v222;
    *(v212 + 12) = 2112;
    *(v212 + 14) = v209;
    *v213 = v209;
    *(v212 + 22) = 2080;
    v223 = v209;
    v224 = WorkoutConfiguration.logDisplayName.getter();
    v226 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v225, v287);

    *(v212 + 24) = v226;
    _os_log_impl(&dword_20AEA4000, v210, v211, "[ConfigurationStore] didn't copy workout_configuration %s with activityType: %@ (%s)", v212, 0x20u);
    _sSo8NSObjectCSgWOhTm_3(v213, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v213, -1, -1);
    v227 = v279;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v227, -1, -1);
    MEMORY[0x20F2E9420](v212, -1, -1);
  }

  v228 = v278;

  return v228;
}

Swift::Void __swiftcall WorkoutConfigurationOccurrenceStore.unlockedSinceBoot(_:)(Swift::Bool a1)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[ConfigurationStore] received unlockedSinceBoot: %{BOOL}d", v5, 8u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  if (a1)
  {

    WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(0);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "[ConfigurationStore] device is locked since boot, no need to try to load workout_configurations", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }
  }
}

Swift::Bool __swiftcall WorkoutConfigurationOccurrenceStore.canLoadConfigurations()()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
    swift_beginAccess();
    outlined init with copy of UnlockedSinceBootMonitorProtocol(v0 + v2, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 32))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t protocol witness for SystemConfigurationSyncStateHandler.canLoadConfigurations() in conformance WorkoutConfigurationOccurrenceStore()
{
  v1 = *v0;
  v2 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
    swift_beginAccess();
    outlined init with copy of UnlockedSinceBootMonitorProtocol(v1 + v3, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = (*(v5 + 32))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void key path getter for WorkoutConfigurationOccurrenceStore.modificationCountPublished : WorkoutConfigurationOccurrenceStore(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for WorkoutConfigurationOccurrenceStore.modificationCountPublished : WorkoutConfigurationOccurrenceStore(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size_4(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore10TargetZoneC0K4TypeO_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_4(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v7 = *(type metadata accessor for UUID() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_4(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for UUID();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for WorkoutConfiguration);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore11MetricValueVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore11MetricValueVGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_4(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 72);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size_4(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, v3 + 4, v2, v1);
    sub_20AEBDF2C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        _sSo17OS_dispatch_queueCMaTm_11(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size_4(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v149 = v7;
        v10 = *(*a3 + 8 * v9);
        v144 = 8 * v6;
        v11 = (*a3 + 8 * v6);
        v13 = *v11;
        v12 = v11 + 2;
        v14 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v15 = *(v10 + v14);
        v4 = &OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        v16 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        swift_beginAccess();
        v155 = *(v15 + v16);
        v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v18 = *(v13 + v17);
        v19 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        swift_beginAccess();
        __src = *(v18 + v19);
        v146 = v8;
        v20 = v8 + 2;
        while (v5 != v20)
        {
          v21 = *(v12 - 1);
          v22 = *v12;
          v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v24 = *(v22 + v23);
          v25 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          swift_beginAccess();
          LODWORD(v24) = *(v24 + v25);
          v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v27 = *(v21 + v26);
          v4 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          swift_beginAccess();
          ++v20;
          ++v12;
          if (__src < v155 == *(v4 + v27) >= v24)
          {
            v5 = v20 - 1;
            break;
          }
        }

        v8 = v146;
        v7 = v149;
        v28 = v144;
        if (__src < v155)
        {
          if (v5 < v146)
          {
            goto LABEL_154;
          }

          if (v146 < v5)
          {
            v29 = 8 * v5 - 8;
            v30 = v5;
            v31 = v146;
            do
            {
              if (v31 != --v30)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_160;
                }

                v33 = *(v32 + v28);
                *(v32 + v28) = *(v32 + v29);
                *(v32 + v29) = v33;
              }

              ++v31;
              v29 -= 8;
              v28 += 8;
            }

            while (v31 < v30);
          }
        }

        v9 = v5;
      }

      v34 = a3[1];
      if (v9 < v34)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_153;
        }

        if (v9 - v8 < a4)
        {
          v35 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_155;
          }

          if (v35 >= v34)
          {
            v35 = a3[1];
          }

          if (v35 < v8)
          {
            goto LABEL_156;
          }

          if (v9 != v35)
          {
            v147 = v8;
            v150 = v7;
            v36 = *a3;
            v37 = *a3 + 8 * v9 - 8;
            v38 = v8 - v9;
            __srca = v35;
            do
            {
              v139 = v9;
              v39 = *(v36 + 8 * v9);
              v40 = v38;
              v156 = v37;
              v41 = v37;
              do
              {
                v42 = *v41;
                v4 = &OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
                v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
                swift_beginAccess();
                v44 = *(v39 + v43);
                v7 = &OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
                v45 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
                swift_beginAccess();
                LODWORD(v44) = *(v44 + v45);
                v46 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
                swift_beginAccess();
                v47 = *(v42 + v46);
                v48 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
                swift_beginAccess();
                if (*(v47 + v48) >= v44)
                {
                  break;
                }

                if (!v36)
                {
                  goto LABEL_157;
                }

                v49 = *v41;
                v39 = v41[1];
                *v41 = v39;
                v41[1] = v49;
                --v41;
              }

              while (!__CFADD__(v40++, 1));
              v9 = v139 + 1;
              v37 = v156 + 8;
              --v38;
            }

            while ((v139 + 1) != __srca);
            v9 = __srca;
            v8 = v147;
            v7 = v150;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_150;
      }

      v140 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v52 = *(v7 + 2);
      v51 = *(v7 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v7);
      }

      *(v7 + 2) = v53;
      v54 = &v7[16 * v52];
      *(v54 + 4) = v8;
      *(v54 + 5) = v140;
      v55 = *a1;
      if (!*a1)
      {
        goto LABEL_161;
      }

      if (v52)
      {
        break;
      }

LABEL_3:
      v6 = v140;
      v5 = a3[1];
      if (v140 >= v5)
      {
        goto LABEL_125;
      }
    }

    __srcb = *a1;
    while (1)
    {
      v56 = v53 - 1;
      if (v53 >= 4)
      {
        break;
      }

      if (v53 == 3)
      {
        v57 = *(v7 + 4);
        v58 = *(v7 + 5);
        v67 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        v60 = v67;
LABEL_56:
        if (v60)
        {
          goto LABEL_141;
        }

        v73 = &v7[16 * v53];
        v75 = *v73;
        v74 = *(v73 + 1);
        v76 = __OFSUB__(v74, v75);
        v77 = v74 - v75;
        v78 = v76;
        if (v76)
        {
          goto LABEL_144;
        }

        v79 = &v7[16 * v56 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_147;
        }

        if (__OFADD__(v77, v82))
        {
          goto LABEL_148;
        }

        if (v77 + v82 >= v59)
        {
          if (v59 < v82)
          {
            v56 = v53 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_70;
      }

      v83 = &v7[16 * v53];
      v85 = *v83;
      v84 = *(v83 + 1);
      v67 = __OFSUB__(v84, v85);
      v77 = v84 - v85;
      v78 = v67;
LABEL_70:
      if (v78)
      {
        goto LABEL_143;
      }

      v86 = &v7[16 * v56];
      v88 = *(v86 + 4);
      v87 = *(v86 + 5);
      v67 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v67)
      {
        goto LABEL_146;
      }

      if (v89 < v77)
      {
        goto LABEL_3;
      }

LABEL_77:
      if (v56 - 1 >= v53)
      {
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v94 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
        return;
      }

      v148 = v56;
      v151 = v7;
      v142 = v56 - 1;
      v95 = *&v7[16 * v56 + 16];
      v143 = *&v7[16 * v56 + 40];
      v145 = v95;
      v96 = 8 * v95;
      v97 = (v94 + 8 * v95);
      v98 = 8 * *&v7[16 * v56 + 32];
      v99 = (v94 + v98);
      v100 = (v94 + 8 * v143);
      v101 = v98 - 8 * v95;
      v102 = 8 * v143 - v98;
      if (v101 >= v102)
      {
        v115 = (v94 + v98);
        if (v99 != v55 || v100 <= v55)
        {
          memmove(v55, v99, 8 * v143 - v98);
        }

        v157 = (v55 + v102);
        if (v102 < 1 || v98 <= v96)
        {
          v7 = v55;
          v128 = v115;
        }

        else
        {
          v138 = v97;
          v97 = v115;
          do
          {
            v116 = v97 - 8;
            --v100;
            v117 = v157;
            while (1)
            {
              v118 = (v100 + 1);
              v119 = *--v117;
              v120 = v116;
              v121 = *v116;
              v122 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
              swift_beginAccess();
              v123 = *(v119 + v122);
              v124 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
              swift_beginAccess();
              LODWORD(v123) = *(v123 + v124);
              v125 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
              swift_beginAccess();
              v126 = *(v121 + v125);
              v127 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
              swift_beginAccess();
              if (*(v126 + v127) < v123)
              {
                break;
              }

              if (v118 != v157)
              {
                *v100 = *v117;
              }

              --v100;
              v157 = v117;
              v116 = v120;
              if (v117 <= __srcb)
              {
                v157 = v117;
                v7 = __srcb;
                goto LABEL_114;
              }
            }

            v7 = __srcb;
            v128 = v120;
            if (v118 != v97)
            {
              *v100 = *v120;
            }

            if (v157 <= __srcb)
            {
              break;
            }

            v97 = v120;
          }

          while (v138 < v120);
        }
      }

      else
      {
        v103 = (v94 + v98);
        if (v97 != v55 || v99 <= v55)
        {
          memmove(v55, (v94 + 8 * v95), v98 - 8 * v95);
        }

        v157 = (v55 + v101);
        if (v101 >= 1 && 8 * v143 > v98)
        {
          v7 = v55;
          v104 = v103;
          while (1)
          {
            v105 = *v104;
            v106 = *v7;
            v107 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
            swift_beginAccess();
            v108 = *(v105 + v107);
            v109 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
            swift_beginAccess();
            LODWORD(v108) = *(v108 + v109);
            v110 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
            swift_beginAccess();
            v111 = *(v106 + v110);
            v112 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
            swift_beginAccess();
            if (*(v111 + v112) >= v108)
            {
              break;
            }

            v113 = v104;
            v114 = v97 == v104;
            v104 += 8;
            if (!v114)
            {
              goto LABEL_91;
            }

LABEL_92:
            v97 += 8;
            if (v7 >= v157 || v104 >= v100)
            {
              goto LABEL_114;
            }
          }

          v113 = v7;
          v114 = v97 == v7;
          v7 += 8;
          if (v114)
          {
            goto LABEL_92;
          }

LABEL_91:
          *v97 = *v113;
          goto LABEL_92;
        }

        v7 = v55;
LABEL_114:
        v128 = v97;
      }

      if (v128 != v7 || v128 >= &v7[(v157 - v7 + (v157 - v7 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v128, v7, 8 * ((v157 - v7) / 8));
      }

      v4 = v143;
      if (v143 < v145)
      {
        goto LABEL_137;
      }

      v129 = v151;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = specialized _ArrayBuffer._consumeAndCreateNew()(v151);
      }

      if (v148 > *(v129 + 2))
      {
        goto LABEL_138;
      }

      v130 = &v129[16 * v142];
      *(v130 + 4) = v145;
      *(v130 + 5) = v143;
      specialized Array.remove(at:)(v148);
      v55 = __srcb;
      v7 = v129;
      v53 = *(v129 + 2);
      if (v53 <= 1)
      {
        goto LABEL_3;
      }
    }

    v61 = &v7[16 * v53 + 32];
    v62 = *(v61 - 64);
    v63 = *(v61 - 56);
    v67 = __OFSUB__(v63, v62);
    v64 = v63 - v62;
    if (v67)
    {
      goto LABEL_139;
    }

    v66 = *(v61 - 48);
    v65 = *(v61 - 40);
    v67 = __OFSUB__(v65, v66);
    v59 = v65 - v66;
    v60 = v67;
    if (v67)
    {
      goto LABEL_140;
    }

    v68 = &v7[16 * v53];
    v70 = *v68;
    v69 = *(v68 + 1);
    v67 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v67)
    {
      goto LABEL_142;
    }

    v67 = __OFADD__(v59, v71);
    v72 = v59 + v71;
    if (v67)
    {
      goto LABEL_145;
    }

    if (v72 >= v64)
    {
      v90 = &v7[16 * v56 + 32];
      v92 = *v90;
      v91 = *(v90 + 1);
      v67 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v67)
      {
        goto LABEL_149;
      }

      if (v59 < v93)
      {
        v56 = v53 - 2;
      }

      goto LABEL_77;
    }

    goto LABEL_56;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_125:
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_163;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_158:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  v131 = *(v7 + 2);
  if (v131 >= 2)
  {
    while (*a3)
    {
      v132 = *&v7[16 * v131];
      v133 = *&v7[16 * v131 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v132), (*a3 + 8 * *&v7[16 * v131 + 16]), (*a3 + 8 * v133), v4);
      if (v137)
      {
        goto LABEL_135;
      }

      if (v133 < v132)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v131 - 2 >= *(v7 + 2))
      {
        goto LABEL_152;
      }

      v134 = &v7[16 * v131];
      *v134 = v132;
      *(v134 + 1) = v133;
      specialized Array.remove(at:)(v131 - 1);
      v131 = *(v7 + 2);
      if (v131 <= 1)
      {
        goto LABEL_135;
      }
    }

    goto LABEL_162;
  }

LABEL_135:
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_125:
    v4 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_127;
    }

    goto LABEL_163;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v127 = v7;
      v10 = *&(*a3)[8 * v9];
      v4 = (8 * v6);
      v11 = &(*a3)[8 * v6];
      v13 = *v11;
      v12 = (v11 + 16);
      v14 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
      swift_beginAccess();
      v15 = *(v10 + v14);
      v16 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
      swift_beginAccess();
      v17 = *(v13 + v16);
      v18 = v8 + 2;
      while (v5 != v18)
      {
        v20 = *(v12 - 1);
        v19 = *v12;
        v21 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        v22 = *(v19 + v21);
        v23 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        ++v18;
        ++v12;
        if (v17 < v15 == *(v20 + v23) >= v22)
        {
          v5 = v18 - 1;
          break;
        }
      }

      v7 = v127;
      if (v17 < v15)
      {
        if (v5 < v8)
        {
          goto LABEL_154;
        }

        if (v8 < v5)
        {
          v24 = 8 * v5 - 8;
          v25 = v5;
          v26 = v8;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v28 = *&v4[v27];
              *&v4[v27] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v4 += 8;
          }

          while (v26 < v25);
        }
      }

      v9 = v5;
    }

    v29 = a3[1];
    if (v9 < v29)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_153;
      }

      if (v9 - v8 < a4)
      {
        v30 = (v8 + a4);
        if (__OFADD__(v8, a4))
        {
          goto LABEL_155;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v8)
        {
          goto LABEL_156;
        }

        if (v9 != v30)
        {
          v128 = v7;
          v130 = v8;
          v4 = *a3;
          v31 = &(*a3)[8 * v9 - 8];
          v7 = (v8 - v9);
          v132 = v30;
          do
          {
            v121 = v9;
            v32 = *&v4[8 * v9];
            v33 = v7;
            v34 = v31;
            do
            {
              v35 = *v34;
              v36 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
              swift_beginAccess();
              v37 = *(v32 + v36);
              v38 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
              swift_beginAccess();
              if (*(v35 + v38) >= v37)
              {
                break;
              }

              if (!v4)
              {
                goto LABEL_157;
              }

              v39 = *v34;
              v32 = v34[1];
              *v34 = v32;
              v34[1] = v39;
              --v34;
            }

            while (!__CFADD__(v33++, 1));
            v9 = v121 + 1;
            v31 += 8;
            --v7;
          }

          while (v121 + 1 != v132);
          v9 = v132;
          v7 = v128;
          v8 = v130;
        }
      }
    }

    if (v9 < v8)
    {
      goto LABEL_150;
    }

    v122 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v7);
    }

    *(v7 + 2) = v43;
    v44 = &v7[16 * v42];
    *(v44 + 4) = v8;
    *(v44 + 5) = v9;
    v45 = *a1;
    if (!*a1)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (v42)
    {
      break;
    }

LABEL_3:
    v5 = a3[1];
    v6 = v122;
    if (v122 >= v5)
    {
      goto LABEL_125;
    }
  }

  while (1)
  {
    v46 = v43 - 1;
    if (v43 >= 4)
    {
      v51 = &v7[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_139;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_140;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_142;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_145;
      }

      if (v62 >= v54)
      {
        v80 = &v7[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_149;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v43 == 3)
    {
      v47 = *(v7 + 4);
      v48 = *(v7 + 5);
      v57 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      v50 = v57;
LABEL_55:
      if (v50)
      {
        goto LABEL_141;
      }

      v63 = &v7[16 * v43];
      v65 = *v63;
      v64 = *(v63 + 1);
      v66 = __OFSUB__(v64, v65);
      v67 = v64 - v65;
      v68 = v66;
      if (v66)
      {
        goto LABEL_144;
      }

      v69 = &v7[16 * v46 + 32];
      v71 = *v69;
      v70 = *(v69 + 1);
      v57 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v57)
      {
        goto LABEL_147;
      }

      if (__OFADD__(v67, v72))
      {
        goto LABEL_148;
      }

      if (v67 + v72 >= v49)
      {
        if (v49 < v72)
        {
          v46 = v43 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    v73 = &v7[16 * v43];
    v75 = *v73;
    v74 = *(v73 + 1);
    v57 = __OFSUB__(v74, v75);
    v67 = v74 - v75;
    v68 = v57;
LABEL_69:
    if (v68)
    {
      goto LABEL_143;
    }

    v76 = &v7[16 * v46];
    v78 = *(v76 + 4);
    v77 = *(v76 + 5);
    v57 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (v57)
    {
      goto LABEL_146;
    }

    if (v79 < v67)
    {
      goto LABEL_3;
    }

LABEL_76:
    if (v46 - 1 >= v43)
    {
      break;
    }

    v84 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    v129 = v7;
    v131 = v46;
    v124 = v46 - 1;
    v85 = *&v7[16 * v46 + 16];
    v86 = *&v7[16 * v46 + 32];
    v125 = *&v7[16 * v46 + 40];
    v126 = v85;
    v87 = 8 * v85;
    v88 = &v84[8 * v85];
    v89 = 8 * v86;
    v90 = &v84[8 * v86];
    v91 = &v84[8 * v125];
    v92 = 8 * v86 - 8 * v85;
    v93 = 8 * v125 - 8 * v86;
    if (v92 >= v93)
    {
      if (v90 != v45 || v91 <= v45)
      {
        memmove(v45, &v84[8 * v86], 8 * v125 - 8 * v86);
      }

      v133 = &v45[v93];
      v4 = v131;
      if (v93 < 1 || v89 <= v87)
      {
        v7 = v45;
        v110 = v90;
      }

      else
      {
        v120 = v88;
        do
        {
          v101 = v90 - 8;
          v91 -= 8;
          v102 = v133;
          while (1)
          {
            v103 = v91 + 8;
            v104 = *(v102 - 1);
            v102 -= 8;
            v105 = v101;
            v106 = *v101;
            v107 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
            swift_beginAccess();
            v108 = *(v104 + v107);
            v109 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
            swift_beginAccess();
            if (*(v106 + v109) < v108)
            {
              break;
            }

            if (v103 != v133)
            {
              *v91 = *v102;
            }

            v91 -= 8;
            v133 = v102;
            v101 = v105;
            if (v102 <= v45)
            {
              v133 = v102;
              v7 = v45;
              v110 = v90;
              goto LABEL_114;
            }
          }

          v110 = v105;
          if (v103 != v90)
          {
            *v91 = *v105;
          }

          v4 = v131;
          v7 = v45;
          if (v133 <= v45)
          {
            break;
          }

          v90 = v105;
        }

        while (v120 < v105);
      }
    }

    else
    {
      if (v88 != v45 || v90 <= v45)
      {
        memmove(v45, &v84[8 * v85], 8 * v86 - 8 * v85);
      }

      v133 = &v45[v92];
      if (v92 >= 1 && 8 * v125 > v89)
      {
        v7 = v45;
        while (1)
        {
          v94 = *v90;
          v95 = *v7;
          v96 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
          swift_beginAccess();
          v97 = *(v94 + v96);
          v98 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
          swift_beginAccess();
          if (*(v95 + v98) >= v97)
          {
            break;
          }

          v99 = v90;
          v100 = v88 == v90;
          v90 += 8;
          if (!v100)
          {
            goto LABEL_90;
          }

LABEL_91:
          v88 += 8;
          if (v7 >= v133 || v90 >= v91)
          {
            goto LABEL_111;
          }
        }

        v99 = v7;
        v100 = v88 == v7;
        v7 += 8;
        if (v100)
        {
          goto LABEL_91;
        }

LABEL_90:
        *v88 = *v99;
        goto LABEL_91;
      }

      v7 = v45;
LABEL_111:
      v110 = v88;
LABEL_114:
      v4 = v131;
    }

    if (v110 != v7 || v110 >= &v7[(v133 - v7 + (v133 - v7 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v110, v7, 8 * ((v133 - v7) / 8));
    }

    if (v125 < v126)
    {
      goto LABEL_137;
    }

    v111 = v129;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = specialized _ArrayBuffer._consumeAndCreateNew()(v129);
    }

    if (v4 > *(v111 + 2))
    {
      goto LABEL_138;
    }

    v112 = &v111[16 * v124];
    *(v112 + 4) = v126;
    *(v112 + 5) = v125;
    specialized Array.remove(at:)(v4);
    v7 = v111;
    v43 = *(v111 + 2);
    if (v43 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_127:
  v113 = *(v7 + 2);
  if (v113 < 2)
  {
LABEL_135:
  }

  else
  {
    while (*a3)
    {
      v114 = *&v7[16 * v113];
      v115 = *&v7[16 * v113 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)(&(*a3)[8 * v114], &(*a3)[8 * *&v7[16 * v113 + 16]], &(*a3)[8 * v115], v4);
      if (v119)
      {
        goto LABEL_135;
      }

      if (v115 < v114)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v113 - 2 >= *(v7 + 2))
      {
        goto LABEL_152;
      }

      v116 = &v7[16 * v113];
      *v116 = v114;
      *(v116 + 1) = v115;
      specialized Array.remove(at:)(v113 - 1);
      v113 = *(v7 + 2);
      if (v113 <= 1)
      {
        goto LABEL_135;
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, void **a2, void **a3, void **a4)
{
  v67 = type metadata accessor for Date();
  v8 = *(v67 - 8);
  v10 = MEMORY[0x28223BE20](v67, v9);
  v69 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v68 = &v61 - v13;
  v14 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v14 = a2 - a1;
  }

  v15 = v14 >> 3;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v15 >= v16 >> 3)
  {
    v70 = a1;
    if (a4 != a2 || &a2[v17] <= a4)
    {
      memmove(a4, a2, 8 * v17);
    }

    v73 = &a4[v17];
    if (a3 - a2 < 8)
    {
      v38 = a2;
    }

    else
    {
      v38 = a2;
      if (a2 > v70)
      {
        v64 = (v8 + 16);
        v63 = (v8 + 8);
        v72 = a4;
        do
        {
          v62 = v38;
          v39 = v38 - 1;
          v40 = a3 - 1;
          v41 = v73;
          v65 = v38 - 1;
          while (1)
          {
            v71 = v40;
            v66 = v40 + 1;
            v42 = *--v41;
            v43 = *v39;
            v44 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
            swift_beginAccess();
            v45 = *&v42[v44];
            v46 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
            swift_beginAccess();
            v47 = *v64;
            v48 = v67;
            v49 = v68;
            (*v64)(v68, v45 + v46, v67);
            v50 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
            swift_beginAccess();
            v51 = *&v43[v50];
            v52 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
            swift_beginAccess();
            v53 = v51 + v52;
            v54 = v69;
            v47(v69, v53, v48);
            v55 = v42;
            v56 = v43;
            LOBYTE(v52) = static Date.< infix(_:_:)();
            v57 = *v63;
            (*v63)(v54, v48);
            v57(v49, v48);

            if (v52)
            {
              break;
            }

            v58 = v71;
            if (v66 != v73)
            {
              *v71 = *v41;
            }

            v40 = v58 - 1;
            v73 = v41;
            v39 = v65;
            if (v41 <= v72)
            {
              v73 = v41;
              a4 = v72;
              v38 = v62;
              goto LABEL_38;
            }
          }

          v59 = v65;
          a3 = v71;
          if (v66 != v62)
          {
            *v71 = *v65;
          }

          a4 = v72;
          if (v73 <= v72)
          {
            break;
          }

          v38 = v59;
        }

        while (v59 > v70);
        v38 = v59;
      }
    }
  }

  else
  {
    v18 = a2;
    if (a4 != a1 || &a1[v15] <= a4)
    {
      memmove(a4, a1, 8 * v15);
    }

    v73 = &a4[v15];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v65 = (v8 + 8);
      v66 = (v8 + 16);
      v71 = a3;
      while (1)
      {
        v72 = a4;
        v70 = a1;
        v19 = *v18;
        v20 = *a4;
        v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v22 = *&v19[v21];
        v23 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
        swift_beginAccess();
        v24 = v67;
        v25 = *v66;
        v26 = v68;
        (*v66)(v68, v22 + v23, v67);
        v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v28 = *&v20[v27];
        v29 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
        swift_beginAccess();
        v30 = v28 + v29;
        v31 = v69;
        v25(v69, v30, v24);
        v32 = v19;
        v33 = v20;
        LOBYTE(v19) = static Date.< infix(_:_:)();
        v34 = *v65;
        (*v65)(v31, v24);
        v34(v26, v24);

        if ((v19 & 1) == 0)
        {
          break;
        }

        v35 = v18;
        v36 = v70;
        v37 = v70 == v18++;
        a4 = v72;
        if (!v37)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v36 + 1;
        if (a4 >= v73 || v18 >= v71)
        {
          goto LABEL_20;
        }
      }

      v35 = v72;
      a4 = v72 + 1;
      v36 = v70;
      if (v70 == v72)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v36 = *v35;
      goto LABEL_18;
    }

LABEL_20:
    v38 = a1;
  }

LABEL_38:
  if (v38 != a4 || v38 >= (a4 + ((v73 - a4 + (v73 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v38, a4, 8 * (v73 - a4));
  }

  return 1;
}

{
  v57 = type metadata accessor for Date();
  v8 = *(v57 - 8);
  v10 = MEMORY[0x28223BE20](v57, v9);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v58 = &v51 - v13;
  v14 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v14 = a2 - a1;
  }

  v15 = v14 >> 3;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v15 >= v16 >> 3)
  {
    if (a4 != a2 || &a2[v17] <= a4)
    {
      memmove(a4, a2, 8 * v17);
    }

    v62 = &a4[v17];
    if (a3 - a2 < 8 || a2 <= a1)
    {
      v33 = a2;
    }

    else
    {
      v52 = (v8 + 8);
      v53 = (v8 + 16);
      v61 = a4;
      v56 = a1;
      do
      {
        v51 = a2;
        v34 = a2 - 1;
        v35 = a3 - 1;
        v36 = v62;
        v54 = a2 - 1;
        while (1)
        {
          v60 = v35;
          v55 = v35 + 1;
          v37 = *--v36;
          v38 = *v34;
          v39 = OBJC_IVAR___WOWorkoutChartDataElement_date;
          swift_beginAccess();
          v40 = *v53;
          v41 = v57;
          v42 = v58;
          (*v53)(v58, &v37[v39], v57);
          v43 = OBJC_IVAR___WOWorkoutChartDataElement_date;
          swift_beginAccess();
          v44 = v59;
          v40(v59, &v38[v43], v41);
          v45 = v37;
          v46 = v38;
          LOBYTE(v43) = static Date.< infix(_:_:)();
          v47 = *v52;
          (*v52)(v44, v41);
          v47(v42, v41);

          if (v43)
          {
            break;
          }

          v48 = v60;
          if (v55 != v62)
          {
            *v60 = *v36;
          }

          v35 = v48 - 1;
          v62 = v36;
          v34 = v54;
          if (v36 <= v61)
          {
            v62 = v36;
            a4 = v61;
            v33 = v51;
            goto LABEL_39;
          }
        }

        v49 = v56;
        a3 = v60;
        v33 = v54;
        if (v55 != v51)
        {
          *v60 = *v54;
        }

        a4 = v61;
        if (v62 <= v61)
        {
          break;
        }

        a2 = v33;
      }

      while (v33 > v49);
    }
  }

  else
  {
    if (a4 != a1 || &a1[v15] <= a4)
    {
      memmove(a4, a1, 8 * v15);
    }

    v62 = &a4[v15];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = (v8 + 8);
      v55 = (v8 + 16);
      v18 = a2;
      v60 = a3;
      while (1)
      {
        v61 = a4;
        v56 = a1;
        v19 = *v18;
        v20 = *a4;
        v21 = OBJC_IVAR___WOWorkoutChartDataElement_date;
        swift_beginAccess();
        v22 = *v55;
        v23 = v57;
        v24 = v58;
        (*v55)(v58, &v19[v21], v57);
        v25 = OBJC_IVAR___WOWorkoutChartDataElement_date;
        swift_beginAccess();
        v26 = v59;
        v22(v59, &v20[v25], v23);
        v27 = v19;
        v28 = v20;
        LOBYTE(v20) = static Date.< infix(_:_:)();
        v29 = *v54;
        (*v54)(v26, v23);
        v29(v24, v23);

        if ((v20 & 1) == 0)
        {
          break;
        }

        v30 = v18;
        v31 = v56;
        v32 = v56 == v18++;
        a4 = v61;
        if (!v32)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v31 + 1;
        if (a4 >= v62 || v18 >= v60)
        {
          goto LABEL_20;
        }
      }

      v30 = v61;
      a4 = v61 + 1;
      v31 = v56;
      if (v56 == v61)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v31 = *v30;
      goto LABEL_18;
    }

LABEL_20:
    v33 = a1;
  }

LABEL_39:
  if (v33 != a4 || v33 >= (a4 + ((v62 - a4 + (v62 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v33, a4, 8 * (v62 - a4));
  }

  return 1;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m85OccurrenceStoreC25configurationsForMoveMode33_41A6A55DBE5760293367A7810ABE1D8CLLSDy10U40UUIDVAA0aC0CGvgSbAH3key_AJ5valuet_tXEfU_Tf1nnc_n(v13, v7, v3);
  result = MEMORY[0x20F2E9420](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDVSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB31VKXEfU_10Foundation4UUIDV_SiTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAJSiIsgnndzo_Tf1nc_n0109_s11WorkoutCore0A23ConfigurationDataSourceC4load33_A3D2BA4D279946755716B40EF86B87CELLyyFySaySo9HKWorkoutCG_s5v14_pSgtcfU1_Sb10R27UUIDV3key_Si5valuet_tXEfU0_Tf1nnc_n(v13, v7, v3);
  result = MEMORY[0x20F2E9420](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = v1;
  v64 = *MEMORY[0x277D85DE8];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  v5 = MEMORY[0x28223BE20](v61, v4);
  v60 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v59 = &v47 - v8;
  v58 = type metadata accessor for UUID();
  v9 = *(v58 - 8);
  v11 = MEMORY[0x28223BE20](v58, v10);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v48 = ((1 << v12) + 63) >> 6;
  v13 = 8 * v48;
  if ((v12 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v49 = v2;
    v47 = &v47;
    MEMORY[0x28223BE20](v11, v13);
    v50 = &v47 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v50, v14);
    v51 = 0;
    v15 = 0;
    v62 = a1;
    v17 = *(a1 + 64);
    a1 += 64;
    v16 = v17;
    v18 = 1 << *(a1 - 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v2 = (v18 + 63) >> 6;
    v53 = v9 + 1;
    v54 = v9 + 2;
    v55 = a1;
    v56 = v9;
    while (v20)
    {
      v21 = __clz(__rbit64(v20));
      v63 = (v20 - 1) & v20;
LABEL_12:
      v24 = v21 | (v15 << 6);
      v25 = v62;
      v26 = v9[2];
      v27 = v57;
      v28 = v58;
      v26(v57, v62[6] + v9[9] * v24, v58);
      v29 = v25[7];
      v52 = v24;
      v30 = *(v29 + 8 * v24);
      v31 = v59;
      v26(v59, v27, v28);
      v32 = v61;
      *&v31[*(v61 + 48)] = v30;
      v33 = v31;
      v34 = v60;
      outlined init with take of (key: UUID, value: WorkoutConfiguration)(v33, v60);
      v35 = *(v34 + *(v32 + 48));
      v36 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      LODWORD(v32) = v35[v36];
      v37 = v30;
      v9 = v56;
      v38 = v37;

      v39 = v9[1];
      v39(v34, v28);

      v39(v27, v28);
      a1 = v55;
      v20 = v63;
      if (v32 != 2)
      {
        *&v50[(v52 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v52;
        if (__OFADD__(v51++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v50, v48, v51, v62);
        }
      }
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v2)
      {
        return specialized _NativeDictionary.extractDictionary(using:count:)(v50, v48, v51, v62);
      }

      v23 = *(a1 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v63 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v42 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v13 = v42;
  }

  v43 = swift_slowAlloc();
  v44 = v2;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m98OccurrenceStoreC38configurationsForMoveModeExcludingRace33_41A6A55DBE5760293367A7810ABE1D8CLLSDy10U40UUIDVAA0aC0CGvgSbAH3key_AJ5valuet_tXEfU_Tf1nnc_n(v43, v48, a1);
  v46 = v45;
  result = MEMORY[0x20F2E9420](v43, -1, -1);
  v49 = v44;
  if (!v44)
  {
    return v46;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a1;
  v4 = &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  v6 = MEMORY[0x28223BE20](v56, v5);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for UUID();
  result = MEMORY[0x28223BE20](v11, v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v57 = a3;
  v18 = *(a3 + 64);
  v47 = 0;
  v48 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v53 = v22;
  v54 = v14;
  v51 = (v14 + 8);
  v52 = v14 + 16;
  v50 = v10;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v59 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v17 << 6);
    v27 = v57;
    v28 = *(v54 + 16);
    v28(v16, v57[6] + *(v54 + 72) * v26, v11);
    v29 = v27[7];
    v49 = v26;
    v30 = *(v29 + 8 * v26);
    v28(v10, v16, v11);
    v32 = v55;
    v31 = v56;
    *&v10[*(v56 + 48)] = v30;
    v33 = v11;
    _s10Foundation4UUIDVSgWOcTm_0(v10, v32, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, v4);
    v34 = *(v31 + 48);
    v35 = v4;
    v36 = *(v32 + v34);
    type metadata accessor for GoalWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v37 = *v51;
      v58 = v30;
      v37(v32, v11);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v60);

      v38 = v60;
      v39 = [v60 goalTypeIdentifier];

      v40 = v50;
      v4 = &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR;
      _sSo8NSObjectCSgWOhTm_3(v50, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);

      result = (v37)(v16, v11);
      v10 = v40;
      v22 = v53;
      v21 = v59;
      if (v39 != 3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v41 = v30;

      v42 = v50;
      _sSo8NSObjectCSgWOhTm_3(v50, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, v35);
      v43 = *v51;
      (*v51)(v32, v33);

      result = (v43)(v16, v33);
      v4 = v35;
      v10 = v42;
      v11 = v33;
      v22 = v53;
      v21 = v59;
LABEL_15:
      *(v46 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v46, v45, v47, v57);
      }
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v46, v45, v47, v57);
    }

    v25 = *(v48 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v59 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m82OccurrenceStoreC14configurations3forSayAA0aC0CGSo23FIUIWorkoutActivityTypeC_tFSb10U26UUIDV3key_AG5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m85OccurrenceStoreC25configurationsForMoveMode33_41A6A55DBE5760293367A7810ABE1D8CLLSDy10U40UUIDVAA0aC0CGvgSbAH3key_AJ5valuet_tXEfU_Tf1nnc_n(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m98OccurrenceStoreC38configurationsForMoveModeExcludingRace33_41A6A55DBE5760293367A7810ABE1D8CLLSDy10U40UUIDVAA0aC0CGvgSbAH3key_AJ5valuet_tXEfU_Tf1nnc_n(void *a1, uint64_t a2, void *a3)
{
  v52 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  v6 = MEMORY[0x28223BE20](v50, v5);
  v49 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v48 = &v38 - v9;
  v47 = type metadata accessor for UUID();
  v51 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v10);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v40 = a1;
    v41 = 0;
    v39 = a2;
    v12 = 0;
    v13 = v52 + 8;
    v14 = 1 << *(v52 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v52[8];
    v17 = (v14 + 63) >> 6;
    v43 = v51 + 8;
    v44 = v51 + 16;
    v45 = v52 + 8;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v54 = (v16 - 1) & v16;
LABEL_14:
      v21 = v18 | (v12 << 6);
      v23 = v51;
      v22 = v52;
      v24 = *(v51 + 16);
      v25 = v46;
      v26 = v47;
      v24(v46, v52[6] + *(v51 + 72) * v21, v47);
      v27 = v22[7];
      v42 = v21;
      v28 = *(v27 + 8 * v21);
      v29 = v48;
      v24(v48, v25, v26);
      v30 = v50;
      *&v29[*(v50 + 48)] = v28;
      v31 = v29;
      v32 = v49;
      outlined init with take of (key: UUID, value: WorkoutConfiguration)(v31, v49);
      v33 = *(v32 + *(v30 + 48));
      v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      v53 = v33[v34];
      v35 = v28;

      v36 = *(v23 + 8);
      v36(v32, v26);

      v36(v25, v26);
      v13 = v45;
      v16 = v54;
      if (v53 != 2)
      {
        *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_18:
          specialized _NativeDictionary.extractDictionary(using:count:)(v40, v39, v41, v52);

          return;
        }
      }
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_18;
      }

      v20 = v13[v12];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v54 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = type metadata accessor for Date();
  v44 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42, v8);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      type metadata accessor for WorkoutAlertZone();
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}