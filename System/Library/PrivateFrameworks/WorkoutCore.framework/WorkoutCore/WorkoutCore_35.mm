uint64_t HKWorkoutActivityType.moodForWorkoutType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Station.Mood();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D2B270];
  switch(a1)
  {
    case 2:
    case 7:
    case 10:
    case 12:
    case 17:
    case 19:
    case 21:
    case 24:
    case 26:
    case 31:
    case 32:
    case 38:
    case 39:
    case 43:
    case 52:
    case 58:
    case 66:
    case 76:
    case 77:
    case 78:
      v6 = MEMORY[0x277D2B278];
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 11:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 20:
    case 22:
    case 23:
    case 25:
    case 27:
    case 28:
    case 30:
    case 34:
    case 35:
    case 36:
    case 37:
    case 40:
    case 41:
    case 42:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 53:
    case 54:
    case 55:
    case 56:
    case 59:
    case 60:
    case 61:
    case 63:
    case 64:
    case 65:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 73:
    case 74:
    case 75:
    case 79:
      break;
    case 29:
    case 33:
    case 57:
    case 62:
    case 72:
    case 80:
      v6 = MEMORY[0x277D2B268];
      break;
    default:
      if (a1 == 3000)
      {
        v6 = MEMORY[0x277D2B278];
      }

      break;
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
  v19 = v2;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      outlined consume of Set<NSNumber>.Iterator._Variant(v19);
      return;
    }

    while (1)
    {
      v16 = [v15 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      v2 = v19;
      if (v18 >= v17 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 2) = v18 + 1;
      *&v10[8 * v18 + 32] = v16;
      v5 = v13;
      v6 = v14;
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSNumber();
        swift_dynamicCast();
        v15 = v25;
        v13 = v5;
        v14 = v6;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id static SegmentMetricsPlatter.metrics(workoutSettingsManager:)(void *a1)
{
  result = [a1 supportedMetrics];
  if (result)
  {
    v2 = result;
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Sequence.compactMap<A>(_:)(v3, v4);
    v6 = v5;

    v7 = *(v6 + 16);
    v8 = 32;
    v9 = &outlined read-only object #0 of one-time initialization function for metricsWithoutDistance;
    while (v7)
    {
      v10 = *(v6 + v8);
      v8 += 8;
      --v7;
      if (v10 == 1)
      {
        v9 = &outlined read-only object #0 of one-time initialization function for metricsWithDistance;
        break;
      }
    }

    v11 = v9[2];
    if (v11)
    {

      v12 = 0;
      v13 = MEMORY[0x277D84F90];
      do
      {
        v16 = v9[v12 + 4];
        v17 = *(v6 + 16);
        v18 = (v6 + 32);
        while (v17)
        {
          v19 = *v18++;
          --v17;
          if (v19 == v16)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
            }

            v15 = *(v13 + 16);
            v14 = *(v13 + 24);
            if (v15 >= v14 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
            }

            *(v13 + 16) = v15 + 1;
            *(v13 + 8 * v15 + 32) = v16;
            break;
          }
        }

        ++v12;
      }

      while (v12 != v11);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentMetricsPlatter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SegmentMetricsPlatter(_WORD *result, int a2, int a3)
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

uint64_t StatisticAccumulator.__allocating_init(total:count:)(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t StatisticAccumulator.init(total:count:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

double StatisticAccumulator.average.getter()
{
  v1 = *(v0 + 24);
  if (v1 < 1)
  {
    return 0.0;
  }

  else
  {
    return *(v0 + 16) / v1;
  }
}

Swift::Void __swiftcall StatisticAccumulator.append(_:)(Swift::Double a1)
{
  *(v1 + 16) = *(v1 + 16) + a1;
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
  }
}

void CustomTimeSplitsTracker.dataProvider(_:didUpdate:)(void *result, uint64_t a2)
{
  if (a2 == 3)
  {
    [result activityDuration];
    v4 = v3;
    [objc_msgSend(result distanceProvider)];
    swift_unknownObjectRelease();

    specialized CustomTimeSplitsTracker.handleElapsedTimeUpdate(elapsedTime:distance:)(v4);
  }
}

double thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t Announcer.session()()
{
  v1 = *&v0[OBJC_IVAR____TtC11WorkoutCore9Announcer__session];
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *&v0[OBJC_IVAR____TtC11WorkoutCore9Announcer__session];
LABEL_6:
    v10 = v1;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2, v3);
    return v4;
  }

  v13 = 0;
  v5 = *&v0[OBJC_IVAR____TtC11WorkoutCore9Announcer_initializationQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = &v13;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in Announcer.session();
  *(v6 + 24) = v3;
  aBlock[4] = _sIg_Ieg_TRTA_5;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_88_0;
  v7 = _Block_copy(aBlock);
  v8 = v0;

  dispatch_sync(v5, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v4 = v13;
    if (v13)
    {
      v2 = partial apply for closure #1 in Announcer.session();
      goto LABEL_6;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, 0x800000020B4666C0, "WorkoutCore/Announcer.swift", 27, 2, 56, 0);
  __break(1u);
  return result;
}

void closure #1 in Announcer.session()(uint64_t a1, id *a2)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore9Announcer__session;
  v4 = *(a1 + OBJC_IVAR____TtC11WorkoutCore9Announcer__session);
  if (!v4)
  {
    v6 = [objc_allocWithZone(type metadata accessor for DaemonSession()) init];
    v7 = *(a1 + v3);
    *(a1 + v3) = v6;

    v4 = *(a1 + v3);
  }

  v9 = *a2;
  *a2 = v4;
  v8 = v4;
}

char *Announcer.init(voiceFeedbackAvailabilityProvider:activityType:)(void *a1, void *a2)
{
  v3 = v2;
  v48 = a1;
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v43 = &v42 - v6;
  v47 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v11, v12);
  v13 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v46 = OBJC_IVAR____TtC11WorkoutCore9Announcer_initializationQueue;
  v15 = _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v44 = "e20StatisticAccumulator";
  v45 = v15;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v47);
  *&v2[v46] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer__session] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest] = 0;
  v16 = &v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v2[OBJC_IVAR____TtC11WorkoutCore9Announcer__audioSession];
  *(v17 + 2) = 0;
  *(v17 + 3) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v17 = closure #1 in variable initialization expression of Announcer._audioSession;
  *(v17 + 1) = 0;
  v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_prewarmed] = 0;
  v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_audioSessionSetupComplete] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_liveWorkoutAnnouncementHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerNotifyToken] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken] = 0;
  v18 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateKey;
  _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v19 = NSString.init(stringLiteral:)();
  v20 = [v19 UTF8String];
  v21 = v19;
  *&v3[v18] = v20;
  *&v3[OBJC_IVAR____TtC11WorkoutCore9Announcer_minimumStorageCapacity] = 0x4020000000000000;
  v23 = v48;
  v22 = v49;
  *&v3[OBJC_IVAR____TtC11WorkoutCore9Announcer_availabilityProvider] = v48;
  *&v3[OBJC_IVAR____TtC11WorkoutCore9Announcer_activityType] = v22;
  v24 = type metadata accessor for Announcer();
  v51.receiver = v3;
  v51.super_class = v24;
  v25 = v23;
  v26 = v22;
  v27 = objc_msgSendSuper2(&v51, sel_init);
  v28 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateKey;
  v29 = *&v27[OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateKey];
  v30 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
  swift_beginAccess();
  v31 = v27;
  notify_register_check(v29, &v27[v30]);
  swift_endAccess();
  v32 = *&v27[v28];
  v33 = static OS_dispatch_queue.main.getter();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = partial apply for closure #1 in Announcer.init(voiceFeedbackAvailabilityProvider:activityType:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  aBlock[3] = &block_descriptor_58;
  v35 = _Block_copy(aBlock);

  v36 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerNotifyToken;
  swift_beginAccess();
  notify_register_dispatch(v32, &v31[v36], v33, v35);
  swift_endAccess();
  _Block_release(v35);

  Announcer.updateAutoDownloadedVoiceAssets()();
  Announcer.setupAudioSessionOnBackground()();
  if (v31[OBJC_IVAR____TtC11WorkoutCore9Announcer_prewarmed] == 1 || !VoiceFeedbackAvailabilityProvider.isVoiceFeedbackAvailable()())
  {
  }

  else
  {
    v37 = v43;
    static TaskPriority.low.getter();
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v31;
    v40 = v31;
    _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for closure #1 in Announcer.prewarm(), v39);

    _sScPSgWOhTm_0(v37, &_sScPSgMd, &_sScPSgMR);
  }

  return v31;
}

void closure #1 in Announcer.init(voiceFeedbackAvailabilityProvider:activityType:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    Announcer.updateAudioSessionCategory()();
  }
}

id Announcer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerNotifyToken;
  swift_beginAccess();
  notify_cancel(*&v0[v1]);
  v2 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v0);

  v5.receiver = v0;
  v5.super_class = type metadata accessor for Announcer();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

Swift::Void __swiftcall Announcer.announce(utterance:)(Swift::String utterance)
{
  v2 = v1;
  object = utterance._object;
  countAndFlagsBits = utterance._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v28[-1] - v7;
  if (VoiceFeedbackAvailabilityProvider.isVoiceFeedbackAvailable()())
  {
    v28[3] = &type metadata for WorkoutFeatures;
    v28[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v28[0]) = 0;
    v9 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm_15(v28);
    if (v9)
    {
      v10 = &v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_liveWorkoutAnnouncementHandler];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = *(v10 + 1);
        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
        type metadata accessor for MainActor();
        swift_unknownObjectRetain();

        v15 = static MainActor.shared.getter();
        v16 = swift_allocObject();
        v17 = MEMORY[0x277D85700];
        v16[2] = v15;
        v16[3] = v17;
        v16[4] = v12;
        v16[5] = v13;
        v16[6] = countAndFlagsBits;
        v16[7] = object;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in Announcer.announce(utterance:), v16);

        swift_unknownObjectRelease();
      }

      else
      {
        Announcer.siriAnnounce(_:)(countAndFlagsBits, object);
      }
    }

    else
    {
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
      type metadata accessor for MainActor();

      v23 = v2;
      v24 = static MainActor.shared.getter();
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v23;
      v25[5] = countAndFlagsBits;
      v25[6] = object;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #2 in Announcer.announce(utterance:), v25);
    }
  }

  else
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.voiceFeedback);
    v27 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v27, v19, "not requesting announcement because voiceFeedbackAvailabilityProvider's isVoiceFeedbackAvailable is false", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    v21 = v27;
  }
}

uint64_t closure #1 in Announcer.announce(utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = type metadata accessor for MainActor();
  v7[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v14 = (*(a5 + 8) + **(a5 + 8));
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = closure #1 in Announcer.announce(utterance:);

  return v14(a6, a7, ObjectType, a5);
}

uint64_t closure #1 in Announcer.announce(utterance:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in Announcer.announce(utterance:), v1, v0);
}

uint64_t closure #2 in Announcer.announce(utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = closure #2 in Announcer.announce(utterance:);

  return Announcer.voiceServicesAnnounce(_:)(a5, a6);
}

uint64_t closure #2 in Announcer.announce(utterance:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in Announcer.announce(utterance:), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void Announcer.siriAnnounce(_:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.voiceFeedback);

  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v49 = v5;
    v51 = v11;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315394;
    v50 = a1;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v14 + 12) = 2080;
    if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v16 = [objc_opt_self() sharedPreferences], v17 = objc_msgSend(v16, sel_outputVoice), v16, v17) && (v18 = objc_msgSend(v17, sel_languageCode), v17, v18))
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
      v21 = v22;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, aBlock);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_20AEA4000, v12, v13, "Requesting Siri announcement of utterance=%s in language %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);

    a1 = v50;
    v11 = v51;
    v5 = v49;
  }

  else
  {
  }

  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v6 + 8))(v9, v5);
  v27 = &v11[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID];
  *v27 = v24;
  v27[1] = v26;

  if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v28 = [objc_opt_self() sharedPreferences], v29 = objc_msgSend(v28, sel_outputVoice), v28, v29) && (v30 = objc_msgSend(v29, sel_languageCode), v29, v30))
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
    v33 = v34;
  }

  v35 = objc_allocWithZone(MEMORY[0x277CEF428]);
  v36 = MEMORY[0x20F2E6C00](v24, v26);

  v37 = MEMORY[0x20F2E6C00](a1, a2);
  v38 = MEMORY[0x20F2E6C00](v31, v33);

  v39 = [v35 initWithVoiceFeedbackIdentifier:v36 text:v37 language:v38];

  v40 = [objc_allocWithZone(MEMORY[0x277CEF3C8]) initWithWorkoutVoiceFeedback_];
  if (v40)
  {
    v41 = v40;
    v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v43 = [v42 unsignedIntValue];

    UIAccessibilityPostNotification(v43, 0);
    v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v45 = [v44 unsignedIntValue];

    UIAccessibilityPostNotification(v45, 0);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in Announcer.siriAnnounce(_:);
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_93;
    v47 = _Block_copy(aBlock);

    [v41 performRequestWithCompletion_];

    _Block_release(v47);
    v39 = v41;
  }
}

double closure #1 in Announcer.siriAnnounce(_:)(char a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v4 = [v3 unsignedIntValue];

  UIAccessibilityPostNotification(v4, 0);
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.voiceFeedback);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v6, v7, "AFSiriAnnounceVoiceFeedbackRequest result=%{BOOL}d", v8, 8u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = &Strong[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID];
    *v11 = 0;
    *(v11 + 1) = 0;
  }

  return result;
}

double thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t Announcer.voiceServicesAnnounce(_:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;

  return MEMORY[0x2822009F8](Announcer.voiceServicesAnnounce(_:), 0, 0);
}

uint64_t Announcer.voiceServicesAnnounce(_:)()
{
  v51 = v0;
  v50[1] = *MEMORY[0x277D85DE8];
  v1 = v0[12];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[11] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v3 = v0[13];
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.voiceFeedback);
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[13];
    if (v8)
    {
      v11 = v0[11];
      v10 = v0[12];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v50[0] = v13;
      *v12 = 136315906;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, v50);
      *(v12 + 12) = 1024;
      v0[2] = 0;
      v14 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
      swift_beginAccess();
      v15 = *&v9[v14];
      if (v15 == -1)
      {
        v16 = 1;
      }

      else
      {
        notify_get_state(v15, v0 + 2);
        v16 = v0[2] == 0;
      }

      v21 = v0[13];
      *(v12 + 14) = v16;

      *(v12 + 18) = 2080;
      if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v22 = [objc_opt_self() sharedPreferences], v23 = objc_msgSend(v22, sel_outputVoice), v22, v23) && (v24 = objc_msgSend(v23, sel_languageCode), v23, v24))
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = v25;
      }

      else
      {
        v28 = specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
        v27 = v29;
      }

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v50);

      *(v12 + 20) = v30;
      *(v12 + 28) = 2080;
      swift_beginAccess();
      v31 = specialized AtomicLazy.load()();
      swift_endAccess();
      v32 = [v31 currentRoute];

      v33 = [v32 outputs];
      v34 = _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for AVAudioSessionPortDescription, 0x277CB8408);
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = MEMORY[0x20F2E6F70](v35, v34);
      v38 = v37;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v50);

      *(v12 + 30) = v39;
      _os_log_impl(&dword_20AEA4000, v6, v7, "requesting voice services utterance=%s silent_mode=%{BOOL}d languageId=%s route_before_activation=%s", v12, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    else
    {
    }

    if (*(v0[13] + OBJC_IVAR____TtC11WorkoutCore9Announcer_audioSessionSetupComplete))
    {
      Announcer.updateAudioSessionCategory()();
    }

    else
    {
      Announcer.setupAudioSession()();
    }

    v40 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for AnnouncerWillStart != -1)
    {
      swift_once();
    }

    v41 = v0[12];
    v42 = v0[13];
    v43 = v0[11];
    [v40 postNotificationName:static NSNotificationName.AnnouncerWillStart object:0];

    swift_beginAccess();
    v44 = specialized AtomicLazy.load()();
    swift_endAccess();
    v45 = swift_allocObject();
    v45[2] = v42;
    v45[3] = v43;
    v45[4] = v41;
    v0[6] = partial apply for closure #1 in Announcer.voiceServicesAnnounce(_:);
    v0[7] = v45;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v0[5] = &block_descriptor_66;
    v46 = _Block_copy(v0 + 2);
    v47 = v42;

    [v44 activateWithOptions:0 completionHandler:v46];

    _Block_release(v46);
  }

  else
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.voiceFeedback);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v19, "not requesting announcement because utterance is empty", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }
  }

  v48 = v0[1];

  return v48();
}

void closure #1 in Announcer.voiceServicesAnnounce(_:)(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.voiceFeedback);
    v7 = a3;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v51 = v11;
      *v10 = 136315138;
      swift_beginAccess();
      v12 = specialized AtomicLazy.load()();
      swift_endAccess();
      v13 = [v12 currentRoute];

      v14 = [v13 outputs];
      v15 = _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for AVAudioSessionPortDescription, 0x277CB8408);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = MEMORY[0x20F2E6F70](v16, v15);
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v51);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_20AEA4000, v8, v9, "audio session activated. route_after_activation=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_15(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v21 = [objc_opt_self() sharedPreferences], v22 = objc_msgSend(v21, sel_outputVoice), v21, v22) && (v23 = objc_msgSend(v22, sel_languageCode), v22, v23))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
    }

    specialized Announcer.voiceName.getter();
    v34 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
    v35 = SynthesisVoice.init(language:name:)();
    objc_allocWithZone(type metadata accessor for SpeechRequest());

    v36 = v35;
    v37 = SpeechRequest.init(text:voice:)();
    swift_beginAccess();
    v38 = specialized AtomicLazy.load()();
    swift_endAccess();
    [v38 opaqueSessionID];

    AudibleRequestProtocol.audioSessionId.setter();
    AudibleRequestProtocol.immediate.setter();
    SynthesizingRequestProtocol.disableCompactVoice.setter();
    SynthesizingRequestProtocol.privacySensitive.setter();

    v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v40 = [v39 unsignedIntValue];

    UIAccessibilityPostNotification(v40, 0);
    v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v42 = [v41 unsignedIntValue];

    UIAccessibilityPostNotification(v42, 0);
    *(swift_allocObject() + 16) = v37;
    v43 = v37;
    AudibleRequestProtocol.didStartSpeaking.setter();
    v44 = Announcer.session()();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    *(v45 + 24) = v7;
    v46 = v7;
    v47 = v43;
    dispatch thunk of DaemonSession.speak(speechRequest:didFinish:)();

    v48 = *&v46[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest];
    *&v46[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest] = v47;
  }

  else
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.voiceFeedback);
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      if (a2)
      {
        v31 = a2;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = v32;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *(v29 + 4) = v32;
      *v30 = v33;
      _os_log_impl(&dword_20AEA4000, v27, v28, "audio session failed to activate. Failure expected when voice feedback suppression desired. error=%@", v29, 0xCu);
      _sScPSgWOhTm_0(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v30, -1, -1);
      MEMORY[0x20F2E9420](v29, -1, -1);
    }

    v49 = [objc_opt_self() defaultCenter];
    v50 = v49;
    if (one-time initialization token for AnnouncerDidStop != -1)
    {
      swift_once();
      v49 = v50;
    }

    [v49 postNotificationName:static NSNotificationName.AnnouncerDidStop object:0];
  }
}

void closure #1 in closure #1 in Announcer.voiceServicesAnnounce(_:)(void *a1)
{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.voiceFeedback);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for SpeechRequest();
    v7 = SynthesizingRequestProtocol.text.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "did start speaking text=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_15(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

void closure #2 in closure #1 in Announcer.voiceServicesAnnounce(_:)(void *a1, void *a2, uint64_t a3)
{
  v30[3] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.voiceFeedback);
  v7 = a1;
  v8 = a1;
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30[0] = v14;
    *v12 = 136315650;
    type metadata accessor for SpeechRequest();
    v15 = SynthesizingRequestProtocol.text.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;

    *(v12 + 14) = a1 == 0;
    *(v12 + 18) = 2112;
    if (a1)
    {
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v12 + 20) = v19;
    *v13 = v20;
    _os_log_impl(&dword_20AEA4000, v10, v11, "did finish speaking text=%s successfully=%{BOOL}d error=%@", v12, 0x1Cu);
    _sScPSgWOhTm_0(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_15(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  else
  {
  }

  v21 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for AnnouncerDidStop != -1)
  {
    swift_once();
  }

  [v21 postNotificationName:static NSNotificationName.AnnouncerDidStop object:0];

  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v23 = [v22 unsignedIntValue];

  UIAccessibilityPostNotification(v23, 0);
  swift_beginAccess();
  v24 = specialized AtomicLazy.load()();
  swift_endAccess();
  v30[0] = 0;
  v25 = [v24 setActive:0 withOptions:1 error:v30];

  if (v25)
  {
    v26 = v30[0];
  }

  else
  {
    v27 = v30[0];
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v29 = *(a3 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest);
  *(a3 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest) = 0;
}

Swift::Void __swiftcall Announcer.announce(workoutEventType:)(HKWorkoutEventType workoutEventType)
{
  v1 = 0xD000000000000015;
  if (workoutEventType == HKWorkoutEventTypePause)
  {
    v2 = "WORKOUT_RESUMED_SPOKEN";
  }

  else
  {
    if (workoutEventType != HKWorkoutEventTypeResume)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002ALL, 0x800000020B466480, "WorkoutCore/Announcer.swift", 27, 2, 216, 0);
      __break(1u);
      return;
    }

    v2 = "out event type to announce";
    v1 = 0xD000000000000016;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = MEMORY[0x20F2E6C00](v1, v2 | 0x8000000000000000);
  v6 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  Announcer.announce(utterance:)(v11);
}

Swift::Void __swiftcall Announcer.stopSpeaking()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v20 - v3;
  v5 = v0 + OBJC_IVAR____TtC11WorkoutCore9Announcer_liveWorkoutAnnouncementHandler;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v5 + 8);
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    v10[5] = v8;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in Announcer.stopSpeaking(), v10);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID + 8);
    if (v11)
    {
      v12 = *(v0 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID);
      v13 = objc_opt_self();

      v14 = MEMORY[0x20F2E6C00](v12, v11);

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #2 in Announcer.stopSpeaking();
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
      aBlock[3] = &block_descriptor_16_0;
      v16 = _Block_copy(aBlock);

      [v13 deactivateRequestForFeedbackIdentifier:v14 completion:v16];
      _Block_release(v16);
    }

    else
    {
      v17 = *(v0 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest);
      if (v17)
      {
        v18 = v17;
        v21 = Announcer.session()();
        dispatch thunk of DaemonSession.cancel(request:)();

        v19 = v21;
      }
    }
  }
}

uint64_t closure #1 in Announcer.stopSpeaking()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = (*(a5 + 16) + **(a5 + 16));
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = closure #1 in Announcer.stopSpeaking();

  return v10(ObjectType, a5);
}

uint64_t closure #1 in Announcer.stopSpeaking()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double closure #2 in Announcer.stopSpeaking()(char a1, uint64_t a2)
{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.voiceFeedback);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v4, v5, "AFSiriAnnounceVoiceFeedbackRequest cancelation result=%{BOOL}d", v6, 8u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = &Strong[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID];
    *v9 = 0;
    *(v9 + 1) = 0;
  }

  return result;
}

Swift::Double __swiftcall Announcer.estimateDuration(of:)(Swift::String of)
{
  object = of._object;
  countAndFlagsBits = of._countAndFlagsBits;
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v39[1] = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v40 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v39 - v15;
  if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v17 = [objc_opt_self() sharedPreferences], v18 = objc_msgSend(v17, sel_outputVoice), v17, v18) && (v19 = objc_msgSend(v18, sel_languageCode), v18, v19))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
  }

  specialized Announcer.voiceName.getter();
  v20 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v21 = SynthesisVoice.init(language:name:)();
  v22 = objc_allocWithZone(type metadata accessor for SpeechRequest());

  v23 = v21;
  v24 = SpeechRequest.init(text:voice:)();
  swift_beginAccess();
  v25 = specialized AtomicLazy.load()();
  swift_endAccess();
  [v25 opaqueSessionID];

  AudibleRequestProtocol.audioSessionId.setter();
  AudibleRequestProtocol.immediate.setter();
  SynthesizingRequestProtocol.disableCompactVoice.setter();
  SynthesizingRequestProtocol.privacySensitive.setter();

  type metadata accessor for DurationEstimator();
  v26 = v24;
  static DurationEstimator.roughEstimation(request:)();
  v28 = v27;

  v44 = v28;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  MEMORY[0x20F2E4430](v5, v9);
  (*(v41 + 8))(v5, v42);
  v29 = *(v40 + 8);
  v29(v13, v9);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, MEMORY[0x277CC9168]);
  BinaryFloatingPoint.formatted<A>(_:)();
  v29(v16, v9);
  v31 = v45[0];
  v30 = v45[1];
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static WOLog.voiceFeedback);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v35 = 136315394;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v45);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v45);
    _os_log_impl(&dword_20AEA4000, v33, v34, "estimatedDuration=%ss for utterance=%s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v36, -1, -1);
    MEMORY[0x20F2E9420](v35, -1, -1);
  }

  else
  {
  }

  return v28;
}

void Announcer.setupAudioSessionOnBackground()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  if (VoiceFeedbackAvailabilityProvider.isVoiceFeedbackAvailable()())
  {
    static TaskPriority.userInitiated.getter();
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v1;
    v8 = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in Announcer.setupAudioSessionOnBackground(), v7);
  }

  else
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.voiceFeedback);
    v14 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v10, "Skipping setupAudioSession. Voice feedback not available.", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = v14;
  }
}

uint64_t closure #1 in Announcer.setupAudioSessionOnBackground()()
{
  if ((*(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore9Announcer_audioSessionSetupComplete) & 1) == 0)
  {
    Announcer.setupAudioSession()();
  }

  v1 = *(v0 + 8);

  return v1();
}

void Announcer.setupAudioSession()()
{
  v1 = v0;
  v19[3] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.voiceFeedback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "setting ParticipatesInNowPlayingAppPolicy on auxi audio session to false", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = specialized AtomicLazy.load()();
  swift_endAccess();
  v19[0] = 0;
  v7 = [v6 setParticipatesInNowPlayingAppPolicy:0 error:v19];

  if (v7)
  {
    v8 = v19[0];
  }

  else
  {
    v9 = v19[0];
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v19);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20AEA4000, v12, v13, "error setting ParticipatesInNowPlayingAppPolicy on audio session error=%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_15(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    else
    {
    }
  }

  Announcer.updateAudioSessionCategory()();
  *(v1 + OBJC_IVAR____TtC11WorkoutCore9Announcer_audioSessionSetupComplete) = 1;
}

void Announcer.updateAudioSessionCategory()()
{
  v1 = v0;
  state64[3] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = specialized AtomicLazy.load()();
  swift_endAccess();
  v3 = [v2 currentRoute];

  v4 = [v3 outputs];
  v5 = _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for AVAudioSessionPortDescription, 0x277CB8408);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v100 = v5;
  v101 = v1;
  if (v6 >> 62)
  {
LABEL_60:
    v104 = __CocoaSet.count.getter();
  }

  else
  {
    v104 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v9 = v7;
    if (v104 == v7)
    {
      break;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F2E7A20](v7, v6);
    }

    else
    {
      if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v10 = *(v6 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v12 = [v10 portType];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {
      goto LABEL_25;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_26;
    }

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
      goto LABEL_25;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_26;
    }

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
    {
LABEL_25:

      goto LABEL_28;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
LABEL_26:

      goto LABEL_28;
    }

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
    {

      break;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v9 + 1;
  }

  while ((v8 & 1) == 0);

LABEL_28:
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static WOLog.voiceFeedback);
  v34 = v101;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109376;
    *(v37 + 4) = v104 != v9;
    *(v37 + 8) = 1024;
    state64[0] = 0;
    v38 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
    swift_beginAccess();
    v39 = *(&v34->isa + v38);
    if (v39 == -1)
    {
      v40 = 1;
    }

    else
    {
      notify_get_state(v39, state64);
      v40 = state64[0] == 0;
    }

    *(v37 + 10) = v40;

    _os_log_impl(&dword_20AEA4000, v35, v36, "headphonesRouted=%{BOOL}d isSilentModeEnabled=%{BOOL}d", v37, 0xEu);
    MEMORY[0x20F2E9420](v37, -1, -1);
  }

  else
  {

    v35 = v34;
  }

  v106[0] = 0;
  v41 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
  swift_beginAccess();
  v42 = *(&v34->isa + v41);
  if (v42 == -1 || (notify_get_state(v42, v106), !v106[0]))
  {
    v43 = MEMORY[0x277CB8030];
    if (v104 == v9)
    {
      v43 = MEMORY[0x277CB8020];
    }
  }

  else
  {
    v43 = MEMORY[0x277CB8030];
  }

  v44 = *v43;
  swift_beginAccess();
  v45 = specialized AtomicLazy.load()();
  swift_endAccess();
  v46 = [v45 category];

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;
  if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
  {
  }

  else
  {
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v51)
    {
    }

    else
    {
      v52 = v34;
      v53 = v44;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v99 = v55;
        log = v54;
        v103 = v53;
        v56 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v105 = v98;
        *v56 = 136316418;
        swift_beginAccess();
        v57 = specialized AtomicLazy.load()();
        swift_endAccess();
        v58 = [v57 category];

        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v105);

        *(v56 + 4) = v62;
        *(v56 + 12) = 2080;
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v105);

        *(v56 + 14) = v65;
        *(v56 + 22) = 1024;
        v106[0] = 0;
        v66 = *(&v34->isa + v41);
        if (v66 == -1)
        {
          v67 = 1;
        }

        else
        {
          notify_get_state(v66, v106);
          v67 = v106[0] == 0;
        }

        *(v56 + 24) = v67;
        *(v56 + 28) = 1024;
        *(v56 + 30) = v104 != v9;
        *(v56 + 34) = 1024;
        *(v56 + 36) = 1;
        *(v56 + 40) = 2080;
        swift_beginAccess();
        v68 = specialized AtomicLazy.load()();
        swift_endAccess();
        v69 = [v68 currentRoute];

        v70 = [v69 outputs];
        v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v72 = MEMORY[0x20F2E6F70](v71, v100);
        v74 = v73;

        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v105);

        *(v56 + 42) = v75;
        _os_log_impl(&dword_20AEA4000, log, v99, "configure audio session category existing=%s new=%s silent_mode=%{BOOL}d headphonesRouted=%{BOOL}d duckOthers=%{BOOL}d route=%s", v56, 0x32u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v98, -1, -1);
        MEMORY[0x20F2E9420](v56, -1, -1);

        v53 = v103;
      }

      else
      {
      }

      swift_beginAccess();
      v76 = specialized AtomicLazy.load()();
      swift_endAccess();
      v106[0] = 0;
      v77 = [v76 setActive:0 error:v106];

      v78 = v106[0];
      if (v77 && (swift_beginAccess(), v79 = v78, v80 = specialized AtomicLazy.load()(), swift_endAccess(), v81 = *MEMORY[0x277CB80F0], v106[0] = 0, v82 = [v80 setCategory:v53 mode:v81 options:65555 error:v106], v80, v78 = v106[0], v82))
      {
        v83 = v106[0];
      }

      else
      {
        v84 = v78;
        v85 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v86 = v53;
        v87 = v85;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v106[0] = v91;
          *v90 = 136315394;
          v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v106);

          *(v90 + 4) = v94;
          *(v90 + 12) = 2080;
          swift_getErrorValue();
          v95 = Error.localizedDescription.getter();
          v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v106);

          *(v90 + 14) = v97;
          _os_log_impl(&dword_20AEA4000, v88, v89, "error setting category on audio session category=%s error=%s", v90, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v91, -1, -1);
          MEMORY[0x20F2E9420](v90, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

double Announcer.updateAutoDownloadedVoiceAssets()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D851C8], v8);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in Announcer.updateAutoDownloadedVoiceAssets();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_107;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v7, v3, v15);
  _Block_release(v15);

  (*(v19 + 8))(v3, v0);
  (*(v17 + 8))(v7, v18);

  return result;
}

void closure #1 in Announcer.updateAutoDownloadedVoiceAssets()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
    v5 = v4;
    if (FIUIIsWorkoutVoiceFeedbackEnabled() && (specialized Announcer.deviceHasMinimumStorageCapacity()() & 1) != 0 && (specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) == 0 && (v6 = MEMORY[0x20F2E6C00](v3, v5), v7 = AFGryphonAssetsExistForLanguage(), v6, v7))
    {
      v8 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
      v9 = SynthesisVoice.init(language:name:)();
      if (one-time initialization token for voiceFeedback != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static WOLog.voiceFeedback);
      v11 = v9;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25 = v15;
        *v14 = 136315138;
        v16 = [v11 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v25);

        *(v14 + 4) = v20;
        _os_log_impl(&dword_20AEA4000, v12, v13, "set auto downloaded voice assets to voice=%s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_15(v15);
        MEMORY[0x20F2E9420](v15, -1, -1);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      v21 = Announcer.session()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_20B425990;
      *(v22 + 32) = v11;
      v23 = v11;
      dispatch thunk of DaemonSession.subscribe(voices:reply:)();
    }

    else
    {

      v24 = Announcer.session()();
      dispatch thunk of DaemonSession.subscribe(voices:reply:)();
    }
  }
}

uint64_t closure #1 in Announcer.prewarm()()
{
  v1 = Announcer.session()();
  dispatch thunk of DaemonSession.keepActive.setter();

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = closure #1 in Announcer.prewarm();

  return MEMORY[0x282200480](0);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in Announcer.prewarm(), 0, 0);
  }
}

{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.voiceFeedback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "prewarming tts session", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v5 = [objc_opt_self() sharedPreferences], v6 = objc_msgSend(v5, sel_outputVoice), v5, v6) && (v7 = objc_msgSend(v6, sel_languageCode), v6, v7))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
  }

  v8 = *(v0 + 16);
  specialized Announcer.voiceName.getter();
  v9 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v10 = SynthesisVoice.init(language:name:)();
  v11 = objc_allocWithZone(type metadata accessor for SynthesisRequest());
  v12 = v10;
  v13 = SynthesisRequest.init(text:voice:)();
  SynthesizingRequestProtocol.disableCompactVoice.setter();
  SynthesizingRequestProtocol.privacySensitive.setter();

  v14 = Announcer.session()();
  *(swift_allocObject() + 16) = v13;
  v15 = v13;
  dispatch thunk of DaemonSession.prewarm(request:didFinish:)();

  *(v8 + OBJC_IVAR____TtC11WorkoutCore9Announcer_prewarmed) = 1;
  v16 = *(v0 + 8);

  return v16();
}

void closure #1 in closure #1 in Announcer.prewarm()(void *a1, void *a2)
{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.voiceFeedback);
  v5 = a2;
  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v10 = [v5 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v19);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v15 = Optional.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_20AEA4000, oslog, v7, "did finish prewarming tts session request=%s error=%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    _sScPSgWOhTm_0(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id Announcer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static NSNotificationName.AnnouncerWillStart.getter(void *a1, void **a2, uint64_t a3)
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

id one-time initialization function for announcerWillStart(uint64_t a1, void *a2, void **a3, void **a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a4;
    v9 = a3;
    swift_once();
    a3 = v9;
    a4 = v8;
  }

  v6 = *a3;
  *a4 = *a3;

  return v6;
}

id static NSNotification.announcerWillStart.getter(void *a1, void **a2, uint64_t a3)
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

id @objc static NSNotification.announcerWillStart.getter(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

uint64_t Announcer.setAnnouncementHandler(handler:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.voiceFeedback);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A24BuddyAnnouncementHandler_pSgMd, &_s11WorkoutCore0A24BuddyAnnouncementHandler_pSgMR);
    v9 = Optional.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "setting live workout announcement handler to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_15(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC11WorkoutCore9Announcer_liveWorkoutAnnouncementHandler + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t Announcer.receivedInferenceResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](Announcer.receivedInferenceResponse(_:), 0, 0);
}

uint64_t Announcer.receivedInferenceResponse(_:)()
{
  v0[5] = &type metadata for WorkoutFeatures;
  v1 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  *(v0 + 16) = 0;
  v0[6] = v1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_15(v0 + 2);
  if ((v2 & 1) == 0)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.workoutVoice);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Announcing inference response", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v7 = v0[8];
    v8 = v0[7];

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    Announcer.announce(utterance:)(v9);
  }

  v10 = v0[1];

  return v10();
}

Swift::Void __swiftcall Announcer.fallbackOnDefaultAnnouncement(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v1;

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = countAndFlagsBits;
  v11[6] = object;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:), v11);
}

uint64_t closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:), v8, v7);
}

uint64_t closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)()
{
  v1 = v0[4];
  v2 = v0[3];

  Announcer.siriAnnounce(_:)(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t protocol witness for LiveWorkoutContextManagerDelegate.receivedInferenceResponse(_:) in conformance Announcer(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for LiveWorkoutContextManagerDelegate.receivedInferenceResponse(_:) in conformance Announcer;

  return Announcer.receivedInferenceResponse(_:)(a1, a2);
}

double protocol witness for LiveWorkoutContextManagerDelegate.fallbackOnDefaultAnnouncement(_:) in conformance Announcer(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v2;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)partial apply, v12);

  return result;
}

id specialized AtomicLazy.load()()
{
  v1 = *(v0 + 24);
  v2 = [v1 lock];
  v3 = *(v0 + 16);
  if (!v3)
  {
    (*v0)(&v6, v2);
    v3 = v6;
    *(v0 + 16) = v6;
  }

  v4 = v3;
  [v1 unlock];
  return v4;
}

id closure #1 in variable initialization expression of Announcer._audioSession@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() auxiliarySession];
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in Announcer.prewarm()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in Announcer.prewarm();

  return closure #1 in Announcer.prewarm()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in Announcer.prewarm()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in Announcer.announce(utterance:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in Announcer.announce(utterance:);

  return closure #2 in Announcer.announce(utterance:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in Announcer.announce(utterance:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in Announcer.announce(utterance:);

  return closure #1 in Announcer.announce(utterance:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in Announcer.stopSpeaking()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in Announcer.stopSpeaking();

  return closure #1 in Announcer.stopSpeaking()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in Announcer.stopSpeaking()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized Announcer.appLanguageMatchesAssistantLanguage.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedPreferences];
  v2 = [v1 assistantIsEnabled];

  if (v2)
  {
    v3 = [v0 sharedPreferences];
    v4 = [v3 outputVoice];

    if (v4 && (v5 = [v4 languageCode], v4, v5))
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = specialized static Locale.appLanguageId.getter();
      v11 = specialized Collection.prefix(_:)(2, v9, v10);
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = MEMORY[0x20F2E6D00](v11, v13, v15, v17);
      v20 = v19;

      if (one-time initialization token for languageFallbacks != -1)
      {
        swift_once();
      }

      v21 = static VoiceFeedbackUtilities.languageFallbacks;
      if (*(static VoiceFeedbackUtilities.languageFallbacks + 2))
      {
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v20);
        if (v23)
        {
          v24 = v22;

          v25 = (v21[7] + 16 * v24);
          v18 = *v25;
          v20 = v25[1];
        }
      }

      v26 = specialized Collection.prefix(_:)(2, v6, v8);
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v33 = MEMORY[0x20F2E6D00](v26, v28, v30, v32);
      v35 = v34;

      if (v33 == v18 && v35 == v20)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

id specialized Announcer.voiceName.getter()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 outputVoice];

  if (v1)
  {
    v2 = [v1 name];

    if (v2)
    {
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Announcer.appLanguageMatchesAssistantLanguage.getter())
      {
        return v1;
      }

      goto LABEL_7;
    }

    v1 = 0;
  }

  if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  return v1;
}

uint64_t partial apply for closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:);

  return closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t _sScPSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)partial apply;

  return closure #1 in Announcer.fallbackOnDefaultAnnouncement(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in Announcer.setupAudioSessionOnBackground()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in Announcer.setupAudioSessionOnBackground();

  return closure #1 in Announcer.setupAudioSessionOnBackground()(a1, v4, v5, v6);
}

id specialized Announcer.deviceHasMinimumStorageCapacity()()
{
  v0 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v29 - v14;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v17 = result;
    v18 = [result totalDiskCapacity];

    v19 = vcvtd_n_f64_u64(v18, 0x1EuLL);
    *&v29[1] = v19;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F2E4430](v4, v7);
    (*(v1 + 8))(v4, v0);
    v20 = *(v8 + 8);
    v20(v12, v7);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, MEMORY[0x277CC9168]);
    BinaryFloatingPoint.formatted<A>(_:)();
    v20(v15, v7);
    v22 = v30[0];
    v21 = v30[1];
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.voiceFeedback);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v26 = 136315138;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v30);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_20AEA4000, v24, v25, "totalDiskCapacity=%s GB", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_15(v27);
      MEMORY[0x20F2E9420](v27, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    else
    {
    }

    return (v19 > 8.0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, char **a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      closure #1 in closure #3 in WorkoutConfigurationDataSource.load()(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void key path getter for WorkoutConfigurationDataSource.workoutConfigurations : WorkoutConfigurationDataSource(void *a4@<X8>)
{
  key path getter for WorkoutConfigurationDataSource.workoutConfigurations : WorkoutConfigurationDataSource(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

uint64_t (*WorkoutConfigurationDataSource.workoutConfigurations.modify(uint64_t *a1))()
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
  return WorkoutConfigurationDataSource.workoutConfigurations.modify;
}

uint64_t (*WorkoutConfigurationDataSource.$workoutConfigurations.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutConfigurationDataSource.$workoutConfigurations.modify;
}

uint64_t WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration : WorkoutConfigurationDataSource(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration : WorkoutConfigurationDataSource(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  static Published.subscript.setter();
  return result;
}

double WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

uint64_t (*WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration.modify(uint64_t *a1))()
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
  return WorkoutConfigurationDataSource.recentlyAddedWorkoutConfiguration.modify;
}

uint64_t key path setter for WorkoutConfigurationDataSource.$recentlyAddedWorkoutConfiguration : WorkoutConfigurationDataSource(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutConfigurationDataSource.$recentlyAddedWorkoutConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutConfigurationDataSource.$recentlyAddedWorkoutConfiguration.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D13ConfigurationCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutConfigurationDataSource.$recentlyAddedWorkoutConfiguration.modify;
}

uint64_t WorkoutConfigurationDataSource.workoutConfigurations.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

double key path setter for WorkoutConfigurationDataSource.workoutConfigurations : WorkoutConfigurationDataSource(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  static Published.subscript.setter();
  return result;
}

double WorkoutConfigurationDataSource.workoutConfigurations.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
  return result;
}

uint64_t (*WorkoutConfigurationDataSource.frequentWorkouts.modify(uint64_t *a1))()
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
  return WorkoutConfigurationDataSource.frequentWorkouts.modify;
}

void WorkoutConfigurationDataSource.workoutConfigurations.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WorkoutConfigurationDataSource.$workoutConfigurations.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutConfigurationDataSource.$workoutConfigurations : WorkoutConfigurationDataSource(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutConfigurationDataSource.$workoutConfigurations : WorkoutConfigurationDataSource(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMR);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t WorkoutConfigurationDataSource.$workoutConfigurations.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*WorkoutConfigurationDataSource.$frequentWorkouts.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D13ConfigurationCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutConfigurationDataSource.$frequentWorkouts.modify;
}

void WorkoutConfigurationDataSource.$workoutConfigurations.modify(uint64_t a1, char a2)
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

void *WorkoutConfigurationDataSource.lastWorkout.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void WorkoutConfigurationDataSource.lastWorkout.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id WorkoutConfigurationDataSource.__allocating_init(configurationData:activityMoveMode:healthStore:occurrenceStore:usePersistence:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v64 = a6;
  v63 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v10);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v52 - v16;
  v18 = specialized Occurrence.__allocating_init(count:)(0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = specialized static WorkoutConfiguration.importFromData(_:with:validator:)(a1, a2, v18, static WorkoutConfigurationValidator.shared);
  v58 = a1;
  v59 = a2;
  v60 = a5;
  v20 = v19;

  v21 = type metadata accessor for RaceRouteDataStore();
  v22 = swift_allocObject();
  *(v22 + 24) = a4;
  v23 = objc_allocWithZone(MEMORY[0x277CCD868]);
  v55 = a4;
  *(v22 + 16) = [v23 initWithHealthStore_];
  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v57 = v20;
  v25 = *(&v20->isa + v24);
  v72[3] = v21;
  v72[4] = &protocol witness table for RaceRouteDataStore;
  v53 = v21;
  v72[0] = v22;
  v26 = objc_allocWithZone(v65);
  v27 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  *&v69 = MEMORY[0x277D84F90];
  v54 = v25;
  v56 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  Published.init(initialValue:)();
  v28 = *(v14 + 32);
  v28(&v26[v27], v17, v13);
  v29 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  *&v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
  Published.init(initialValue:)();
  (*(v61 + 32))(&v26[v29], v12, v62);
  v30 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  *&v69 = MEMORY[0x277D84F90];
  Published.init(initialValue:)();
  v28(&v26[v30], v17, v13);
  v31 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v32 = static WorkoutCoreInjector.healthStore;
  v33 = objc_allocWithZone(type metadata accessor for QueryClient());
  *&v26[v31] = QueryClient.init(_:)(v32);
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout] = 0;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = 0;
  v34 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl;
  v35 = v60;
  v36 = v55;
  v37 = v54;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v38 = static WorkoutCoreInjector.nanoSyncControl;
  *&v26[v34] = static WorkoutCoreInjector.nanoSyncControl;
  v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded] = 0;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType] = v37;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode] = v63;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore] = v35;
  outlined init with copy of RaceRouteDataStoring?(v72, &v67);
  if (v68)
  {
    outlined init with take of RaceRouteDataStoring(&v67, &v69);
    v39 = v37;
    v40 = v38;
    v41 = v35;
  }

  else
  {
    v42 = v53;
    v43 = swift_allocObject();
    *(v43 + 24) = v36;
    v44 = objc_allocWithZone(MEMORY[0x277CCD868]);
    v45 = v36;
    v46 = v37;
    v47 = v38;
    v48 = v35;
    *(v43 + 16) = [v44 initWithHealthStore_];
    v70 = v42;
    v71 = &protocol witness table for RaceRouteDataStore;
    *&v69 = v43;
    if (v68)
    {
      outlined destroy of RaceRouteDataStoring?(&v67, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
    }
  }

  outlined init with take of RaceRouteDataStoring(&v69, &v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore]);
  v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] = v64 & 1;
  *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] = v36;
  v66.receiver = v26;
  v66.super_class = v65;
  v49 = v36;
  v50 = objc_msgSendSuper2(&v66, sel_init);
  outlined consume of Data._Representation(v58, v59);

  outlined destroy of RaceRouteDataStoring?(v72, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  return v50;
}

id WorkoutConfigurationDataSource.__allocating_init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v7 = v6;
  v44 = a6;
  v48 = a4;
  v49 = a5;
  v45 = a3;
  v43 = a2;
  v47 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v43 - v16;
  v46 = v7;
  v18 = objc_allocWithZone(v7);
  v19 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  *&v53 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  Published.init(initialValue:)();
  v20 = *(v14 + 32);
  v20(&v18[v19], v17, v13);
  v21 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  *&v53 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v18[v21], v12, v8);
  v22 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  *&v53 = MEMORY[0x277D84F90];
  Published.init(initialValue:)();
  v20(&v18[v22], v17, v13);
  v23 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v24 = static WorkoutCoreInjector.healthStore;
  v25 = objc_allocWithZone(type metadata accessor for QueryClient());
  *&v18[v23] = QueryClient.init(_:)(v24);
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout] = 0;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = 0;
  v26 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl;
  v28 = v47;
  v27 = v48;
  v29 = v45;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v30 = static WorkoutCoreInjector.nanoSyncControl;
  *&v18[v26] = static WorkoutCoreInjector.nanoSyncControl;
  v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded] = 0;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType] = v28;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode] = v43;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore] = v27;
  v31 = v49;
  outlined init with copy of RaceRouteDataStoring?(v49, &v51);
  if (v52)
  {
    outlined init with take of RaceRouteDataStoring(&v51, &v53);
    v32 = v30;
    v33 = v28;
    v34 = v27;
  }

  else
  {
    v35 = type metadata accessor for RaceRouteDataStore();
    v36 = swift_allocObject();
    *(v36 + 24) = v29;
    v37 = objc_allocWithZone(MEMORY[0x277CCD868]);
    v38 = v30;
    v39 = v28;
    v40 = v27;
    *(v36 + 16) = [v37 initWithHealthStore_];
    v54 = v35;
    v55 = &protocol witness table for RaceRouteDataStore;
    *&v53 = v36;
    if (v52)
    {
      outlined destroy of RaceRouteDataStoring?(&v51, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
    }
  }

  outlined init with take of RaceRouteDataStoring(&v53, &v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore]);
  v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] = v44 & 1;
  *&v18[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] = v29;
  v50.receiver = v18;
  v50.super_class = v46;
  v41 = objc_msgSendSuper2(&v50, sel_init);

  outlined destroy of RaceRouteDataStoring?(v31, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  return v41;
}

id WorkoutConfigurationDataSource.init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v7 = v6;
  v44 = a6;
  v47 = a4;
  v48 = a5;
  v45 = a3;
  v46 = a1;
  v42 = a2;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v42 - v16;
  v18 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  *&v52 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  Published.init(initialValue:)();
  v19 = *(v14 + 32);
  v19(&v7[v18], v17, v13);
  v20 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  *&v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v7[v20], v12, v8);
  v21 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  *&v52 = MEMORY[0x277D84F90];
  Published.init(initialValue:)();
  v19(&v7[v21], v17, v13);
  v22 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v23 = static WorkoutCoreInjector.healthStore;
  v24 = objc_allocWithZone(type metadata accessor for QueryClient());
  *&v7[v22] = QueryClient.init(_:)(v23);
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = 0;
  v25 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl;
  v27 = v46;
  v26 = v47;
  v28 = v45;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v29 = static WorkoutCoreInjector.nanoSyncControl;
  *&v7[v25] = static WorkoutCoreInjector.nanoSyncControl;
  v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType] = v27;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode] = v42;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore] = v26;
  v30 = v48;
  outlined init with copy of RaceRouteDataStoring?(v48, &v50);
  if (v51)
  {
    outlined init with take of RaceRouteDataStoring(&v50, &v52);
    v31 = v29;
    v32 = v27;
    v33 = v26;
  }

  else
  {
    v34 = type metadata accessor for RaceRouteDataStore();
    v35 = swift_allocObject();
    *(v35 + 24) = v28;
    v36 = objc_allocWithZone(MEMORY[0x277CCD868]);
    v37 = v29;
    v38 = v27;
    v39 = v26;
    *(v35 + 16) = [v36 initWithHealthStore_];
    v53 = v34;
    v54 = &protocol witness table for RaceRouteDataStore;
    *&v52 = v35;
    if (v51)
    {
      outlined destroy of RaceRouteDataStoring?(&v50, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
    }
  }

  outlined init with take of RaceRouteDataStoring(&v52, &v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore]);
  v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] = v44 & 1;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] = v28;
  v49.receiver = v7;
  v49.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v49, sel_init);

  outlined destroy of RaceRouteDataStoring?(v30, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  return v40;
}

BOOL WorkoutConfigurationDataSource.isConfigurationStored(_:)(char *a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  if (*&a1[v3])
  {
    v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v5 = *&a1[v4];
    v6 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(a1, v5, 0);
  }

  else
  {
    v6 = a1;
  }

  v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType);
  v8 = v6;
  v9 = WorkoutConfigurationOccurrenceStore.configurations(for:)(v7);
  v10 = v9;
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_18:
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = MEMORY[0x277D85000];
  do
  {
    v15 = v13;
    if (v12 == v13)
    {
      break;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x20F2E7A20](v13, v10);
    }

    else
    {
      if (v13 >= *(v11 + 16))
      {
        goto LABEL_17;
      }

      v16 = *(v10 + 8 * v13 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v22[3] = type metadata accessor for WorkoutConfiguration(0);
    v22[4] = &protocol witness table for WorkoutConfiguration;
    v22[0] = v8;
    v18 = *((*v14 & *v17) + 0x1D0);
    v19 = v8;
    v20 = v18(v22);

    __swift_destroy_boxed_opaque_existential_1Tm_16(v22);
    v13 = v15 + 1;
  }

  while ((v20 & 1) == 0);

  return v12 != v15;
}

Swift::Void __swiftcall WorkoutConfigurationDataSource.configure()()
{
  if ((*(v0 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded) & 1) == 0)
  {
    WorkoutConfigurationDataSource.load()();
    v1 = [objc_opt_self() defaultCenter];
    [v1 addObserver:v0 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];
  }
}

double WorkoutConfigurationDataSource.load()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] == 1)
  {
    type metadata accessor for OS_dispatch_queue();
    v32 = v7;
    (*(v13 + 104))(v16, *MEMORY[0x277D851B8], v12);
    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v16, v12);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in WorkoutConfigurationDataSource.load();
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_109;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v31;
    MEMORY[0x20F2E7580](0, v11, v6, v18);
    _Block_release(v18);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v32);

    v20 = *&v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v22 = v1;
    v23 = specialized static HKQuery.lastWorkoutQuery(activityType:completion:)(v20, partial apply for closure #2 in WorkoutConfigurationDataSource.load(), v21);
    if (v23)
    {
      v24 = v23;
      [*&v22[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] executeQuery_];
    }

    if ([v20 identifier] != 82)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = 15;
      *(v26 + 24) = v22;
      v27 = v22;
      WorkoutConfigurationDataSource.fetchRecentWorkouts(activityType:daysAgo:completion:)(v20, 0xF, partial apply for closure #3 in WorkoutConfigurationDataSource.load(), v26);
    }
  }

  else
  {
    v28 = specialized static WorkoutConfigurationFactory.make(for:activityMoveMode:)(*&v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType], *&v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode]);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v28;
    v29 = v1;
    static Published.subscript.setter();
  }

  return result;
}

Swift::Void __swiftcall WorkoutConfigurationDataSource.observeSmartGoalStoreUpdatedOccurrenceData()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];
}

void closure #1 in WorkoutConfigurationDataSource.load()(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v132 = v10;
  v134 = v5;
  v136 = v2;
  v137 = v1;
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType;
  v15 = *(v12 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType);
  v16 = *(v12 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore);
  v17 = v15;
  v20 = WorkoutConfigurationOccurrenceStore.configurations(for:)(v17);

  v140 = v13;
  *(v13 + 16) = v20;
  v18 = v13 + 16;
  v139 = v14;
  v19 = FIUIWorkoutActivityType.configurationTypes.getter();
  LOBYTE(v20) = specialized Set.contains(_:)(2u, v19);

  if (one-time initialization token for race != -1)
  {
    goto LABEL_99;
  }

  while (2)
  {
    v21 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v21, static WOLog.race);
    v23 = v12;
    v138 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v141 = v23;

    v26 = os_log_type_enabled(v24, v25);
    v135 = v6;
    v133 = v7;
    v131 = v12;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock = v7;
      *v27 = 136315394;
      if (v20)
      {
        v29 = 0;
      }

      else
      {
        v29 = 544501614;
      }

      if (v20)
      {
        v30 = 0xE000000000000000;
      }

      else
      {
        v30 = 0xE400000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &aBlock);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2112;
      v32 = *(&v139->isa + v12);
      *(v27 + 14) = v32;
      *v28 = v32;
      v33 = v32;
      _os_log_impl(&dword_20AEA4000, v24, v25, "Race: race is %ssupported for activityType: %@", v27, 0x16u);
      outlined destroy of RaceRouteDataStoring?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_16(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    v12 = &OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    v34 = v141;
    if ((v20 & 1) == 0)
    {
      v42 = v141;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = *(&v139->isa + v131);
        *(v45 + 4) = v47;
        *v46 = v47;
        v48 = v47;
        _os_log_impl(&dword_20AEA4000, v43, v44, "Race: not querying race configurations, race is not supported for activityType: %@", v45, 0xCu);
        outlined destroy of RaceRouteDataStoring?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v46, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);
      }

      v20 = *v18;
      v6 = *v18 & 0xFFFFFFFFFFFFFF8;
      if (*v18 >> 62)
      {
        v49 = __CocoaSet.count.getter();
      }

      else
      {
        v49 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = 0;
      while (1)
      {
        if (v49 == v36)
        {
          if (*v18 >> 62)
          {
            v36 = __CocoaSet.count.getter();
          }

          else
          {
            v36 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          goto LABEL_68;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x20F2E7A20](v36, v20);
        }

        else
        {
          if (v36 >= *(v6 + 16))
          {
            goto LABEL_96;
          }

          v50 = *(v20 + 8 * v36 + 32);
        }

        v51 = v50;
        v52 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        swift_beginAccess();
        v7 = v51[v52];

        v40 = (v36 + 1);
        v53 = __OFADD__(v36, 1);
        if (v7 == 2)
        {
          break;
        }

        ++v36;
        if (v53)
        {
          goto LABEL_98;
        }
      }

      if (v53)
      {
LABEL_111:
        __break(1u);
LABEL_112:
        if (v40 != __CocoaSet.count.getter())
        {
          goto LABEL_113;
        }

LABEL_49:
        if (*v18 >> 62)
        {
          v54 = __CocoaSet.count.getter();
          if (v54 >= v36)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v54 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v54 >= v36)
          {
LABEL_51:
            specialized Array.replaceSubrange<A>(_:with:)(v36, v54);
            v55 = dispatch_group_create();
            dispatch_group_enter(v55);
            v56 = *&v34[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore + 24];
            v57 = *&v34[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore + 32];
            __swift_project_boxed_opaque_existential_1(&v34[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore], v56);
            v58 = *(&v139->isa + v131);
            v59 = swift_allocObject();
            v60 = v140;
            *(v59 + 16) = v55;
            *(v59 + 24) = v60;
            v12 = *(v57 + 8);
            v61 = v58;
            v62 = v55;

            (v12)(v61, partial apply for closure #2 in closure #1 in WorkoutConfigurationDataSource.load(), v59, v56, v57);

            v139 = v62;
            OS_dispatch_group.wait()();
            swift_beginAccess();
            v20 = *(v60 + 16);
            aBlock = MEMORY[0x277D84F90];
            if (v20 >> 62)
            {
              goto LABEL_106;
            }

            v18 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_104:
        v67 = __CocoaSet.count.getter();
        if (v67 < v36)
        {
          goto LABEL_105;
        }

LABEL_70:
        specialized Array.replaceSubrange<A>(_:with:)(v36, v67);
        goto LABEL_90;
      }

      if (*v18 >> 62)
      {
        goto LABEL_157;
      }

      if (v40 == *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

LABEL_158:
      v6 = v36 + 5;
      while (1)
      {
        v20 = v6 - 4;
        v118 = *v18;
        if ((*v18 & 0xC000000000000001) != 0)
        {
          v119 = MEMORY[0x20F2E7A20](v6 - 4);
        }

        else
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_193;
          }

          if (v20 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_194;
          }

          v119 = *(v118 + 8 * v6);
        }

        v40 = v119;
        v120 = *v12;
        swift_beginAccess();
        LODWORD(v120) = v40[v120];

        if (v120 != 2)
        {
          break;
        }

LABEL_182:
        v40 = (v6 - 3);
        if (__OFADD__(v20, 1))
        {
          goto LABEL_195;
        }

        if (*v18 >> 62)
        {
          v128 = __CocoaSet.count.getter();
        }

        else
        {
          v128 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v6;
        if (v40 == v128)
        {
          goto LABEL_68;
        }
      }

      if (v20 == v36)
      {
LABEL_181:
        v116 = __OFADD__(v36++, 1);
        if (v116)
        {
          goto LABEL_196;
        }

        goto LABEL_182;
      }

      v121 = *v18;
      if ((*v18 & 0xC000000000000001) != 0)
      {
        v122 = MEMORY[0x20F2E7A20](v36, *v18);
        v121 = *v18;
        if ((*v18 & 0xC000000000000001) == 0)
        {
LABEL_169:
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_199;
          }

          if (v20 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_200;
          }

          v40 = *(v121 + 8 * v6);
          goto LABEL_172;
        }
      }

      else
      {
        if (v36 < 0)
        {
          goto LABEL_197;
        }

        if (v36 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_198;
        }

        v122 = *(v121 + 8 * v36 + 32);
        if ((v121 & 0xC000000000000001) == 0)
        {
          goto LABEL_169;
        }
      }

      v40 = MEMORY[0x20F2E7A20](v6 - 4, v121);
      v121 = *v18;
LABEL_172:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v18 = v121;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v121 < 0 || (v121 & 0x4000000000000000) != 0)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew()(v121);
        *v18 = v121;
      }

      v124 = *((v121 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20);
      *((v121 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20) = v40;

      v125 = *v18;
      if ((*v18 & 0x8000000000000000) != 0 || (v125 & 0x4000000000000000) != 0)
      {
        v125 = specialized _ArrayBuffer._consumeAndCreateNew()(v125);
        *v18 = v125;
        if ((v20 & 0x8000000000000000) != 0)
        {
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          v68 = __CocoaSet.count.getter();
LABEL_76:
          *(v20 + 4) = v68;

          _os_log_impl(&dword_20AEA4000, v36, v40, "Race: found total %ld race workout_configurations", v20, 0xCu);
          MEMORY[0x20F2E9420](v20, -1, -1);

          goto LABEL_78;
        }
      }

      else if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_192;
      }

      v126 = v125 & 0xFFFFFFFFFFFFFF8;
      if (v20 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_201;
      }

      v127 = *(v126 + 8 * v6);
      *(v126 + 8 * v6) = v122;

      v12 = &OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      goto LABEL_181;
    }

    v20 = *v18;
    v6 = *v18 & 0xFFFFFFFFFFFFFF8;
    if (*v18 >> 62)
    {
      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = 0;
    while (1)
    {
      if (v35 == v36)
      {
        if (*v18 >> 62)
        {
          v36 = __CocoaSet.count.getter();
        }

        else
        {
          v36 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        goto LABEL_49;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x20F2E7A20](v36, v20);
      }

      else
      {
        if (v36 >= *(v6 + 16))
        {
          goto LABEL_95;
        }

        v37 = *(v20 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      v7 = v38[v39];

      v40 = (v36 + 1);
      v41 = __OFADD__(v36, 1);
      if (v7 == 2)
      {
        break;
      }

      ++v36;
      if (v41)
      {
        goto LABEL_97;
      }
    }

    if (v41)
    {
      __break(1u);
      goto LABEL_111;
    }

    if (*v18 >> 62)
    {
      goto LABEL_112;
    }

    if (v40 == *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

LABEL_113:
    v106 = v36 + 5;
    while (2)
    {
      v20 = v106 - 4;
      v107 = *v18;
      if ((*v18 & 0xC000000000000001) != 0)
      {
        v108 = MEMORY[0x20F2E7A20](v106 - 4);
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_148;
        }

        if (v20 >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v108 = *(v107 + 8 * v106);
      }

      v40 = v108;
      v109 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      LODWORD(v109) = v40[v109];

      if (v109 == 2)
      {
        goto LABEL_137;
      }

      if (v20 == v36)
      {
        goto LABEL_136;
      }

      v110 = *v18;
      if ((*v18 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2E7A20](v36, *v18);
        v110 = *v18;
        if ((*v18 & 0xC000000000000001) == 0)
        {
          goto LABEL_124;
        }

LABEL_145:
        v40 = MEMORY[0x20F2E7A20](v106 - 4, v110);
        v110 = *v18;
        goto LABEL_127;
      }

      if (v36 < 0)
      {
        goto LABEL_152;
      }

      if (v36 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

      v12 = *(v110 + 8 * v36 + 32);
      if ((v110 & 0xC000000000000001) != 0)
      {
        goto LABEL_145;
      }

LABEL_124:
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_154;
      }

      if (v20 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_155;
      }

      v40 = *(v110 + 8 * v106);
LABEL_127:
      v111 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v18 = v110;
      if (!v111 || v110 < 0 || (v110 & 0x4000000000000000) != 0)
      {
        v110 = specialized _ArrayBuffer._consumeAndCreateNew()(v110);
        *v18 = v110;
      }

      v112 = *((v110 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20);
      *((v110 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20) = v40;

      v113 = *v18;
      if ((*v18 & 0x8000000000000000) == 0 && (v113 & 0x4000000000000000) == 0)
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_147;
        }

LABEL_134:
        v114 = v113 & 0xFFFFFFFFFFFFFF8;
        if (v20 >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_156;
        }

        v115 = *(v114 + 8 * v106);
        *(v114 + 8 * v106) = v12;

        v12 = &OBJC_IVAR___WOCoreWorkoutConfiguration_type;
LABEL_136:
        v116 = __OFADD__(v36++, 1);
        if (v116)
        {
          goto LABEL_151;
        }

LABEL_137:
        v40 = (v106 - 3);
        if (__OFADD__(v20, 1))
        {
          goto LABEL_150;
        }

        if (*v18 >> 62)
        {
          v117 = __CocoaSet.count.getter();
        }

        else
        {
          v117 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v106;
        if (v40 == v117)
        {
          goto LABEL_49;
        }

        continue;
      }

      break;
    }

    v113 = specialized _ArrayBuffer._consumeAndCreateNew()(v113);
    *v18 = v113;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_134;
    }

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
    if (v40 != __CocoaSet.count.getter())
    {
      goto LABEL_158;
    }

LABEL_68:
    if (*v18 >> 62)
    {
      goto LABEL_104;
    }

    v67 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67 >= v36)
    {
      goto LABEL_70;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    v18 = __CocoaSet.count.getter();
LABEL_53:

    v6 = MEMORY[0x277D84F90];
    v34 = v141;
    if (v18)
    {
      v63 = 0;
      v7 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x20F2E7A20](v63, v20);
        }

        else
        {
          if (v63 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_94;
          }

          v64 = *(v20 + 8 * v63 + 32);
        }

        v65 = v64;
        v12 = (v63 + 1);
        if (__OFADD__(v63, 1))
        {
          break;
        }

        v66 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        swift_beginAccess();
        if (*(v65 + v66) == 2)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v6 = *(aBlock + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v63;
        if (v12 == v18)
        {
          v18 = aBlock;
          v6 = MEMORY[0x277D84F90];
          goto LABEL_72;
        }
      }

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
      __break(1u);
LABEL_99:
      swift_once();
      continue;
    }

    break;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_72:

  v36 = Logger.logObject.getter();
  LOBYTE(v40) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v40))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      goto LABEL_202;
    }

    v68 = *(v18 + 16);
    goto LABEL_76;
  }

LABEL_78:
  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v69 = __CocoaSet.count.getter();
  }

  else
  {
    v69 = *(v18 + 16);
  }

  if (!v69)
  {

LABEL_90:
    v71 = v136;
    goto LABEL_91;
  }

  v145 = &type metadata for WorkoutFeatures;
  v146 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(aBlock) = 11;
  v70 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_16(&aBlock);
  v71 = v136;
  if ((v70 & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v72 = static LocationManager.shared;
    v73 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
    swift_beginAccess();
    v131 = v72;
    v130 = v73;
    v74 = *(v72 + v73);
    v34 = v141;
    v75 = *(v141 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation);
    v129 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation;
    *(v141 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation) = v74;
    v76 = v74;

    static Date.timeIntervalSinceReferenceDate.getter();
    v78 = v77;
    v79 = dispatch_group_create();
    dispatch_group_enter(v79);
    type metadata accessor for OS_dispatch_queue();
    v80 = static OS_dispatch_queue.main.getter();
    v81 = swift_allocObject();
    v81[2] = v34;
    v81[3] = v78;
    v81[4] = v79;
    v146 = partial apply for closure #4 in closure #1 in WorkoutConfigurationDataSource.load();
    v147 = v81;
    aBlock = MEMORY[0x277D85DD0];
    v143 = 1107296256;
    v144 = thunk for @escaping @callee_guaranteed () -> ();
    v145 = &block_descriptor_145;
    v82 = _Block_copy(&aBlock);
    v83 = v34;
    v84 = v79;

    v85 = v132;
    static DispatchQoS.unspecified.getter();
    aBlock = v6;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v86 = v134;
    v87 = v137;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v85, v86, v82);
    _Block_release(v82);

    v71 = v136;
    (*(v136 + 8))(v86, v87);
    v88 = v85;
    v89 = v84;
    (*(v133 + 8))(v88, v135);
    OS_dispatch_group.wait()();
    v90 = v83;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412546;
      v95 = *&v34[v129];
      *(v93 + 4) = v95;
      *v94 = v95;
      *(v93 + 12) = 2112;
      v96 = *(v131 + v130);
      *(v93 + 14) = v96;
      v94[1] = v96;
      v97 = v95;
      v98 = v96;
      _os_log_impl(&dword_20AEA4000, v91, v92, "Race: current location: %@, LocationManager lastLocation: %@", v93, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v94, -1, -1);
      MEMORY[0x20F2E9420](v93, -1, -1);
    }
  }

LABEL_91:
  type metadata accessor for OS_dispatch_queue();
  v99 = static OS_dispatch_queue.main.getter();
  v100 = swift_allocObject();
  *(v100 + 16) = v34;
  *(v100 + 24) = v140;
  v146 = partial apply for closure #6 in closure #1 in WorkoutConfigurationDataSource.load();
  v147 = v100;
  aBlock = MEMORY[0x277D85DD0];
  v143 = 1107296256;
  v144 = thunk for @escaping @callee_guaranteed () -> ();
  v145 = &block_descriptor_136;
  v101 = _Block_copy(&aBlock);
  v102 = v34;

  v103 = v132;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v104 = v134;
  v105 = v137;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v103, v104, v101);
  _Block_release(v101);

  (*(v71 + 8))(v104, v105);
  (*(v133 + 8))(v103, v135);
}

void closure #2 in closure #1 in WorkoutConfigurationDataSource.load()(unint64_t a1, char a2, NSObject *a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a1;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.race);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = MEMORY[0x20F2E7F50]();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Race: failed to query configurations with error %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_16(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
      outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 1);
    }

    else
    {

      outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 1);
    }

    dispatch_group_leave(a3);
  }

  else
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
      if (a1 >> 62)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 4) = v21;
      outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 0);
      _os_log_impl(&dword_20AEA4000, v18, v19, "Race: discovered %ld race workout_configurations", v20, 0xCu);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    else
    {
      outlined consume of Result<[RaceWorkoutConfiguration], Error>(a1, 0);
    }

    specialized Sequence.forEach(_:)(a1, (a4 + 16));

    dispatch_group_leave(a3);
  }
}

uint64_t closure #1 in closure #2 in closure #1 in WorkoutConfigurationDataSource.load()(void **a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.race);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38 = a2;
    v16 = v15;
    v34 = v15;
    v37 = swift_slowAlloc();
    v39[0] = v37;
    *v16 = 136315394;
    v36 = v13;
    v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v33 = *(v6 + 16);
    v33(v9, &v12[v17], v5);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v39[4] = v2;
    v21 = *(v6 + 8);
    v21(v9, v5);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v39);

    v23 = v34;
    *(v34 + 4) = v22;
    *(v23 + 12) = 2080;
    v24 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
    swift_beginAccess();
    v33(v9, &v12[v24], v5);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v21(v9, v5);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v39);

    *(v23 + 14) = v28;
    v13 = v36;
    _os_log_impl(&dword_20AEA4000, v36, v35, "Race: adding new discovered race workout_configuration: %s, clusterUUID: %s", v23, 0x16u);
    v29 = v37;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v29, -1, -1);
    a2 = v38;
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  swift_beginAccess();
  v30 = v12;
  MEMORY[0x20F2E6F30]();
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void closure #4 in closure #1 in WorkoutConfigurationDataSource.load()(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.race);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = [objc_opt_self() currentThread];
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_20AEA4000, v14, v15, "Race: requesting current location, thread: %@", v16, 0xCu);
    outlined destroy of RaceRouteDataStoring?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v19 = *MEMORY[0x277CE4238];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static LocationManager.shared;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v21;
  *(v22 + 32) = v19;
  *(v22 + 40) = 0x3FB999999999999ALL;
  *(v22 + 48) = a3;
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = partial apply for closure #1 in closure #4 in closure #1 in WorkoutConfigurationDataSource.load();
  v23[4] = v22;
  v23[5] = 0x3FB999999999999ALL;
  v23[6] = v19;
  v23[7] = v19;
  aBlock[4] = _s11WorkoutCore15LocationManagerC013requestSingleC6Update7timeout17requestedAccuracy010acceptableJ010completionySd_S2dySo10CLLocationCSgctFyyYbcfU_TA_0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_155;
  v24 = _Block_copy(aBlock);

  v25 = a3;
  v26 = v20;

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v24);
  _Block_release(v24);

  (*(v29 + 8))(v8, v5);
  (*(v9 + 8))(v12, v28);
}

void closure #1 in closure #4 in closure #1 in WorkoutConfigurationDataSource.load()(void *a1, uint64_t a2, NSObject *a3, double a4, double a5, double a6)
{
  static Date.timeIntervalSinceReferenceDate.getter();
  v12 = v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = a1;
    if (!a1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v16 = static LocationManager.shared;
      v17 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
      swift_beginAccess();
      v15 = *(v16 + v17);
      v18 = v15;
    }

    v19 = *&v14[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation];
    *&v14[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = v15;
    v20 = a1;
  }

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.race);
  v22 = a1;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138414082;
    v27 = a1 == 0;
    *(v25 + 4) = v22;
    *v26 = a1;
    *(v25 + 12) = 2112;
    v28 = objc_opt_self();
    v29 = v22;
    v30 = [v28 currentThread];
    *(v25 + 14) = v30;
    v26[1] = v30;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v12 - a4;
    *(v25 + 32) = 2048;
    *(v25 + 34) = a5;
    *(v25 + 42) = 2048;
    *(v25 + 44) = a6;
    *(v25 + 52) = 1024;

    *(v25 + 54) = v27;
    *(v25 + 58) = 2112;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v31 = static LocationManager.shared;
    v32 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
    swift_beginAccess();
    v33 = *(v31 + v32);
    *(v25 + 60) = v33;
    v26[2] = v33;
    *(v25 + 68) = 2112;
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = *(v34 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation);
      v36 = v34;
      v37 = v35;
      v38 = v33;

      if (v35)
      {
LABEL_18:
        *(v25 + 70) = v37;
        v26[3] = v35;
        _os_log_impl(&dword_20AEA4000, v23, v24, "Race: received current location: %@, thread: %@, elapsed time: %f seconds, accuracy: %f, timeout: %f seconds, using last known location: %{BOOL}d, last known location: %@, assigned current location: %@", v25, 0x4Eu);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v26, -1, -1);
        MEMORY[0x20F2E9420](v25, -1, -1);
        goto LABEL_19;
      }
    }

    else
    {
      v39 = v33;
    }

    v37 = 0;
    v35 = 0;
    goto LABEL_18;
  }

  v23 = v22;
LABEL_19:

  dispatch_group_leave(a3);
}

void closure #6 in closure #1 in WorkoutConfigurationDataSource.load()(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  swift_bridgeObjectRetain_n();
  v21 = specialized Array._copyToContiguousArray()(v4);
  specialized MutableCollection<>.sort(by:)(&v21, &OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate);

  v5 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v5;
  v6 = a1;
  static Published.subscript.setter();
  if (one-time initialization token for race != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.race);
    v6 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 134218242;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v21);

      v12 = v21 >> 62 ? __CocoaSet.count.getter() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

      *(v10 + 4) = v12;

      *(v10 + 12) = 2112;
      v13 = *(&v6->isa + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType);
      *(v10 + 14) = v13;
      *v11 = v13;
      v14 = v13;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Room: loaded %ld workout_configurations into activity room sorted by modificationDate, activityType: %@", v10, 0x16u);
      outlined destroy of RaceRouteDataStoring?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    else
    {

      v8 = v6;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v21);

    v15 = v21;
    if (v21 >> 62)
    {
      break;
    }

    v16 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_9:
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x20F2E7A20](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = v18;
      closure #2 in closure #6 in closure #1 in WorkoutConfigurationDataSource.load()(&v21);

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v16 = __CocoaSet.count.getter();
  if (v16)
  {
    goto LABEL_9;
  }

LABEL_21:

  *(&v6->isa + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded) = 1;
}

void closure #2 in closure #6 in closure #1 in WorkoutConfigurationDataSource.load()(void **a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.race);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v12 = 136315650;
    v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v9[v13], v2);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v3 + 8))(v6, v2);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v19 = [*&v9[v18] localizedName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v33);

    *(v12 + 14) = v23;
    *(v12 + 22) = 2080;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v25 = [*&v9[v24] description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v33);

    *(v12 + 24) = v29;
    _os_log_impl(&dword_20AEA4000, v10, v11, "Room: loaded workout_configuration: %s, %s, occurrence: %s", v12, 0x20u);
    v30 = v32;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v30, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }
}

void closure #2 in WorkoutConfigurationDataSource.load()(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v10);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.app);
  v13 = a1;
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v15, v16))
  {

    if (!a1)
    {
      return;
    }

    goto LABEL_10;
  }

  v42 = a3;
  v43 = v7;
  v44 = v6;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v20 = a1;
  v21 = v19;
  v51 = v19;
  *v17 = 138412546;
  *(v17 + 4) = v13;
  v41 = v20;
  *v18 = v20;
  *(v17 + 12) = 2080;
  if (a2)
  {
    swift_getErrorValue();
    v22 = v49;
    v23 = v50;
    v24 = v13;
    v25 = MEMORY[0x20F2E7F50](v22, v23);
    v27 = v26;
  }

  else
  {
    v28 = v13;
    v25 = 0;
    v27 = 0;
  }

  aBlock = v25;
  v53 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v29 = Optional.description.getter();
  v31 = v30;

  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v51);

  *(v17 + 14) = v32;
  _os_log_impl(&dword_20AEA4000, v15, v16, "Fetched last workout:%@ error=%s", v17, 0x16u);
  outlined destroy of RaceRouteDataStoring?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x20F2E9420](v18, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm_16(v21);
  MEMORY[0x20F2E9420](v21, -1, -1);
  MEMORY[0x20F2E9420](v17, -1, -1);

  v7 = v43;
  v6 = v44;
  a3 = v42;
  if (v41)
  {
LABEL_10:
    if (!a2)
    {
      type metadata accessor for OS_dispatch_queue();
      v33 = v13;
      v34 = static OS_dispatch_queue.main.getter();
      v35 = swift_allocObject();
      *(v35 + 16) = a3;
      *(v35 + 24) = v33;
      v56 = partial apply for closure #1 in closure #2 in WorkoutConfigurationDataSource.load();
      v57 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = thunk for @escaping @callee_guaranteed () -> ();
      v55 = &block_descriptor_127_0;
      v36 = _Block_copy(&aBlock);
      v37 = v33;
      v38 = a3;

      v39 = v45;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v40 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v39, v40, v36);
      _Block_release(v36);

      (*(v7 + 8))(v40, v6);
      (*(v46 + 8))(v39, v48);
    }
  }
}

id closure #1 in closure #2 in WorkoutConfigurationDataSource.load()(uint64_t a1, void *a2)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout;
  swift_beginAccess();
  v4 = *(a1 + v3);
  *(a1 + v3) = a2;

  return a2;
}

void closure #3 in WorkoutConfigurationDataSource.load()(unint64_t a1, NSObject *a2, void (**a3)(void *, char *, uint64_t, __n128), uint64_t a4)
{
  v95 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = (&v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v23 = a2;
    if (one-time initialization token for app != -1)
    {
LABEL_40:
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static WOLog.app);
    v25 = a2;
    v26 = a4;
    v98 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v98, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 134218498;
      *(v28 + 4) = v95;
      *(v28 + 12) = 2112;
      v30 = *&v26[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
      *(v28 + 14) = v30;
      *v29 = v30;
      *(v28 + 22) = 2112;
      v31 = a2;
      v32 = v30;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v33;
      v29[1] = v33;
      _os_log_impl(&dword_20AEA4000, v98, v27, "[WorkoutConfigurationDataSource] failed to fetch completed workouts in the last %ld days for activityType: %@ with error: %@", v28, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v29, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);

      v34 = v98;
    }

    else
    {

      v34 = a2;
    }
  }

  else
  {
    v96 = v22;
    v97 = v20;
    v88 = v16;
    v89 = v13;
    v91 = v7;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v90 = v8;
    v35 = type metadata accessor for Logger();
    v36 = __swift_project_value_buffer(v35, static WOLog.app);
    v37 = a4;

    v86 = v36;
    a4 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(a4, v38);
    v92 = v11;
    v93 = v12;
    v85 = v37;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 134218498;
      if (a1 >> 62)
      {
        v42 = __CocoaSet.count.getter();
      }

      else
      {
        v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v40 + 4) = v42;

      *(v40 + 12) = 2048;
      *(v40 + 14) = v95;
      *(v40 + 22) = 2112;
      v43 = *&v37[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
      *(v40 + 24) = v43;
      *v41 = v43;
      v44 = v43;
      _os_log_impl(&dword_20AEA4000, a4, v38, "[WorkoutConfigurationDataSource] fetched %ld workouts completed in the last %ld days for activityType: %@", v40, 0x20u);
      outlined destroy of RaceRouteDataStoring?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v40, -1, -1);
    }

    else
    {
    }

    v45 = MEMORY[0x277D84F90];
    v101 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v100 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(v45);
    specialized Sequence.forEach(_:)(a1, &v101, &v100);
    v87 = v100;
    v98 = specialized _NativeDictionary.filter(_:)(v100);
    aBlock[0] = v45;
    v84 = 0;
    v46 = v101;
    v47 = v101 + 64;
    v48 = 1 << v101[32];
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v101 + 8);
    v51 = (v48 + 63) >> 6;
    v95 = (v18 + 16);
    v52 = (v18 + 8);

    v53 = 0;
    v94 = v46;
    a2 = v96;
    while (v50)
    {
      v54 = v53;
LABEL_26:
      v55 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v56 = *(*(v46 + 7) + ((v54 << 9) | (8 * v55)));
      v57 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v58 = v97;
      (*v95)(a2, &v56[v57], v97);
      a4 = v98;
      if (v98[2].isa)
      {
        v59 = v56;
        specialized __RawDictionaryStorage.find<A>(_:)(a2);
        a4 = v60;
        (*v52)(a2, v58);
        if ((a4 & 1) == 0 || (a4 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider, swift_beginAccess(), *&v59[a4]))
        {

          v53 = v54;
        }

        else
        {
          a4 = aBlock;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v46 = v94;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v53 = v54;
        }
      }

      else
      {
        (*v52)(a2, v58);
        v53 = v54;
      }
    }

    while (1)
    {
      v54 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v54 >= v51)
      {
        break;
      }

      v50 = *&v47[8 * v54];
      ++v53;
      if (v50)
      {
        goto LABEL_26;
      }
    }

    v61 = aBlock[0];

    aBlock[0] = specialized Array._copyToContiguousArray()(v62);
    v63 = v84;
    specialized MutableCollection<>.sort(by:)(aBlock, &OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate);
    if (v63)
    {

      __break(1u);
    }

    else
    {
      v64 = aBlock[0];
      v65 = v85;

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      v68 = os_log_type_enabled(v66, v67);
      v69 = v93;
      v70 = v92;
      v71 = v89;
      v72 = v88;
      if (v68)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 134218242;
        if (v61 < 0 || (v61 & 0x4000000000000000) != 0)
        {
          v75 = __CocoaSet.count.getter();
        }

        else
        {
          v75 = *(v61 + 16);
        }

        *(v73 + 4) = v75;

        *(v73 + 12) = 2112;
        v76 = *&v65[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
        *(v73 + 14) = v76;
        *v74 = v76;
        v77 = v76;
        _os_log_impl(&dword_20AEA4000, v66, v67, "[WorkoutConfigurationDataSource] found %ld frequent workouts for activityType: %@", v73, 0x16u);
        outlined destroy of RaceRouteDataStoring?(v74, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v74, -1, -1);
        MEMORY[0x20F2E9420](v73, -1, -1);

        v70 = v92;
        v69 = v93;
      }

      else
      {
      }

      type metadata accessor for OS_dispatch_queue();
      v78 = static OS_dispatch_queue.main.getter();
      v79 = swift_allocObject();
      *(v79 + 16) = v65;
      *(v79 + 24) = v64;
      aBlock[4] = partial apply for closure #5 in closure #3 in WorkoutConfigurationDataSource.load();
      aBlock[5] = v79;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_121;
      v80 = _Block_copy(aBlock);
      v81 = v65;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v82 = v91;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v72, v70, v80);

      _Block_release(v80);

      (*(v90 + 8))(v70, v82);
      (*(v71 + 8))(v72, v69);
    }
  }
}

void closure #1 in closure #3 in WorkoutConfigurationDataSource.load()(id *a1, char **a2, uint64_t *a3)
{
  v4 = v3;
  v71 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 1);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v72 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v65 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = v65 - v17;
  v19 = [*a1 metadata];
  if (v19)
  {
    v20 = v19;
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = 0;
  }

  v74 = a2;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v22 = specialized static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v21, 0, static WorkoutConfigurationValidator.shared);

    if (!v22)
    {
      break;
    }

    type metadata accessor for GoalWorkoutConfiguration(0);
    v23 = swift_dynamicCastClass();
    v75 = v22;
    if (v23)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = v75;
      static Published.subscript.getter(v76);

      v22 = v75;

      v25 = v76[0];
      v26 = [v76[0] goalTypeIdentifier];

      if (!v26)
      {

        return;
      }
    }

    v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v67 = *(v8 + 16);
    v68 = v8 + 16;
    v67(v18, &v21[v22], v7);
    v27 = v74;
    v28 = *v74;
    v29 = *(*v74 + 2);
    v65[1] = v4;
    v66 = v15;
    v73 = v7;
    if (v29)
    {
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if (v31)
      {
        v32 = *(*(v28 + 7) + 8 * v30);
        v33 = *(v8 + 8);
        v69 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v21 = v32;
        v70 = v33;
        v33(v18, v7);
LABEL_23:
        v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
        swift_beginAccess();
        v44 = v67;
        v67(v15, &v21[v43], v7);
        v45 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = *v27;
        *v27 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v15, isUniquelyReferenced_nonNull_native);
        v70(v15, v7);
        *v27 = v77;
        v47 = &v21[v43];
        v48 = v72;
        v44(v72, v47, v7);

        v49 = v71;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *v49;
        v51 = v77;
        *v49 = 0x8000000000000000;
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v48);
        v54 = *(v51 + 2);
        v55 = (v52 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          __break(1u);
          goto LABEL_38;
        }

        LOBYTE(v15) = v52;
        if (*(v51 + 3) >= v56)
        {
          v44 = v75;
          if ((v50 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, v50);
          v51 = v77;
          v57 = specialized __RawDictionaryStorage.find<A>(_:)(v48);
          v44 = v75;
          if ((v15 & 1) != (v58 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v53 = v57;
        }

        while (1)
        {
          *v49 = v51;

          v59 = *v49;
          if ((v15 & 1) == 0)
          {
            v60 = v66;
            v67(v66, v48, v73);
            specialized _NativeDictionary._insert(at:key:value:)(v53, v60, 0, v59);
          }

          v61 = v59[7];
          v62 = *(v61 + 8 * v53);
          v63 = __OFADD__(v62, 1);
          v64 = v62 + 1;
          if (!v63)
          {
            break;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          specialized _NativeDictionary.copy()();
          v51 = v77;
        }

        *(v61 + 8 * v53) = v64;

        v70(v48, v73);
        return;
      }
    }

    v34 = *(v8 + 8);
    v69 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v70 = v34;
    v34(v18, v7);
    v18 = *v27;
    v8 = (*v27 + 64);
    v35 = 1 << (*v27)[32];
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v15 = v36 & *(*v27 + 8);
    v37 = (v35 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v38 = 0;
    if (v15)
    {
      while (1)
      {
        v39 = v38;
LABEL_18:
        v40 = *(*(v18 + 7) + ((v39 << 9) | (8 * __clz(__rbit64(v15)))));
        v76[3] = type metadata accessor for WorkoutConfiguration(0);
        v76[4] = &protocol witness table for WorkoutConfiguration;
        v76[0] = v75;
        v4 = (*MEMORY[0x277D85000] & *v40) + 464;
        v7 = *((*MEMORY[0x277D85000] & *v40) + 0x1D0);
        v41 = v75;
        v21 = v40;
        v42 = v7(v76);
        __swift_destroy_boxed_opaque_existential_1Tm_16(v76);
        if (v42)
        {
          break;
        }

        v15 &= v15 - 1;

        v38 = v39;
        if (!v15)
        {
          goto LABEL_15;
        }
      }

LABEL_22:
      v7 = v73;
      v27 = v74;
      v15 = v66;
      goto LABEL_23;
    }

LABEL_15:
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v37)
      {

        v21 = v75;
        goto LABEL_22;
      }

      v15 = *(v8 + 8 * v39);
      ++v38;
      if (v15)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }
}

BOOL WorkoutConfiguration.isOpenGoal.getter()
{
  type metadata accessor for GoalWorkoutConfiguration(0);
  result = 0;
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v0;
    static Published.subscript.getter(&v5);

    v2 = v5;
    v3 = [v5 goalTypeIdentifier];

    if (!v3)
    {
      return 1;
    }
  }

  return result;
}

void closure #5 in closure #3 in WorkoutConfigurationDataSource.load()(void *a1, unint64_t a2)
{
  v3 = a2;
  v5 = a2 >> 62;
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = __CocoaSet.count.getter();
    if (__CocoaSet.count.getter() < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = v10;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = 3;
    }

    if (__CocoaSet.count.getter() >= v7)
    {
LABEL_6:
      if ((v3 & 0xC000000000000001) != 0 && v7)
      {
        type metadata accessor for WorkoutConfiguration(0);

        _ArrayBuffer._typeCheckSlowPath(_:)(0);
        if (v7 != 1)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(1);
          if (v7 != 2)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(2);
          }
        }

        if (!v5)
        {
LABEL_12:
          v8 = 0;
          v3 &= 0xFFFFFFFFFFFFFF8uLL;
          v9 = v3 + 32;
          v10 = (2 * v7) | 1;
          if (v10)
          {
LABEL_17:
            v2 = v9;
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v13 = swift_dynamicCastClass();
            if (!v13)
            {
              swift_unknownObjectRelease();
              v13 = MEMORY[0x277D84F90];
            }

            v14 = *(v13 + 16);

            if (!__OFSUB__(v10 >> 1, v8))
            {
              if (v14 == (v10 >> 1) - v8)
              {
                v15 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v15)
                {
LABEL_23:
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v16 = a1;
                  static Published.subscript.setter();
                  return;
                }

LABEL_22:
                swift_unknownObjectRelease();
                goto LABEL_23;
              }

              goto LABEL_30;
            }

LABEL_29:
            __break(1u);
LABEL_30:
            swift_unknownObjectRelease();
            v9 = v2;
          }

LABEL_16:
          specialized _copyCollectionToContiguousArray<A>(_:)(v3, v9, v8, v10);
          goto LABEL_22;
        }
      }

      else
      {

        if (!v5)
        {
          goto LABEL_12;
        }
      }

      v3 = _CocoaArrayWrapper.subscript.getter();
      v8 = v11;
      v10 = v12;
      if (v12)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 >= v7)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void WorkoutConfigurationDataSource.fetchRecentWorkouts(activityType:daysAgo:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.app);
  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = *&v10[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
    *(v13 + 4) = v15;
    *v14 = v15;
    v16 = v15;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[WorkoutConfigurationDataSource] fetching recent workouts for activityType: %@", v13, 0xCu);
    outlined destroy of RaceRouteDataStoring?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v17 = specialized static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(a1, a2, a3, a4);
  if (v17)
  {
    v18 = v17;
    [*&v10[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] executeQuery_];
  }
}

double WorkoutConfigurationDataSource.add(workoutConfiguration:)(char *a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  if (a1[v9] != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v56);

    v15 = v56[0];
    v52 = v4;
    v53 = v1;
    v50 = v8;
    v51 = v5;
    if (v56[0] >> 62)
    {
      v16 = __CocoaSet.count.getter();
      if (v16)
      {
LABEL_8:
        v17 = 0;
        v54 = v15 & 0xFFFFFFFFFFFFFF8;
        v55 = v15 & 0xC000000000000001;
        while (1)
        {
          if (v55)
          {
            v18 = MEMORY[0x20F2E7A20](v17, v15);
          }

          else
          {
            if (v17 >= *(v54 + 16))
            {
              goto LABEL_22;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          KeyPath = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v56[3] = type metadata accessor for WorkoutConfiguration(0);
          v56[4] = &protocol witness table for WorkoutConfiguration;
          v56[0] = a1;
          v21 = *((*MEMORY[0x277D85000] & *KeyPath) + 0x1D0);
          v2 = a1;
          v22 = v21(v56);
          __swift_destroy_boxed_opaque_existential_1Tm_16(v56);
          if (v22)
          {
            break;
          }

          ++v17;
          if (v20 == v16)
          {
            goto LABEL_25;
          }
        }

        if (one-time initialization token for app != -1)
        {
          goto LABEL_31;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v16 = *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_8;
      }
    }

LABEL_25:

    v35 = v53;
    v36 = v50;
    Date.init()();
    WorkoutConfigurationOccurrenceStore.addOccurrence(for:modificationDate:)(a1);
    (*(v51 + 8))(v36, v52);
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    v37 = static Published.subscript.modify();
    if (!(*v38 >> 62) || (__CocoaSet.count.getter() & 0x8000000000000000) == 0)
    {
      v39 = a1;
      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v39);

      v37(v56, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      v56[0] = v39;
      v40 = v39;
      v41 = v35;
      static Published.subscript.setter();
      if (v41[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] == 1)
      {
        v42 = *&v41[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient];
        v43 = swift_allocObject();
        *(v43 + 16) = v40;
        *(v43 + 24) = v41;
        v44 = swift_allocObject();
        v44[2] = partial apply for closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:);
        v44[3] = v43;
        v44[4] = v40;
        v44[5] = v42;
        v45 = swift_allocObject();
        *(v45 + 16) = partial apply for closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:);
        *(v45 + 24) = v43;
        v46 = v40;
        swift_retain_n();
        v47 = v46;
        v48 = v41;
        v49 = v42;
        QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC4save_10completionyAA0A13ConfigurationC_ySb_s5Error_pSgtctFyypcfU_TA_0, v44, _s11WorkoutCore11QueryClientC4save_10completionyAA0A13ConfigurationC_ySb_s5Error_pSgtctFysAH_pcfU0_TA_0, v45);
      }

      return result;
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_18:
    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.app);
    v24 = v2;
    v25 = KeyPath;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v53;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      *(v30 + 4) = v24;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v25;
      *v31 = v24;
      v31[1] = KeyPath;
      v32 = v24;
      v33 = v25;
      _os_log_impl(&dword_20AEA4000, v26, v27, "Add new workout_configuration: %@ was deduplicated against equivalent: %@", v30, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    WorkoutConfigurationDataSource.save(workoutConfiguration:)(v25);
    swift_getKeyPath();
    swift_getKeyPath();
    v56[0] = KeyPath;
    v34 = v29;
    static Published.subscript.setter();
    return result;
  }

  if (one-time initialization token for race != -1)
  {
LABEL_23:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.race);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20AEA4000, v11, v12, "Race: not persisting race configuration", v13, 2u);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  return result;
}

void WorkoutConfigurationDataSource.save(workoutConfiguration:)(char *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] == 1)
  {
    Date.init()();
    WorkoutConfigurationOccurrenceStore.saveOccurrence(for:modificationDate:postUpdate:)(a1, v7, 1);
    (*(v4 + 8))(v7, v3);
    v8 = *&v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient];
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v1;
    v10 = swift_allocObject();
    v10[2] = partial apply for closure #1 in WorkoutConfigurationDataSource.save(workoutConfiguration:);
    v10[3] = v9;
    v10[4] = a1;
    v10[5] = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for closure #1 in WorkoutConfigurationDataSource.save(workoutConfiguration:);
    *(v11 + 24) = v9;
    v12 = a1;
    swift_retain_n();
    v13 = v12;
    v14 = v1;
    v15 = v8;
    QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.save(_:completion:)partial apply, v10, closure #2 in QueryClient.save(_:completion:)partial apply, v11);
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.app);
    v17 = a1;
    v24 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&dword_20AEA4000, v24, v18, "Save only to memory existing workout_configuration=%@", v19, 0xCu);
      outlined destroy of RaceRouteDataStoring?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    v22 = v24;
  }
}

void closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:)(char a1, void *a2, void *a3, char *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v12);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);
  v15 = a3;
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v43 = a4;
    v44 = v9;
    v45 = v8;
    v19 = a1;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v52 = v22;
    *v20 = 138412802;
    *(v20 + 4) = v15;
    *v21 = v15;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v19 & 1;
    *(v20 + 18) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v23 = v50;
      v24 = v51;
      v25 = v15;
      v26 = MEMORY[0x20F2E7F50](v23, v24);
      v28 = v27;
    }

    else
    {
      v36 = v15;
      v26 = 0;
      v28 = 0;
    }

    aBlock = v26;
    v54 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v37 = Optional.description.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v52);

    *(v20 + 20) = v40;
    _os_log_impl(&dword_20AEA4000, v17, v18, "Save new workout_configuration=%@ success=%{BOOL}d error=%s", v20, 0x1Cu);
    outlined destroy of RaceRouteDataStoring?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_16(v22);
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);

    v9 = v44;
    v8 = v45;
    a4 = v43;
    if (!a2)
    {
      goto LABEL_10;
    }

LABEL_7:
    type metadata accessor for OS_dispatch_queue();
    v29 = static OS_dispatch_queue.main.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = a4;
    *(v30 + 24) = v15;
    v57 = partial apply for closure #1 in closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:);
    v58 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = thunk for @escaping @callee_guaranteed () -> ();
    v56 = &block_descriptor_100;
    v31 = _Block_copy(&aBlock);
    v32 = v15;
    v33 = a4;

    v34 = v46;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v35 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v34, v35, v31);
    _Block_release(v31);

    (*(v9 + 8))(v35, v8);
    (*(v47 + 8))(v34, v49);
    return;
  }

  if (a2)
  {
    goto LABEL_7;
  }

LABEL_10:
  v41 = *&a4[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl];
  v57 = closure #1 in WorkoutConfigurationDataSource.forceSync();
  v58 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v56 = &block_descriptor_94_0;
  v42 = _Block_copy(&aBlock);
  [v41 forceNanoSyncWithOptions:0 completion:v42];
  _Block_release(v42);
}

void closure #1 in closure #2 in WorkoutConfigurationDataSource.add(workoutConfiguration:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a2;
  v10 = static Published.subscript.modify();
  v12 = v11;
  specialized MutableCollection._halfStablePartition(isSuffixElement:)(v11, v9);
  v14 = v13;

  if (*v12 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (v15 >= v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= v14)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v14, v15);
      v10(aBlock, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = 0;
      v16 = a1;
      static Published.subscript.setter();
      v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      (*(v5 + 16))(v8, &v9[v17], v4);
      WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(v8);
      (*(v5 + 8))(v8, v4);
      v18 = *&v16[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl];
      aBlock[4] = closure #1 in WorkoutConfigurationDataSource.forceSync();
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_103;
      v19 = _Block_copy(aBlock);
      [v18 forceNanoSyncWithOptions:0 completion:v19];
      _Block_release(v19);
      return;
    }
  }

  __break(1u);
}

double WorkoutConfigurationDataSource.remove(at:by:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = *a2;
  v9 = WorkoutConfigurationDataSource.sortedWorkoutConfigurations(by:)(&v18);
  v18 = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(a1, v9, &v18);

  v10 = *(v18 + 16);
  if (v10)
  {
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = v18 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v8, v14, v4);
      WorkoutConfigurationDataSource.remove(uuid:)(v8);
      (*(v11 - 8))(v8, v4);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t WorkoutConfigurationDataSource.sortedWorkoutConfigurations(by:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v32);

  v4 = v32[0];
  v33 = MEMORY[0x277D84F90];
  if (v32[0] >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; v4 = v23)
  {
    v29 = v2;
    v30 = v4;
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v2 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = v4 + 32;
    while (1)
    {
      if (v7)
      {
        v4 = MEMORY[0x20F2E7A20](v6, v30);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_33;
        }

        v4 = *(v8 + 8 * v6);
      }

      v9 = v4;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      if (v3 > 2)
      {
        if (v3 == 3)
        {
          v13 = &outlined read-only object #2 of WorkoutConfigurationFilterType.configurationTypes.getter;
        }

        else if (v3 == 4)
        {
          v13 = &outlined read-only object #5 of WorkoutConfigurationFilterType.configurationTypes.getter;
        }

        else
        {
          v13 = &outlined read-only object #3 of WorkoutConfigurationFilterType.configurationTypes.getter;
        }
      }

      else
      {
        if (!v3)
        {
          v14 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
          v32[0] = MEMORY[0x20F2E7290](5, &type metadata for ConfigurationType, v14);
          v12 = &byte_282243178;
          goto LABEL_18;
        }

        if (v3 == 1)
        {
          v11 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
          v32[0] = MEMORY[0x20F2E7290](5, &type metadata for ConfigurationType, v11);
          v12 = &byte_282243218;
LABEL_18:
          specialized Set._Variant.insert(_:)(&v31, *v12);
          specialized Set._Variant.insert(_:)(&v31, v12[1]);
          specialized Set._Variant.insert(_:)(&v31, v12[2]);
          specialized Set._Variant.insert(_:)(&v31, v12[3]);
          specialized Set._Variant.insert(_:)(&v31, v12[4]);
          v15 = v32[0];
          goto LABEL_23;
        }

        v13 = &outlined read-only object #1 of WorkoutConfigurationFilterType.configurationTypes.getter;
      }

      v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore17ConfigurationTypeO_Tt0g5Tf4g_n(v13);
LABEL_23:
      v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      if (*(v15 + 16) && (v17 = v9[v16], Hasher.init(_seed:)(), MEMORY[0x20F2E7FF0](v17 + 1), v18 = Hasher._finalize()(), v19 = -1 << *(v15 + 32), v20 = v18 & ~v19, ((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (*(*(v15 + 48) + v20) != v17)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_4:
      }

      if (v6 == i)
      {
        v22 = v33;
        v2 = v29;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v23 = v4;
    i = __CocoaSet.count.getter();
  }

  v22 = MEMORY[0x277D84F90];
LABEL_36:

  type metadata accessor for WorkoutConfigurationOccurrenceStore(0);
  LOBYTE(v32[0]) = v3;
  v24 = *(v2 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType);
  v25 = *(v2 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation);
  v26 = v25;
  v27 = static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:)(v22, v32, v24, v25);

  return v27;
}

unint64_t closure #1 in WorkoutConfigurationDataSource.remove(at:by:)(unint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 >= result)
  {
    return result;
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(a2 + 8 * v11 + 32);
    goto LABEL_7;
  }

LABEL_15:
  v13 = MEMORY[0x20F2E7A20](v11, a2);
LABEL_7:
  v14 = v13;
  v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v7 + 16))(v10, &v14[v15], v6);

  v16 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    *a3 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    *a3 = v16;
  }

  v16[2] = v19 + 1;
  return (*(v7 + 32))(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, v6);
}

void WorkoutConfigurationDataSource.remove(uuid:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 1);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v9 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = MEMORY[0x28223BE20](v11, v12);
  if (v1[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] == 1)
  {
    v61 = &v56 - v15;
    v62 = v16;
    v17 = v5;
    v5 = v4;
    v60 = &v56;
    MEMORY[0x28223BE20](v13, v14);
    *(&v56 - 2) = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = static Published.subscript.modify();
    v19 = v18;
    v9 = 0;
    v20 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #2 in WorkoutConfigurationDataSource.remove(uuid:), (&v56 - 4));
    if (*v19 >> 62)
    {
      v9 = v20;
      v21 = __CocoaSet.count.getter();
      v20 = v9;
      if (v21 >= v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21 >= v20)
      {
LABEL_4:
        specialized Array.replaceSubrange<A>(_:with:)(v20, v21);
        (v4)(v63, 0);

        v22 = *&v2[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient];
        v23 = v17;
        v56 = v2;
        v59 = v17[2];
        v60 = v22;
        v24 = v61;
        v59(v61, a1, v5);
        v25 = *(v17 + 80);
        v26 = (v25 + 16) & ~v25;
        v57 = v6 + 7;
        v27 = (v6 + 7 + v26) & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        v29 = v56;
        v58 = v23[4];
        v58(v28 + v26, v24, v5);
        *(v28 + v27) = v29;
        v30 = v62;
        v59(v62, a1, v5);
        v31 = (v25 + 32) & ~v25;
        v32 = (v57 + v31) & 0xFFFFFFFFFFFFFFF8;
        v33 = swift_allocObject();
        *(v33 + 16) = partial apply for closure #3 in WorkoutConfigurationDataSource.remove(uuid:);
        *(v33 + 24) = v28;
        v58(v33 + v31, v30, v5);
        v34 = v60;
        *(v33 + v32) = v60;
        v35 = swift_allocObject();
        *(v35 + 16) = partial apply for closure #3 in WorkoutConfigurationDataSource.remove(uuid:);
        *(v35 + 24) = v28;
        swift_retain_n();
        v36 = v29;
        v37 = v34;
        QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC19deleteConfiguration4uuid10completiony10Foundation4UUIDV_ySb_s5Error_pSgtctFyypcfU_TA_0, v33, _s11WorkoutCore11QueryClientC19deleteConfiguration4uuid10completiony10Foundation4UUIDV_ySb_s5Error_pSgtctFysAJ_pcfU0_TA_0, v35);

LABEL_12:

        return;
      }
    }

    __break(1u);
  }

  else if (one-time initialization token for app == -1)
  {
    goto LABEL_6;
  }

  swift_once();
LABEL_6:
  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static WOLog.app);
  (v5[2])(v9, a1, v4);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v63[0] = v42;
    *v41 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v4;
    v46 = v45;
    (v5[1])(v9, v44);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v46, v63);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_20AEA4000, v39, v40, "Remove only from memory existing workout_configuration=%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_16(v42);
    MEMORY[0x20F2E9420](v42, -1, -1);
    MEMORY[0x20F2E9420](v41, -1, -1);
  }

  else
  {

    v48 = (v5[1])(v9, v4);
  }

  MEMORY[0x28223BE20](v48, v49);
  *(&v56 - 2) = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = static Published.subscript.modify();
  v52 = v51;
  v53 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in WorkoutConfigurationDataSource.remove(uuid:), (&v56 - 4));
  if (*v52 >> 62)
  {
    v55 = v53;
    v54 = __CocoaSet.count.getter();
    v53 = v55;
    if (v54 >= v55)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v54 = *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54 >= v53)
    {
LABEL_11:
      specialized Array.replaceSubrange<A>(_:with:)(v53, v54);
      v50(v63, 0);
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t closure #1 in WorkoutConfigurationDataSource.remove(uuid:)(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v4 + 16))(v7, v8 + v9, v3);
  v10 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v10 & 1;
}

uint64_t closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(int a1, void *a2, uint64_t a3, void *a4)
{
  v68 = a4;
  v66 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchQoS();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v9);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v65 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v58 - v17;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static WOLog.app);
  v64 = *(v12 + 16);
  v64(v18, a3, v11);
  v21 = a2;
  v67 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v60 = v23;
    v62 = a3;
    v63 = v6;
    v24 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v76 = v59;
    *v24 = 136315906;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v61 = v12;
    (*(v12 + 8))(v18, v11);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v76);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v66 & 1;
    *(v24 + 18) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v29 = MEMORY[0x20F2E7F50](v74, v75);
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    aBlock = v29;
    v78 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v43 = Optional.description.getter();
    v45 = v44;

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v76);

    *(v24 + 20) = v46;
    *(v24 + 28) = 2112;
    v47 = [objc_opt_self() currentThread];
    *(v24 + 30) = v47;
    v48 = v58;
    *v58 = v47;
    _os_log_impl(&dword_20AEA4000, v22, v60, "Remove workout_configuration=%s success=%{BOOL}d error=%s thread: %@", v24, 0x26u);
    outlined destroy of RaceRouteDataStoring?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v48, -1, -1);
    v49 = v59;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v49, -1, -1);
    MEMORY[0x20F2E9420](v24, -1, -1);

    v6 = v63;
    a3 = v62;
    v12 = v61;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {

    (*(v12 + 8))(v18, v11);
    if (!a2)
    {
LABEL_12:
      type metadata accessor for OS_dispatch_queue();
      v39 = static OS_dispatch_queue.main.getter();
      v50 = v65;
      v64(v65, a3, v11);
      v51 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v52 = swift_allocObject();
      v41 = v68;
      *(v52 + 16) = v68;
      (*(v12 + 32))(v52 + v51, v50, v11);
      v81 = partial apply for closure #1 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:);
      v82 = v52;
      aBlock = MEMORY[0x277D85DD0];
      v78 = 1107296256;
      v42 = &block_descriptor_79_0;
      goto LABEL_13;
    }
  }

  v32 = a2;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = a2;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_20AEA4000, v33, v34, "Failed to remove workout configuration: %@, reloading configurations.", v35, 0xCu);
    outlined destroy of RaceRouteDataStoring?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v36, -1, -1);
    MEMORY[0x20F2E9420](v35, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue();
  v39 = static OS_dispatch_queue.main.getter();
  v40 = swift_allocObject();
  v41 = v68;
  *(v40 + 16) = v68;
  v81 = partial apply for closure #2 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:);
  v82 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v78 = 1107296256;
  v42 = &block_descriptor_85;
LABEL_13:
  v79 = thunk for @escaping @callee_guaranteed () -> ();
  v80 = v42;
  v53 = _Block_copy(&aBlock);
  v54 = v41;

  v55 = v69;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v56 = v71;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v55, v56, v53);
  _Block_release(v53);

  (*(v73 + 8))(v56, v6);
  return (*(v70 + 8))(v55, v72);
}

void closure #1 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(uint64_t a1, uint64_t a2)
{
  WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(a2);
  v3 = *(a1 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl);
  v5[4] = closure #1 in WorkoutConfigurationDataSource.forceSync();
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v5[3] = &block_descriptor_88_1;
  v4 = _Block_copy(v5);
  [v3 forceNanoSyncWithOptions:0 completion:v4];
  _Block_release(v4);
}

uint64_t WorkoutConfigurationDataSource.save(configurationData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized Occurrence.__allocating_init(count:)(0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = specialized static WorkoutConfiguration.importFromData(_:with:validator:)(a1, a2, v4, static WorkoutConfigurationValidator.shared);

  WorkoutConfigurationDataSource.save(workoutConfiguration:)(v5);
  return 1;
}

void closure #1 in WorkoutConfigurationDataSource.save(workoutConfiguration:)(char a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.app);
  v14 = a3;
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v39 = v17;
    v40 = a4;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    *v18 = 138413058;
    *(v18 + 4) = v14;
    v37 = v19;
    *v19 = v14;
    *(v18 + 12) = 2080;
    v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v9 + 16))(v12, &v14[v20], v8);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = v14;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v9 + 8))(v12, v8);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v43);

    *(v18 + 14) = v25;
    *(v18 + 22) = 1024;
    *(v18 + 24) = a1 & 1;
    *(v18 + 28) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v26 = MEMORY[0x20F2E7F50](v41, v42);
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    aBlock = v26;
    v45 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v29 = Optional.description.getter();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v43);

    *(v18 + 30) = v32;
    _os_log_impl(&dword_20AEA4000, v16, v39, "Save existing workout_configuration=%@ uuid=%s success=%{BOOL}d error=%s", v18, 0x26u);
    v33 = v37;
    outlined destroy of RaceRouteDataStoring?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v33, -1, -1);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v34, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    a4 = v40;
  }

  else
  {
  }

  v35 = *(a4 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl);
  v48 = closure #1 in WorkoutConfigurationDataSource.forceSync();
  v49 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v47 = &block_descriptor_91_0;
  v36 = _Block_copy(&aBlock);
  [v35 forceNanoSyncWithOptions:0 completion:v36];
  _Block_release(v36);
}

void WorkoutConfigurationDataSource.saveManagedConfigurationIfNeeded(_:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v28 - v5;
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence) == 1)
  {
    v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
    swift_beginAccess();
    if (*&a1[v7])
    {
      UUID.init()();
      v8 = type metadata accessor for UUID();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      v9 = WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)(v6, 0, 1, 0, 1, 2, 0);
      outlined destroy of RaceRouteDataStoring?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v9)
      {
        v10 = specialized Occurrence.__allocating_init(count:)(0);
        v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v12 = *&v9[v11];
        *&v9[v11] = v10;

        WorkoutConfigurationDataSource.add(workoutConfiguration:)(v9);
        v13 = [objc_opt_self() defaultCenter];
        v14 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        [v13 postNotificationName:@"NLSmartGoalStoreDidSaveCopiedManagedConfiguration" object:*&a1[v14]];

        v30 = 2;
        specialized static WOAnalyticsEvent.share(_:engagementType:)(v9, &v30);

        return;
      }

      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static WOLog.app);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_21;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Failed to copy managed configuration before saving";
    }

    else
    {
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static WOLog.app);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_21;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Only applies to managed configurations";
    }

    _os_log_impl(&dword_20AEA4000, v23, v24, v26, v25, 2u);
    MEMORY[0x20F2E9420](v25, -1, -1);
LABEL_21:

    return;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.app);
  v16 = a1;
  v29 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v16;
    *v19 = v16;
    v20 = v16;
    _os_log_impl(&dword_20AEA4000, v29, v17, "Save only to memory existing workout_configuration=%@", v18, 0xCu);
    outlined destroy of RaceRouteDataStoring?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  v21 = v29;
}

void WorkoutConfigurationDataSource.invalidate(workoutConfiguration:)(char *a1)
{
  v39 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v6;
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v32 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v1;
  static Published.subscript.getter(v40);

  v11 = v40[0];
  if (v40[0] >> 62)
  {
LABEL_18:
    v35 = v11 & 0xFFFFFFFFFFFFFF8;
    v38 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = v40[0] & 0xFFFFFFFFFFFFFF8;
    v38 = *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v12 = 0;
  v36 = v11 & 0xC000000000000001;
  v13 = (v3 + 16);
  v33 = v3;
  v14 = (v3 + 8);
  while (1)
  {
    if (v38 == v12)
    {

      return;
    }

    if (v36)
    {
      v15 = v11;
      v16 = MEMORY[0x20F2E7A20](v12, v11);
    }

    else
    {
      if (v12 >= *(v35 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v15 = v11;
      v16 = *(v11 + 8 * v12 + 32);
    }

    v17 = v16;
    v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v19 = *v13;
    (*v13)(v10, &v17[v18], v2);
    v19(v7, &v39[v37], v2);
    v3 = static UUID.== infix(_:_:)();

    v20 = *v14;
    (*v14)(v7, v2);
    v20(v10, v2);
    if (v3)
    {
      break;
    }

    v21 = __OFADD__(v12++, 1);
    v11 = v15;
    if (v21)
    {
      goto LABEL_17;
    }
  }

  v38 = *&v34[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient];
  v22 = v39;
  v19(v10, &v39[v37], v2);
  v23 = swift_allocObject();
  v23[2] = v34;
  v23[3] = v12;
  v23[4] = v22;
  v19(v7, v10, v2);
  v24 = v33;
  v25 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = (v32 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:);
  *(v26 + 24) = v23;
  (*(v24 + 32))(v26 + v25, v7, v2);
  v27 = v38;
  *(v26 + v37) = v38;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:);
  *(v28 + 24) = v23;
  swift_retain_n();
  v29 = v34;
  v30 = v39;
  v31 = v27;
  QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC18fetchConfiguration4uuid10completiony10Foundation4UUIDV_yAA0aF0CSg_s5Error_pSgtctFyypcfU_TA_0, v26, _s11WorkoutCore11QueryClientC18fetchConfiguration4uuid10completiony10Foundation4UUIDV_yAA0aF0CSg_s5Error_pSgtctFysAM_pcfU0_TA_0, v28);

  v20(v10, v2);
}

uint64_t closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  aBlock[4] = partial apply for closure #1 in closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_59;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = a3;
  v22 = a5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v16, v12, v19);
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v24);
}

void closure #1 in closure #2 in WorkoutConfigurationDataSource.invalidate(workoutConfiguration:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = a1;
    v13 = static Published.subscript.modify();
    v15 = v14;
    v16 = *v14;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v15 = v16;
    if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || v16 < 0 || (v16 & 0x4000000000000000) != 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      *v15 = v16;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20);
      *((v16 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20) = v12;

      v13(v21, 0);

      WorkoutConfigurationOccurrenceStore.updateExistingOccurrence(for:postUpdate:)(v12, 1);

      return;
    }

    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = static Published.subscript.modify();

    v19(v21, 0);

    v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v8 + 16))(v11, a4 + v20, v7);
    WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(v11);
    (*(v8 + 8))(v11, v7);
  }
}

void closure #1 in WorkoutConfigurationDataSource.forceSync()(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.app);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      if (a2)
      {
        v9 = a2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *(v7 + 4) = v10;
      *v8 = v11;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "[WorkoutConfigurationDataSource] failed to nano sync due to %@", v7, 0xCu);
      outlined destroy of RaceRouteDataStoring?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }
  }
}

double WorkoutConfigurationDataSource.smartGoalStoreUpdatedOccurrenceData(notification:)(void *a1)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.app);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    v11 = [v4 name];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v19);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    v16 = *&v5[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType];
    *(v8 + 14) = v16;
    *v9 = v16;
    v17 = v16;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[WorkoutConfigurationDataSource] smart goal store updated occurrence data, notification: %s, reload configurations for activityType: %@", v8, 0x16u);
    outlined destroy of RaceRouteDataStoring?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_16(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  return WorkoutConfigurationDataSource.load()();
}

id WorkoutConfigurationDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutConfigurationDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutConfigurationDataSource@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id protocol witness for static Canonical.canonical() in conformance WorkoutConfigurationDataSource@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static WorkoutConfigurationDataSource.canonical()();
  *a1 = result;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t *a2)
{
  v50 = a2;
  v49 = type metadata accessor for Date();
  v4 = *(v49 - 8);
  v6 = MEMORY[0x28223BE20](v49, v5);
  v48 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v47 = v39 - v9;
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v41 = v10 + 32;
  v54[0] = v10 + 32;
  v54[1] = v12;
  v13 = _minimumMergeRunLength(_:)(v12);
  if (v13 >= v12)
  {
    if (v12 >= 2)
    {
      v39[1] = a1;
      v39[2] = v2;
      v45 = (v4 + 8);
      v46 = (v4 + 16);
      v16 = -1;
      v17 = 1;
      v18 = v41;
      v40 = v12;
      do
      {
        v43 = v17;
        v19 = *(v41 + 8 * v17);
        v44 = v16;
        v51 = v16;
        v42 = v18;
        do
        {
          v55 = *v18;
          v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v21 = *&v19[v20];
          v22 = v50;
          v23 = *v50;
          swift_beginAccess();
          v24 = v47;
          v25 = *v46;
          v26 = v49;
          (*v46)(v47, v21 + v23, v49);
          v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          v28 = v55;
          swift_beginAccess();
          v29 = *&v28[v27];
          v30 = *v22;
          swift_beginAccess();
          v31 = v48;
          v25(v48, v29 + v30, v26);
          v32 = v19;
          v33 = v55;
          v34 = static Date.> infix(_:_:)();
          v35 = *v45;
          (*v45)(v31, v26);
          v35(v24, v26);

          if ((v34 & 1) == 0)
          {
            break;
          }

          v36 = *v18;
          v19 = *(v18 + 8);
          *v18 = v19;
          *(v18 + 8) = v36;
          v18 -= 8;
        }

        while (!__CFADD__(v51++, 1));
        v17 = v43 + 1;
        v18 = v42 + 8;
        v16 = v44 - 1;
      }

      while (v43 + 1 != v40);
    }
  }

  else
  {
    v14 = v13;
    if (v12 >= 2)
    {
      type metadata accessor for WorkoutConfiguration(0);
      v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12 >> 1;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v53[0] = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
    v53[1] = v12 >> 1;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v53, v52, v54, v14, v50);
    *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v153 = a5;
  v139 = a1;
  v152 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v152, v8);
  v151 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v156 = &v137 - v13;
  v146 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_87:
    v5 = *v139;
    if (!*v139)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }

    v158 = v16;
    v132 = *(v16 + 2);
    if (v132 >= 2)
    {
      while (*v146)
      {
        v133 = *&v16[16 * v132];
        v134 = *&v16[16 * v132 + 24];
        v135 = v147;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v146 + 8 * v133), (*v146 + 8 * *&v16[16 * v132 + 16]), (*v146 + 8 * v134), v5, v153);
        v147 = v135;
        if (v135)
        {
          goto LABEL_97;
        }

        if (v134 < v133)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        if (v132 - 2 >= *(v16 + 2))
        {
          goto LABEL_113;
        }

        v136 = &v16[16 * v132];
        *v136 = v133;
        *(v136 + 1) = v134;
        v158 = v16;
        specialized Array.remove(at:)(v132 - 1);
        v16 = v158;
        v132 = *(v158 + 2);
        if (v132 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v138 = a4;
  v15 = 0;
  v149 = (v12 + 8);
  v150 = (v12 + 16);
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v144 = v14;
      v145 = v16;
      v18 = *v146;
      v155 = *(*v146 + 8 * v15);
      v19 = v155;
      v141 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v22 = *v20;
      v21 = v20 + 2;
      v157 = v22;
      v140 = v17;
      v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      swift_beginAccess();
      v24 = *&v19[v23];
      v25 = v153;
      v26 = *v153;
      swift_beginAccess();
      v27 = *v150;
      v28 = v156;
      v29 = v152;
      (*v150)(v156, v24 + v26, v152);
      v30 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      v31 = v157;
      swift_beginAccess();
      v32 = *&v31[v30];
      v33 = *v25;
      swift_beginAccess();
      v34 = v32 + v33;
      v35 = v151;
      v143 = v27;
      v27(v151, v34, v29);
      v36 = v155;
      v37 = v157;
      LODWORD(v148) = static Date.> infix(_:_:)();
      v5 = *v149;
      (*v149)(v35, v29);
      v142 = v5;
      (v5)(v28, v29);

      v38 = (v140 + 2);
      while (1)
      {
        v15 = v144;
        v16 = v145;
        if (v144 == v38)
        {
          break;
        }

        v39 = v21;
        v40 = *(v21 - 1);
        v154 = *v21;
        v41 = v154;
        v157 = v40;
        v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        v155 = v38;
        swift_beginAccess();
        v43 = *&v41[v42];
        v44 = v153;
        v45 = *v153;
        swift_beginAccess();
        v5 = v156;
        v46 = v152;
        v47 = v143;
        v143(v156, v43 + v45, v152);
        v48 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        v49 = v157;
        swift_beginAccess();
        v50 = *&v49[v48];
        v51 = *v44;
        swift_beginAccess();
        v52 = v151;
        v47(v151, v50 + v51, v46);
        v53 = v154;
        v54 = v157;
        LODWORD(v50) = static Date.> infix(_:_:)() & 1;
        v55 = v142;
        v142(v52, v46);
        v55(v5, v46);

        v38 = v155 + 1;
        v21 = v39 + 1;
        if ((v148 & 1) != v50)
        {
          v15 = v155;
          v16 = v145;
          break;
        }
      }

      v17 = v140;
      v56 = v141;
      if (v148)
      {
        if (v15 < v140)
        {
          goto LABEL_116;
        }

        if (v140 < v15)
        {
          v57 = 8 * v15 - 8;
          v58 = v15;
          v59 = v140;
          do
          {
            if (v59 != --v58)
            {
              v61 = *v146;
              if (!*v146)
              {
                goto LABEL_122;
              }

              v60 = *(v61 + v56);
              *(v61 + v56) = *(v61 + v57);
              *(v61 + v57) = v60;
            }

            ++v59;
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v58);
        }
      }
    }

    v62 = v146[1];
    if (v15 < v62)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_115;
      }

      if (v15 - v17 < v138)
      {
        v63 = v17 + v138;
        if (__OFADD__(v17, v138))
        {
          goto LABEL_117;
        }

        if (v63 >= v62)
        {
          v63 = v146[1];
        }

        if (v63 < v17)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v15 != v63)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v15 < v17)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v86 = *(v16 + 2);
    v85 = *(v16 + 3);
    v87 = v86 + 1;
    if (v86 >= v85 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v16);
    }

    *(v16 + 2) = v87;
    v88 = &v16[16 * v86];
    *(v88 + 4) = v17;
    *(v88 + 5) = v15;
    if (!*v139)
    {
      goto LABEL_124;
    }

    if (v86)
    {
      v89 = *v139;
      while (1)
      {
        v5 = v87 - 1;
        if (v87 >= 4)
        {
          break;
        }

        if (v87 == 3)
        {
          v90 = *(v16 + 4);
          v91 = *(v16 + 5);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_56:
          if (v93)
          {
            goto LABEL_103;
          }

          v106 = &v16[16 * v87];
          v108 = *v106;
          v107 = *(v106 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_106;
          }

          v112 = &v16[16 * v5 + 32];
          v114 = *v112;
          v113 = *(v112 + 1);
          v100 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v100)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v110, v115))
          {
            goto LABEL_110;
          }

          if (v110 + v115 >= v92)
          {
            if (v92 < v115)
            {
              v5 = v87 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v116 = &v16[16 * v87];
        v118 = *v116;
        v117 = *(v116 + 1);
        v100 = __OFSUB__(v117, v118);
        v110 = v117 - v118;
        v111 = v100;
LABEL_70:
        if (v111)
        {
          goto LABEL_105;
        }

        v119 = &v16[16 * v5];
        v121 = *(v119 + 4);
        v120 = *(v119 + 5);
        v100 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v100)
        {
          goto LABEL_108;
        }

        if (v122 < v110)
        {
          goto LABEL_3;
        }

LABEL_77:
        v127 = v5 - 1;
        if (v5 - 1 >= v87)
        {
          __break(1u);
LABEL_99:
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

        if (!*v146)
        {
          goto LABEL_121;
        }

        v128 = *&v16[16 * v127 + 32];
        v129 = *&v16[16 * v5 + 40];
        v130 = v147;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v146 + 8 * v128), (*v146 + 8 * *&v16[16 * v5 + 32]), (*v146 + 8 * v129), v89, v153);
        v147 = v130;
        if (v130)
        {
          goto LABEL_97;
        }

        if (v129 < v128)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        if (v127 >= *(v16 + 2))
        {
          goto LABEL_100;
        }

        v131 = &v16[16 * v127];
        *(v131 + 4) = v128;
        *(v131 + 5) = v129;
        v158 = v16;
        specialized Array.remove(at:)(v5);
        v16 = v158;
        v87 = *(v158 + 2);
        if (v87 <= 1)
        {
          goto LABEL_3;
        }
      }

      v94 = &v16[16 * v87 + 32];
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_101;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_102;
      }

      v101 = &v16[16 * v87];
      v103 = *v101;
      v102 = *(v101 + 1);
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_104;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_107;
      }

      if (v105 >= v97)
      {
        v123 = &v16[16 * v5 + 32];
        v125 = *v123;
        v124 = *(v123 + 1);
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_111;
        }

        if (v92 < v126)
        {
          v5 = v87 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = v146[1];
    if (v15 >= v14)
    {
      goto LABEL_87;
    }
  }

  v145 = v16;
  v148 = *v146;
  v64 = v148 + 8 * v15 - 8;
  v140 = v17;
  v141 = v63;
  v65 = (v17 - v15);
LABEL_28:
  v143 = v64;
  v144 = v15;
  v66 = *(v148 + 8 * v15);
  v142 = v65;
  v67 = v65;
  while (1)
  {
    v154 = v67;
    v157 = *v64;
    v68 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v69 = *&v66[v68];
    v70 = v153;
    v71 = *v153;
    swift_beginAccess();
    v72 = *v150;
    v73 = v152;
    (*v150)(v156, v69 + v71, v152);
    v74 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    v75 = v157;
    swift_beginAccess();
    v76 = *&v75[v74];
    v77 = *v70;
    swift_beginAccess();
    v78 = v151;
    v72(v151, v76 + v77, v73);
    v155 = v66;
    v79 = v157;
    v80 = v156;
    LOBYTE(v76) = static Date.> infix(_:_:)();
    v5 = v149;
    v81 = *v149;
    (*v149)(v78, v73);
    v81(v80, v73);

    if ((v76 & 1) == 0)
    {
LABEL_27:
      v15 = (v144 + 1);
      v64 = v143 + 8;
      v65 = v142 - 1;
      if (v144 + 1 != v141)
      {
        goto LABEL_28;
      }

      v15 = v141;
      v16 = v145;
      v17 = v140;
      goto LABEL_35;
    }

    v82 = v154;
    if (!v148)
    {
      break;
    }

    v83 = *v64;
    v66 = *(v64 + 8);
    *v64 = v66;
    *(v64 + 8) = v83;
    v64 -= 8;
    v84 = __CFADD__(v82, 1);
    v67 = v82 + 1;
    if (v84)
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, void **a2, void **a3, void **a4, uint64_t *a5)
{
  v71 = a5;
  v70 = type metadata accessor for Date();
  v9 = *(v70 - 8);
  v11 = MEMORY[0x28223BE20](v70, v10);
  v69 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v13);
  v68 = &v62[-v14];
  v15 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v15 = a2 - a1;
  }

  v16 = v15 >> 3;
  v17 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v17 = a3 - a2;
  }

  v18 = v17 >> 3;
  if (v16 >= v17 >> 3)
  {
    v72 = a1;
    if (a4 != a2 || &a2[v18] <= a4)
    {
      memmove(a4, a2, 8 * v18);
    }

    v76 = &a4[v18];
    if (a3 - a2 >= 8 && a2 > v72)
    {
      v64 = (v9 + 16);
      v63 = (v9 + 8);
      v75 = a4;
      do
      {
        v67 = a2;
        v39 = a2 - 1;
        v40 = a3 - 1;
        v41 = v76;
        v65 = a2 - 1;
        while (1)
        {
          v74 = v40;
          v66 = v40 + 1;
          v42 = *--v41;
          v73 = *v39;
          v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v44 = *&v42[v43];
          v45 = v71;
          v46 = *v71;
          swift_beginAccess();
          v47 = *v64;
          v48 = v68;
          v49 = v70;
          (*v64)(v68, v44 + v46, v70);
          v50 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          v51 = v73;
          swift_beginAccess();
          v52 = *(v51 + v50);
          v53 = *v45;
          swift_beginAccess();
          v54 = v69;
          v47(v69, v52 + v53, v49);
          v55 = v42;
          v56 = v73;
          LOBYTE(v52) = static Date.> infix(_:_:)();
          v57 = *v63;
          (*v63)(v54, v49);
          v57(v48, v49);

          if (v52)
          {
            break;
          }

          v58 = v74;
          if (v66 != v76)
          {
            *v74 = *v41;
          }

          v40 = v58 - 1;
          v76 = v41;
          v39 = v65;
          if (v41 <= v75)
          {
            v76 = v41;
            a4 = v75;
            a2 = v67;
            goto LABEL_38;
          }
        }

        v59 = v72;
        a3 = v74;
        v60 = v65;
        if (v66 != v67)
        {
          *v74 = *v65;
        }

        a4 = v75;
        if (v76 <= v75)
        {
          break;
        }

        a2 = v60;
      }

      while (v60 > v59);
      a2 = v60;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v16] <= a4)
    {
      memmove(a4, a1, 8 * v16);
    }

    v76 = &a4[v16];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v19 = a2;
      v73 = (v9 + 16);
      v66 = (v9 + 8);
      v74 = a3;
      while (1)
      {
        v67 = v19;
        v75 = a4;
        v72 = a1;
        v20 = *v19;
        v21 = *a4;
        v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v23 = *&v20[v22];
        v24 = v71;
        v25 = *v71;
        swift_beginAccess();
        v26 = *v73;
        v27 = v68;
        v28 = v70;
        (*v73)(v68, v23 + v25, v70);
        v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v30 = *&v21[v29];
        v31 = *v24;
        swift_beginAccess();
        v32 = v69;
        v26(v69, v30 + v31, v28);
        v33 = v20;
        v34 = v21;
        v35 = static Date.> infix(_:_:)();
        v36 = *v66;
        (*v66)(v32, v28);
        v36(v27, v28);

        if ((v35 & 1) == 0)
        {
          break;
        }

        v37 = v67;
        v19 = v67 + 1;
        v38 = v72;
        a4 = v75;
        if (v72 != v67)
        {
          goto LABEL_16;
        }

LABEL_17:
        a1 = v38 + 1;
        if (a4 >= v76 || v19 >= v74)
        {
          goto LABEL_19;
        }
      }

      v37 = v75;
      a4 = v75 + 1;
      v38 = v72;
      v19 = v67;
      if (v72 == v75)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v38 = *v37;
      goto LABEL_17;
    }

LABEL_19:
    a2 = a1;
  }

LABEL_38:
  if (a2 != a4 || a2 >= (a4 + ((v76 - a4 + (v76 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v76 - a4));
  }

  return 1;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x20F2E7A20](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x20F2E7A20](v4, v6);
    v15 = MEMORY[0x20F2E7A20](v10, v6);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
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
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v31 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_Si5valuetMd, &_s10Foundation4UUIDV3key_Si5valuetMR);
  MEMORY[0x28223BE20](v41, v4);
  v40 = &v30 - v5;
  v39 = type metadata accessor for UUID();
  result = MEMORY[0x28223BE20](v39, v6);
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v8;
  v10 = 0;
  v42 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v32 = 0;
  v33 = (v14 + 63) >> 6;
  v36 = v8 + 16;
  v34 = v12;
  v35 = v8 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = v42;
    v22 = v37;
    v23 = v38;
    v24 = *(v38 + 16);
    v25 = v39;
    v24(v37, v42[6] + *(v38 + 72) * v20, v39);
    v26 = v20;
    v27 = *(v21[7] + 8 * v20);
    v28 = v40;
    v24(v40, v22, v25);
    *(v28 + *(v41 + 48)) = v27;
    outlined destroy of RaceRouteDataStoring?(v28, &_s10Foundation4UUIDV3key_Si5valuetMd, &_s10Foundation4UUIDV3key_Si5valuetMR);
    result = (*(v23 + 8))(v22, v25);
    v16 = v43;
    if (v27 >= 2)
    {
      *(v31 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v31, v30, v32, v42);
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v33)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v31, v30, v32, v42);
    }

    v19 = v34[v10];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v43 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDVSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB31VKXEfU_10Foundation4UUIDV_SiTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAJSiIsgnndzo_Tf1nc_n0109_s11WorkoutCore0A23ConfigurationDataSourceC4load33_A3D2BA4D279946755716B40EF86B87CELLyyFySaySo9HKWorkoutCG_s5v14_pSgtcfU1_Sb10R27UUIDV3key_Si5valuet_tXEfU0_Tf1nnc_n(void *result, uint64_t a2, void *a3)
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

uint64_t outlined init with copy of RaceRouteDataStoring?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of RaceRouteDataStoring(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v26 = a2;
  v27 = a3;
  v29 = type metadata accessor for IndexSet.Index();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation8IndexSetVGMd, &_ss16IndexingIteratorVy10Foundation8IndexSetVGMR);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v26 - v16;
  (*(v10 + 16))(v13, a1, v9);
  v18 = MEMORY[0x277CC9A28];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x277CC9A28], MEMORY[0x277CC9A48]);
  dispatch thunk of Sequence.makeIterator()();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v18, MEMORY[0x277CC9A50]);
  v19 = (v5 + 8);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v20 = v29;
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v19)(v8, v20);
    if (v21)
    {
      break;
    }

    v22 = dispatch thunk of Collection.subscript.read();
    v24 = *v23;
    v22(v28, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v28[0] = v24;
    closure #1 in WorkoutConfigurationDataSource.remove(at:by:)(v28, v26, v27);
  }

  while (!v3);
  return outlined destroy of RaceRouteDataStoring?(v17, &_ss16IndexingIteratorVy10Foundation8IndexSetVGMd, &_ss16IndexingIteratorVy10Foundation8IndexSetVGMR);
}

uint64_t objectdestroy_24Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(int a1, void *a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_49Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in QueryClient.deleteConfiguration(uuid:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return a2(a1, v7, v8, v2 + v5, v6);
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v49 = a2;
  v46 = type metadata accessor for UUID();
  v3 = *(v46 - 8);
  v5 = MEMORY[0x28223BE20](v46, v4);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v47 = &v37 - v8;
  v39 = a1;
  v9 = *a1;
  v38 = v9 >> 62;
  if (v9 >> 62)
  {
LABEL_67:
    v41 = v9 & 0xFFFFFFFFFFFFFF8;
    v42 = __CocoaSet.count.getter();
  }

  else
  {
    v41 = v9 & 0xFFFFFFFFFFFFFF8;
    v42 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v10 = 0;
  v40 = v9 & 0xC000000000000001;
  v43 = (v3 + 8);
  v44 = (v3 + 16);
  v50 = v9;
  while (1)
  {
    if (v42 == v10)
    {
      if (v38)
      {
        goto LABEL_55;
      }

      return;
    }

    if (v40)
    {
      v11 = MEMORY[0x20F2E7A20](v10, v9);
    }

    else
    {
      if (v10 >= *(v41 + 16))
      {
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
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v11 = *(v9 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v14 = *v44;
    v15 = v46;
    v16 = v47;
    (*v44)(v47, &v12[v13], v46);
    v9 = v48;
    v14(v48, (v49 + v45), v15);
    v17 = static UUID.== infix(_:_:)();
    v18 = *v43;
    (*v43)(v9, v15);
    v18(v16, v15);

    v3 = v10 + 1;
    v19 = __OFADD__(v10, 1);
    if (v17)
    {
      break;
    }

    ++v10;
    v9 = v50;
    if (v19)
    {
      goto LABEL_58;
    }
  }

  v41 = v14;
  if (v19)
  {
    __break(1u);
    return;
  }

  v20 = v50;
  v21 = v41;
  while (1)
  {
    if (v20 >> 62)
    {
      if (v3 == __CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (v3 == *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v50 = v20;
    v42 = v20 & 0xC000000000000001;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x20F2E7A20](v3, v20);
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v3 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v23 = *(v20 + 8 * v3 + 32);
    }

    v9 = v23;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v26 = v46;
    v25 = v47;
    v21(v47, v9 + v24, v46);
    v27 = v48;
    v21(v48, v49 + v45, v26);
    LOBYTE(v24) = static UUID.== infix(_:_:)();
    v18(v27, v26);
    v18(v25, v26);

    if (v24)
    {
      v20 = v50;
      v21 = v41;
      goto LABEL_20;
    }

    if (v10 == v3)
    {
      v20 = v50;
      v21 = v41;
      v22 = __OFADD__(v10++, 1);
      if (v22)
      {
        goto LABEL_62;
      }

      goto LABEL_20;
    }

    v20 = v50;
    v21 = v41;
    if (v42)
    {
      v28 = MEMORY[0x20F2E7A20](v10, v50);
      v29 = MEMORY[0x20F2E7A20](v3, v20);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      v30 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v30)
      {
        goto LABEL_65;
      }

      if (v3 >= v30)
      {
        goto LABEL_66;
      }

      v31 = *(v50 + 32 + 8 * v3);
      v28 = *(v50 + 32 + 8 * v10);
      v29 = v31;
    }

    v32 = v29;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v33 = (v20 >> 62) & 1;
    }

    else
    {
      LODWORD(v33) = 0;
    }

    v9 = v20 & 0xFFFFFFFFFFFFFF8;
    v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
    *((v20 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v32;

    if ((v20 & 0x8000000000000000) == 0 && !v33)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_46;
    }

    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    v9 = v20 & 0xFFFFFFFFFFFFFF8;
    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_46:
    if (v3 >= *(v9 + 16))
    {
      goto LABEL_63;
    }

    v35 = v9 + 8 * v3;
    v36 = *(v35 + 32);
    *(v35 + 32) = v28;

    *v39 = v20;
    v22 = __OFADD__(v10++, 1);
    if (v22)
    {
      goto LABEL_62;
    }

LABEL_20:
    v22 = __OFADD__(v3++, 1);
    if (v22)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_55:
  __CocoaSet.count.getter();
}

id specialized static WorkoutConfigurationDataSource.canonical()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C13ConfigurationCSgGMR);
  v46 = *(v0 - 8);
  v47 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C13ConfigurationCGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v41 - v7;
  v9 = one-time initialization token for shared;
  v10 = *MEMORY[0x277D766F0];
  if (v9 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v11 = static WorkoutCoreInjector.healthStore;
  Client = type metadata accessor for QueryClient();
  v12 = objc_allocWithZone(Client);
  v42 = v11;
  v13 = QueryClient.init(_:)(v42);
  type metadata accessor for UnlockedSinceBootMonitor();
  v14 = swift_allocObject();
  *(v14 + 16) = -1;
  *(v14 + 32) = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for backgroundAssertionManager != -1)
  {
    swift_once();
  }

  v48 = _s11WorkoutCore0A28ConfigurationOccurrenceStoreC11queryClient24unlockedSinceBootMonitor26backgroundAssertionManager48applicationSignificantTimeChangeNotificationName21activityMoveModeBlockAcA05QueryG8Protocol_p_AA08UnlockedijkZ0_pAA010BackgroundmnZ0_pSo014NSNotificationT0aSo010HKActivityvW0VyctcfCTfq4eeennn_nAA0yG0C_AA010BackgroundmN0CAA08UnlockedijK0CTt4g5(v13, v14, static WorkoutCoreInjector.backgroundAssertionManager, v10, closure #1 in WorkoutConfigurationOccurrenceStore.init(applicationSignificantTimeChangeNotificationName:), 0);
  if (one-time initialization token for outdoorRun != -1)
  {
    swift_once();
  }

  v15 = static FIUIWorkoutActivityType.outdoorRun;
  v45 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v16 = type metadata accessor for WorkoutConfigurationDataSource(0);
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v44 = v16;
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__workoutConfigurations;
  v19 = MEMORY[0x277D84F90];
  *&v52 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  Published.init(initialValue:)();
  v20 = *(v5 + 32);
  v20(&v17[v18], v8, v4);
  v21 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__recentlyAddedWorkoutConfiguration;
  *&v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
  Published.init(initialValue:)();
  (*(v46 + 32))(&v17[v21], v3, v47);
  v22 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource__frequentWorkouts;
  *&v52 = v19;
  Published.init(initialValue:)();
  v20(&v17[v22], v8, v4);
  v23 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_queryClient;
  v24 = objc_allocWithZone(Client);
  *&v17[v23] = QueryClient.init(_:)(v42);
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_lastWorkout] = 0;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_currentLocation] = 0;
  v25 = OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_nanoSyncControl;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v26 = static WorkoutCoreInjector.nanoSyncControl;
  *&v17[v25] = static WorkoutCoreInjector.nanoSyncControl;
  v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_loaded] = 0;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityType] = v15;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_activityMoveMode] = 1;
  v27 = v48;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_occurrenceStore] = v48;
  outlined init with copy of RaceRouteDataStoring?(v55, &v50);
  v28 = v15;
  if (v51)
  {
    outlined init with take of RaceRouteDataStoring(&v50, &v52);
    v29 = v26;
    v30 = v15;
    v31 = v27;
    v32 = v45;
  }

  else
  {
    v33 = type metadata accessor for RaceRouteDataStore();
    v34 = swift_allocObject();
    v32 = v45;
    *(v34 + 24) = v45;
    v35 = objc_allocWithZone(MEMORY[0x277CCD868]);
    v36 = v26;
    v37 = v28;
    v38 = v27;
    *(v34 + 16) = [v35 initWithHealthStore_];
    v53 = v33;
    v54 = &protocol witness table for RaceRouteDataStore;
    *&v52 = v34;
    if (v51)
    {
      outlined destroy of RaceRouteDataStoring?(&v50, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
    }
  }

  outlined init with take of RaceRouteDataStoring(&v52, &v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_raceRouteDataStore]);
  v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_usePersistence] = 1;
  *&v17[OBJC_IVAR____TtC11WorkoutCore30WorkoutConfigurationDataSource_healthStore] = v32;
  v49.receiver = v17;
  v49.super_class = v44;
  v39 = objc_msgSendSuper2(&v49, sel_init);

  outlined destroy of RaceRouteDataStoring?(v55, &_s11WorkoutCore20RaceRouteDataStoring_pSgMd, &_s11WorkoutCore20RaceRouteDataStoring_pSgMR);
  return v39;
}