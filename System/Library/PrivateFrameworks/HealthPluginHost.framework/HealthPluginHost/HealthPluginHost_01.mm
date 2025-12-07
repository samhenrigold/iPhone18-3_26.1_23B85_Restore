void sub_10001DA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10001DB38()
{
  _StringGuts.grow(_:)(62);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_getObjectType();
  sub_100020818();
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x8000000100032EA0;
  v4._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v4);
  v5 = *(v0 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle);
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6E696F676E6F202CLL;
  v11._object = 0xEF203A6B726F5767;
  String.append(_:)(v11);
  type metadata accessor for CancellableProgressList();
  sub_100020860(&qword_1000421E8, &type metadata accessor for CancellableProgressList, &protocol conformance descriptor for CancellableProgressList);

  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

uint64_t sub_10001DD44()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    v13[1] = ObjectType;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_100004364(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s]: debuggingInfoRequested()", v7, 0xCu);
    sub_10000493C(v8);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10001E000(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E078(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  GeneratorPipelineManager.store.getter();
  sub_10000AA10(v11, v11[3]);
  v5 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000207CC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1000207D8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E580;
  aBlock[3] = &unk_10003E030;
  v8 = _Block_copy(aBlock);

  [v5 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_10000493C(v11);
  }

  return result;
}

uint64_t sub_10001E248(uint64_t a1, Swift::OpaquePointer a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  GeneratorPipelineManager.store.getter();
  sub_10000AA10(v26, v27);
  v9 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  NSManagedObjectContext.queue_createProfiles(for:)(a2);

  sub_10000493C(v26);
  GeneratorPipelineManager.store.getter();
  sub_10000AA10(v26, v27);
  v10 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  v25 = 0;
  v11 = [v10 save:&v25];

  v12 = v25;
  result = sub_10000493C(v26);
  if (!v11)
  {
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.generation.getter();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26[0] = a3;
      *v17 = 136446466;
      swift_getMetatypeMetadata();
      v18 = String.init<A>(describing:)();
      v20 = sub_100004364(v18, v19, &v25);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v26[0] = v14;
      swift_errorRetain();
      sub_100020D30(0, &qword_100041AD8, &protocol descriptor for Error, 1);
      v21 = String.init<A>(describing:)();
      v23 = sub_100004364(v21, v22, &v25);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s]: Unable to update stored profiles: %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_10001E5A8()
{
  v0 = FeedItemGeneratorPipelineManager.deinit();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_10001E5E0(uint64_t a1, void **a2)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v93 = *(v4 - 8);
  v92 = *(v93 + 64);
  v5 = v4 - 8;
  v69 = v4 - 8;
  __chkstk_darwin(v4 - 8);
  v90 = &type metadata accessor for OS_dispatch_queue.SchedulerOptions;
  v91 = &v63 - v6;
  v96 = &type metadata accessor for Optional;
  sub_10001DA6C(0, &qword_1000422C8, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v95 = &v63 - v8;
  sub_100021260(0, &qword_1000422D0, &type metadata accessor for Publishers.TimeGroupingStrategy);
  v72 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v63 - v11;
  sub_1000223B4(0, &qword_1000422D8, sub_100022124, sub_1000221F8);
  v74 = v13;
  v80 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = &v63 - v14;
  sub_10002222C(0);
  v78 = v15;
  v81 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022380(0);
  v77 = v18;
  v79 = *(v18 - 8);
  __chkstk_darwin(v18);
  v70 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022460(0);
  v82 = v20;
  v87 = *(v20 - 8);
  __chkstk_darwin(v20);
  v71 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000224DC(0);
  v23 = *(v22 - 8);
  v84 = v22;
  v85 = v23;
  __chkstk_darwin(v22);
  v76 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021148(0, &qword_100042330, sub_1000224DC, sub_100022558, &type metadata accessor for Publishers.IgnoreOutput);
  v83 = v25;
  v86 = *(v25 - 8);
  __chkstk_darwin(v25);
  v73 = &v63 - v26;
  sub_10002258C(0);
  v28 = *(v27 - 8);
  v88 = v27;
  v89 = v28;
  __chkstk_darwin(v27);
  v75 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  sub_100022124(0);
  sub_1000221F8();
  Publisher.map<A>(_:)();
  sub_100022708(0);
  v31 = *(v30 + 48);
  v32 = a2;
  v65 = a2;
  v33 = *a2;
  *v12 = *a2;
  v34 = *(v5 + 44);
  v35 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v35 - 8) + 16))(&v12[v31], v32 + v34, v35);
  v36 = v72;
  (*(v10 + 104))(v12, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v72);
  v66 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v37 = *(v66 - 8);
  v67 = *(v37 + 56);
  v68 = v37 + 56;
  v38 = v95;
  v67(v95, 1, 1, v66);
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  sub_1000222F8();
  sub_1000212DC();
  v39 = v33;
  v40 = v17;
  v41 = v74;
  v42 = v64;
  Publisher.collect<A>(_:options:)();
  v43 = v38;
  v44 = v90;
  sub_100022788(v43, &qword_1000422C8, v90, v96, sub_10001DA6C);
  (*(v10 + 8))(v12, v36);
  (*(v80 + 8))(v42, v41);
  sub_10002242C();
  v45 = v70;
  v46 = v78;
  Publisher.map<A>(_:)();
  (*(v81 + 8))(v40, v46);
  sub_1000224A8();
  v47 = v71;
  v48 = v77;
  Publisher.first(where:)();
  (*(v79 + 8))(v45, v48);
  v49 = v91;
  sub_1000227E8(v65, v91);
  v50 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v51 = (v92 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  sub_100022868(v49, v52 + v50);
  *(v52 + v51) = v94;
  sub_100022524();
  v53 = v82;
  v54 = v76;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v87 + 8))(v47, v53);
  sub_100022558();
  v55 = v73;
  v56 = v84;
  Publisher.ignoreOutput()();
  (*(v85 + 8))(v54, v56);
  v57 = v95;
  v67(v95, 1, 1, v66);
  sub_10002266C();
  v58 = v75;
  v59 = v83;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_100022788(v57, &qword_1000422C8, v44, v96, sub_10001DA6C);
  (*(v86 + 8))(v55, v59);
  sub_100020860(&qword_100042358, sub_10002258C, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v60 = v88;
  v61 = Publisher.eraseToAnyPublisher()();
  (*(v89 + 8))(v58, v60);
  return v61;
}

void sub_10001F0C8()
{
  v0 = sub_10002371C();
  if (swift_isClassType() && v0)
  {
    sub_100023774(0, &qword_100042398, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  }

  else
  {
    sub_10001DA6C(0, &qword_100042390, sub_10002371C, &type metadata accessor for _ContiguousArrayStorage);
  }
}

char *sub_10001F168(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001F188(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F4C8(a1, a2, a3, *v3, &qword_100042258, sub_100021114, sub_100021114);
  *v3 = result;
  return result;
}

void *sub_10001F1D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F4C8(a1, a2, a3, *v3, &qword_100042260, sub_1000211C8, sub_1000211C8);
  *v3 = result;
  return result;
}

char *sub_10001F228(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F3BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001F248(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F4C8(a1, a2, a3, *v3, &qword_100042228, &type metadata accessor for ModelTrainingEvent, &type metadata accessor for ModelTrainingEvent);
  *v3 = result;
  return result;
}

char *sub_10001F298(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100023774(0, &qword_100042210, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001F3BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100023774(0, &qword_100042230, &type metadata for Feed.Kind, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_10001F4C8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001DA6C(0, a5, a6, &type metadata accessor for _ContiguousArrayStorage);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_10001F6BC(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10001F7C4(v1, v2);
}

unint64_t sub_10001F780(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001F948(a1, v4);
}

unint64_t sub_10001F7C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000001ALL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "foregroundCompletion";
      }

      else
      {
        v5 = 0xD000000000000016;
        v6 = "initialUnlockFeedItemsOnly";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000014;
      v8 = *(*(v2 + 48) + v4) ? v6 : &unk_1000323F0;
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000001ALL : 0xD000000000000016;
        v10 = a1 == 1 ? "foregroundCompletion" : "initialUnlockFeedItemsOnly";
      }

      else
      {
        v9 = 0xD000000000000014;
        v10 = &unk_1000323F0;
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001F948(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100020FE8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100020F94(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10001FA10(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(char *, unint64_t, uint64_t))
{
  v85 = a7;
  v88 = a6;
  v94 = a4;
  v90 = a3;
  v93 = a10;
  sub_1000211C8(0);
  v74 = v13;
  v72 = *(v13 - 8);
  __chkstk_darwin(v13);
  v73 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PipelineProviderWrappers();
  v86 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021114(0);
  v17 = *(v16 - 8);
  v95 = v16;
  v96 = v17;
  __chkstk_darwin(v16);
  v75 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchTimeInterval();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000078E0(0);
  __chkstk_darwin(v20 - 8);
  v84 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000798C(0);
  v27 = v26;
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101[3] = a9;
  v101[4] = v93;
  v31 = sub_100020768(v101);
  (*(*(a9 - 8) + 16))(v31, v94, a9);
  v89 = a1;
  v32 = GenerationWorkRequest.pluginIdentifierSetToRun.getter();
  sub_1000213EC(v32);

  v33 = type metadata accessor for BundleFeedItemGenerationPluginInfo();
  v34 = sub_100020860(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo, &protocol conformance descriptor for BundleFeedItemGenerationPluginInfo);
  v82 = v33;
  v80 = v34;
  v35 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  v36 = objc_allocWithZone(HKProfileStore);
  v83 = a2;
  v37 = [v36 initWithHealthStore:a2];
  HKProfileStore.profileIdentifiersPublisher.getter();
  sub_100020860(&qword_100041D08, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher, &protocol conformance descriptor for HKProfileStore.ProfileIdentifiersPublisher);
  Publisher<>.mapToSourceProfiles(includeAgnostic:)();
  (*(v23 + 8))(v25, v22);
  sub_100020860(&qword_100041D18, sub_10000798C, &protocol conformance descriptor for Publishers.Map<A, B>);
  v76 = Publisher.eraseToAnyPublisher()();

  (*(v28 + 8))(v30, v27);
  sub_100007A94(v90, &v100);
  v38 = *(v35 + 16);
  v87 = a5;
  v81 = v35;
  if (v38)
  {
    v99[0] = _swiftEmptyArrayStorage;
    sub_10001F1D8(0, v38, 0);
    v39 = v99[0];
    v93 = *(v86 + 16);
    v40 = v35 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v92 = *(v86 + 72);
    v94 = (v86 + 16);
    v41 = (v86 + 8);
    v42 = v72;
    v91 = (v72 + 32);
    v43 = v74;
    v44 = v73;
    do
    {
      v46 = v97;
      v45 = v98;
      (v93)(v97, v40, v98);
      PipelineProviderWrappers.feedItem.getter();
      (*v41)(v46, v45);
      v99[0] = v39;
      v48 = *(v39 + 16);
      v47 = *(v39 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_10001F1D8((v47 > 1), v48 + 1, 1);
        v39 = v99[0];
      }

      *(v39 + 16) = v48 + 1;
      (*(v42 + 32))(v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v48, v44, v43);
      v40 += v92;
      --v38;
    }

    while (v38);
  }

  type metadata accessor for FeedItemGeneratorPipelineManager();
  sub_100007A94(v101, v99);

  v49 = v83;
  v92 = GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v50 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  sub_100011944(v50);

  v51 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  if ((GenerationWorkRequest.commitUrgentTransaction.getter() & 1) == 0)
  {
    v51 = v81;
  }

  sub_100007A94(v90, &v100);
  v52 = *(v51 + 16);
  if (v52)
  {
    v91 = v49;
    v99[0] = _swiftEmptyArrayStorage;
    sub_10001F188(0, v52, 0);
    v53 = v99[0];
    v94 = *(v86 + 16);
    v54 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v90 = v51;
    v55 = v51 + v54;
    v93 = *(v86 + 72);
    v56 = (v86 + 8);
    v57 = v75;
    do
    {
      v59 = v97;
      v58 = v98;
      v94(v97, v55, v98);
      PipelineProviderWrappers.sharableModel.getter();
      (*v56)(v59, v58);
      v99[0] = v53;
      v61 = *(v53 + 16);
      v60 = *(v53 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_10001F188((v60 > 1), v61 + 1, 1);
        v53 = v99[0];
      }

      *(v53 + 16) = v61 + 1;
      (*(v96 + 32))(v53 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v61, v57, v95);
      v55 += v93;
      --v52;
    }

    while (v52);

    v49 = v91;
  }

  else
  {
  }

  type metadata accessor for SharableModelGeneratorPipelineManager();
  sub_100007A94(v101, v99);

  v62 = v49;
  GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  dispatch thunk of CountryOracle.currentCountry()();
  v63 = GenerationWorkRequest.generationPhases.getter();
  v64 = v63;
  v65 = *(v63 + 16);
  if (!v65)
  {
    goto LABEL_18;
  }

  v66 = sub_1000259FC(*(v63 + 16), 0);
  v67 = *(type metadata accessor for GenerationPhase() - 8);
  v68 = sub_1000297CC(&v100, &v66[(*(v67 + 80) + 32) & ~*(v67 + 80)], v65, v64);
  sub_100007AF8(v100);
  if (v68 != v65)
  {
    __break(1u);
LABEL_18:
  }

  type metadata accessor for GeneratorPipelineGenerationOperation();
  GenerationWorkRequest.commitUrgentTransaction.getter();
  v69 = v78;
  *v78 = 150;
  (*(v77 + 104))(v69, enum case for DispatchTimeInterval.seconds(_:), v79);
  v70 = GeneratorPipelineGenerationOperation.__allocating_init(feedItemManager:sharableModelManager:sourceProfiles:country:generationPhases:commitAsUrgent:isLaunchGeneration:timeoutInterval:)();
  sub_100020860(&qword_100041D20, &type metadata accessor for GeneratorPipelineGenerationOperation, &protocol conformance descriptor for GeneratorPipelineGenerationOperation);
  sub_10000493C(v101);
  return v70;
}

uint64_t sub_10002059C(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26[3] = a12;
  v26[4] = a14;
  v17 = sub_100020768(v26);
  (*(*(a12 - 8) + 32))(v17, a8, a12);
  v25[3] = a11;
  v25[4] = a13;
  v18 = sub_100020768(v25);
  (*(*(a11 - 8) + 32))(v18, a9, a11);
  type metadata accessor for HealthPluginHostService.JustPrimarySnippetsFeedItemGeneratorPipelineManager(0);
  swift_allocObject();
  sub_100007A94(a1, v24);
  sub_100007A94(a5, v23);
  sub_100007A94(v26, v22);
  sub_100007A94(v25, v21);
  v19 = FeedItemGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)();
  sub_10000493C(a5);
  sub_10000493C(a1);
  sub_10000493C(v25);
  sub_10000493C(v26);
  return v19;
}

uint64_t sub_100020718(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *sub_100020768(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100020800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100020818()
{
  result = qword_1000421E0;
  if (!qword_1000421E0)
  {
    type metadata accessor for HealthPluginHostService(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000421E0);
  }

  return result;
}

uint64_t sub_100020860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000208B4()
{
  result = qword_1000427D0;
  if (!qword_1000427D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000427D0);
  }

  return result;
}

void sub_100020910(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_100020D30(255, a3, a4, a5 & 1);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100020990()
{
  v1 = type metadata accessor for GenerationWorkRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

void *sub_100020B18(uint64_t (*a1)(uint64_t), const char *a2, ...)
{
  v5 = *(type metadata accessor for GenerationWorkRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  return sub_10001BD14(v2 + v6, *(v2 + v7), v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

void *sub_100020C2C(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerationWorkRequest() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10001BF6C(a1, v1 + v4, v6, v7);
}

uint64_t sub_100020CD4(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100020D30(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100020DB0()
{
  v1 = *(type metadata accessor for TransactionRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v3);
  v10 = v0 + v6;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v0 + v7);

  return sub_10001B134(v8, v0 + v2, v9, v0 + v5, v11, v12, v13);
}

uint64_t sub_100020ECC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  [*(v0 + 16) cancel];
  [v1 cancel];
  return v2(0);
}

uint64_t sub_100020F24(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_100023774(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100021044(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_100021098(uint64_t a1)
{
  if (!qword_100042238)
  {
    sub_100023774(255, &qword_100041D00, &type metadata for SourceProfile, &type metadata accessor for Array);
    v1 = type metadata accessor for Just();
    if (!v2)
    {
      atomic_store(v1, &qword_100042238);
    }
  }
}

void sub_100021148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1000211FC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100004210(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100021254(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_100021260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    v7 = sub_1000212DC();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1000212DC()
{
  result = qword_100042278;
  if (!qword_100042278)
  {
    sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042278);
  }

  return result;
}

unint64_t sub_100021378()
{
  result = qword_1000422A0;
  if (!qword_1000422A0)
  {
    sub_100022144(255, &qword_100042288, &type metadata accessor for CurrentValueSubject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000422A0);
  }

  return result;
}

char *sub_1000213EC(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v7 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  if (!a1 || !*(a1 + 16))
  {
    v1 = sub_100011944(v7);
LABEL_30:

    return v1;
  }

  v52 = v3;
  v53 = v6;
  v51 = v4;
  v9 = v7 + 64;
  v8 = *(v7 + 64);
  v57 = _swiftEmptyArrayStorage;
  v10 = 1 << *(v7 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v55 = a1 + 56;

  v14 = 0;
  for (i = v7; v12; v7 = i)
  {
LABEL_13:
    while (1)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v1 = *(*(v7 + 56) + ((v14 << 9) | (8 * v16)));

      v17 = dispatch thunk of BundleFeedItemGenerationPluginInfo.bundleIdentifier.getter();
      v19 = v18;
      if (*(a1 + 16))
      {
        v20 = v17;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v21 = Hasher._finalize()();
        v22 = -1 << *(a1 + 32);
        v23 = v21 & ~v22;
        if ((*(v55 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          break;
        }
      }

LABEL_8:

      v7 = i;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v24 = ~v22;
    while (1)
    {
      v25 = (*(a1 + 48) + 16 * v23);
      v26 = *v25 == v20 && v25[1] == v19;
      if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v55 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (1)
  {
LABEL_9:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_13;
    }
  }

  v1 = v57;
  if ((v57 & 0x8000000000000000) == 0 && (v57 & 0x4000000000000000) == 0)
  {
    v27 = *(v57 + 16);
    goto LABEL_29;
  }

LABEL_46:
  v27 = _CocoaArrayWrapper.endIndex.getter();
LABEL_29:
  if (v27 == *(a1 + 16))
  {
    goto LABEL_30;
  }

  v29 = v53;
  static Logger.daemon.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v30, v31))
  {

    (*(v51 + 8))(v29, v52);
    return v1;
  }

  v32 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v56[0] = v55;
  *v32 = 136315394;
  v33 = Set.description.getter();
  v35 = sub_100004364(v33, v34, v56);

  *(v32 + 4) = v35;
  *(v32 + 12) = 2080;
  if (!v27)
  {
LABEL_44:
    v44 = Array.description.getter();
    v46 = v45;

    v47 = sub_100004364(v44, v46, v56);

    *(v32 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v30, v31, "Not all plugins found with identifiers %s, but found %s", v32, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v53, v52);
    return v1;
  }

  v48 = v32;
  v49 = v31;
  v50 = v30;
  v57 = _swiftEmptyArrayStorage;
  result = sub_10001F168(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v57;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v38 = dispatch thunk of BundleFeedItemGenerationPluginInfo.bundleIdentifier.getter();
      v40 = v39;

      v57 = v37;
      v42 = v37[2];
      v41 = v37[3];
      if (v42 >= v41 >> 1)
      {
        sub_10001F168((v41 > 1), v42 + 1, 1);
        v37 = v57;
      }

      ++v36;
      v37[2] = v42 + 1;
      v43 = &v37[2 * v42];
      v43[4] = v38;
      v43[5] = v40;
    }

    while (v27 != v36);
    v30 = v50;
    LOBYTE(v31) = v49;
    v32 = v48;
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

id sub_100021968(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = v4;
  v40 = a4;
  v41 = a3;
  v38 = a1;
  v39 = a2;
  swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = qword_1000425B0;
  sub_10002204C(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *&v5[v13] = v14;
  static Logger.personalization.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v17 = 136446466;
    v18 = sub_10002C4F0();
    v37 = v5;
    v20 = sub_100004364(v18, v19, &v42);
    v5 = v37;

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100004364(0xD000000000000078, 0x8000000100033090, &v42);
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s]: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v7 + 8);
  v21(v12, v6);
  *&v5[qword_100042590] = v38;

  *&v5[qword_1000425A8] = sub_10001E5E0(v39, v41);
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  sub_100020860(&qword_1000422C0, type metadata accessor for SummaryTabForegroundFeedPopulationOperation, &unk_100032150);
  sub_1000212DC();
  *&v5[qword_1000425A0] = static FeedPopulationListenerSupport.makeThrottledFeedItemSubmissionPublisher<A>(config:)();
  static Logger.analytics.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = sub_10002C4F0();
    v39 = v6;
    v27 = v10;
    v28 = sub_100004364(v25, v26, &v42);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100004364(0xD00000000000001ALL, 0x8000000100033070, &v42);
    _os_log_impl(&_mh_execute_header, v22, v23, "[%s]: Initialized %s", v24, 0x16u);
    swift_arrayDestroy();

    v29 = v27;
    v30 = v39;
  }

  else
  {

    v29 = v10;
    v30 = v6;
  }

  v21(v29, v30);
  type metadata accessor for AppSessionAnalyticsManager();
  swift_allocObject();
  *&v5[qword_100042598] = AppSessionAnalyticsManager.init()();
  v31 = type metadata accessor for SummaryTabForegroundFeedPopulationOperation(0);
  v43.receiver = v5;
  v43.super_class = v31;
  v32 = objc_msgSendSuper2(&v43, "init");
  sub_100021260(0, &qword_100042270, &type metadata accessor for FeedPopulationListenerSchedulerConfiguration);
  (*(*(v33 - 8) + 8))(v40, v33);
  sub_1000220AC(v41);
  return v32;
}

uint64_t sub_100021EC8()
{
  v1 = *(type metadata accessor for TransactionRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100014C3C(v3, v0 + v2, v4);
}

id sub_100021F5C()
{
  v1 = *(type metadata accessor for TransactionRecord() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_100014D14(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_10002204C(uint64_t a1)
{
  if (!qword_1000422B8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = type metadata accessor for ManagedBuffer();
    if (!v2)
    {
      atomic_store(v1, &qword_1000422B8);
    }
  }
}

uint64_t sub_1000220AC(uint64_t a1)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100022144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *, void *))
{
  if (!*a2)
  {
    sub_100021148(255, &qword_100042290, sub_100007538, sub_100021344, &type metadata accessor for GeneratorPipelineManager.GenerationState);
    v7 = a3(a1, v6, &type metadata for Never, &protocol witness table for Never);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10002222C(uint64_t a1)
{
  if (!qword_1000422F0)
  {
    sub_1000223B4(255, &qword_1000422D8, sub_100022124, sub_1000221F8);
    sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    sub_1000222F8();
    sub_1000212DC();
    v1 = type metadata accessor for Publishers.CollectByTime();
    if (!v2)
    {
      atomic_store(v1, &qword_1000422F0);
    }
  }
}

unint64_t sub_1000222F8()
{
  result = qword_1000422F8;
  if (!qword_1000422F8)
  {
    sub_1000223B4(255, &qword_1000422D8, sub_100022124, sub_1000221F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000422F8);
  }

  return result;
}

void sub_1000223B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for Publishers.Map();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_10002258C(uint64_t a1)
{
  if (!qword_100042340)
  {
    sub_100021148(255, &qword_100042330, sub_1000224DC, sub_100022558, &type metadata accessor for Publishers.IgnoreOutput);
    sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    sub_10002266C();
    sub_1000212DC();
    v1 = type metadata accessor for Publishers.Timeout();
    if (!v2)
    {
      atomic_store(v1, &qword_100042340);
    }
  }
}

unint64_t sub_10002266C()
{
  result = qword_100042348;
  if (!qword_100042348)
  {
    sub_100021148(255, &qword_100042330, sub_1000224DC, sub_100022558, &type metadata accessor for Publishers.IgnoreOutput);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042348);
  }

  return result;
}

void sub_100022708(uint64_t a1)
{
  if (!qword_100042350)
  {
    sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100042350);
    }
  }
}

uint64_t sub_100022788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1000227E8(uint64_t a1, uint64_t a2)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022868(uint64_t a1, uint64_t a2)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000228E8(unsigned __int8 *a1)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *a1;

  return sub_10001F0BC(v7, v1 + v5, v6);
}

uint64_t sub_1000229A0(uint64_t a1, uint64_t a2, void (**a3)(void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = a3;
  _Block_copy(a3);

  dispatch thunk of UnfairLock.lock()();
  v9 = sub_100024BF0();
  dispatch thunk of UnfairLock.unlock()();

  if (v9)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v27 = _swiftEmptyArrayStorage;
      sub_10001F228(0, v10, 0);
      v11 = v27;
      v12 = (a1 + 40);
      while (1)
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        swift_bridgeObjectRetain_n();
        v15 = Feed.Kind.init(rawValue:)();
        if (v15 == 6)
        {
          break;
        }

        v16 = v15;

        v27 = v11;
        v18 = v11[2];
        v17 = v11[3];
        if (v18 >= v17 >> 1)
        {
          sub_10001F228((v17 > 1), v18 + 1, 1);
          v11 = v27;
        }

        v11[2] = v18 + 1;
        *(v11 + v18 + 32) = v16;
        v12 += 2;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }

      v26[1] = 0;
      v26[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v23._object = 0x8000000100032FD0;
      v23._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v23);
      v24._countAndFlagsBits = v14;
      v24._object = v13;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 0xD00000000000001ELL;
      v25._object = 0x8000000100032FF0;
      String.append(_:)(v25);

      _Block_release(a3);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      dispatch thunk of BaseFeedPopulationManager.deleteFeed(feedKinds:completion:)();
    }
  }

  else
  {
    static Logger.personalization.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to resolve FeedPopulationManager for personalization analytics", v22, 2u);
    }

    (*(v6 + 8))(v8, v5);
    a3[2](a3);
  }

  return result;
}

uint64_t sub_100022D40(uint64_t (*a1)(void, void))
{
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = v3;
    v9 = v8;
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100004364(v11, v12, &v20);
    v18 = v2;
    v14 = a1;
    v15 = v13;

    *(v9 + 4) = v15;
    a1 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] Handle journaled sharing entries by scheduling background generation", v9, 0xCu);
    sub_10000493C(v10);

    (*(v19 + 8))(v5, v18);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  sub_10001C3A8(1);
  return a1(1, 0);
}

uint64_t sub_100022F5C(uint64_t a1)
{
  v31 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v6 = v5;
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();
  sub_1000227E8(a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v6;
    v16 = v15;
    v28 = swift_slowAlloc();
    v32 = v28;
    *v16 = 136446466;
    v17 = sub_10002C4F0();
    v30 = v9;
    v19 = sub_100004364(v17, v18, &v32);
    v29 = v10;
    v20 = v31;
    v21 = v19;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    (*(v2 + 16))(v4, &v8[*(v27 + 36)], v20);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_1000220AC(v8);
    v25 = sub_100004364(v22, v24, &v32);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s]: Foreground spinner picking ending because %{public}s seconds have passed without a Highlights generator", v16, 0x16u);
    swift_arrayDestroy();

    return (*(v29 + 8))(v12, v30);
  }

  else
  {

    sub_1000220AC(v8);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1000232A4(uint64_t a1)
{
  sub_100007100(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023350()
{
  v1 = type metadata accessor for TransactionRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100023454(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TransactionRecord() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = (v1 + v4);
  v8 = *(v1 + v5);
  v9 = *v7;
  v10 = v7[1];

  return a1(v6, v1 + v3, v9, v10, v8);
}

uint64_t sub_100023508()
{
  v1 = type metadata accessor for TransactionRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000235E8(uint64_t a1)
{
  v3 = *(type metadata accessor for TransactionRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_100014CA8(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100023680()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10002371C()
{
  result = qword_100042388;
  if (!qword_100042388)
  {
    sub_100004210(255, &qword_100041D38, NSObject_ptr);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100042388);
  }

  return result;
}

void sub_100023774(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100023804()
{
  v1 = *(v0 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_1000238C4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v70 = *v3;
  v7 = type metadata accessor for Logger();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v65[-v11];
  dispatch thunk of UnfairLock.lock()();
  v13 = sub_100024BF0();
  dispatch thunk of UnfairLock.unlock()();
  if (!v13)
  {
LABEL_7:
    static Logger.general.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v74 = v68;
      *v24 = 136315650;
      v73 = v70;
      swift_getMetatypeMetadata();
      v25 = String.init<A>(describing:)();
      v27 = sub_100004364(v25, v26, &v74);
      v69 = a3;
      v28 = v27;

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v73 = v4[2];
      sub_100025C28(0, &qword_100042540, &type metadata accessor for ProfileDashboardsFeedPopulationListener, &type metadata accessor for Optional);
      v29 = a2;

      v30 = String.init<A>(describing:)();
      v32 = sub_100004364(v30, v31, &v74);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2080;
      dispatch thunk of UnfairLock.lock()();
      v33 = sub_100024BF0();
      dispatch thunk of UnfairLock.unlock()();
      v73 = v33;
      a2 = v29;
      sub_100025C28(0, &qword_100042548, &type metadata accessor for SummaryTabFeedPopulationManager, &type metadata accessor for Optional);
      v34 = String.init<A>(describing:)();
      v36 = sub_100004364(v34, v35, &v74);

      *(v24 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s]: Cannot pick because dependencies unavailable: profileDashboardsFeedPopulationListener=%s, summaryTabFeedPopulationManager=%s", v24, 0x20u);
      swift_arrayDestroy();
    }

    v37 = (*(v71 + 8))(v10, v72);
    return a2(v37);
  }

  v14 = v3[2];
  if (!v14)
  {
LABEL_6:

    goto LABEL_7;
  }

  v15 = dispatch thunk of SummaryTabFeedPopulationManager.managedFeedKinds.getter();
  v16 = sub_100029FC8(v15);

  v18 = sub_100029FC8(v17);

  v19 = sub_100029120(v18, v16);

  v20 = *(v19 + 16);
  if (v20)
  {
    v10 = sub_100025B1C(*(v19 + 16), 0);
    v21 = sub_100029A70(&v73, v10 + 32, v20, v19);
    sub_100007AF8(v73);
    if (v21 != v20)
    {
      __break(1u);
      goto LABEL_6;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  v39 = dispatch thunk of ProfileDashboardsFeedPopulationListener.managedFeedKinds.getter();
  v40 = sub_100029FC8(v39);

  v42 = sub_100029FC8(v41);

  v43 = sub_100029120(v42, v40);

  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_14;
  }

  v45 = sub_100025B1C(*(v43 + 16), 0);
  v46 = sub_100029A70(&v73, v45 + 32, v44, v43);
  sub_100007AF8(v73);
  if (v46 != v44)
  {
    __break(1u);
LABEL_14:

    v45 = _swiftEmptyArrayStorage;
  }

  v48 = sub_100029FC8(v47);

  v73 = v10;

  sub_1000286F4(v49);
  v50 = sub_1000287E0(v73, v48);

  if (v50[2])
  {
    static Logger.personalization.getter();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v66 = v52;
      v54 = v53;
      v67 = swift_slowAlloc();
      v74 = v67;
      *v54 = 136315394;
      v73 = v70;
      swift_getMetatypeMetadata();
      v55 = String.init<A>(describing:)();
      v69 = a3;
      v57 = sub_100004364(v55, v56, &v74);
      v68 = a2;
      v58 = v57;

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      sub_10002A050();
      v59 = Set.description.getter();
      v61 = v60;

      v62 = v59;
      a3 = v69;
      v63 = sub_100004364(v62, v61, &v74);
      a2 = v68;

      *(v54 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v51, v66, "[%s]: We've been asked to populate a feed that we don't know how to: %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v71 + 8))(v12, v72);
  }

  else
  {
  }

  v64 = swift_allocObject();
  v64[2] = v10;
  v64[3] = v14;
  v64[4] = v45;
  v64[5] = v13;
  v64[6] = a2;
  v64[7] = a3;
  v64[8] = v70;

  dispatch thunk of BaseFeedPopulationManager.populateFeed(feedKinds:completion:)();
}

uint64_t sub_10002401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a5;
  v35 = a7;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = a2;
    v36[0] = v19;
    *v18 = 136315394;
    v36[1] = v35;
    swift_getMetatypeMetadata();
    v20 = String.init<A>(describing:)();
    v32 = a3;
    v22 = sub_100004364(v20, v21, v36);
    v31 = a4;
    v23 = v22;

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = Array.description.getter();
    v26 = sub_100004364(v24, v25, v36);
    a3 = v32;

    *(v18 + 14) = v26;
    a4 = v31;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: populateFeedsIfAvailable() finished summary tab feedKinds: %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v14, v30);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v27 = swift_allocObject();
  v27[2] = a3;
  v27[3] = a4;
  v28 = v35;
  v27[4] = v34;
  v27[5] = a6;
  v27[6] = v28;

  dispatch thunk of ProfileDashboardsFeedPopulationListener.populateAllFeeds(feedKinds:completion:)();
}

uint64_t sub_1000242DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v7;
    v14 = v13;
    v24 = swift_slowAlloc();
    v26[0] = v24;
    v26[1] = a5;
    *v14 = 136315394;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = a3;
    v18 = sub_100004364(v15, v16, v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = Array.description.getter();
    v21 = sub_100004364(v19, v20, v26);
    a3 = v17;

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: populateFeedsIfAvailable() finished profile dashboard feedKinds: %s", v14, 0x16u);
    swift_arrayDestroy();

    v22 = (*(v8 + 8))(v10, v25);
  }

  else
  {

    v22 = (*(v8 + 8))(v10, v7);
  }

  return a3(v22);
}

id *sub_10002451C(uint64_t a1)
{
  type metadata accessor for FeedPopulationManagerOracle();
  DebuggingResponder.deregisterForDebuggingRequests()();

  swift_weakDestroy();

  return v1;
}

uint64_t sub_100024574(uint64_t a1)
{
  sub_10002451C(a1);

  return _swift_deallocClassInstance(v1, 72, 7);
}

uint64_t sub_1000245CC(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  sub_100007A94(a1, v26);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = a2;
    v13 = v12;
    v25 = swift_slowAlloc();
    *v13 = 136315394;
    v24[0] = v5;
    swift_getMetatypeMetadata();
    v14 = String.init<A>(describing:)();
    v16 = sub_100004364(v14, v15, &v25);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_100007A94(v26, v24);
    sub_100004308(0, &qword_100041C60, &protocol descriptor for HealthExperienceStore);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    sub_10000493C(v26);
    v20 = sub_100004364(v17, v19, &v25);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s]: createSummaryTabFeedPopulationManager() readyHealthExperienceStore: %s", v13, 0x16u);
    swift_arrayDestroy();

    a2 = v23;
  }

  else
  {

    sub_10000493C(v26);
  }

  (*(v7 + 8))(v9, v6);
  type metadata accessor for SummaryTabFeedPopulationManager();
  sub_100007A94(a1, v26);
  v21 = a2;
  return SummaryTabFeedPopulationManager.__allocating_init(healthExperienceStore:healthStore:)();
}

uint64_t sub_100024870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100025B94(0);
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  sub_100007A94(a1, v31);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28[2] = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28[1] = a3;
    v30 = v17;
    *v16 = 136315394;
    v29[0] = v7;
    swift_getMetatypeMetadata();
    v18 = String.init<A>(describing:)();
    v20 = sub_100004364(v18, v19, &v30);
    v28[0] = v9;
    v21 = a1;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    sub_100007A94(v31, v29);
    sub_100004308(0, &qword_100041C60, &protocol descriptor for HealthExperienceStore);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_10000493C(v31);
    v26 = sub_100004364(v23, v25, &v30);

    *(v16 + 14) = v26;
    a1 = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s]: createProfileDashboardFeedPopulationListener() readyHealthExperienceStore: %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v12, v28[0]);
  }

  else
  {

    sub_10000493C(v31);
    (*(v10 + 8))(v12, v9);
  }

  sub_100007A94(a1, v31);
  sub_10000E524();
  sub_10002A110(&qword_100042278, sub_10000E524, &protocol conformance descriptor for OS_dispatch_queue);
  static FeedPopulationListenerSchedulerConfiguration.realtime(queue:)();
  type metadata accessor for ProfileDashboardsFeedPopulationListener();
  swift_allocObject();

  return ProfileDashboardsFeedPopulationListener.init<A>(sourceProfilePublisher:healthExperienceStore:submissionScheduler:)();
}

uint64_t sub_100024BF0()
{
  dispatch thunk of UnfairLock.assertOwner()();
  result = swift_weakLoadStrong();
  if (!result)
  {
    dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
    if (v4)
    {
      sub_1000030A0(&v3, v5);
      v2 = sub_1000245CC(v5, *(v0 + 32));
      sub_10000493C(v5);
      swift_weakAssign();
      return v2;
    }

    else
    {
      sub_10000A920(&v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100024C88()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v30 - v8;
  v10 = Notification.oracle.getter();
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();

  if (v33)
  {
    sub_1000030A0(&v32, v34);
    static Logger.daemon.getter();
    sub_100007A94(v34, &v32);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v13 = 136315394;
      v30[0] = v2;
      swift_getMetatypeMetadata();
      v14 = String.init<A>(describing:)();
      v16 = sub_100004364(v14, v15, &v31);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      sub_100007A94(&v32, v30);
      sub_100004308(0, &qword_100041C60, &protocol descriptor for HealthExperienceStore);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      sub_10000493C(&v32);
      v20 = sub_100004364(v17, v19, &v31);

      *(v13 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s]: storeDidUpdate(from:) healthExperienceStore: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000493C(&v32);
    }

    (*(v4 + 8))(v9, v3);
    v29 = sub_100024870(v34, v1[6], v1[5]);
    sub_10000493C(v34);
    v1[2] = v29;
  }

  else
  {
    sub_10000A920(&v32);
    static Logger.daemon.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v32 = v24;
      *v23 = 136315138;
      v34[0] = v2;
      swift_getMetatypeMetadata();
      v25 = String.init<A>(describing:)();
      v27 = sub_100004364(v25, v26, &v32);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%s]: storeDidUpdate(from:) no store", v23, 0xCu);
      sub_10000493C(v24);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100025160()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    v14[1] = v1;
    *v8 = 136315138;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_100004364(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s]: debuggingInfoRequested()", v8, 0xCu);
    sub_10000493C(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10002541C()
{
  _StringGuts.grow(_:)(84);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  sub_100025634();
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x80000001000325F0;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v4);
  v5 = [*(v0 + 24) description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD00000000000002BLL;
  v10._object = 0x80000001000333E0;
  String.append(_:)(v10);
  sub_100025C28(0, &qword_100042540, &type metadata accessor for ProfileDashboardsFeedPopulationListener, &type metadata accessor for Optional);

  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0;
}

unint64_t sub_100025634()
{
  result = qword_100042538;
  if (!qword_100042538)
  {
    type metadata accessor for FeedPopulationManagerOracle();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100042538);
  }

  return result;
}

void *sub_100025678(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_10000E410(0, a5, a6, a7, &type metadata accessor for _ContiguousArrayStorage);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004308(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_1000257E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002A360(0, &qword_100042230, &type metadata for Feed.Kind);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000258D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002A360(0, &qword_100042588, &type metadata for AnyHashable);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000259FC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100025C28(0, &qword_100042250, &type metadata accessor for GenerationPhase, &type metadata accessor for _ContiguousArrayStorage);
  v4 = *(type metadata accessor for GenerationPhase() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
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

void *sub_100025B1C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10002A360(0, &qword_100042230, &type metadata for Feed.Kind);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_100025B94(uint64_t a1)
{
  if (!qword_100042270)
  {
    sub_10000E524();
    sub_10002A110(&qword_100042278, sub_10000E524, &protocol conformance descriptor for OS_dispatch_queue);
    v1 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration();
    if (!v2)
    {
      atomic_store(v1, &qword_100042270);
    }
  }
}

void sub_100025C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100025C8C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for GenerationPhase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase, &protocol conformance descriptor for GenerationPhase);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10002A110(&qword_100042568, &type metadata accessor for GenerationPhase, &protocol conformance descriptor for GenerationPhase);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100026E18(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100025F6C(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  Feed.Kind.rawValue.getter();
  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = Feed.Kind.rawValue.getter();
      v13 = v12;
      if (v11 == Feed.Kind.rawValue.getter() && v13 == v14)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1000270BC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000260F4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100027294(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100026244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100020FE8(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_100020F94(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100020F94(a2);
    sub_100020FE8(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100020FE8(a2, v16);
    v15 = *v3;
    sub_100027414(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100026390(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for GenerationPhase();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10002A158(0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase, &protocol conformance descriptor for GenerationPhase);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_1000266E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002A0B4(0);
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

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
      *(*(v5 + 48) + v13) = v17;
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

Swift::Int sub_100026940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002A284(0, &qword_100042578, &type metadata for String, &protocol witness table for String);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100026BAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002A284(0, &qword_100042580, &type metadata for AnyHashable, &protocol witness table for AnyHashable);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100026E18(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for GenerationPhase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100026390(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10002758C();
      goto LABEL_12;
    }

    sub_100027BD4(v10 + 1);
  }

  v12 = *v3;
  sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase, &protocol conformance descriptor for GenerationPhase);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10002A110(&qword_100042568, &type metadata accessor for GenerationPhase, &protocol conformance descriptor for GenerationPhase);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000270BC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1000266E0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1000277B4();
      goto LABEL_16;
    }

    sub_100027EE4(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  Feed.Kind.rawValue.getter();
  String.hash(into:)();

  result = Hasher._finalize()();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = Feed.Kind.rawValue.getter();
      v14 = v13;
      if (v12 == Feed.Kind.rawValue.getter() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100027294(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100026940(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000278E8();
      goto LABEL_16;
    }

    sub_100028114(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100027414(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100026BAC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100027A50();
      goto LABEL_12;
    }

    sub_100028358(v7 + 1);
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100020FE8(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_100020F94(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10002758C()
{
  v1 = v0;
  v2 = type metadata accessor for GenerationPhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A158(0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_1000277B4()
{
  v1 = v0;
  sub_10002A0B4(0);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_1000278E8()
{
  v1 = v0;
  sub_10002A284(0, &qword_100042578, &type metadata for String, &protocol witness table for String);
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_100027A50()
{
  v1 = v0;
  sub_10002A284(0, &qword_100042580, &type metadata for AnyHashable, &protocol witness table for AnyHashable);
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_100020FE8(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_100027BD4(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for GenerationPhase();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10002A158(0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase, &protocol conformance descriptor for GenerationPhase);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_100027EE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002A0B4(0);
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

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
      *(*(v5 + 48) + v12) = v16;
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

Swift::Int sub_100028114(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002A284(0, &qword_100042578, &type metadata for String, &protocol witness table for String);
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

Swift::Int sub_100028358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002A284(0, &qword_100042580, &type metadata for AnyHashable, &protocol witness table for AnyHashable);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_100020FE8(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

void *sub_1000285C8(void *result, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = result[2];
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= v6[3] >> 1)
  {
    if (v12[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_100025678(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!v12[2])
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004308(0, a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = v6[2];
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    v6[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1000286F4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000257E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000287E0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v54[0] = a1;
    v49 = *(a1 + 16);
    if (v49)
    {
      v3 = a2 + 7;
      v4 = a1 + 32;
      v50 = a1;

      v5 = 0;
      v51 = v4;
      v52 = v3;
      while (1)
      {
        ++v5;
        Hasher.init(_seed:)();
        Feed.Kind.rawValue.getter();
        String.hash(into:)();

        v6 = Hasher._finalize()();
        v7 = v2;
        v8 = -1 << *(v2 + 32);
        v9 = v6 & ~v8;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v3[v9 >> 6]) != 0)
        {
          break;
        }

LABEL_4:
        v2 = v7;
        v3 = v52;
        if (v5 == v49)
        {
          goto LABEL_20;
        }
      }

      v12 = ~v8;
      while (1)
      {
        v13 = Feed.Kind.rawValue.getter();
        v15 = v14;
        if (v13 == Feed.Kind.rawValue.getter() && v15 == v16)
        {
          break;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_16;
        }

        v9 = (v9 + 1) & v12;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v52[v9 >> 6]) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_16:
      v54[1] = v5;
      v20 = v7;
      v21 = *(v7 + 32);
      v46 = ((1 << v21) + 63) >> 6;
      v22 = 8 * v46;
      v23 = v50;
      if ((v21 & 0x3Fu) > 0xD)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v47 = &v45;
        __chkstk_darwin(v19);
        v9 = &v45 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v9, v52, v24);
        v25 = *(v20 + 16);
        *(v9 + 8 * v10) &= ~v11;
        v48 = v9;
        v49 = v25 - 1;
        v26 = *(v23 + 16);
        if (v5 == v26)
        {
          break;
        }

        v10 = v52;
        v11 = v7;
        while (v5 < v26)
        {
          Hasher.init(_seed:)();
          Feed.Kind.rawValue.getter();
          String.hash(into:)();

          v9 = v53;
          v28 = Hasher._finalize()();
          v29 = -1 << *(v11 + 32);
          v20 = v28 & ~v29;
          v30 = v20 >> 6;
          v31 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
          {
            v32 = ~v29;
            while (1)
            {
              v33 = Feed.Kind.rawValue.getter();
              v10 = v34;
              v36 = Feed.Kind.rawValue.getter();
              v37 = v33;
              v9 = v35;
              if (v37 == v36 && v10 == v35)
              {
                break;
              }

              v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v11)
              {
                goto LABEL_36;
              }

              v20 = (v20 + 1) & v32;
              v30 = v20 >> 6;
              v10 = v52;
              v31 = 1 << v20;
              v11 = v7;
              if (((1 << v20) & v52[v20 >> 6]) == 0)
              {
                v23 = v50;
                goto LABEL_24;
              }
            }

LABEL_36:
            v39 = v48[v30];
            v48[v30] = v39 & ~v31;
            v23 = v50;
            if ((v39 & v31) == 0)
            {
              v10 = v52;
              v11 = v7;
              goto LABEL_24;
            }

            v40 = v49 - 1;
            if (__OFSUB__(v49, 1))
            {
              goto LABEL_42;
            }

            v11 = v7;
            v10 = v52;
            --v49;
            if (!v40)
            {

              v2 = &_swiftEmptySetSingleton;
              goto LABEL_20;
            }
          }

LABEL_24:
          ++v5;
          v26 = *(v23 + 16);
          if (v5 == v26)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v41 = v22;

        v42 = v41;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v43 = swift_slowAlloc();
          memcpy(v43, v52, v42);
          v44 = sub_100028CD4(v43, v46, v20, v9, v54);

          return v44;
        }
      }

      v11 = v7;
LABEL_19:
      v2 = sub_100028F08(v48, v46, v49, v11);
LABEL_20:
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100028CD4(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v24 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v26 = v6 - 1;
  v7 = a5[1];
  v8 = *(*a5 + 16);
  if (v7 == v8)
  {
LABEL_2:

    return sub_100028F08(v24, a2, v26, a3);
  }

  else
  {
    v9 = a5;
    v27 = a3 + 56;
    while ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 >= v8)
      {
        goto LABEL_23;
      }

      v9[1] = v7 + 1;
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v10 = -1 << *(a3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = 1 << v11;
      if (((1 << v11) & *(v27 + 8 * (v11 >> 6))) != 0)
      {
        v14 = ~v10;
        while (1)
        {
          v15 = Feed.Kind.rawValue.getter();
          v17 = v16;
          if (v15 == Feed.Kind.rawValue.getter() && v17 == v18)
          {
            break;
          }

          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_18;
          }

          v11 = (v11 + 1) & v14;
          v12 = v11 >> 6;
          v13 = 1 << v11;
          if (((1 << v11) & *(v27 + 8 * (v11 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

LABEL_18:
        v21 = v24[v12];
        v24[v12] = v21 & ~v13;
        if ((v21 & v13) == 0)
        {
LABEL_4:
          v9 = a5;
          goto LABEL_5;
        }

        v9 = a5;
        v22 = v26 - 1;
        if (__OFSUB__(v26, 1))
        {
          goto LABEL_24;
        }

        --v26;
        if (!v22)
        {
          return &_swiftEmptySetSingleton;
        }
      }

LABEL_5:
      v7 = v9[1];
      v8 = *(*v9 + 16);
      if (v7 == v8)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

Swift::Int sub_100028F08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10002A0B4(0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Feed.Kind.rawValue.getter();
    String.hash(into:)();

    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100029120(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_100029374(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1000292E4(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_1000292E4(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100029374(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_100029374(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v44 = result;
  if (a4[2] >= *(a3 + 16))
  {
    v23 = 0;
    v24 = a3 + 56;
    v25 = 1 << *(a3 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v47 = 0;
    v49 = v26 & *(a3 + 56);
    v42 = (v25 + 63) >> 6;
    v27 = a4 + 7;
LABEL_28:
    while (v49)
    {
      v28 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v29 = v28 | (v23 << 6);
LABEL_35:
      v46 = v29;
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v32 = ~(-1 << *(a4 + 32));
      v33 = result & v32;
      if ((*(v27 + (((result & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v32)))
      {
        while (1)
        {
          v34 = Feed.Kind.rawValue.getter();
          v36 = v35;
          if (v34 == Feed.Kind.rawValue.getter() && v36 == v37)
          {
            break;
          }

          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v39)
          {
            goto LABEL_44;
          }

          v33 = (v33 + 1) & v32;
          if (((*(v27 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_44:
        *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_49;
        }

        ++v47;
      }
    }

    v30 = v23;
    v4 = a3;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v42)
      {
LABEL_46:

        return sub_100028F08(v44, a2, v47, v4);
      }

      v31 = *(v24 + 8 * v23);
      ++v30;
      if (v31)
      {
        v49 = (v31 - 1) & v31;
        v29 = __clz(__rbit64(v31)) | (v23 << 6);
        goto LABEL_35;
      }
    }
  }

  else
  {
    v5 = 0;
    v8 = a4[7];
    v6 = a4 + 7;
    v7 = v8;
    v9 = 1 << *(v6 - 24);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v45 = v10 & v7;
    v47 = 0;
    v40 = (v9 + 63) >> 6;
    v41 = v6;
    v48 = a3 + 56;
LABEL_6:
    while (v45)
    {
      v45 &= v45 - 1;
LABEL_13:
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = 1 << (result & v13);
      if ((v16 & *(v48 + 8 * v15)) != 0)
      {
        while (1)
        {
          v17 = Feed.Kind.rawValue.getter();
          v19 = v18;
          if (v17 == Feed.Kind.rawValue.getter() && v19 == v20)
          {
            break;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_22;
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v4 = a3;
          v16 = 1 << v14;
          if (((1 << v14) & *(v48 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_22:
        v44[v15] |= v16;
        v4 = a3;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_50;
        }

        ++v47;
      }
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v40)
      {
        goto LABEL_46;
      }

      v12 = v41[v5];
      ++v11;
      if (v12)
      {
        v45 = (v12 - 1) & v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1000297CC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for GenerationPhase();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100029A70(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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

void *sub_100029B6C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0;
  swift_weakInit();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v4[8] = UnfairLock.init()();
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a4;
  v4[6] = a3;
  v15 = a1;
  v16 = a2;
  v17 = a4;

  dispatch thunk of HealthExperienceStoreOracle.register(observer:)();

  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v28)
  {
    sub_1000030A0(&v27, v29);
    v18 = sub_100024870(v29, a3, v17);
    sub_10000493C(v29);
    v5[2] = v18;
  }

  else
  {
    sub_10000A920(&v27);
  }

  static Logger.general.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v27 = v22;
    *v21 = 136315138;
    v29[0] = v10;
    swift_getMetatypeMetadata();
    v23 = String.init<A>(describing:)();
    v25 = sub_100004364(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s init()", v21, 0xCu);
    sub_10000493C(v22);
  }

  (*(v12 + 8))(v14, v11);
  type metadata accessor for FeedPopulationManagerOracle();
  DebuggingResponder.registerForDebuggingRequests()();
  return v5;
}

uint64_t sub_100029E2C(uint64_t a1)
{
  v2 = type metadata accessor for GenerationPhase();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase, &protocol conformance descriptor for GenerationPhase);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100025C8C(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100029FC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10002A050();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100025F6C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_10002A050()
{
  result = qword_100042550;
  if (!qword_100042550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042550);
  }

  return result;
}

void sub_10002A0B4(uint64_t a1)
{
  if (!qword_100042558)
  {
    sub_10002A050();
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_100042558);
    }
  }
}

uint64_t sub_10002A110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10002A158(uint64_t a1)
{
  if (!qword_100042570)
  {
    type metadata accessor for GenerationPhase();
    sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase, &protocol conformance descriptor for GenerationPhase);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_100042570);
    }
  }
}

uint64_t sub_10002A1EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000260F4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_10002A284(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for _SetStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10002A2D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100020FE8(v4, v5);
      sub_100026244(v6, v5);
      sub_100020F94(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_10002A360(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for SummaryTabForegroundFeedPopulationOperation(uint64_t a1)
{
  result = qword_1000425B8;
  if (!qword_1000425B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    v25 = ObjectType;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_100004364(v11, v12, &v24);
    v23 = v3;
    v14 = ObjectType;
    v15 = v13;

    *(v9 + 4) = v15;
    ObjectType = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s]: Beginning to watch generation to pick a new feed", v9, 0xCu);
    sub_10000493C(v10);

    (*(v4 + 8))(v6, v23);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v25 = *(v1 + qword_1000425A0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10002B78C(0);
  sub_10002B858(&qword_100042610, sub_10002B78C, &protocol conformance descriptor for AnyPublisher<A, B>);

  v16 = Publisher<>.sink(receiveValue:)();

  v25 = *(v1 + qword_1000425A8);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = ObjectType;
  sub_10002B7FC();
  sub_10002B858(&qword_100042620, sub_10002B7FC, &protocol conformance descriptor for AnyPublisher<A, B>);

  v19 = Publisher.sink(receiveCompletion:receiveValue:)();

  v21 = *(v1 + qword_1000425B0);
  __chkstk_darwin(v20);
  *(&v23 - 2) = v16;
  *(&v23 - 1) = v19;
  os_unfair_lock_lock((v21 + 32));
  sub_10002B8A0((v21 + 16));
  os_unfair_lock_unlock((v21 + 32));
}

void *sub_10002A834(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    type metadata accessor for SummaryTabFeedPopulationManager();
    FeedPopulationManaging<>.handleUpdatedFeedItems(_:)();
  }

  return result;
}

void *sub_10002A8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    static Logger.personalization.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      v19 = a3;
      swift_getMetatypeMetadata();
      v14 = String.init<A>(describing:)();
      v17 = v4;
      v16 = sub_100004364(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s]: Highlights generation publisher completed; sending request to repopulate feed", v12, 0xCu);
      sub_10000493C(v13);

      (*(v5 + 8))(v7, v17);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    *(swift_allocObject() + 16) = a3;

    dispatch thunk of SummaryTabFeedPopulationManager.generateHighlightsFeedIfAppropriate(completion:)();
  }

  return result;
}

uint64_t sub_10002AB24(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    v18[1] = a2;
    *v10 = 136446466;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_100004364(v11, v12, v18);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    if (a1)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (a1)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = sub_100004364(v14, v15, v18);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s]: Highlights repopulated: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002AD38(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  a1[1] = a2;

  *a1 = a3;
  return result;
}

void sub_10002ADA0(void *a1)
{
  v1 = a1;
  sub_10002A450();
}

uint64_t sub_10002ADE8@<X0>(char *a1@<X8>)
{
  v40 = a1;
  v57 = type metadata accessor for ContentKind();
  v1 = *(v57 - 8);
  v2 = __chkstk_darwin(v57);
  v53 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v56 = &v39 - v4;
  v49 = type metadata accessor for GeneratorDomain();
  v5 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B92C(0);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B9F8(0);
  v10 = GeneratorPipelineManager.GenerationState.outstandingGenerators.getter();
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v46 = (v5 + 8);
  v45 = enum case for ContentKind.highlight(_:);
  v44 = (v1 + 104);
  v52 = v1 + 16;
  v39 = v1;
  v54 = (v1 + 8);
  v50 = v10;

  v17 = 0;
  v41 = v15;
  v42 = v11;
  v43 = v9;
  while (v14)
  {
LABEL_11:
    v19 = __clz(__rbit64(v14)) | (v17 << 6);
    v20 = v50;
    v21 = *(v50 + 48);
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 16))(v9, v21 + *(*(v22 - 8) + 72) * v19, v22);
    v23 = *(v20 + 56);
    sub_10002B9A0(0);
    (*(*(v24 - 8) + 16))(&v9[*(v47 + 48)], v23 + *(*(v24 - 8) + 72) * v19, v24);
    swift_getKeyPath();
    v25 = v48;
    GeneratorPipelineManagerWrapper.subscript.getter();

    v26 = GeneratorDomain.contentKinds.getter();
    (*v46)(v25, v49);
    (*v44)(v56, v45, v57);
    v55 = v26;
    if (*(v26 + 16))
    {
      v27 = v55;
      sub_10002B858(&qword_100042648, &type metadata accessor for ContentKind, &protocol conformance descriptor for ContentKind);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      v51 = v27 + 56;
      if ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        v32 = *(v39 + 72);
        v33 = *(v39 + 16);
        while (1)
        {
          v34 = v53;
          v35 = v57;
          v33(v53, *(v55 + 48) + v32 * v30, v57);
          sub_10002B858(qword_100042650, &type metadata accessor for ContentKind, &protocol conformance descriptor for ContentKind);
          v36 = dispatch thunk of static Equatable.== infix(_:_:)();
          v37 = *v54;
          (*v54)(v34, v35);
          if (v36)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v51 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v37(v56, v57);
        sub_10002BA8C(v43);
        v38 = 1;
LABEL_19:

        *v40 = v38;
        return result;
      }
    }

LABEL_5:
    v14 &= v14 - 1;

    (*v54)(v56, v57);
    v9 = v43;
    result = sub_10002BA8C(v43);
    v15 = v41;
    v11 = v42;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      v38 = 0;
      goto LABEL_19;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B330@<X0>(_BYTE *a2@<X8>)
{
  sub_100007A48(0, &qword_100042628, &type metadata for Bool);
  sub_10002B8C4();
  result = Sequence<>.contains(_:)();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10002B3C4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "SummaryTabForegroundFeedPopulationOperation removing registration for feedItemSubmissionOccurred", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + qword_1000425B0);
  os_unfair_lock_lock((v9 + 32));
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  os_unfair_lock_unlock((v9 + 32));
  if (v10)
  {

    AnyCancellable.cancel()();
  }

  if (v11)
  {

    AnyCancellable.cancel()();
  }
}

uint64_t sub_10002B59C()
{
}

id sub_10002B60C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryTabForegroundFeedPopulationOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002B644(uint64_t a1)
{
}

uint64_t sub_10002B6C8(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002B724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

void sub_10002B78C(uint64_t a1)
{
  if (!qword_100042608)
  {
    type metadata accessor for FeedItemChangeDomain();
    v1 = type metadata accessor for AnyPublisher();
    if (!v2)
    {
      atomic_store(v1, &qword_100042608);
    }
  }
}

void sub_10002B7FC()
{
  if (!qword_100042618)
  {
    v0 = type metadata accessor for AnyPublisher();
    if (!v1)
    {
      atomic_store(v0, &qword_100042618);
    }
  }
}

uint64_t sub_10002B858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002B8C4()
{
  result = qword_100042630;
  if (!qword_100042630)
  {
    sub_100007A48(255, &qword_100042628, &type metadata for Bool);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042630);
  }

  return result;
}

void sub_10002B92C(uint64_t a1)
{
  if (!qword_100042638)
  {
    type metadata accessor for UUID();
    sub_10002B9A0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100042638);
    }
  }
}

void sub_10002B9A0(uint64_t a1)
{
  if (!qword_100042640)
  {
    sub_100007660(255);
    v1 = type metadata accessor for GeneratorPipelineManagerWrapper();
    if (!v2)
    {
      atomic_store(v1, &qword_100042640);
    }
  }
}

void sub_10002B9F8(uint64_t a1)
{
  if (!qword_100042290)
  {
    sub_100007538(255);
    sub_10002B858(&qword_100042298, sub_100007538, &protocol conformance descriptor for AnyPipelineProvider<A>);
    v1 = type metadata accessor for GeneratorPipelineManager.GenerationState();
    if (!v2)
    {
      atomic_store(v1, &qword_100042290);
    }
  }
}

uint64_t sub_10002BA8C(uint64_t a1)
{
  sub_10002B92C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002BAF0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10002BC2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v36 = v6;
  if (v8 > v6)
  {
    v6 = *(v7 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v6)
  {
    v12 = v6;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v5 + 64) + v13;
  v19 = v14 + v13;
  v20 = v14 + v15;
  v21 = a1;
  if (a2 > v12)
  {
    v22 = v17 + ((v20 + ((v19 + (v18 & ~v13)) & ~v13)) & ~v15);
    v23 = 8 * v22;
    if (v22 <= 3)
    {
      v25 = ((a2 - v12 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v25))
      {
        v24 = *(a1 + v22);
        if (!v24)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v25 > 0xFF)
      {
        v24 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v25 < 2)
      {
LABEL_33:
        if (v12)
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_33;
    }

LABEL_20:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v12 + (v28 | v26) + 1;
  }

LABEL_34:
  if (v36 == v12)
  {
    v29 = *(v5 + 48);
    v30 = v36;
    v31 = v4;
  }

  else
  {
    v33 = ~v13;
    v21 = ((a1 + v18) & v33);
    if (v8 != v12)
    {
      v34 = (*(v10 + 48))((v20 + ((v21 + v19) & v33)) & ~v15);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }

    v29 = *(v7 + 48);
    v30 = v8;
    v31 = AssociatedTypeWitness;
  }

  return v29(v21, v30, v31);
}

void sub_10002BFC4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(v4 - 8);
  v46 = v5;
  v6 = *(v5 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v5 + 64);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = v14 + v17;
  v19 = (v14 + v17) & ~v17;
  v20 = *(v7 + 64);
  v21 = v20 + v17;
  v22 = (v20 + v17 + v19) & ~v17;
  v23 = *(v11 + 80);
  v24 = v20 + v23;
  v25 = (v20 + v23 + v22) & ~v23;
  v26 = *(v11 + 64);
  if (v13)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  v28 = v25 + v27;
  if (a3 > v16)
  {
    if (v28 <= 3)
    {
      v29 = ((a3 - v16 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
      if (HIWORD(v29))
      {
        v10 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v10 = v30;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v16 < a2)
  {
    v31 = ~v16 + a2;
    if (v28 < 4)
    {
      v32 = (v31 >> (8 * v28)) + 1;
      if (v28)
      {
        v34 = v31 & ~(-1 << (8 * v28));
        bzero(a1, v25 + v27);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v34;
            if (v10 > 1)
            {
LABEL_65:
              if (v10 == 2)
              {
                *&a1[v28] = v32;
              }

              else
              {
                *&a1[v28] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v10 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v34;
        a1[2] = BYTE2(v34);
      }

      if (v10 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v25 + v27);
      *a1 = v31;
      v32 = 1;
      if (v10 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v10)
    {
      a1[v28] = v32;
    }

    return;
  }

  v33 = a1;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v28] = 0;
  }

  else if (v10)
  {
    a1[v28] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v6 == v16)
  {
    v35 = *(v46 + 56);
    v36 = a2;
    v37 = v6;
    v38 = v4;

LABEL_42:
    v35(v33, v36, v37, v38);
    return;
  }

  v33 = (&a1[v18] & ~v17);
  if (v8 == v16)
  {
    v35 = *(v7 + 56);
    v36 = a2;
    v37 = v8;
    v38 = AssociatedTypeWitness;

    goto LABEL_42;
  }

  v39 = v24 + (&v33[v21] & ~v17);
  v40 = (v39 & ~v23);
  if (v15 >= a2)
  {
    v44 = *(v12 + 56);

    v44(v39 & ~v23, a2 + 1);
  }

  else
  {
    if (v27 <= 3)
    {
      v41 = ~(-1 << (8 * v27));
    }

    else
    {
      v41 = -1;
    }

    if (v27)
    {
      v42 = v41 & (~v15 + a2);
      if (v27 <= 3)
      {
        v43 = v27;
      }

      else
      {
        v43 = 4;
      }

      bzero(v40, v27);
      if (v43 > 2)
      {
        if (v43 == 3)
        {
          *v40 = v42;
          v40[2] = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }

      else if (v43 == 1)
      {
        *v40 = v42;
      }

      else
      {
        *v40 = v42;
      }
    }
  }
}

uint64_t sub_10002C4F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "foregroundCompletion";
  v4 = 0xD00000000000001ALL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v2 == 1)
  {
    v6 = "foregroundCompletion";
  }

  else
  {
    v6 = "initialUnlockFeedItemsOnly";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_1000323F0;
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = "initialUnlockFeedItemsOnly";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = &unk_1000323F0;
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10002C5CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002C668(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10002C6F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002C788@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002EA98(*a1);
  *a2 = result;
  return result;
}

void sub_10002C7B8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "foregroundCompletion";
  v4 = 0xD00000000000001ALL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = "initialUnlockFeedItemsOnly";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = &unk_1000323F0;
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

void *sub_10002C824(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v75 = type metadata accessor for LogCategory();
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Logger();
  v13 = *(v73 - 8);
  __chkstk_darwin(v73);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities;
  *&v6[v16] = sub_10002E9B0(_swiftEmptyArrayStorage);
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate____lazy_storage___availablePlugins] = 0;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle] = a1;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle] = a2;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager] = a5;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle] = a4;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle] = a3;
  v17 = type metadata accessor for DaemonListenerDelegate();
  v80.receiver = v6;
  v80.super_class = v17;
  v62 = a1;
  v63 = a2;

  v64 = a5;

  v65 = a4;

  v66 = a3;

  v76 = objc_msgSendSuper2(&v80, "init");
  static Logger.daemon.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v77 = v21;
    *v20 = 136315138;
    aBlock[0] = ObjectType;
    swift_getMetatypeMetadata();
    v22 = String.init<A>(describing:)();
    v24 = sub_100004364(v22, v23, &v77);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%s] init()", v20, 0xCu);
    sub_10000493C(v21);
  }

  (*(v13 + 8))(v15, v73);
  v25 = v76;
  DebuggingResponder.registerForDebuggingRequests()();
  v61 = OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities;
  v26 = *&v25[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities];
  LODWORD(v73) = enum case for LogCategory.generation(_:);
  v27 = v71++;
  ObjectType = (v27 + 13);
  v70 = v79;

  v28 = 0;
  v68 = "@?<v@?q@NSError>24";
  v69 = "background.after_unlock_feed";
  v67 = ", feedPopulationManagerOracle: ";
  while (1)
  {
    v31 = *(&off_10003D978 + v28++ + 32);
    if (v31 == 1)
    {
      v32 = 0xD00000000000003CLL;
    }

    else
    {
      v32 = 0xD00000000000003BLL;
    }

    v33 = v68;
    if (v31 != 1)
    {
      v33 = v67;
    }

    v34 = v31 ? v32 : 0xD00000000000003BLL;
    v35 = v69;
    if (v31)
    {
      v35 = v33;
    }

    v36 = v35 | 0x8000000000000000;
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v31;
    *(v38 + 24) = v34;
    *(v38 + 32) = v36;
    *(v38 + 40) = v37;

    v39 = sub_1000030B8();
    v40 = v74;
    v41 = v75;
    (*ObjectType)(v74, v73, v75);
    v42 = LogCategory.logHandle.getter();
    (*v71)(v40, v41);
    v43 = objc_allocWithZone(HDXPCGatedActivity);
    v44 = String._bridgeToObjectiveC()();

    v79[2] = sub_10002F3B8;
    v79[3] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v79[0] = sub_10002E434;
    v79[1] = &unk_10003E9E0;
    v45 = _Block_copy(aBlock);
    v46 = [v43 initWithName:v44 criteria:v39 loggingCategory:v42 handler:v45];
    swift_unknownObjectRelease();

    _Block_release(v45);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v26;
    v48 = sub_10001F6BC(v31);
    v50 = v26[2];
    v51 = (v49 & 1) == 0;
    v52 = __OFADD__(v50, v51);
    v53 = v50 + v51;
    if (v52)
    {
      break;
    }

    v54 = v49;
    if (v26[3] >= v53)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v58 = v48;
      sub_10002E860();
      v48 = v58;
      v26 = aBlock[0];
      if (v54)
      {
        goto LABEL_4;
      }

LABEL_21:
      v26[(v48 >> 6) + 8] |= 1 << v48;
      *(v26[6] + v48) = v31;
      *(v26[7] + 8 * v48) = v46;
      v56 = v26[2];
      v52 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v52)
      {
        goto LABEL_28;
      }

      v26[2] = v57;
      if (v28 == 3)
      {
LABEL_26:

        v59 = v76;
        *&v76[v61] = v26;

        return v59;
      }
    }

    else
    {
      sub_10002E57C(v53, isUniquelyReferenced_nonNull_native);
      v48 = sub_10001F6BC(v31);
      if ((v54 & 1) != (v55 & 1))
      {
        goto LABEL_29;
      }

LABEL_20:
      v26 = aBlock[0];
      if ((v54 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_4:
      v29 = v26[7];
      v30 = *(v29 + 8 * v48);
      *(v29 + 8 * v48) = v46;

      if (v28 == 3)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002CF6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, const char *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v84 = a8;
  v85 = a3;
  v12 = type metadata accessor for DateInterval();
  v80 = *(v12 - 8);
  v81 = v12;
  __chkstk_darwin(v12);
  v79 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 1);
  v16 = __chkstk_darwin(v14);
  v78 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v83 = &v76 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v76 - v21;
  __chkstk_darwin(v20);
  v24 = &v76 - v23;
  static Logger.daemon.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v88 = v14;
  v89 = a6;
  v86 = a4;
  v87 = a5;
  if (v27)
  {
    v82 = v15;
    v28 = 0xD000000000000014;
    v29 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v29 = 136446466;
    if (a5)
    {
      if (a5 == 1)
      {
        v28 = 0xD00000000000001ALL;
      }

      else
      {
        v28 = 0xD000000000000016;
      }

      if (a5 == 1)
      {
        a5 = "foregroundCompletion";
      }

      else
      {
        a5 = "initialUnlockFeedItemsOnly";
      }
    }

    else
    {
      a5 = &unk_1000323F0;
    }

    v32 = sub_100004364(v28, a5 | 0x8000000000000000, v91);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_100004364(v89, a7, v91);
    _os_log_impl(&_mh_execute_header, v25, v26, "Background generation of type %{public}s with identifier %{public}s received callback from gated activity handler", v29, 0x16u);
    swift_arrayDestroy();

    v31 = v82;
    v30 = *(v82 + 8);
    v14 = v88;
    v30(v24, v88);
    LOBYTE(a5) = v87;
  }

  else
  {

    v30 = *(v15 + 8);
    v30(v24, v14);
    v31 = v15;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    static Logger.daemon.getter();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    v37 = os_log_type_enabled(v35, v36);
    v77 = v30;
    if (v37)
    {
      a5 = v14;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v90 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_100004364(v89, a7, &v90);
      _os_log_impl(&_mh_execute_header, v35, v36, "Executing activity identifier %{public}s", v38, 0xCu);
      sub_10000493C(v39);

      v40 = v22;
      v41 = a5;
      LOBYTE(a5) = v87;
    }

    else
    {

      v40 = v22;
      v41 = v14;
    }

    v30(v40, v41);
    v48 = *&v34[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle];
    v49 = *&v34[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle];
    v50 = *&v34[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle];
    v51 = *&v34[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager];
    v52 = *&v34[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle];

    v53 = sub_10002E9B0(_swiftEmptyArrayStorage);
    v54 = objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
    v55 = sub_10000F204(v52, v48, v49, v50, v51, v53);
    v56 = v83;
    static Logger.daemon.getter();

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = 0xD000000000000014;
      v60 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v60 = 136446466;
      v82 = v31;
      if (a5)
      {
        if (a5 == 1)
        {
          v59 = 0xD00000000000001ALL;
        }

        else
        {
          v59 = 0xD000000000000016;
        }

        if (a5 == 1)
        {
          a5 = "foregroundCompletion";
        }

        else
        {
          a5 = "initialUnlockFeedItemsOnly";
        }
      }

      else
      {
        a5 = &unk_1000323F0;
      }

      v65 = sub_100004364(v59, a5 | 0x8000000000000000, &v90);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2082;
      v61 = v89;
      *(v60 + 14) = sub_100004364(v89, a7, &v90);
      _os_log_impl(&_mh_execute_header, v57, v58, "Running background generation of type %{public}s with identifier %{public}s", v60, 0x16u);
      swift_arrayDestroy();

      v77(v83, v88);
      v62 = v86;
      LOBYTE(a5) = v87;
    }

    else
    {

      v77(v56, v88);
      v61 = v89;
      v62 = v86;
    }

    v66 = v79;
    static DateInterval.allTimeInterval.getter();
    v67 = qword_1000323F8[a5];
    v68 = swift_allocObject();
    *(v68 + 16) = v55;
    *(v68 + 24) = a5;
    *(v68 + 32) = v61;
    *(v68 + 40) = a7;
    *(v68 + 48) = v85;
    *(v68 + 56) = v62;

    v69 = v55;

    v70 = sub_1000108AC(v66, _swiftEmptyArrayStorage, a5 != 1, v67, sub_10002F4A8, v68);

    return (*(v80 + 8))(v66, v81);
  }

  else
  {
    v42 = v78;
    static Logger.daemon.getter();

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = 0xD000000000000014;
      v46 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v46 = 136446466;
      if (a5)
      {
        if (a5 == 1)
        {
          v45 = 0xD00000000000001ALL;
        }

        else
        {
          v45 = 0xD000000000000016;
        }

        if (a5 == 1)
        {
          v47 = "foregroundCompletion";
        }

        else
        {
          v47 = "initialUnlockFeedItemsOnly";
        }
      }

      else
      {
        v47 = &unk_1000323F0;
      }

      v72 = v89;
      v73 = sub_100004364(v45, v47 | 0x8000000000000000, &v90);

      *(v46 + 4) = v73;
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_100004364(v72, a7, &v90);
      _os_log_impl(&_mh_execute_header, v43, v44, "Background generation of type %{public}s with identifier %{public}s error: DaemonListenerDelegate was deallocated", v46, 0x16u);
      swift_arrayDestroy();

      v63 = v78;
      v64 = v88;
    }

    else
    {

      v63 = v42;
      v64 = v14;
    }

    v30(v63, v64);
    sub_10002F454();
    v74 = swift_allocError();
    *v75 = 0;
    v85(1, v74);
  }
}

uint64_t sub_10002D8E4(int a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v34 = a4;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v30 = v12;
    v31 = a1;
    v32 = a7;
    v33 = a6;
    v18 = 0xD000000000000014;
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v19 = 136446722;
    if (a3)
    {
      if (a3 == 1)
      {
        v18 = 0xD00000000000001ALL;
      }

      else
      {
        v18 = 0xD000000000000016;
      }

      if (a3 == 1)
      {
        v20 = "foregroundCompletion";
      }

      else
      {
        v20 = "initialUnlockFeedItemsOnly";
      }
    }

    else
    {
      v20 = &unk_1000323F0;
    }

    v24 = sub_100004364(v18, v20 | 0x8000000000000000, &v35);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_100004364(v34, a5, &v35);
    *(v19 + 22) = 2080;
    v25 = v31;
    if (v31)
    {
      v26 = 0x2E73736563637573;
    }

    else
    {
      v26 = 0x2E6572756C696166;
    }

    v27 = sub_100004364(v26, 0xE800000000000000, &v35);

    *(v19 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "Background generation of type %{public}s with identifier %{public}s completion received: %s", v19, 0x20u);
    swift_arrayDestroy();
    v28 = v25;

    (*(v13 + 8))(v15, v30);
    a6 = v33;
    if (v28)
    {
      goto LABEL_16;
    }
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    if (a1)
    {
LABEL_16:
      v21 = 0;
      v23 = 0;
      goto LABEL_17;
    }
  }

  sub_10002F454();
  v21 = swift_allocError();
  *v22 = 2;
  v23 = 1;
LABEL_17:
  a6(v23, v21);
}

uint64_t sub_10002DC60()
{
  _StringGuts.grow(_:)(69);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_getObjectType();
  sub_10002EAE4();
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x80000001000335C0;
  v5._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v5);
  v6 = [*(v0 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle) description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x80000001000335E0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_10002541C();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

id sub_10002DE30(uint64_t a1)
{
  v2 = type metadata accessor for DaemonListenerDelegate();
  DebuggingResponder.deregisterForDebuggingRequests()();
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10002DFC0()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    v13[1] = ObjectType;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_100004364(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s]: debuggingInfoRequested()", v7, 0xCu);
    sub_10000493C(v8);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_10002E2C0()
{
  if (!qword_1000427A8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000427A8);
    }
  }
}

unint64_t sub_10002E314()
{
  result = qword_1000427B0;
  if (!qword_1000427B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000427B0);
  }

  return result;
}

Swift::Int sub_10002E37C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002E3F0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10002E434(uint64_t a1, void *a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = a2;
  swift_unknownObjectRetain();
  v6(v9, a3, sub_10002F44C, v8);

  swift_unknownObjectRelease();
}

void sub_10002E50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Int sub_10002E57C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002F3E0(0);
  v31 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_10002E860()
{
  v1 = v0;
  sub_10002F3E0(0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

unint64_t sub_10002E9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002F3E0(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_10001F6BC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002EA98(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10003D9A0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002EAE4()
{
  result = qword_1000427B8;
  if (!qword_1000427B8)
  {
    type metadata accessor for DaemonListenerDelegate();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000427B8);
  }

  return result;
}

uint64_t sub_10002EB28(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v77 = type metadata accessor for Logger();
  v5 = *(v77 - 8);
  v6 = __chkstk_darwin(v77);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v76 = &v72 - v10;
  __chkstk_darwin(v9);
  v12 = &v72 - v11;
  v13 = type metadata accessor for HealthPluginHostEntitlement();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, enum case for HealthPluginHostEntitlement.allowed(_:), v13);
  sub_10002F324(&unk_1000427C0, &type metadata accessor for HealthPluginHostEntitlement, &protocol conformance descriptor for HealthPluginHostEntitlement);
  v17 = NSXPCConnection.value<A>(for:)();
  (*(v14 + 8))(v16, v13);
  if (v17 && (v79 = v17, swift_dynamicCast()) && (v78 & 1) != 0)
  {
    static Logger.daemon.getter();
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v75 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      LODWORD(v73) = v20;
      v23 = v22;
      v74 = swift_slowAlloc();
      v78 = v74;
      v79 = ObjectType;
      *v23 = 136315394;
      swift_getMetatypeMetadata();
      v24 = String.init<A>(describing:)();
      v26 = sub_100004364(v24, v25, &v78);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = v18;
      v28 = [v27 description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_100004364(v29, v31, &v78);

      *(v23 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v19, v73, "[%s] listener:shouldAcceptNewConnection: Allowing connection: %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v74 = *(v5 + 8);
    v74(v12, v77);
    v33 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle];
    v34 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle];
    v35 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle];
    v36 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle];
    v37 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager];
    v73 = OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities;
    v38 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities];
    objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
    v39 = v33;

    v40 = sub_10000F204(v39, v34, v35, v36, v37, v38);
    v41 = v76;
    static Logger.daemon.getter();
    v42 = v2;
    v43 = v40;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v79 = v72;
      *v46 = 136446466;
      sub_10002F36C();
      sub_1000208B4();

      v47 = Dictionary.Keys.description.getter();
      v49 = v48;

      v50 = sub_100004364(v47, v49, &v79);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = v43;
      v52 = [v51 description];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = sub_100004364(v53, v55, &v79);

      *(v46 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v44, v45, "Background generation activities %{public}s for connectionResponder %s", v46, 0x16u);
      swift_arrayDestroy();
    }

    v74(v41, v77);
    sub_10000F8C8(v75);

    return 1;
  }

  else
  {
    static Logger.daemon.getter();
    v58 = a1;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = ObjectType;
      *v61 = 136315650;
      swift_getMetatypeMetadata();
      v62 = String.init<A>(describing:)();
      v64 = sub_100004364(v62, v63, &v78);

      *(v61 + 4) = v64;
      *(v61 + 12) = 1024;
      v65 = [v58 processIdentifier];

      *(v61 + 14) = v65;
      *(v61 + 18) = 2080;
      v66 = v58;
      v67 = [v66 description];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = sub_100004364(v68, v70, &v78);

      *(v61 + 20) = v71;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%s] listener:shouldAcceptNewConnection: NO ENTITLEMENT! NOT ALLOWING PROCESS %d: %s", v61, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v5 + 8))(v8, v77);
    return 0;
  }
}

uint64_t sub_10002F324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002F36C()
{
  result = qword_1000421F0;
  if (!qword_1000421F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000421F0);
  }

  return result;
}

uint64_t sub_10002F3C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002F3E0(uint64_t a1)
{
  if (!qword_1000427D8)
  {
    sub_10002F36C();
    sub_1000208B4();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000427D8);
    }
  }
}

unint64_t sub_10002F454()
{
  result = qword_1000427E0;
  if (!qword_1000427E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000427E0);
  }

  return result;
}

uint64_t sub_10002F4BC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_10002F54C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002F610()
{
  result = qword_1000427E8;
  if (!qword_1000427E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000427E8);
  }

  return result;
}