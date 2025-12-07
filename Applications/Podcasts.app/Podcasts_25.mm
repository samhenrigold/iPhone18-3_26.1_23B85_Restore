uint64_t sub_10035BEF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10035BF38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100359400(*(v1 + 24));
  *a1 = result;
  return result;
}

id sub_10035BF78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003593AC(*(v1 + 24));
  *a1 = result;
  return result;
}

unint64_t sub_10035BFCC()
{
  result = qword_1005813F0;
  if (!qword_1005813F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005813F0);
  }

  return result;
}

uint64_t sub_10035C048()
{
  v1 = v0;
  v2 = *v0;
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v4 = v12 - v3;
  sub_100168088(&unk_100578B20, &unk_100405CB0);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_10040F3E8;
  *(v9 + 24) = v8;

  v12[1] = Future<>.init(priority:unwrapping:)();
  sub_10031AD08();
  v10 = Publisher.eraseToAnyPublisher()();

  return v10;
}

uint64_t sub_10035C1FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035C294, v4, v3);
}

uint64_t sub_10035C294()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_10035C3D0(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10035C328()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001AB9B8;

  return sub_10035C1FC(v2, v3);
}

uint64_t sub_10035C3D0(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CarPlayPageLoadCoordinator(0);
  swift_allocObject();

  sub_1002442DC(v3);

  v4 = BaseObjectGraph.satisfying<A>(_:with:)();
  if (a2 >> 62)
  {
LABEL_21:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(a2 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    sub_1001AA70C();
    v9 = sub_100355C6C(v4, v7, 1, 10);

    ++v6;
    if (v9)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v8;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {

      sub_100168088(&unk_100574A00, &unk_100401EC0);
      v10 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_18;
    }

LABEL_24:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v10 = _swiftEmptyArrayStorage;
LABEL_18:

  v11 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v10);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithItems:isa];

  sub_100168088(&unk_100574680, &qword_100401740);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007B0;
  *(v14 + 32) = v13;

  return v14;
}

id sub_10035C6EC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 type];
  v8 = [v1 title];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = objc_allocWithZone(CLSContext);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithType:v7 identifier:v10 title:v8];

  [v11 setAssignable:{objc_msgSend(v1, "isAssignable")}];
  [v11 setDisplayOrder:{objc_msgSend(v1, "displayOrder")}];
  v12 = [v1 universalLinkURL];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v16 = 0;
  }

  [v11 setUniversalLinkURL:v16];

  v17 = [v1 thumbnail];
  [v11 setThumbnail:v17];

  return v11;
}

uint64_t sub_10035C930(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void, __n128))
{
  v8 = type metadata accessor for Logger();
  v10 = __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = v9;
    sub_1001FE728();
    swift_errorRetain();
    static OS_os_log.classKit.getter();
    swift_errorRetain();
    v13 = a3;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = a1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = a2;
      v31 = v27;
      *v17 = 138412546;
      *(v17 + 4) = v13;
      *v18 = v13;
      *(v17 + 12) = 2080;
      swift_errorRetain();
      v19 = v13;
      sub_100168088(&qword_100575C50, &unk_100402650);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000153E0(v20, v21, &v31);
      v26 = v8;
      v23 = a4;
      v24 = v22;

      *(v17 + 14) = v24;
      a4 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error loading contexts for predicate %@ - %s", v17, 0x16u);
      sub_100186264(v18);

      sub_100004590(v27);

      a1 = v28;

      (*(v29 + 8))(v12, v26);
    }

    else
    {

      (*(v29 + 8))(v12, v8);
    }
  }

  return a4(a1, v10);
}

char *sub_10035CBD8(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver];

    v16 = 0;
    LODWORD(v6) = [v7 performFetch:&v16];

    v8 = v16;
    if (v6)
    {

      return v8;
    }

    else
    {
      v15[1] = v16;
      v9 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.database.getter();
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v14;
        *v13 = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "unable to fetch stations %@", v12, 0xCu);
        sub_100186264(v13);
      }

      else
      {
      }

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

id sub_10035CE84()
{
  [*&v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver] setDelegate:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StationListObserver(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10035CFF8(void *a1, uint64_t *a2, uint64_t a3)
{
  result = [a1 fetchedObjects];
  if (result)
  {
    v6 = result;
    sub_100039340();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin();
    v9[2] = a3;
    v8 = sub_10003938C(sub_10035D7F8, v9, v7);

    *a2 = v8;
  }

  return result;
}

uint64_t sub_10035D0D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v3 = type metadata accessor for StationListOptions();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v11 = type metadata accessor for StationDetail();
  v8 = v7;
  static StationListOptions.excludeArtwork.getter();
  sub_10003955C();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v9 = *(v4 + 8);
  v9(v6, v3);
  static StationListOptions.excludeEpisodes.getter();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v9(v6, v3);
  static StationListOptions.excludeShows.getter();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v9(v6, v3);
  result = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
  *v12 = result;
  return result;
}

double sub_10035D304@<D0>(void *a1@<X8>)
{
  *a1 = *(*v1 + OBJC_IVAR____TtC8Podcasts19StationListObserver_currentValue);

  return result;
}

uint64_t (*sub_10035D31C())(void *a1)
{
  v1 = (*v0 + OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001A324C;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2, v3);
  return v5;
}

uint64_t sub_10035D3C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1001A3248;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*v2 + OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  return sub_1000112B4(v8, v9);
}

void (*sub_10035D468(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = (v5 + v6);
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = sub_1001A3138;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *(v4 + 24) = v11;
  *(v4 + 32) = v10;
  return sub_10035D540;
}

void sub_10035D540(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1001A3100;
    }

    else
    {
      v4 = sub_1001A3248;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v2[5] + v2[6]);
  *v7 = v4;
  v7[1] = v6;
  swift_endAccess();

  free(v2);
}

void sub_10035D5FC()
{
  v1 = type metadata accessor for StationListOptions();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_sync_enter(v0);
  v5 = *&v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver];
  (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_options], v1);
  v6 = v5;
  v7 = sub_100038FE4(v6, v4);

  (*(v2 + 8))(v4, v1);
  *&v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_currentValue] = v7;

  objc_sync_exit(v0);
  v8 = &v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange];
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 1);
    sub_100013CB4(v9, v10);

    v9(v11);
    sub_1000112B4(v9, v10);
  }
}

id sub_10035D794()
{
  v1 = *(type metadata accessor for StationListOptions() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10035CFF8(v2, v3, v4);
}

uint64_t sub_10035D81C(__n128 a1)
{
  v15 = type metadata accessor for ScalarDictionary();
  v1 = *(v15 - 8);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v14 - v4;
  v6 = type metadata accessor for MetricsPageFields();
  v16 = *(v6 - 8);
  v17 = v6;
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_1005815C0, "&m\b");
  __chkstk_darwin();
  v10 = &v14 - v9;

  static MetricsPageID.welcomeSheet.getter();
  static MetricsPageType.welcome.getter();
  MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)();
  ScalarDictionary.init()();
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_100573FD0, &unk_100402440);
  type metadata accessor for PageMetrics.Instruction();
  *(swift_allocObject() + 16) = xmmword_1004007C0;
  static PageMetrics.Instruction.page(fields:configuration:)();
  static PageMetrics.Instruction.impressions(fields:configuration:)();
  MetricsPageFields.metricsFields.getter();
  v11 = v15;
  (*(v1 + 16))(v3, v5, v15);
  PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)();
  v25 = v18;
  sub_100009104(&v25, &unk_100574650, &unk_1004023C0);
  v24 = v19;
  sub_100009104(&v24, &unk_100573A90, &unk_100401170);
  v23 = v20;
  sub_100009104(&v23, &unk_100574660, &unk_1004023D0);
  sub_100037470(v21, v22);
  (*(v1 + 8))(v5, v11);
  (*(v16 + 8))(v8, v17);
  v12 = type metadata accessor for PageMetrics();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  MetricsController.pageMetrics.setter();
}

void sub_10035DEC4(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v38 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
  }

  while (!v5);
  v39 = v1;
  v7 = v8;
  while (1)
  {
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_100010430(*(a1 + 56) + 32 * v10, v37, &unk_1005783D0, &qword_1004031E0);
    *&v36 = v13;
    *(&v36 + 1) = v12;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_100010430(&v34, &v27, &unk_1005783D0, &qword_1004031E0);
    if (!v28)
    {

      sub_100009104(&v33, &qword_1005817D0, &qword_100407AE0);
      sub_100009104(&v27, &unk_1005783D0, &qword_1004031E0);
      v1 = v39;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_10016B7CC(&v27, v32);
    v30 = v33;
    v31[0] = v34;
    v31[1] = v35;
    sub_10016B7CC(v32, v29);
    v1 = v39;
    v14 = v39[2];
    if (v39[3] <= v14)
    {

      sub_10019B010(v14 + 1, 1);
      v1 = v38;
    }

    else
    {
    }

    v15 = v30;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = v1 + 64;
    v18 = -1 << v1[32];
    v19 = v16 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v1[8 * (v19 >> 6) + 64]) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*&v1[8 * (v19 >> 6) + 64])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
    *(*(v1 + 6) + 16 * v21) = v15;
    sub_10016B7CC(v29, (*(v1 + 7) + 32 * v21));
    ++*(v1 + 2);
    sub_100009104(v31, &unk_1005783D0, &qword_1004031E0);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v39 = v1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *&v17[8 * v20];
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_10035E1E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager__downloaders;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_10000F9A8(a2, a3);
    v13 = 0u;
    if (v11)
    {
      v13 = *(*(v9 + 56) + 16 * v10);
      swift_unknownObjectRetain();
    }

    v12 = v13;
  }

  else
  {
    v12 = 0uLL;
  }

  *a4 = v12;
}

id sub_10035E2A8()
{
  v1 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___preflightURLSession;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___preflightURLSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___preflightURLSession);
  }

  else
  {
    v4 = sub_1000044A0((v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration + 120), *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration + 144));
    v5 = sub_100013848(0, *v4);
    v6 = [objc_opt_self() sessionWithConfiguration:v5];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_10035E360(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_reachability);
    v4 = Strong;
    swift_unknownObjectRetain();

    [v3 isReachable];
    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_10035E3F8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = static os_log_type_t.debug.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v9 = static OS_os_log.downloads.getter();
  sub_100004428(a1, v31);
  sub_100004428(a1, v28);
  if (!os_log_type_enabled(v9, v8))
  {

    sub_100004590(v28);
    sub_100004590(v31);
    return;
  }

  v10 = 0xE900000000000064;
  v11 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v11 = 136446722;
  if (a4)
  {
    v12 = 1936484398;
  }

  else
  {
    v12 = 0x7261646E6174732ELL;
  }

  if (a4)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE900000000000064;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = a2;
  v15._object = a3;
  String.append(_:)(v15);

  v16 = sub_1000153E0(0x496E6F6973736553, 0xEB00000000203A44, &v34);

  *(v11 + 4) = v16;
  *(v11 + 12) = 2082;
  v17 = v32;
  v18 = v33;
  sub_1000044A0(v31, v32);
  v19 = (*(v18 + 56))(v17, v18);
  v21 = v20;
  sub_100004590(v31);
  v22 = sub_1000153E0(v19, v21, &v34);

  *(v11 + 14) = v22;
  *(v11 + 22) = 2080;
  v23 = v29;
  v24 = v30;
  sub_1000044A0(v28, v29);
  v25 = (*(v24 + 8))(v23, v24);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v10 = 0xE900000000000067;
      v26 = 0x6E696C65636E6163;
      goto LABEL_19;
    }

    if (v25 == 3)
    {
      v26 = 0x6574656C706D6F63;
      goto LABEL_19;
    }

LABEL_16:
    v10 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
    goto LABEL_19;
  }

  if (!v25)
  {
    v10 = 0xE700000000000000;
    v26 = 0x676E696E6E7572;
    goto LABEL_19;
  }

  if (v25 != 1)
  {
    goto LABEL_16;
  }

  v26 = 0x65646E6570737573;
LABEL_19:
  sub_100004590(v28);
  v27 = sub_1000153E0(v26, v10, &v34);

  *(v11 + 24) = v27;
  _os_log_impl(&_mh_execute_header, v9, v8, "Restore task from url session: %{public}s task: %{public}s state: %s", v11, 0x20u);
  swift_arrayDestroy();
}

uint64_t sub_10035E75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v97 = *(v5 - 8);
  v98 = v5;
  __chkstk_darwin();
  v96 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v93 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v115 = *(v9 - 8);
  __chkstk_darwin();
  v99 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v113 = &v82 - v11;
  __chkstk_darwin();
  v108 = &v82 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v111 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v82 - v16;
  type metadata accessor for EpisodeMetadata(0);
  __chkstk_darwin();
  v112 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v82 - v19;
  v105 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v110 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v82 - v21;
  __chkstk_darwin();
  v23 = &v82 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v25 = Strong;
  v104 = v17;
  v109 = v13;
  v26 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v27 = static OS_os_log.downloads.getter();
  sub_1003711F4(a1, v23, type metadata accessor for DownloadJob);
  sub_100004428(a2, v131);
  sub_100004428(a2, v128);
  v28 = os_log_type_enabled(v27, v26);
  v106 = v9;
  v92 = v14;
  if (v28)
  {
    *&v102 = a1;
    *&v103 = a2;
    v29 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v127[0] = v101;
    *v29 = 136446722;
    v30 = &v23[*(v105 + 20)];
    v31 = *v30;
    v32 = v30[1];

    sub_10037125C(v23, type metadata accessor for DownloadJob);
    v33 = sub_1000153E0(v31, v32, v127);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = v132;
    v35 = v133;
    sub_1000044A0(v131, v132);
    v36 = (*(v35 + 56))(v34, v35);
    v38 = v37;
    sub_100004590(v131);
    v39 = sub_1000153E0(v36, v38, v127);

    *(v29 + 14) = v39;
    *(v29 + 22) = 2082;
    v40 = v129;
    v41 = v130;
    sub_1000044A0(v128, v129);
    v42 = (*(v41 + 8))(v40, v41);
    if (v42 > 1)
    {
      v43 = v107;
      if (v42 != 2)
      {
        v14 = v92;
        v44 = 0xE900000000000064;
        if (v42 == 3)
        {
          v45 = 0x6574656C706D6F63;
          goto LABEL_16;
        }

LABEL_12:
        v44 = 0xE700000000000000;
        v45 = 0x6E776F6E6B6E75;
        goto LABEL_16;
      }

      v44 = 0xE900000000000067;
      v45 = 0x6E696C65636E6163;
    }

    else
    {
      v43 = v107;
      if (v42)
      {
        v14 = v92;
        v44 = 0xE900000000000064;
        if (v42 == 1)
        {
          v45 = 0x65646E6570737573;
LABEL_16:
          sub_100004590(v128);
          v47 = sub_1000153E0(v45, v44, v127);

          *(v29 + 24) = v47;
          _os_log_impl(&_mh_execute_header, v27, v26, "Restoring job: %{public}s, task: %{public}s, state: %{public}s", v29, 0x20u);
          swift_arrayDestroy();

          v9 = v106;
          a2 = v103;
          a1 = v102;
          goto LABEL_17;
        }

        goto LABEL_12;
      }

      v44 = 0xE700000000000000;
      v45 = 0x676E696E6E7572;
    }

    v14 = v92;
    goto LABEL_16;
  }

  sub_10037125C(v23, type metadata accessor for DownloadJob);
  sub_100004590(v128);
  sub_100004590(v131);
  v43 = v107;
LABEL_17:
  sub_1003711F4(a1 + *(v105 + 36), v114, type metadata accessor for EpisodeMetadata);
  sub_1003711F4(a1, v43, type metadata accessor for DownloadJob);
  sub_100004428(a2, v131);
  v48 = *&v25[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_systemEpisodeStorage];
  v102 = *&v25[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_jobStorage];
  v103 = v48;
  sub_100010430(&v25[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_mediaLibraryClient], v128, &unk_1005817C0, &qword_100400BB0);
  sub_100004428(&v25[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_dsidProvider], v127);
  sub_100004428(&v25[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_artworkStorage], v126);
  v49 = v14 + 16;
  v50 = *(v14 + 16);
  v51 = v104;
  v52 = v109;
  v100 = v49;
  v101 = v50;
  v50();
  v53 = qword_100572700;
  v105 = v103;
  swift_unknownObjectRetain();
  v91 = v102;
  swift_unknownObjectRetain();
  v90 = v25;
  v54 = v43;
  if (v53 != -1)
  {
    swift_once();
  }

  v83 = sub_1001825CC(v9, qword_1005931F8);
  v55 = v115 + 16;
  v56 = *(v115 + 16);
  v57 = v108;
  v56(v108, v83, v9);
  sub_100010C38(v127, v127[3]);
  v125[3] = &type metadata for AccounStoreDsidProvider;
  v125[4] = &off_1004F1108;
  v89 = type metadata accessor for EpisodeMetadata;
  sub_1003711F4(v114, v112, type metadata accessor for EpisodeMetadata);
  v88 = type metadata accessor for DownloadJob;
  sub_1003711F4(v54, v110, type metadata accessor for DownloadJob);
  sub_100004428(v131, v124);
  sub_100010430(v128, v123, &unk_1005817C0, &qword_100400BB0);
  sub_100004428(v125, v122);
  sub_100004428(v126, v121);
  v101(v111, v51, v52);
  v58 = v9;
  v56(v113, v57, v9);
  v85 = v55;
  v86 = v56;
  v59 = v56;
  sub_100010C38(v122, v122[3]);
  v120[3] = &type metadata for AccounStoreDsidProvider;
  v120[4] = &off_1004F1108;
  type metadata accessor for JobPipeline(0);
  v46 = swift_allocObject();
  sub_100010C38(v120, &type metadata for AccounStoreDsidProvider);
  v119[3] = &type metadata for AccounStoreDsidProvider;
  v119[4] = &off_1004F1108;
  v87 = v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate;
  *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v60 = OBJC_IVAR____TtC8Podcasts11JobPipeline_secureDownloadRenewalManager;
  type metadata accessor for SecureDownloadRenewalManager();
  *(v46 + v60) = SecureDownloadRenewalManager.__allocating_init()();
  v61 = OBJC_IVAR____TtC8Podcasts11JobPipeline_throttler;
  v84 = OBJC_IVAR____TtC8Podcasts11JobPipeline_throttler;
  v62 = v99;
  v59(v99, v83, v58);
  type metadata accessor for Throttler(0);
  swift_allocObject();
  *(v46 + v61) = sub_1002EE1F8(v62);
  *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation) = 0;
  *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline____lazy_storage___operationQueue) = 0;
  v83 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v82 = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v116[0] = _swiftEmptyArrayStorage;
  sub_10000E614(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0, &unk_1003FEB50);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0, &unk_1003FEB50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v97 + 104))(v96, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v98);
  *(v46 + v83) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v63 = (v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  *v63 = 0u;
  v63[1] = 0u;
  v64 = OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel;
  *(v46 + v64) = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  v65 = (v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter);
  v66 = [objc_opt_self() sharedInstance];
  v65[3] = sub_100009F1C(0, &qword_100574390, PFAutoBugCaptureBugReporter_ptr);
  v65[4] = &protocol witness table for PFAutoBugCaptureBugReporter;
  *v65 = v66;
  v86(v62, v113, v106);
  swift_allocObject();
  v67 = sub_1002EE1F8(v62);
  *(v46 + v84) = v67;

  *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_type) = 1;
  v101((v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetsFolder), v111, v109);
  v68 = v102;
  *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage) = v103;
  *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_jobStorage) = v68;
  sub_100010430(v123, v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_mediaLibraryClient, &unk_1005817C0, &qword_100400BB0);
  sub_100004428(v119, v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_dsidProvider);
  sub_100004428(v121, v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_artworkStorage);
  *(v87 + 8) = &off_1004F0730;
  v69 = v90;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1003711F4(v112, v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata, v89);
  sub_1003711F4(v110, v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline__job, v88);
  sub_100004428(v124, v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline__task);
  v70 = (v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock);
  type metadata accessor for FairPlayInvalidationManager();
  *v70 = 0;
  v70[1] = 0;
  *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_fairPlayInvalidationManager) = FairPlayInvalidationManager.__allocating_init()();
  v71 = *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900, &unk_100400AA0);
  OS_dispatch_queue.sync<A>(execute:)();

  v72 = v117;
  v73 = v118;
  sub_1000044A0(v116, v117);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = *(v73 + 136);

  *&v102 = v74;
  *&v103 = v75(sub_100371390, v74, v72, v73);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v76 = *(v115 + 8);
  v115 += 8;
  v77 = v106;
  v76(v113, v106);
  v78 = *(v92 + 8);
  v79 = v109;
  v78(v111, v109);
  sub_100004590(v121);
  sub_100009104(v123, &unk_1005817C0, &qword_100400BB0);
  sub_100004590(v124);
  sub_10037125C(v110, type metadata accessor for DownloadJob);
  sub_10037125C(v112, type metadata accessor for EpisodeMetadata);
  v76(v108, v77);
  v78(v104, v79);
  sub_100004590(v126);
  sub_100009104(v128, &unk_1005817C0, &qword_100400BB0);
  sub_100004590(v131);
  sub_10037125C(v107, type metadata accessor for DownloadJob);
  sub_10037125C(v114, type metadata accessor for EpisodeMetadata);
  sub_100004590(v125);
  sub_100004590(v119);

  v80 = *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation);
  *(v46 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation) = v103;

  sub_100004590(v116);
  sub_100004590(v120);
  sub_100004590(v122);
  sub_100004590(v127);
  return v46;
}

void sub_10035F790(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11)
  {
    v63 = a3;
    v64 = a2;
    v62 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage;
    v12 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);
    v60 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
    v13 = *(v11 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);

    v14 = v13;
    v65 = v11;
    OS_dispatch_queue.sync<A>(execute:)();
    v15 = v4;

    v16 = &v10[*(v8 + 20)];
    v18 = *v16;
    v17 = *(v16 + 1);
    v70 = v8;
    v71 = v17;

    v69 = v10;
    sub_10037125C(v10, type metadata accessor for DownloadJob);
    [*(v12 + 16) lock];
    swift_beginAccess();
    v61 = v12;
    a3 = *(v12 + 24);
    if (a3 >> 62)
    {
      goto LABEL_37;
    }

    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    v20 = v15;
    if (v19)
    {
      v15 = 0;
      v67 = a3 & 0xFFFFFFFFFFFFFF8;
      v68 = a3 & 0xC000000000000001;
      v66 = v18;
      do
      {
        if (v68)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v22 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }
        }

        else
        {
          if (v15 >= *(v67 + 16))
          {
            __break(1u);
LABEL_37:
            v19 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v21 = *(a3 + 8 * v15 + 32);

          v22 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_19;
          }
        }

        v23 = v20;
        v24 = v19;
        v25 = a3;
        v26 = *(v21 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v27 = v69;
        v28 = v21;
        v29 = v70;
        OS_dispatch_queue.sync<A>(execute:)();
        v72 = v23;

        v30 = (v27 + *(v29 + 20));
        v32 = *v30;
        v31 = v30[1];

        v33 = v27;
        v18 = v66;
        sub_10037125C(v33, type metadata accessor for DownloadJob);
        v34 = v32 == v18 && v31 == v71;
        if (v34)
        {

LABEL_24:

          goto LABEL_25;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a3 = v25;
        if (v35)
        {

          goto LABEL_24;
        }

        ++v15;
        v19 = v24;
        v34 = v22 == v24;
        v20 = v72;
      }

      while (!v34);
    }

    v28 = 0;
LABEL_25:
    [*(v61 + 16) unlock];

    if (v28)
    {
      v37 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v38 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v38, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v73 = v40;
        *v39 = 136446210;
        v41 = *(v28 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v43 = v69;
        v42 = v70;
        OS_dispatch_queue.sync<A>(execute:)();

        v44 = (v43 + *(v42 + 20));
        v45 = *v44;
        v46 = v44[1];

        sub_10037125C(v43, type metadata accessor for DownloadJob);
        v47 = sub_1000153E0(v45, v46, &v73);

        *(v39 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v38, v37, "Existing job pipeline with episode %{public}s", v39, 0xCu);
        sub_100004590(v40);
      }

      else
      {
      }
    }

    v36 = v65;
    v48 = sub_1003AC270(v65);

    if (!v48)
    {
      v49 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v50 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v73 = v52;
        *v51 = 136446210;
        v53 = *(v65 + v60);
        v55 = v69;
        v54 = v70;
        OS_dispatch_queue.sync<A>(execute:)();

        v56 = (v55 + *(v54 + 20));
        v57 = *v56;
        v58 = v56[1];

        sub_10037125C(v55, type metadata accessor for DownloadJob);
        v59 = sub_1000153E0(v57, v58, &v73);

        *(v51 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v50, v49, "Failed to add restored pipeline to memory storage for episode %{public}s", v51, 0xCu);
        sub_100004590(v52);
      }

      v36 = 0;
    }

    a3 = v63;
  }

  else
  {
LABEL_20:
    v36 = 0;
  }

  *a3 = v36;
}

void sub_10035FE1C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v9 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v9, v8))
  {
    swift_retain_n();
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v10 = 136446722;
    v35 = v8;
    v11 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
    v12 = *(v7 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    v34 = v9;
    v13 = v12;
    OS_dispatch_queue.sync<A>(execute:)();

    v14 = &v6[*(v4 + 20)];
    v37 = a2;
    v16 = *v14;
    v15 = v14[1];

    sub_10037125C(v6, type metadata accessor for DownloadJob);
    v17 = sub_1000153E0(v16, v15, &v43);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2082;
    v18 = *(v7 + v11);
    OS_dispatch_queue.sync<A>(execute:)();

    v19 = &v6[*(v4 + 32)];
    v21 = *v19;
    v20 = *(v19 + 1);
    v22 = v19[16];

    sub_10037125C(v6, type metadata accessor for DownloadJob);
    v38 = 0x496E6F6973736553;
    v39 = 0xEB00000000203A44;
    if (v22)
    {
      v23 = 1936484398;
    }

    else
    {
      v23 = 0x7261646E6174732ELL;
    }

    v42._countAndFlagsBits = v21;
    v42._object = v20;
    if (v22)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE900000000000064;
    }

    v25._countAndFlagsBits = v23;
    v25._object = v24;
    String.append(_:)(v25);

    String.append(_:)(v42);

    v26 = sub_1000153E0(v38, v39, &v43);

    *(v10 + 14) = v26;
    *(v10 + 22) = 2050;
    v27 = *(v7 + v11);
    sub_100168088(&qword_100574900, &unk_100400AA0);
    OS_dispatch_queue.sync<A>(execute:)();

    v28 = v40;
    v29 = v41;
    sub_1000044A0(&v38, v40);
    v30 = (*(v29 + 24))(v28, v29);
    sub_100004590(&v38);

    *(v10 + 24) = v30;

    v9 = v34;
    _os_log_impl(&_mh_execute_header, v34, v35, "Restored job for episode: %{public}s, session: %{public}s, task: %{public}ld", v10, 0x20u);
    swift_arrayDestroy();
  }

  sub_100170EBC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    sub_100366FE8(v7, &unk_1004F0C70, sub_100370F14, &unk_1004F0C88);
  }
}

void sub_100360290(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  _StringGuts.grow(_:)(35);

  v26 = 0xD000000000000021;
  v27 = 0x8000000100472080;
  swift_getErrorValue();
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  sub_100370B38();

  v9 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v10 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = a2;
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 136446722;
    v26 = 0x496E6F6973736553;
    v27 = 0xEB00000000203A44;
    v13 = (a4 & 1) == 0;
    if (a4)
    {
      v14 = 1936484398;
    }

    else
    {
      v14 = 0x7261646E6174732ELL;
    }

    if (v13)
    {
      v15 = 0xE900000000000064;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v16._countAndFlagsBits = v14;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = v11;
    v17._object = a3;
    String.append(_:)(v17);

    v18 = sub_1000153E0(v26, v27, &v25);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    sub_100168088(&qword_100574900, &unk_100400AA0);
    v19 = Array.description.getter();
    v21 = sub_1000153E0(v19, v20, &v25);

    *(v12 + 14) = v21;
    *(v12 + 22) = 2082;
    swift_getErrorValue();
    v22 = Error.localizedDescription.getter();
    v24 = sub_1000153E0(v22, v23, &v25);

    *(v12 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v10, v9, "Failed to restore download jobs for session: %{public}s tasks: %{public}s, error: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100360558(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v66 = a2;
  v67 = a1;
  v8 = type metadata accessor for EpisodeMetadata(0);
  __chkstk_darwin();
  v10 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&unk_1005817E0, qword_100410CF0);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v58[-v12];
  if ([*&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_reachability] isReachable])
  {
    v64 = a4;
    v14 = 0xD00000000000002DLL;
    v15 = *sub_1000044A0(&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration], *&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration + 24]);
    v65 = a3;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = "ts.downloads.episodes.restore";
      }

      else
      {
        v16 = "ts.downloads.episodes.headers";
        v14 = 0xD00000000000002FLL;
      }
    }

    else if (v15)
    {
      v16 = "sodes.userInitiated";
    }

    else
    {
      v14 = 0xD000000000000033;
      v16 = "bytes";
    }

    v23 = v16 | 0x8000000000000000;
    __chkstk_darwin();
    *&v58[-32] = v4;
    *&v58[-24] = v14;
    v57 = v23;
    sub_100168088(&qword_1005817D8, &qword_10040F680);
    OS_dispatch_queue.sync<A>(execute:)();

    if (v70)
    {
      v62 = *(&v70 + 1);
      v63 = v70;
      v24 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
      v61 = [v24 integerForKey:kMTCellularDownloadLimitKey];

      v25 = *&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_limitsHolder];
      v60 = [v25 audioLimit];
      swift_unknownObjectRetain();
      v26 = v67;
      v27 = v66;
      sub_1003A2E48(v67, v66, v13);
      swift_unknownObjectRelease();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = *v13;
        v28 = *(v13 + 1);
        v30 = v13[16];
        v59 = static os_log_type_t.error.getter();
        sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
        v31 = static OS_os_log.downloads.getter();
        sub_100168088(&unk_100574670, &qword_100400AB0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_100400790;
        *&v70 = v29;
        *(&v70 + 1) = v28;
        v33 = v29;
        v34 = v28;
        LOBYTE(v71) = v30;
        sub_1002178A8();
        v35 = Error.localizedDescription.getter();
        v37 = v36;
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = sub_100022C18();
        *(v32 + 32) = v35;
        *(v32 + 40) = v37;
        os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v31, "Failed to fetch metadata for episode %{public}s", 47, 2, v32);

        sub_10033CB14(v33, v34, v30);
        v38 = swift_allocObject();
        v38[2] = v5;
        v38[3] = v26;
        v38[4] = v27;
        v38[5] = 0;
        v39 = v60;
        v38[6] = 0;
        v38[7] = v39;
        v38[8] = v61;
        v40 = sub_100370E84;
      }

      else
      {
        sub_100370EAC(v13, v10, type metadata accessor for EpisodeMetadata);
        if (v10[*(v8 + 48)])
        {
          v46 = &selRef_videoLimit;
        }

        else
        {
          v46 = &selRef_audioLimit;
        }

        v47 = [v25 *v46];
        v48 = &v10[*(v8 + 52)];
        v49 = *v48;
        v50 = v27;
        v51 = v48[8];
        v53 = *(v10 + 8);
        v52 = *(v10 + 9);

        sub_10037125C(v10, type metadata accessor for EpisodeMetadata);
        v38 = swift_allocObject();
        v38[2] = v5;
        v38[3] = v26;
        v38[4] = v50;
        v38[5] = v53;
        v38[6] = v52;
        v38[7] = v47;
        v54 = v61;
        v38[8] = v61;
        v40 = sub_10037138C;
        if ((v51 & 1) != 0 || v47 >= v49)
        {
          v27 = v66;
        }

        else
        {
          v27 = v66;
          if (v54)
          {
            v41 = 0;
            goto LABEL_28;
          }
        }
      }

      v41 = 1;
LABEL_28:
      sub_100168088(&qword_100574690, &unk_100401BA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100400790;
      *(inited + 32) = v26;
      *(inited + 40) = v27;
      swift_bridgeObjectRetain_n();
      v5;
      v56 = sub_10039B51C(inited);
      swift_setDeallocating();
      sub_1002D23B8(inited + 32);

      sub_100361770(v56, v63, v62, 1, v41, v40, v38, v65, v64);

      swift_unknownObjectRelease();
    }

    v42 = v65;
    v43 = v67;
    if (!v65)
    {
      return result;
    }

    sub_100168088(&qword_100574690, &unk_100401BA0);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_100400790;
    *(v44 + 32) = v43;
    *(v44 + 40) = v66;

    v45 = sub_10039B51C(v44);
    swift_setDeallocating();
    sub_1002D23B8(v44 + 32);
    v42(v45);
  }

  v17 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v18 = static OS_os_log.downloads.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Drop user initiated episode download. Network is not reachable.", 63, 2, _swiftEmptyArrayStorage);

  sub_100010430(v5 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v68, &qword_100581778, &qword_10040F648);
  if (v69)
  {
    sub_1000044A0(v68, v69);
    v70 = 0u;
    v71 = 0u;
    v72 = 0;
    v73 = 2;
    sub_1001D5888(&v70);
    result = sub_100004590(v68);
  }

  else
  {
    result = sub_100009104(v68, &qword_100581778, &qword_10040F648);
  }

  v20 = v67;
  if (a3)
  {
    sub_100168088(&qword_100574690, &unk_100401BA0);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_100400790;
    *(v21 + 32) = v20;
    *(v21 + 40) = v66;

    v22 = sub_10039B51C(v21);
    swift_setDeallocating();
    sub_1002D23B8(v21 + 32);
    a3(v22);
  }

  return result;
}

uint64_t sub_100360D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin().n128_u64[0];
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_reachability) isReachableViaWifi])
  {
    return 0;
  }

  v20 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_finalCheckBeforStart);
  if (!v20)
  {
    return 0;
  }

  v27 = a5;
  v29 = v20;
  type metadata accessor for DownloadableURLOptions();
  v28 = a8;
  v21 = type metadata accessor for EpisodeMetadata(0);
  (*(v16 + 16))(v19, a1 + *(v21 + 44), v15);

  v22 = DownloadableURLOptions.__allocating_init(_:nonAppInitiated:)();
  v23 = sub_10035E2A8();
  type metadata accessor for DownloadPreflightValidator();
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  *(v24 + 32) = v27;
  *(v24 + 40) = a6;
  *(v24 + 48) = v23;
  *(v24 + 56) = 0;
  v25 = v30;
  *(v24 + 64) = 0x4024000000000000;
  *(v24 + 72) = v25;
  *(v24 + 96) = 1;
  *(v24 + 80) = v28;
  *(v24 + 88) = v22;

  return v24;
}

void sub_100360F50(uint64_t a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v79 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v78 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  if (!*(a1 + 16))
  {
    v15 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v16 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "No uuids provided for auto download. Nothing to do.", 51, 2, _swiftEmptyArrayStorage);

    if (a3)
    {
      a3(v11);
    }

    return;
  }

  v12 = (v4 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration);
  v68 = a3;
  if ((a2 & 1) == 0)
  {
    v17 = *sub_1000044A0(v12 + 5, v12[8]);
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        v14 = "ts.downloads.episodes.headers";
        goto LABEL_21;
      }

      v19 = "com.apple.podcasts.downloads.episodes.headers";
    }

    else
    {
      if (!v17)
      {
        v14 = "bytes";
        goto LABEL_21;
      }

      v19 = "com.apple.podcasts.downloads.episodes.restore";
    }

    v14 = (v19 - 32);
    goto LABEL_21;
  }

  v13 = *sub_1000044A0(v12 + 10, v12[13]);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      v14 = "ts.downloads.episodes.headers";
      goto LABEL_21;
    }

    v18 = "com.apple.podcasts.downloads.episodes.headers";
    goto LABEL_16;
  }

  if (v13)
  {
    v18 = "com.apple.podcasts.downloads.episodes.restore";
LABEL_16:
    v14 = (v18 - 32);
    goto LABEL_21;
  }

  v14 = "bytes";
LABEL_21:
  v20 = v14 | 0x8000000000000000;
  __chkstk_darwin();
  *(&v63 - 4) = v4;
  *(&v63 - 3) = v21;
  v61 = v20;
  sub_100168088(&qword_1005817D8, &qword_10040F680);
  OS_dispatch_queue.sync<A>(execute:)();

  v64 = v84;
  v66 = a2;
  v67 = a4;
  v65 = v83;
  if (v83)
  {
    v22 = v11;
    v23 = v11 + 56;
    v24 = 1 << *(v11 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v11 + 56);
    v74 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage;
    v27 = (v24 + 63) >> 6;

    v28 = 0;
    v69 = xmmword_100400790;
    v72 = v4;
    v73 = v11;
    v70 = v27;
    v71 = v11 + 56;
    while (v26)
    {
LABEL_31:
      v75 = v28;
      v76 = v26;
      v30 = (*(v22 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v26)))));
      v31 = v30[1];
      v82 = *v30;
      v32 = *(v5 + v74);
      v33 = *(v32 + 16);

      [v33 lock];
      swift_beginAccess();
      v77 = v32;
      v34 = *(v32 + 24);
      if (v34 >> 62)
      {
        v35 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v35)
      {
        v36 = 0;
        v80 = v34 & 0xFFFFFFFFFFFFFF8;
        v81 = v34 & 0xC000000000000001;
        while (1)
        {
          if (v81)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (v36 >= *(v80 + 16))
            {
              goto LABEL_67;
            }

            v37 = *(v34 + 8 * v36 + 32);

            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_66;
            }
          }

          v39 = *(v37 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
          v40 = v31;
          v41 = v78;
          v42 = v79;
          OS_dispatch_queue.sync<A>(execute:)();

          v43 = &v41[*(v42 + 20)];
          v45 = *v43;
          v44 = *(v43 + 1);

          v46 = v41;
          v31 = v40;
          sub_10037125C(v46, type metadata accessor for DownloadJob);
          if (v45 == v82 && v44 == v40)
          {
            break;
          }

          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v48)
          {
            goto LABEL_50;
          }

          ++v36;
          if (v38 == v35)
          {
            goto LABEL_48;
          }
        }

LABEL_50:
      }

      else
      {
LABEL_48:
        v40 = v31;

        v37 = 0;
      }

      [*(v77 + 16) unlock];

      v22 = v73;
      v27 = v70;
      v23 = v71;
      v49 = v40;
      if (v37)
      {

        v50 = static os_log_type_t.error.getter();
        sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
        v51 = static OS_os_log.downloads.getter();
        sub_100168088(&unk_100574670, &qword_100400AB0);
        v52 = v22;
        v53 = swift_allocObject();
        *(v53 + 16) = v69;
        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = sub_100022C18();
        *(v53 + 32) = v82;
        *(v53 + 40) = v49;

        os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v51, "Download for episode uuid %{public}s is already in flight", 57, 2, v53);

        v22 = v52;
      }

      v26 = (v76 - 1) & v76;

      v5 = v72;
      v28 = v75;
    }

    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {

        if (v66)
        {
          v54 = 0;
          v56 = v67;
          v55 = v68;
          goto LABEL_59;
        }

        v57 = *(v5 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_reachability);
        v58 = [v57 isReachableViaCellular];
        v56 = v67;
        v55 = v68;
        if (v58 && ([v57 isPodcastsCellularDownloadsEnabled] & 1) == 0)
        {
          v59 = static os_log_type_t.error.getter();
          sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
          v60 = static OS_os_log.downloads.getter();
          os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v60, "Can't proceed with auto/restore download, because Download on Wi-Fi only is turned on.", 88, 2, _swiftEmptyArrayStorage);

          if (v55)
          {
            v55(v22);
          }
        }

        else
        {
          v54 = [v57 isPodcastsCellularDownloadsEnabled];
LABEL_59:
          sub_100361770(v22, v65, v64, 0, v54, 0, 0, v55, v56);
        }

        swift_unknownObjectRelease();
        return;
      }

      v26 = *(v23 + 8 * v29);
      ++v28;
      if (v26)
      {
        v28 = v29;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  v62 = 0;
  v61 = 373;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100361770(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v15 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v15, v14))
  {

    v16 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    *v16 = 134218498;
    *(v16 + 4) = *(a1 + 16);

    *(v16 + 12) = 2080;
    if (a5)
    {
      v17 = 7562617;
    }

    else
    {
      v17 = 28526;
    }

    v18 = a5;
    if (a5)
    {
      v19 = 0xE300000000000000;
    }

    else
    {
      v19 = 0xE200000000000000;
    }

    v20 = sub_1000153E0(v17, v19, &v130);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v21 = Set.description.getter();
    v23 = sub_1000153E0(v21, v22, &v130);

    *(v16 + 24) = v23;
    a5 = v18;
    _os_log_impl(&_mh_execute_header, v15, v14, "About to start %ld autodownloads, cellular allowed: %s. %{public}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  v24 = &OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userEpisodeStorage;
  v25 = a4 & 1;
  if ((a4 & 1) == 0)
  {
    v24 = &OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_systemEpisodeStorage;
  }

  v26 = &v10[*v24];
  v28 = *v26;
  v27 = *(v26 + 1);
  BatchEpisodeMetadataOperation = type metadata accessor for FetchBatchEpisodeMetadataOperation();
  v30 = objc_allocWithZone(BatchEpisodeMetadataOperation);
  v31 = &v30[OBJC_IVAR____TtC8Podcasts34FetchBatchEpisodeMetadataOperation_episodeStorage];
  *v31 = v28;
  *(v31 + 1) = v27;
  *&v30[OBJC_IVAR____TtC8Podcasts34FetchBatchEpisodeMetadataOperation_uuids] = a1;
  v139.receiver = v30;
  v139.super_class = BatchEpisodeMetadataOperation;
  swift_unknownObjectRetain_n();

  v119 = objc_msgSendSuper2(&v139, "init");
  v32 = swift_allocObject();
  v117 = v25;
  *(v32 + 16) = v25;
  v33 = sub_100168088(&qword_100581758, &qword_10040F628);
  v34 = objc_allocWithZone(v33);
  v35 = &v34[*((swift_isaMask & *v34) + 0x180)];
  *v35 = 0;
  v35[8] = 2;
  v36 = &v34[*((swift_isaMask & *v34) + 0x188)];
  *v36 = sub_100370CCC;
  *(v36 + 1) = v32;
  v138.receiver = v34;
  v138.super_class = v33;
  v37 = objc_msgSendSuper2(&v138, "init");
  v38 = swift_allocObject();
  *(v38 + 16) = v10;
  *(v38 + 24) = v28;
  *(v38 + 32) = v27;
  *(v38 + 40) = a5 & 1;
  *(v38 + 48) = a2;
  *(v38 + 56) = a3;
  v39 = sub_100168088(&qword_100581760, &qword_10040F630);
  v40 = objc_allocWithZone(v39);
  v41 = &v40[*((swift_isaMask & *v40) + 0x180)];
  *v41 = 0;
  v41[8] = 2;
  v42 = &v40[*((swift_isaMask & *v40) + 0x188)];
  *v42 = sub_100370CE8;
  v42[1] = v38;
  v137.receiver = v40;
  v137.super_class = v39;
  swift_unknownObjectRetain();
  v10;
  swift_unknownObjectRetain();
  v122 = objc_msgSendSuper2(&v137, "init");
  started = type metadata accessor for StartJobPipelinesOperation();
  v44 = objc_allocWithZone(started);
  v45 = OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_serialQueue;
  *&v44[v45] = [objc_allocWithZone(NSOperationQueue) init];
  v46 = &v44[OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input];
  *v46 = 0;
  v46[8] = 2;
  v47 = &v44[OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_beforeTakeOff];
  *v47 = a6;
  *(v47 + 1) = a7;
  sub_100013CB4(a6, a7);
  v136.receiver = v44;
  v136.super_class = started;
  v125 = objc_msgSendSuper2(&v136, "init");
  v48 = swift_allocObject();
  *(v48 + 2) = a1;
  *(v48 + 3) = a8;
  *(v48 + 4) = a9;
  v49 = sub_100168088(&unk_100581768, &unk_10040F638);
  v50 = objc_allocWithZone(v49);
  v51 = v50 + *((swift_isaMask & *v50) + 0x180);
  *v51 = 0;
  v51[8] = 2;
  v52 = (v50 + *((swift_isaMask & *v50) + 0x188));
  *v52 = sub_100370D10;
  v52[1] = v48;

  sub_100013CB4(a8, a9);
  v135.receiver = v50;
  v135.super_class = v49;
  v118 = objc_msgSendSuper2(&v135, "init");
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = &v119[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v55 = *&v119[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v56 = *&v119[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v54 = sub_100370D30;
  v54[1] = v53;

  sub_1000112B4(v55, v56);

  ObjectType = swift_getObjectType();
  v58 = swift_conformsToProtocol2();
  if (!v58)
  {
    __break(1u);
    goto LABEL_17;
  }

  v59 = v58;
  v60 = swift_allocObject();
  *(v60 + 24) = v59;
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v60;
  v63 = *(v59 + 72);
  v64 = v119;

  v63(sub_1000319D0, v62, ObjectType, v59);

  v65 = type metadata accessor for BaseOperation();
  v134.receiver = v37;
  v134.super_class = v65;
  v128 = v65;
  objc_msgSendSuper2(&v134, "addDependency:", v64);

  v120 = v64;
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v37[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v68 = *&v37[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v69 = *&v37[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v67 = sub_100371388;
  v67[1] = v66;

  sub_1000112B4(v68, v69);

  v70 = swift_getObjectType();
  v71 = swift_conformsToProtocol2();
  if (!v71)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v72 = v71;
  v73 = swift_allocObject();
  *(v73 + 24) = v72;
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = v73;
  v76 = *(v72 + 72);
  v77 = v37;

  v76(sub_10003B6A0, v75, v70, v72);

  v133.receiver = v122;
  v133.super_class = v128;
  objc_msgSendSuper2(&v133, "addDependency:", v77);

  v116 = v77;
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = &v122[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v80 = *&v122[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v81 = *&v122[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v79 = sub_100370D84;
  v79[1] = v78;

  sub_1000112B4(v80, v81);

  v82 = swift_getObjectType();
  v83 = swift_conformsToProtocol2();
  if (!v83)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v84 = v83;
  v85 = swift_allocObject();
  *(v85 + 24) = v84;
  swift_unknownObjectWeakInit();
  v86 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  *(v87 + 24) = v85;
  v88 = *(v84 + 72);
  v89 = v122;

  v88(sub_10003B6A0, v87, v82, v84);

  v132.receiver = v125;
  v132.super_class = v128;
  objc_msgSendSuper2(&v132, "addDependency:", v89);

  v123 = v89;
  v90 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v91 = &v125[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v92 = *&v125[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v93 = *&v125[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v91 = sub_100370DB8;
  v91[1] = v90;

  sub_1000112B4(v92, v93);

  v94 = swift_getObjectType();
  v95 = swift_conformsToProtocol2();
  if (v95)
  {
    v96 = v95;
    v97 = swift_allocObject();
    *(v97 + 24) = v96;
    swift_unknownObjectWeakInit();
    v98 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = v97;
    v100 = *(v96 + 72);
    v101 = v125;
    v102 = v118;

    v100(sub_10003B6A0, v99, v94, v96);

    v131.receiver = v102;
    v131.super_class = v128;
    objc_msgSendSuper2(&v131, "addDependency:", v101);

    v103 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v104 = swift_allocObject();
    *(v104 + 16) = a8;
    *(v104 + 24) = a9;
    *(v104 + 32) = v117;
    *(v104 + 40) = v103;
    v105 = &v102[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v106 = *&v102[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v107 = *&v102[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
    *v105 = sub_100370E0C;
    v105[1] = v104;
    sub_100013CB4(a8, a9);

    sub_1000112B4(v106, v107);

    v108 = sub_100011218();
    sub_100168088(&unk_100574680, &qword_100401740);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_1004007F0;
    *(v109 + 32) = v120;
    *(v109 + 40) = v116;
    *(v109 + 48) = v123;
    *(v109 + 56) = v101;
    *(v109 + 64) = v102;
    sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
    v110 = v120;
    v111 = v116;
    v112 = v123;
    v113 = v101;
    v114 = v102;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v108 addOperations:isa waitUntilFinished:0];
    swift_unknownObjectRelease();

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_100362468(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  v111 = a2;
  v91 = a3;
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v110 = &v90 - v6;
  v7 = type metadata accessor for EpisodeMetadata(0);
  v108 = *(v7 - 8);
  v109 = v7;
  __chkstk_darwin();
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100168088(&qword_1005817A8, &qword_10040F658);
  __chkstk_darwin();
  v106 = (&v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v117 = (&v90 - v11);
  __chkstk_darwin();
  v105 = &v90 - v12;
  v13 = *a1;
  v14 = *a1 + 64;
  v15 = 1 << *(*a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*a1 + 64);
  v18 = (v15 + 63) >> 6;
  v102 = kPodcastTitle;
  v101 = kPodcastStoreCollectionId;
  v100 = kPodcastFeedUrl;
  v99 = kPodcastUpdatedFeedUrl;
  v98 = kEpisodeGuid;
  v97 = kEpisodeEnclosureUrl;
  v96 = kEpisodeUti;
  v94 = @"adst";
  v93 = @"epdl";
  v112 = v13;

  v19 = 0;
  *&v20 = 136446210;
  v92 = v20;
  v95 = xmmword_1004080E0;
  v118 = v9;
  v103 = v18;
  v104 = v14;
  while (v17)
  {
    v116 = v4;
LABEL_12:
    v25 = __clz(__rbit64(v17)) | (v19 << 6);
    v26 = (*(v112 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v29 = v107;
    v30 = *(v107 + 48);
    v31 = v105;
    sub_1003711F4(*(v112 + 56) + *(v108 + 72) * v25, &v105[v30], type metadata accessor for EpisodeMetadata);
    v32 = *(v29 + 48);
    v33 = v117;
    *v117 = v28;
    v33[1] = v27;
    v114 = type metadata accessor for EpisodeMetadata;
    sub_100370EAC(&v31[v30], v33 + v32, type metadata accessor for EpisodeMetadata);
    v34 = v106;
    sub_100010430(v33, v106, &qword_1005817A8, &qword_10040F658);
    v35 = v34[1];
    v113 = *v34;
    v115 = v35;
    v36 = *(v29 + 48);

    sub_10037125C(v34 + v36, type metadata accessor for EpisodeMetadata);
    sub_100010430(v33, v34, &qword_1005817A8, &qword_10040F658);

    v37 = v118;
    sub_100370EAC(v34 + *(v29 + 48), v118, v114);
    v38 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v39 = static OS_os_log.downloads.getter();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v120 = v41;
      *v40 = v92;
      v42 = sub_1000153E0(v113, v115, &v120);

      *(v40 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v39, v38, "Reporting metrics for episode uuid %{public}s", v40, 0xCu);
      sub_100004590(v41);
      v43 = v118;

      v37 = v43;
    }

    else
    {
    }

    sub_100168088(&unk_10057A6B0, &unk_10040F670);
    inited = swift_initStackObject();
    *(inited + 16) = v95;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v45;
    v46 = *(v37 + 72);
    v114 = v46;
    if (v46)
    {
      v47 = *(v37 + 64);
      v48 = &type metadata for String;
    }

    else
    {
      v47 = 0;
      v48 = 0;
      *(inited + 64) = 0;
    }

    *(inited + 48) = v47;
    *(inited + 56) = v46;
    *(inited + 72) = v48;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v49;
    v50 = *(v37 + 56);
    v115 = inited + 32;
    if (v50 == 1)
    {
      v51 = 0;
      v52 = 0;
      *(inited + 104) = 0;
      *(inited + 112) = 0;
    }

    else
    {
      v51 = *(v37 + 48);
      v52 = &type metadata for Int64;
    }

    *(inited + 96) = v51;
    *(inited + 120) = v52;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v53;
    if (*(v37 + 88))
    {
      v54 = *(v37 + 80);
      v55 = *(v37 + 88);
      v56 = &type metadata for String;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(inited + 160) = 0;
    }

    *(inited + 144) = v54;
    *(inited + 152) = v55;
    *(inited + 168) = v56;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v57;
    if (*(v37 + 104))
    {
      v58 = *(v37 + 96);
      v59 = *(v37 + 104);
      v60 = &type metadata for String;
    }

    else
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      *(inited + 208) = 0;
    }

    *(inited + 192) = v58;
    *(inited + 200) = v59;
    *(inited + 216) = v60;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v61;
    v62 = v37;
    v63 = *(v37 + 24);
    if (v63)
    {
      v64 = *(v62 + 16);
      v65 = &type metadata for String;
    }

    else
    {
      v64 = 0;
      v65 = 0;
      *(inited + 256) = 0;
    }

    *(inited + 240) = v64;
    *(inited + 248) = v63;
    *(inited + 264) = v65;
    *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 280) = v66;
    v67 = v109;

    v68 = v62;
    v69 = URL.absoluteString.getter();
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = v69;
    *(inited + 296) = v70;
    *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 328) = v71;
    if (*(v62 + *(v67 + 48)))
    {
      v72 = 0x6F65646976;
    }

    else
    {
      v72 = 0x6F69647561;
    }

    *(inited + 360) = &type metadata for String;
    *(inited + 336) = v72;
    *(inited + 344) = 0xE500000000000000;
    v73 = sub_10016A998(inited);
    swift_setDeallocating();
    sub_100168088(&unk_10057A6C0, &unk_100407AD0);
    swift_arrayDestroy();
    v74 = v116;
    sub_10035DEC4(v73);
    v76 = v75;
    v4 = v74;

    v77 = v68 + *(v67 + 60);
    v78 = v110;
    sub_100010430(v77, v110, &qword_100574760, &unk_1003FEB60);
    v79 = type metadata accessor for Date();
    LODWORD(v73) = (*(*(v79 - 8) + 48))(v78, 1, v79);
    sub_100009104(v78, &qword_100574760, &unk_1003FEB60);
    if (v73 != 1)
    {
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = &type metadata for String;
      *&v120 = v83;
      *(&v120 + 1) = v84;
      sub_10016B7CC(&v120, v119);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v76;
      sub_10025E908(v119, v80, v82, isUniquelyReferenced_nonNull_native);

      v76 = v122;
    }

    v18 = v103;
    sub_100009F1C(0, &unk_100573E20, off_1004D1B80);
    v86 = [swift_getObjCClassFromMetadata() sharedInstance];
    sub_10025810C(v76);

    v87.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (v111)
    {
      v21 = 0;
      isa = v87.super.isa;
      v23 = v93;
    }

    else
    {
      v21 = 1;
      isa = v87.super.isa;
      v23 = v94;
    }

    [v86 reportWithType:v21 userInfo:isa location:v23 reason:0];
    v14 = v104;
    v17 &= v17 - 1;

    sub_10037125C(v118, type metadata accessor for EpisodeMetadata);
    sub_100009104(v117, &qword_1005817A8, &qword_10040F658);
  }

  while (1)
  {
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v24 >= v18)
    {
      v88 = v112;

      v89 = v91;
      *v91 = v88;
      *(v89 + 8) = 0;

      return;
    }

    v17 = *(v14 + 8 * v24);
    ++v19;
    if (v17)
    {
      v116 = v4;
      v19 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_100362DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void ***a8@<X8>)
{
  v157 = a8;
  v174 = a6;
  v173 = a5;
  v141 = a3;
  v142 = a4;
  v164 = type metadata accessor for DispatchWorkItemFlags();
  v185 = *(v164 - 8);
  __chkstk_darwin();
  v163 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v184 = *(v140 - 8);
  __chkstk_darwin();
  v139 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v137 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for DispatchQoS();
  *&v182 = *(v162 - 8);
  __chkstk_darwin();
  v165 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for DispatchTimeInterval();
  v15 = *(v156 - 8);
  __chkstk_darwin();
  v146 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v155 = &v119 - v17;
  __chkstk_darwin();
  v145 = &v119 - v18;
  v154 = type metadata accessor for URL();
  v19 = *(v154 - 8);
  __chkstk_darwin();
  v153 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v119 - v21;
  v186 = type metadata accessor for EpisodeMetadata(0);
  v177 = *(v186 - 1);
  __chkstk_darwin();
  v152 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v151 = &v119 - v23;
  v136 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v150 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v149 = &v119 - v25;
  __chkstk_darwin();
  v143 = &v119 - v26;
  v176 = sub_100168088(&qword_1005817A8, &qword_10040F658);
  __chkstk_darwin();
  v183 = (&v119 - v27);
  v28 = *a1;
  v29 = static os_log_type_t.default.getter();
  v169 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v30 = static OS_os_log.downloads.getter();
  v168 = sub_100168088(&unk_100574670, &qword_100400AB0);
  v31 = swift_allocObject();
  v167 = xmmword_100400790;
  *(v31 + 16) = xmmword_100400790;
  v32 = *(v28 + 16);
  *(v31 + 56) = &type metadata for Int;
  *(v31 + 64) = &protocol witness table for Int;
  *(v31 + 32) = v32;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Fetched metadata for %d episodes.", v119);

  v33 = a2;

  v209 = _swiftEmptyArrayStorage;
  v34 = v28 + 64;
  v35 = 1 << *(v28 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v28 + 64);
  v166 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter;
  v134 = v33 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_mediaLibraryClient;
  v135 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_jobStorage;
  v133 = v33 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_dsidProvider;
  v132 = v33 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_artworkStorage;
  v131 = v33 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_assetsFolder;
  v38 = (v35 + 63) >> 6;
  v175 = a7;
  v172 = a7 + 40;
  v160 = (v185 + 8);
  v161 = &v202;
  v159 = (v182 + 8);
  v147 = (v15 + 16);
  v148 = (v19 + 16);
  v130 = "ne for uuid %{public}s";
  v129 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v127 = (v15 + 8);
  v128 = v184 + 104;
  v126 = (v19 + 8);
  v178 = v28;

  v39 = 0;
  v40 = _swiftEmptyArrayStorage;
  v185 = v33;
  v170 = v38;
  v171 = v34;
LABEL_4:
  v184 = v40;
  while (1)
  {
    if (!v37)
    {
      while (1)
      {
        v47 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v47 >= v38)
        {
          break;
        }

        v37 = *(v34 + 8 * v47);
        ++v39;
        if (v37)
        {
          v39 = v47;
          goto LABEL_12;
        }
      }

      aBlock = _swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_55;
      }

      v109 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v110 = v158;
      if (!v109)
      {
        goto LABEL_56;
      }

      goto LABEL_37;
    }

LABEL_12:
    v48 = __clz(__rbit64(v37)) | (v39 << 6);
    v49 = (*(v178 + 48) + 16 * v48);
    v50 = *v49;
    v40 = v49[1];
    v51 = v183;
    v52 = v183 + *(v176 + 48);
    sub_1003711F4(*(v178 + 56) + *(v177 + 72) * v48, v52, type metadata accessor for EpisodeMetadata);
    *v51 = v50;
    v51[1] = v40;
    v33 = *(v52 + 32);
    v53 = *(v52 + 40);
    v54 = v52 + v186[13];
    v55 = *(v54 + 8);
    *&v182 = v40;
    v179 = v50;
    if ((v55 & 1) == 0)
    {
      v58 = *v54;

      goto LABEL_27;
    }

    v56 = v52 + v186[14];
    v57 = *(v52 + v186[12]);
    if (*(v56 + 8))
    {

      if (v57)
      {
        v58 = 339256146;
      }

      else
      {
        v58 = 44055796;
      }

      goto LABEL_27;
    }

    v59 = *v56;
    if (v57)
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v61 = (v60 & 1) != 0 ? 14685.2654 : 188475.637;
    }

    else
    {

      v61 = 14685.2654;
    }

    v62 = v61 * v59;
    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v62 <= -9.22337204e18)
    {
      goto LABEL_53;
    }

    if (v62 >= 9.22337204e18)
    {
      goto LABEL_54;
    }

    v58 = v62;
LABEL_27:
    v37 &= v37 - 1;
    ObjectType = swift_getObjectType();
    (*(v175 + 40))(&aBlock, v208, v52 + v186[11], v33, v53, v173 & 1, v58, 0, ObjectType, v175);
    v180 = aBlock;
    v181 = v201;
    v65 = v202;
    v64 = v203;
    v66 = v204;
    sub_100010430(v208, &v206, &unk_1005817B0, &unk_10040F660);
    if (v207)
    {
      sub_1000109E4(&v206, &aBlock);
      v71 = v143;
      UUID.init()();
      v72 = v204;
      v184 = v203;
      v124 = v204;
      v123 = sub_1000044A0(&aBlock, v203);
      v125 = *(v72 + 3);

      v125 = v125(v184, v124);
      v73 = v136;
      v74 = *(v136 + 36);
      v184 = type metadata accessor for EpisodeMetadata;
      sub_1003711F4(v52, v71 + v74, type metadata accessor for EpisodeMetadata);
      Date.init()();
      *(v71 + v73[7]) = v125;
      v75 = v71 + v73[8];
      *v75 = v65;
      *(v75 + 8) = v64;
      *(v75 + 16) = v66;
      v76 = (v71 + v73[5]);
      v77 = v182;
      *v76 = v179;
      v76[1] = v77;
      v78 = v71 + v73[10];
      *v78 = 0;
      *(v78 + 8) = 0;
      *(v78 + 16) = 0;
      *(v78 + 24) = 1;
      *(v78 + 32) = 0;
      *(v78 + 40) = 0;
      *(v78 + 48) = 0;
      sub_1003711F4(v52, v151, v184);
      sub_1003711F4(v71, v149, type metadata accessor for DownloadJob);
      sub_100004428(&aBlock, &v206);
      v182 = *(v185 + v135);
      sub_100010430(v134, v199, &unk_1005817C0, &qword_100400BB0);
      sub_100004428(v133, v198);
      sub_100004428(v132, v197);
      v79 = v144;
      v80 = v154;
      v179 = *v148;
      v179();
      v81 = qword_100572700;
      v184 = v182;
      swift_unknownObjectRetain();
      if (v81 != -1)
      {
        swift_once();
      }

      v82 = v156;
      v120 = sub_1001825CC(v156, qword_1005931F8);
      v125 = *v147;
      v83 = v145;
      (v125)(v145, v120, v82);
      sub_100010C38(v198, v198[3]);
      v196[3] = &type metadata for AccounStoreDsidProvider;
      v196[4] = &off_1004F1108;
      v124 = type metadata accessor for EpisodeMetadata;
      sub_1003711F4(v151, v152, type metadata accessor for EpisodeMetadata);
      v123 = type metadata accessor for DownloadJob;
      sub_1003711F4(v149, v150, type metadata accessor for DownloadJob);
      sub_100004428(&v206, v195);
      sub_100010430(v199, v194, &unk_1005817C0, &qword_100400BB0);
      sub_100004428(v196, v193);
      sub_100004428(v197, v192);
      (v179)(v153, v79, v80);
      v84 = v82;
      v85 = v125;
      (v125)(v155, v83, v84);
      sub_100010C38(v193, v193[3]);
      v191[3] = &type metadata for AccounStoreDsidProvider;
      v191[4] = &off_1004F1108;
      type metadata accessor for JobPipeline(0);
      v86 = swift_allocObject();
      sub_100010C38(v191, &type metadata for AccounStoreDsidProvider);
      v190[3] = &type metadata for AccounStoreDsidProvider;
      v190[4] = &off_1004F1108;
      v122 = v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate;
      *(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      v87 = OBJC_IVAR____TtC8Podcasts11JobPipeline_secureDownloadRenewalManager;
      type metadata accessor for SecureDownloadRenewalManager();
      *(v86 + v87) = SecureDownloadRenewalManager.__allocating_init()();
      v88 = OBJC_IVAR____TtC8Podcasts11JobPipeline_throttler;
      v121 = OBJC_IVAR____TtC8Podcasts11JobPipeline_throttler;
      v89 = v146;
      v85(v146, v120, v156);
      type metadata accessor for Throttler(0);
      swift_allocObject();
      *(v86 + v88) = sub_1002EE1F8(v89);
      *(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation) = 0;
      *(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline____lazy_storage___operationQueue) = 0;
      v120 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
      v119 = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
      static DispatchQoS.unspecified.getter();
      v187[0] = _swiftEmptyArrayStorage;
      sub_10000E614(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_100168088(&unk_1005729E0, &unk_1003FEB50);
      sub_100015E58(&qword_1005743C0, &unk_1005729E0, &unk_1003FEB50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*v128)(v139, v129, v140);
      *(v86 + v120) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v90 = (v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
      *v90 = 0u;
      v90[1] = 0u;
      v91 = OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel;
      *(v86 + v91) = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
      v92 = (v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter);
      v93 = [objc_opt_self() sharedInstance];
      v92[3] = sub_100009F1C(0, &qword_100574390, PFAutoBugCaptureBugReporter_ptr);
      v92[4] = &protocol witness table for PFAutoBugCaptureBugReporter;
      *v92 = v93;
      v94 = v146;
      (v125)(v146, v155, v156);
      swift_allocObject();
      v95 = sub_1002EE1F8(v94);
      *(v86 + v121) = v95;

      *(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_type) = 0;
      (v179)(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetsFolder, v153, v154);
      v96 = (v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage);
      v97 = v142;
      *v96 = v141;
      v96[1] = v97;
      *(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_jobStorage) = v182;
      sub_100010430(v194, v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_mediaLibraryClient, &unk_1005817C0, &qword_100400BB0);
      sub_100004428(v190, v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_dsidProvider);
      sub_100004428(v192, v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_artworkStorage);
      *(v122 + 8) = &off_1004F0730;
      swift_unknownObjectWeakAssign();
      sub_1003711F4(v152, v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata, v124);
      sub_1003711F4(v150, v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline__job, v123);
      sub_100004428(v195, v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline__task);
      v98 = (v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock);
      v99 = v180;
      v100 = v181;
      *v98 = v180;
      v98[1] = v100;
      type metadata accessor for FairPlayInvalidationManager();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_100013CB4(v99, v100);
      *(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_fairPlayInvalidationManager) = FairPlayInvalidationManager.__allocating_init()();
      v101 = *(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      sub_100168088(&qword_100574900, &unk_100400AA0);
      v102 = v158;
      OS_dispatch_queue.sync<A>(execute:)();
      v158 = v102;

      v103 = v188;
      v104 = v189;
      sub_1000044A0(v187, v188);
      v105 = swift_allocObject();
      v179 = v105;
      swift_weakInit();
      v106 = *(v104 + 136);

      *&v182 = v106(sub_100370E5C, v105, v103, v104);

      sub_1000112B4(v180, v181);
      swift_unknownObjectRelease();
      v184 = *v127;
      (v184)(v155, v156);
      v181 = *v126;
      v107 = v154;
      (v181)(v153, v154);
      sub_100004590(v192);
      sub_100009104(v194, &unk_1005817C0, &qword_100400BB0);
      sub_100004590(v195);
      sub_10037125C(v150, type metadata accessor for DownloadJob);
      sub_10037125C(v152, type metadata accessor for EpisodeMetadata);
      (v184)(v145, v156);
      (v181)(v144, v107);
      sub_100004590(v197);
      sub_100009104(v199, &unk_1005817C0, &qword_100400BB0);
      sub_100004590(&v206);
      sub_10037125C(v149, type metadata accessor for DownloadJob);
      sub_10037125C(v151, type metadata accessor for EpisodeMetadata);
      sub_10037125C(v143, type metadata accessor for DownloadJob);
      sub_100009104(v208, &unk_1005817B0, &unk_10040F660);
      sub_100004590(v196);
      sub_100004590(v190);

      v108 = *(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation);
      *(v86 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation) = v182;

      sub_100004590(v187);
      sub_100004590(v191);
      sub_100004590(v193);
      sub_100004590(v198);
      sub_100004590(&aBlock);
      sub_100009104(v183, &qword_1005817A8, &qword_10040F658);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v40 = v209;
      v33 = v185;
      v38 = v170;
      v34 = v171;
      goto LABEL_4;
    }

    sub_100009104(&v206, &unk_1005817B0, &unk_10040F660);
    v67 = static os_log_type_t.error.getter();
    v68 = static OS_os_log.downloads.getter();
    v69 = swift_allocObject();
    *(v69 + 16) = v167;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = sub_100022C18();
    v70 = v182;
    *(v69 + 32) = v179;
    *(v69 + 40) = v70;

    os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v68, "Failed to create download pipeline for uuid %{public}s", 54, 2, v69);

    v33 = v185;
    sub_100010430(v185 + v166, &v206, &qword_100581778, &qword_10040F648);
    if (v207)
    {
      *&v182 = *(*sub_1000044A0(&v206, v207) + 56);
      v41 = swift_allocObject();
      swift_weakInit();
      v42 = swift_allocObject();
      v179 = v41;
      *(v42 + 16) = v41;
      *(v42 + 24) = 1;
      *(v42 + 32) = 0u;
      *(v42 + 48) = 0u;
      *(v42 + 64) = 2;
      v204 = sub_1001D8838;
      v205 = v42;
      aBlock = _NSConcreteStackBlock;
      v201 = 1107296256;
      v202 = sub_10000F038;
      v203 = &unk_1004F0B20;
      v43 = _Block_copy(&aBlock);

      v44 = v165;
      static DispatchQoS.unspecified.getter();
      v199[0] = _swiftEmptyArrayStorage;
      sub_10000E614(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100168088(&unk_100575CD0, &unk_100400B50);
      sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
      v46 = v163;
      v45 = v164;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v43);
      sub_1000112B4(v180, v181);
      (*v160)(v46, v45);
      (*v159)(v44, v162);
      sub_100009104(v208, &unk_1005817B0, &unk_10040F660);

      v33 = v185;

      sub_100004590(&v206);
    }

    else
    {
      sub_100009104(v208, &unk_1005817B0, &unk_10040F660);
      sub_1000112B4(v180, v181);
      sub_100009104(&v206, &qword_100581778, &qword_10040F648);
    }

    v38 = v170;
    v34 = v171;
    v40 = v184;
    sub_100009104(v183, &qword_1005817A8, &qword_10040F658);
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  v109 = _CocoaArrayWrapper.endIndex.getter();
  v110 = v158;
  if (!v109)
  {
LABEL_56:
    v116 = _swiftEmptyArrayStorage;
LABEL_57:

    v118 = v157;
    *v157 = v116;
    *(v118 + 8) = 0;
    return result;
  }

LABEL_37:
  v111 = 0;
  v186 = (v40 & 0xC000000000000001);
  v112 = v40 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v186)
    {
      v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v114 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v111 >= *(v112 + 16))
      {
        goto LABEL_51;
      }

      v113 = *(v40 + v111 + 4);

      v114 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        v116 = aBlock;
        goto LABEL_57;
      }
    }

    v208[0] = v113;
    v115 = sub_1003645D8(v208, v33);
    if (v110)
    {
      break;
    }

    if (v115)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v110 = 0;
      v40 = v184;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v33 = v185;
    }

    else
    {
    }

    ++v111;
    if (v114 == v109)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003645D8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;

  LODWORD(v8) = sub_1003AC270(v7);

  v9 = static os_log_type_t.default.getter();
  v10 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v11 = static OS_os_log.downloads.getter();
  if (!os_log_type_enabled(v11, v9))
  {

    if (v8)
    {
      return v8 & 1;
    }

LABEL_11:
    sub_100170BCC();
    v36 = static os_log_type_t.error.getter();
    v37 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100400790;
    v39 = *(v7 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    v40 = &v6[*(v4 + 20)];
    v42 = *v40;
    v41 = *(v40 + 1);

    sub_10037125C(v6, type metadata accessor for DownloadJob);
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_100022C18();
    *(v38 + 32) = v42;
    *(v38 + 40) = v41;
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v37, "Skip download for episode uuid %{public}s", 41, 2, v38);

    return v8 & 1;
  }

  swift_retain_n();
  v12 = swift_slowAlloc();
  v48 = v10;
  v13 = v12;
  v47 = swift_slowAlloc();
  v55 = v47;
  *v13 = 136315650;
  v14 = *(v7 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  v45 = v11;
  v15 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v16 = v14;
  OS_dispatch_queue.sync<A>(execute:)();

  v17 = &v6[*(v4 + 20)];
  v46 = v9;
  v18 = *v17;
  v19 = v17[1];

  v49 = v8;
  sub_10037125C(v6, type metadata accessor for DownloadJob);
  v20 = sub_1000153E0(v18, v19, &v55);

  *(v13 + 4) = v20;
  *(v13 + 12) = 2080;
  v21 = *(v7 + v15);
  OS_dispatch_queue.sync<A>(execute:)();
  v44[1] = v2;

  v22 = &v6[*(v4 + 32)];
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = v22[16];

  sub_10037125C(v6, type metadata accessor for DownloadJob);
  v50 = 0x496E6F6973736553;
  v51 = 0xEB00000000203A44;
  if (v25)
  {
    v26 = 1936484398;
  }

  else
  {
    v26 = 0x7261646E6174732ELL;
  }

  v54._countAndFlagsBits = v23;
  v54._object = v24;
  if (v25)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE900000000000064;
  }

  v28._countAndFlagsBits = v26;
  v28._object = v27;
  String.append(_:)(v28);

  String.append(_:)(v54);

  v29 = sub_1000153E0(v50, v51, &v55);

  *(v13 + 14) = v29;
  *(v13 + 22) = 2048;
  v30 = *(v7 + v15);
  sub_100168088(&qword_100574900, &unk_100400AA0);
  OS_dispatch_queue.sync<A>(execute:)();

  v31 = v52;
  v8 = v53;
  sub_1000044A0(&v50, v52);
  v32 = *(v8 + 24);
  v33 = v8;
  LOBYTE(v8) = v49;
  v34 = v32(v31, v33);
  sub_100004590(&v50);

  *(v13 + 24) = v34;

  v35 = v45;
  _os_log_impl(&_mh_execute_header, v45, v46, "Adding job pipeline for episode %s for session %s task %ld", v13, 0x20u);
  swift_arrayDestroy();

  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  return v8 & 1;
}

uint64_t sub_100364B20@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v58 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*a1 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = _swiftEmptyArrayStorage;
  v54 = a4;
  v55 = a5;
  v56 = v15;
  if (!v15)
  {
    goto LABEL_16;
  }

  v57 = v14;
  v59 = _swiftEmptyArrayStorage;
  result = sub_1001A7364(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v52 = a2;
    v53 = a3;
    v16 = v59;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        v19 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v20 = v58;
        OS_dispatch_queue.sync<A>(execute:)();

        swift_unknownObjectRelease();
        v21 = &v13[*(v20 + 20)];
        v22 = *v21;
        v23 = *(v21 + 1);

        sub_10037125C(v13, type metadata accessor for DownloadJob);
        v59 = v16;
        v25 = v16[2];
        v24 = v16[3];
        if (v25 >= v24 >> 1)
        {
          sub_1001A7364((v24 > 1), v25 + 1, 1);
          v16 = v59;
        }

        ++v18;
        v16[2] = v25 + 1;
        v26 = &v16[2 * v25];
        v26[4] = v22;
        v26[5] = v23;
      }

      while (v56 != v18);
    }

    else
    {
      v27 = (v57 + 32);
      v28 = v15;
      do
      {
        v29 = *(*v27 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);

        v30 = v29;
        v31 = v58;
        OS_dispatch_queue.sync<A>(execute:)();
        v57 = v6;

        v32 = &v13[*(v31 + 20)];
        v34 = *v32;
        v33 = *(v32 + 1);

        sub_10037125C(v13, type metadata accessor for DownloadJob);
        v59 = v16;
        v36 = v16[2];
        v35 = v16[3];
        if (v36 >= v35 >> 1)
        {
          sub_1001A7364((v35 > 1), v36 + 1, 1);
          v16 = v59;
        }

        v16[2] = v36 + 1;
        v37 = &v16[2 * v36];
        v37[4] = v34;
        v37[5] = v33;
        ++v27;
        --v28;
        v6 = v57;
      }

      while (v28);
    }

    a2 = v52;
    a3 = v53;
LABEL_16:
    v38 = sub_10039B51C(v16);

    if (*(v38 + 16) <= a2[2] >> 3)
    {
      v59 = a2;

      sub_10036DEC4(v38);

      v39 = v59;
      if (v59[2])
      {
LABEL_18:
        v40 = static os_log_type_t.error.getter();
        sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
        v41 = static OS_os_log.downloads.getter();
        if (os_log_type_enabled(v41, v40))
        {

          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v59 = v43;
          *v42 = 134349314;
          *(v42 + 4) = v39[2];

          *(v42 + 12) = 2082;
          v44 = Set.description.getter();
          v46 = sub_1000153E0(v44, v45, &v59);

          *(v42 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v41, v40, "Skipped adding %{public}ld downloads. %{public}s", v42, 0x16u);
          sub_100004590(v43);
        }

        v47 = v55;
        if (!a3)
        {
          goto LABEL_22;
        }

LABEL_21:
        a3(v39);
LABEL_22:

        *v47 = 0;
        *(v47 + 8) = 0;
        return result;
      }
    }

    else
    {

      v39 = sub_10036F0E4(v38, a2);

      if (v39[2])
      {
        goto LABEL_18;
      }
    }

    v48 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v49 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100400790;
    *(v50 + 56) = &type metadata for Int;
    *(v50 + 64) = &protocol witness table for Int;
    *(v50 + 32) = v56;
    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "Added %d downloads.", v51);

    v47 = v55;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_100365088(uint64_t a1, void (*a2)(void *), uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v31[0] = a1;
    swift_errorRetain();
    sub_100168088(&qword_100575C50, &unk_100402650);
    if (swift_dynamicCast())
    {
      v6 = v33;
      v7 = v34;
      v8 = BYTE8(v34);
      v9 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v10 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100400790;
      v33 = v6;
      *&v34 = v7;
      BYTE8(v34) = v8;
      sub_1002178A8();
      v12 = Error.localizedDescription.getter();
      v14 = v13;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_100022C18();
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to start download with episode metadata error: %{public}s", 64, 2, v11);

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        sub_1003654C4(v6, v7, v8);
        sub_10033CB14(v6, v7, v8);
      }

      else
      {
        sub_10033CB14(v6, v7, v8);
      }
    }

    else
    {
      v23 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v24 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100400790;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = v27;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100022C18();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Failed to start user intiated download, error: %{public}s", 57, 2, v25);

      swift_beginAccess();
      v29 = swift_unknownObjectWeakLoadStrong();
      if (v29)
      {
        v30 = v29;
        sub_100010430(v29 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v31, &qword_100581778, &qword_10040F648);

        if (v32)
        {
          sub_1000044A0(v31, v32);
          v33 = 1;
          v34 = 0u;
          v35 = 0u;
          v36 = 2;
          sub_1001D5888(&v33);
          sub_100004590(v31);
        }

        else
        {
          sub_100009104(v31, &qword_100581778, &qword_10040F648);
        }
      }
    }
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v18 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100022C18();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to create add auto/restore downloads, error: %{public}s", 62, 2, v19);
  }

  if (a2)
  {
    a2(&_swiftEmptySetSingleton);
  }
}

void sub_1003654C4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a3 > 1u)
  {
    if (a3 == 2 && a1)
    {
      v7 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v8 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100400790;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = v11;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100022C18();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Failed to fetch episode metadata %s", v24);

      sub_100010430(v4 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v29, &qword_100581778, &qword_10040F648);
      v13 = v30;
      if (!v30)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_100370B38();
      sub_100010430(v3 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v29, &qword_100581778, &qword_10040F648);
      v13 = v30;
      if (!v30)
      {
        goto LABEL_13;
      }
    }

    sub_1000044A0(v29, v13);
    aBlock = 1;
    v26 = 0u;
    v27 = 0u;
    LOBYTE(v28) = 2;
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100370B38();
    v16 = *(v3 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userEpisodeStorage);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = *(v16 + 16);
    swift_unknownObjectRetain();

    v20 = v18(v19);

    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = a2;
    v21[5] = sub_100370E1C;
    v21[6] = v17;
    *(&v27 + 1) = sub_100370E28;
    v28 = v21;
    aBlock = _NSConcreteStackBlock;
    *&v26 = 1107296256;
    *(&v26 + 1) = sub_10000F038;
    *&v27 = &unk_1004F0AA8;
    v22 = _Block_copy(&aBlock);
    v23 = v20;
    sub_1002179DC(a1, a2, 1u);

    [v23 performBlock:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();

    return;
  }

  v5 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v6 = static OS_os_log.downloads.getter();
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Failed episode downloade, episode is restricted.", 48, 2, _swiftEmptyArrayStorage);

  sub_100010430(v4 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v29, &qword_100581778, &qword_10040F648);
  if (v30)
  {
    sub_1000044A0(v29, v30);
    aBlock = 2;
    v26 = 0u;
    v27 = 0u;
    LOBYTE(v28) = 2;
LABEL_12:
    sub_1001D5888(&aBlock);
    sub_100004590(v29);
    return;
  }

LABEL_13:
  sub_100009104(v29, &qword_100581778, &qword_10040F648);
}

id EpisodeDownloadsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeDownloadsManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100365B48(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v5 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v6 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100400790;
    v19 = a1;
    sub_100217988();
    v8 = Error.localizedDescription.getter();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100022C18();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Couldn't fetch episode title while preparing to show user alert, error %s", v16);

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v12 = result;
    sub_100010430(result + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v17, &qword_100581778, &qword_10040F648);

    if (v18)
    {
      sub_1000044A0(v17, v18);
      v19 = 1;
      v20 = 0u;
      v21 = 0u;
      v13 = 2;
LABEL_8:
      v22 = v13;
      sub_1001D5888(&v19);
      return sub_100004590(v17);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v15 = result;
    sub_100010430(result + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v17, &qword_100581778, &qword_10040F648);

    if (v18)
    {
      sub_1000044A0(v17, v18);
      v19 = a1;
      v20 = a2;
      v21 = 0uLL;
      v13 = 1;
      goto LABEL_8;
    }
  }

  return sub_100009104(v17, &qword_100581778, &qword_10040F648);
}

uint64_t EpisodeDownloadsManager.handleEventsForBackgroundURLSession(identifier:handler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v43 - v11;

  v13 = sub_10016D7BC(a1, a2);
  if (v14)
  {
    v16 = v13;
    v17 = v14;
    v18 = v15;
    v44 = v7;
    v19 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_expectedDownloaderTypes;
    swift_beginAccess();
    v20 = *(v4 + v19);

    LOBYTE(v19) = sub_1002D4798(v16, v17, v20);

    if (v19)
    {
      v21 = sub_100011218();
      sub_100168088(&unk_100574680, &qword_100401740);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1004007B0;
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v25 = v45;
      v26 = v46;
      *(v24 + 16) = v23;
      *(v24 + 24) = v25;
      *(v24 + 32) = v26;
      *(v24 + 40) = v16;
      *(v24 + 48) = v17;
      *(v24 + 56) = v18 & 1;
      *(v24 + 64) = a1;
      *(v24 + 72) = a2;
      v50 = sub_100370A04;
      v51 = v24;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v48 = sub_10000F038;
      v49 = &unk_1004F0500;
      v27 = _Block_copy(&aBlock);
      v28 = objc_opt_self();

      v29 = [v28 blockOperationWithBlock:v27];
      _Block_release(v27);

      *(v22 + 32) = v29;
      sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v21 addOperations:isa waitUntilFinished:0];

      return 1;
    }

    static Logger.downloads.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136446210;
      strcpy(&aBlock, "ConfigType: ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v41._countAndFlagsBits = v16;
      v41._object = v17;
      String.append(_:)(v41);

      v42 = sub_1000153E0(aBlock, *(&aBlock + 1), &v52);

      *(v39 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v37, v38, "No downloader of type %{public}s", v39, 0xCu);
      sub_100004590(v40);
    }

    else
    {
    }

    (*(v8 + 8))(v12, v44);
  }

  else
  {
    static Logger.downloads.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v7;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&aBlock = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_1000153E0(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to handleEventsForBackgroundURLSession for invalid session identifier string: '%{public}s'.", v35, 0xCu);
      sub_100004590(v36);

      (*(v8 + 8))(v10, v34);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }

  return 0;
}

void sub_1003662C0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v40 = a7;
  v41 = type metadata accessor for Logger();
  v13 = *(v41 - 8);
  __chkstk_darwin();
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v38 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v38 = a3;
    v39 = a2;
    __chkstk_darwin();
    *(&v38 - 4) = v20;
    *(&v38 - 3) = a4;
    *(&v38 - 2) = a5;
    sub_100168088(&qword_1005817D8, &qword_10040F680);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v42[0])
    {
      v21 = v42[1];
      static Logger.downloads.getter();

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v42[0] = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_1000153E0(v40, a8, v42);
        _os_log_impl(&_mh_execute_header, v22, v23, "Setting background URLSession handler for sessionIdentifier: %{public}s", v24, 0xCu);
        sub_100004590(v25);
      }

      (*(v13 + 8))(v17, v41);
      ObjectType = swift_getObjectType();
      v27 = *(v21 + 56);
      v28 = v38;

      v27(v39, v28, ObjectType, v21);

      swift_unknownObjectRelease();
    }

    else
    {
      static Logger.downloads.getter();

      v29 = v19;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v43[0] = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = sub_1000153E0(v40, a8, v43);
        *(v32 + 12) = 2082;
        swift_beginAccess();

        sub_100168088(&qword_1005818A8, &qword_10040F718);
        sub_10037117C();
        v33 = Dictionary.description.getter();
        v35 = v34;

        v36 = sub_1000153E0(v33, v35, v43);

        *(v32 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Not handling background URLSession events for unknown sessionIdentifier: %{public}s. Found types: %{public}s", v32, 0x16u);
        swift_arrayDestroy();
      }

      v37 = (*(v13 + 8))(v15, v41);
      (v39)(v37);
    }
  }

  else
  {
    a2();
  }
}

uint64_t sub_100366804(void *a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6)
{
  v83 = a1;
  v10 = type metadata accessor for URL();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin();
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v76 = (&v75 - v12);
  type metadata accessor for AssetDownloadStatus(0);
  __chkstk_darwin();
  v82 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v75 - v14;
  __chkstk_darwin();
  v17 = &v75 - v16;
  __chkstk_darwin();
  v19 = &v75 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v80 = v15, v81 = v17, v21 = a5, v22 = Strong, , v22, v23 = a2, v24 = v83[3], v25 = v83[4], sub_1000044A0(v83, v24), v26 = v24, a5 = v21, v27 = (*(v25 + 24))(v26, v25), v28 = v23, v15 = v80, v17 = v81, v29 = sub_1003ACA40(v27, v28, a3, a4 & 1), , v29))
  {
    sub_1003711F4(v21, v19, type metadata accessor for AssetDownloadStatus);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v62 = sub_100168088(&unk_100579C80, &unk_10040F740);
        v63 = &v19[v62[12]];
        v64 = *v63;
        v65 = v63[8];
        v66 = *&v19[v62[16]];
        v67 = *&v19[v62[20]];
        v69 = v77;
        v68 = v78;
        v70 = v19;
        v71 = v79;
        (*(v78 + 32))(v77, v70, v79);
        sub_100172C64(v69, v64, v65, v66, v67, 0, 0);

        return (*(v68 + 8))(v69, v71);
      }

      sub_1001805A4();
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v31 = *v19;
        v32 = v76;
        (*(v78 + 56))(v76, 1, 1, v79);
        sub_10017DCE8(v31, 0, 0, v32);

        return sub_100009104(v32, &qword_100574040, &unk_100400AD0);
      }

      v74 = *v19;
      sub_10017FB88(*v19, *(v19 + 1), *(v19 + 2), 0);
    }
  }

  else
  {
    v34 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v35 = static OS_os_log.downloads.getter();
    sub_1003711F4(a5, v17, type metadata accessor for AssetDownloadStatus);
    v36 = v83;
    sub_100004428(v83, v85);
    if (os_log_type_enabled(v35, v34))
    {
      v37 = swift_slowAlloc();
      v81 = a5;
      v38 = v37;
      v84 = swift_slowAlloc();
      *v38 = 136446466;
      sub_1003711F4(v17, v15, type metadata accessor for AssetDownloadStatus);
      v39 = String.init<A>(reflecting:)();
      v41 = v40;
      sub_10037125C(v17, type metadata accessor for AssetDownloadStatus);
      v42 = sub_1000153E0(v39, v41, &v84);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      v43 = v86;
      v44 = v87;
      sub_1000044A0(v85, v86);
      v45 = (*(v44 + 56))(v43, v44);
      v47 = v46;
      sub_100004590(v85);
      v48 = sub_1000153E0(v45, v47, &v84);
      v36 = v83;

      *(v38 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v35, v34, "URLSession delivered status update for download that does not exist. Status: %{public}s. Task description:%{public}s", v38, 0x16u);
      swift_arrayDestroy();

      a5 = v81;
    }

    else
    {

      sub_10037125C(v17, type metadata accessor for AssetDownloadStatus);
      sub_100004590(v85);
    }

    v49 = v82;
    sub_1003711F4(a5, v82, type metadata accessor for AssetDownloadStatus);
    v50 = swift_getEnumCaseMultiPayload();
    result = sub_10037125C(v49, type metadata accessor for AssetDownloadStatus);
    if (v50 == 1)
    {
      v51 = static os_log_type_t.error.getter();
      v52 = static OS_os_log.downloads.getter();
      sub_100004428(v36, v85);
      if (os_log_type_enabled(v52, v51))
      {
        v53 = v36;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v84 = v55;
        *v54 = 136446210;
        v56 = v86;
        v57 = v87;
        sub_1000044A0(v85, v86);
        v58 = (*(v57 + 56))(v56, v57);
        v60 = v59;
        sub_100004590(v85);
        v61 = sub_1000153E0(v58, v60, &v84);

        *(v54 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v52, v51, "Cancel untracked download. Task description:%{public}s", v54, 0xCu);
        sub_100004590(v55);

        v36 = v53;
      }

      else
      {

        sub_100004590(v85);
      }

      v72 = v36[3];
      v73 = v36[4];
      sub_1000044A0(v36, v72);
      return (*(v73 + 120))(v72, v73);
    }
  }

  return result;
}

uint64_t sub_100366FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin();
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_delegateQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  v17 = v4;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000E614(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t MTLegacyDownloadProtocol.logDescription.getter(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(376);
  v4._object = 0x80000001004717A0;
  v4._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v4);
  v5 = [v1 podcastUuid];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  sub_100168088(&qword_100574230, &qword_100401FE0);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._object = 0x80000001004717C0;
  v11._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v11);
  v12 = [v2 episodeUuid];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._object = 0x80000001004717E0;
  v18._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v18);
  v19 = [v2 episodeGuid];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v24);

  v25._object = 0x8000000100471800;
  v25._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v25);
  v26 = [v2 storeItemId];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 longLongValue];
  }

  else
  {
    v28 = 0;
  }

  LOBYTE(v74) = v27 == 0;
  sub_100168088(&qword_1005741A0, &qword_100401860);
  v29._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000022;
  v30._object = 0x8000000100471820;
  String.append(_:)(v30);
  v31 = [v2 storeCollectionIdentifier];
  v32 = v31;
  if (v31)
  {
    v33 = [v31 longLongValue];
  }

  else
  {
    v33 = 0;
  }

  LOBYTE(v75) = v32 == 0;
  v34._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v34);

  v35._object = 0x8000000100471850;
  v35._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v35);
  v72 = [v2 downloadBytes];
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x8000000100471870;
  String.append(_:)(v37);
  v73 = [v2 downloadBytes];
  v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0xD000000000000018;
  v39._object = 0x8000000100471890;
  String.append(_:)(v39);
  [v2 downloadProgress];
  v40._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v40);

  v41._object = 0x80000001004718B0;
  v41._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v41);
  [v2 downloadPhase];
  type metadata accessor for MTEpisodeDownloadPhase(0);
  v42._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v42);

  v43._countAndFlagsBits = 0xD00000000000001CLL;
  v43._object = 0x80000001004718D0;
  String.append(_:)(v43);
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *(v44 + 24) = v2;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_100371174;
  *(v45 + 24) = v44;
  v76 = v45;
  swift_unknownObjectRetain();
  sub_100168088(&unk_1005815D8, &unk_10040F508);
  v46._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 0xD00000000000001ELL;
  v47._object = 0x80000001004718F0;
  String.append(_:)(v47);
  [v2 downloadRemainingTime];
  v48._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v48);

  v49._countAndFlagsBits = 0xD000000000000019;
  v49._object = 0x8000000100471910;
  String.append(_:)(v49);
  v50 = [v2 downloadDescription];
  if (v50)
  {
    v51 = v50;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
  }

  else
  {
    v54 = 0xE400000000000000;
    v52 = 1162760014;
  }

  v55._countAndFlagsBits = v52;
  v55._object = v54;
  String.append(_:)(v55);

  v56._object = 0x8000000100471930;
  v56._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v56);
  v57 = [v2 isPausable];
  v58 = v57 == 0;
  if (v57)
  {
    v59 = 5457241;
  }

  else
  {
    v59 = 20302;
  }

  if (v58)
  {
    v60 = 0xE200000000000000;
  }

  else
  {
    v60 = 0xE300000000000000;
  }

  v61 = v60;
  String.append(_:)(*&v59);

  v62._countAndFlagsBits = 0xD000000000000012;
  v62._object = 0x8000000100471950;
  String.append(_:)(v62);
  v63 = [v2 isPaused];
  v64 = v63 == 0;
  if (v63)
  {
    v65 = 5457241;
  }

  else
  {
    v65 = 20302;
  }

  if (v64)
  {
    v66 = 0xE200000000000000;
  }

  else
  {
    v66 = 0xE300000000000000;
  }

  v67 = v66;
  String.append(_:)(*&v65);

  v68._object = 0x8000000100471970;
  v68._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v68);
  [v2 phase];
  type metadata accessor for LegacyDownloadPhase(0);
  v69._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v69);

  v70._countAndFlagsBits = 32010;
  v70._object = 0xE200000000000000;
  String.append(_:)(v70);
  return 0;
}

uint64_t sub_1003679B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), const char *a6)
{
  v27 = a6;
  v28 = type metadata accessor for Logger();
  v10 = *(v28 - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v16 = sub_10020ED6C();
  sub_10037125C(v14, type metadata accessor for DownloadJob);
  v17 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_notifier);
  if (v17)
  {
    [v17 _sendDelegateSelector:*a4 withDownload:{v16, v27}];
  }

  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v18 = Logger.logObject.getter();
  v19 = a5();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    ObjectType = swift_getObjectType();
    v23 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v25 = sub_1000153E0(v23, v24, &v29);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, v27, v20, 0xCu);
    sub_100004590(v21);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v10 + 8))(v12, v28);
}

uint64_t sub_100367CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v10 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_10020ED6C();
  sub_10037125C(v8, type metadata accessor for DownloadJob);
  v11 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_notifier);
  if (v11)
  {
    v26 = "downloadManagerDidRemoveDownloads:";
    sub_100168088(&unk_100574680, &qword_100401740);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1004007B0;
    v13 = *(a1 + v9);
    OS_dispatch_queue.sync<A>(execute:)();

    v14 = sub_10020ED6C();
    sub_10037125C(v8, type metadata accessor for DownloadJob);
    *(v12 + 32) = v14;
    sub_100168088(&unk_100576C80, &qword_1004040F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 _sendDelegateSelector:v26 withDownloads:isa];
  }

  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    ObjectType = swift_getObjectType();
    v21 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v23 = sub_1000153E0(v21, v22, &v29);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Download pipeline did send notification for pipeline cancel: %s", v18, 0xCu);
    sub_100004590(v19);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v27 + 8))(v6, v28);
}

uint64_t sub_10036805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v6 = v5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin();
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);

  v18 = v17;
  OS_dispatch_queue.sync<A>(execute:)();

  v19 = &v16[*(v14 + 20)];
  v20 = *v19;
  v21 = v19[1];

  sub_10037125C(v16, type metadata accessor for DownloadJob);
  sub_1003AC6C4(v20, v21);

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v6;
  aBlock[4] = v27;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  v24 = v6;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10000E614(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v10, v8);
  (*(v29 + 8))(v13, v30);
}

uint64_t sub_1003683FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v39 - v8;
  type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v13 = sub_10020ED6C();
  sub_10037125C(v11, type metadata accessor for DownloadJob);
  v14 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_notifier);
  v15 = &selRef_viewAccountEmail;
  if (v14)
  {
    [v14 _sendDelegateSelector:"downloadManagerWillRemoveDownload:" withDownload:v13];
  }

  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v39 = v9;
    v21 = v20;
    v41[0] = v20;
    *v19 = 136315138;
    ObjectType = swift_getObjectType();
    v23 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v25 = v7;
    v26 = v5;
    v27 = sub_1000153E0(v23, v24, v41);

    *(v19 + 4) = v27;
    v5 = v26;
    v7 = v25;
    v15 = &selRef_viewAccountEmail;
    _os_log_impl(&_mh_execute_header, v16, v17, "Download pipeline did send notification for pipeline removal: %s", v19, 0xCu);
    sub_100004590(v21);

    v4 = v40;

    v28 = *(v5 + 8);
    v28(v39, v4);
  }

  else
  {

    v28 = *(v5 + 8);
    v28(v9, v4);
  }

  if (v14)
  {
    [v14 v15[300]];
  }

  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v5;
    v41[0] = v32;
    v33 = v32;
    *v31 = 136315138;
    v34 = swift_getObjectType();
    v35 = MTLegacyDownloadProtocol.logDescription.getter(v34);
    v37 = sub_1000153E0(v35, v36, v41);

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Download pipeline did send notification for pipeline update: %s", v31, 0xCu);
    sub_100004590(v33);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (v28)(v7, v4);
}

void sub_100368838(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v88 = a3;
  v90 = a2;
  v8 = 0xD00000000000002DLL;
  v9 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10036805C(a1, sub_100371398, &unk_1004F0D88, sub_100370FB0, &unk_1004F0DA0);
  v87 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v12 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v13 = &v11[*(v9 + 32)];
  v15 = *v13;
  v14 = *(v13 + 1);

  sub_10037125C(v11, type metadata accessor for DownloadJob);
  v16 = *sub_1000044A0((v5 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration), *(v5 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration + 24));
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = "ts.downloads.episodes.restore";
    }

    else
    {
      v17 = "ts.downloads.episodes.headers";
      v8 = 0xD00000000000002FLL;
    }
  }

  else if (v16)
  {
    v17 = "sodes.userInitiated";
  }

  else
  {
    v8 = 0xD000000000000033;
    v17 = "bytes";
  }

  if (v15 == v8 && (v17 | 0x8000000000000000) == v14)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      v20 = 0;
      v21 = &OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_systemEpisodeStorage;
      goto LABEL_16;
    }
  }

  v20 = 1;
  v21 = &OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userEpisodeStorage;
LABEL_16:
  v22 = *v21;
  v89 = v5;
  v23 = *(v5 + v22);
  v24 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_type);
  if (!(a4 >> 6))
  {
    if (((v24 | v20 ^ 1) & 1) == 0)
    {
      swift_unknownObjectRetain();
      LODWORD(v88) = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v85 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1004007C0;
      v37 = v87;
      v38 = *(a1 + v87);
      OS_dispatch_queue.sync<A>(execute:)();

      v39 = &v11[*(v9 + 20)];
      v41 = *v39;
      v40 = *(v39 + 1);

      v84 = type metadata accessor for DownloadJob;
      sub_10037125C(v11, type metadata accessor for DownloadJob);
      *(v36 + 56) = &type metadata for String;
      v42 = sub_100022C18();
      v86 = v23;
      v43 = v42;
      *(v36 + 64) = v42;
      *(v36 + 32) = v41;
      *(v36 + 40) = v40;
      swift_getErrorValue();
      v44 = Error.localizedDescription.getter();
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v43;
      *(v36 + 72) = v44;
      *(v36 + 80) = v45;
      v46 = v85;
      os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v85, "Download failed due to network error, uuid: %{public}s, error: %{public}s.", 74, 2, v36);

      v47 = *(a1 + v37);
      OS_dispatch_queue.sync<A>(execute:)();

      v48 = &v11[*(v9 + 20)];
      v50 = *v48;
      v49 = *(v48 + 1);

      sub_10037125C(v11, v84);
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      *(v52 + 24) = a1;
      v53 = *(v86 + 16);

      v55 = v53(v54);

      v56 = swift_allocObject();
      v56[2] = v55;
      v56[3] = v50;
      v56[4] = v49;
      v56[5] = sub_100370F70;
      v56[6] = v52;
      *&aBlock[32] = sub_100370F7C;
      v94 = v56;
      *aBlock = _NSConcreteStackBlock;
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_10000F038;
      *&aBlock[24] = &unk_1004F0D50;
      v57 = _Block_copy(aBlock);
      v58 = v55;

      [v58 performBlock:v57];
      _Block_release(v57);

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_29;
  }

  if (a4 >> 6 != 1)
  {
    if (((v24 | v20 ^ 1) & 1) == 0)
    {
      swift_unknownObjectRetain();
      v71 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v72 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_100400790;
      swift_getErrorValue();
      v74 = Error.localizedDescription.getter();
      v76 = v75;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = sub_100022C18();
      *(v73 + 32) = v74;
      *(v73 + 40) = v76;
      os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v72, "Download failed due to error: %{public}s.", 41, 2, v73);

      sub_100010430(v89 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v95, &qword_100581778, &qword_10040F648);
      if (!v96)
      {
LABEL_46:
        swift_unknownObjectRelease();
LABEL_47:
        sub_100009104(v95, &qword_100581778, &qword_10040F648);
        return;
      }

      sub_1000044A0(v95, v96);
      *aBlock = 1;
      memset(&aBlock[8], 0, 32);
      LOBYTE(v94) = 2;
      sub_1001D5888(aBlock);
      goto LABEL_41;
    }

LABEL_29:
    v59 = a4;
    swift_unknownObjectRetain();
    v60 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v61 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1004007E0;
    v63 = sub_100022C18();
    v64 = v63;
    v65 = 28526;
    *(v62 + 56) = &type metadata for String;
    *(v62 + 64) = v63;
    if (v20)
    {
      v66 = 7562617;
    }

    else
    {
      v66 = 28526;
    }

    if (v20)
    {
      v67 = 0xE300000000000000;
    }

    else
    {
      v67 = 0xE200000000000000;
    }

    *(v62 + 32) = v66;
    *(v62 + 40) = v67;
    if (v24)
    {
      v65 = 7562617;
      v68 = 0xE300000000000000;
    }

    else
    {
      v68 = 0xE200000000000000;
    }

    *(v62 + 96) = &type metadata for String;
    *(v62 + 104) = v63;
    *(v62 + 72) = v65;
    *(v62 + 80) = v68;
    *aBlock = v90;
    *&aBlock[8] = v88;
    aBlock[16] = v59;
    sub_100182864();
    v69 = Error.localizedDescription.getter();
    *(v62 + 136) = &type metadata for String;
    *(v62 + 144) = v64;
    *(v62 + 112) = v69;
    *(v62 + 120) = v70;
    os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v61, "Download failed, do nothing. userInitiated %{public}s, restored: %{public}s error: %{public}s.", 94, 2, v62);

    goto LABEL_53;
  }

  if ((a4 & 0x3F) == 0)
  {
    swift_unknownObjectRetain();
    v77 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v78 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100400790;
    *(v79 + 56) = &type metadata for Int64;
    *(v79 + 64) = &protocol witness table for Int64;
    *(v79 + 32) = v90;
    os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v78, "Cellular download has been cancelled during preflight validation phase for episode size %d.", v83);

    goto LABEL_53;
  }

  if ((a4 & 0x3F) != 1)
  {
    if (v90 | v88)
    {
      if (v90 ^ 1 | v88)
      {
        swift_unknownObjectRetain();
        v82 = static os_log_type_t.default.getter();
        sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
        v81 = static OS_os_log.downloads.getter();
        os_log(_:dso:log:_:_:)(v82, &_mh_execute_header, v81, "Unable to download because no url was provided.", 47, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        swift_unknownObjectRetain();
        v80 = static os_log_type_t.default.getter();
        sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
        v81 = static OS_os_log.downloads.getter();
        os_log(_:dso:log:_:_:)(v80, &_mh_execute_header, v81, "Download has been cancelled during preflight validation phase.", 62, 2, _swiftEmptyArrayStorage);
      }

      goto LABEL_53;
    }

    sub_100010430(v89 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v95, &qword_100581778, &qword_10040F648);
    if (!v96)
    {
      goto LABEL_47;
    }

    sub_1000044A0(v95, v96);
    memset(aBlock, 0, sizeof(aBlock));
    LOBYTE(v94) = 2;
    swift_unknownObjectRetain();
    sub_1001D5888(aBlock);
LABEL_41:
    swift_unknownObjectRelease();
    sub_100004590(v95);
    return;
  }

  swift_unknownObjectRetain();
  v25 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v26 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100400790;
  v28 = *(a1 + v87);
  OS_dispatch_queue.sync<A>(execute:)();

  v29 = &v11[*(v9 + 20)];
  v31 = *v29;
  v30 = *(v29 + 1);

  sub_10037125C(v11, type metadata accessor for DownloadJob);
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_100022C18();
  *(v27 + 32) = v31;
  *(v27 + 40) = v30;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Error downloading episode with subscription and uuid %d.", v83);

  if (v20)
  {
    v32 = _convertErrorToNSError(_:)();
    v33 = [v32 ams_underlyingErrorWithDomain:AKAppleIDAuthenticationErrorDomain code:-7003];

    v34 = v89;
    if (v33)
    {
    }

    swift_getErrorValue();
    if (sub_10036951C(v91, v92))
    {
      sub_100010430(v34 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v95, &qword_100581778, &qword_10040F648);
      if (v96)
      {
        sub_1000044A0(v95, v96);
        v35 = 3;
LABEL_57:
        *aBlock = v35;
        memset(&aBlock[8], 0, 32);
        LOBYTE(v94) = 2;
        sub_1001D5888(aBlock);
        goto LABEL_41;
      }

      goto LABEL_46;
    }

    if (!v33)
    {
      sub_100010430(v34 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v95, &qword_100581778, &qword_10040F648);
      if (v96)
      {
        sub_1000044A0(v95, v96);
        v35 = 1;
        goto LABEL_57;
      }

      goto LABEL_46;
    }
  }

LABEL_53:
  swift_unknownObjectRelease();
}

uint64_t sub_10036951C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v8, v6, a1);
  }

  v9 = _convertErrorToNSError(_:)();

  v10 = [v9 domain];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  type metadata accessor for StandardKeyRequestHandler();
  if (v11 == static StandardKeyRequestHandler.keyRequestLicenseErrorDomain.getter() && v13 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

void *sub_1003696EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 136;
  if (a3)
  {
    v12 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v13 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v14 = swift_allocObject();
    v37 = xmmword_100400790;
    *(v14 + 16) = xmmword_100400790;
    *&v40 = a1;
    sub_100217988();
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100022C18();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Failed to fetch episode title while preparing user alert, error %{public}s", 74, 2, v14);

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = result;
    sub_100010430(result + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v38, &qword_100581778, &qword_10040F648);

    if (v39)
    {
      sub_1000044A0(v38, v39);
      sub_100168088(&qword_100574690, &unk_100401BA0);
      inited = swift_initStackObject();
      *(inited + 16) = v37;
      v21 = *(a5 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      OS_dispatch_queue.sync<A>(execute:)();

      v22 = &v11[*(v9 + 20)];
      v24 = *v22;
      v23 = *(v22 + 1);

      sub_10037125C(v11, type metadata accessor for DownloadJob);
      *(inited + 32) = v24;
      *(inited + 40) = v23;
      v25 = sub_10039B51C(inited);
      swift_setDeallocating();
      sub_1002D23B8(inited + 32);
      v26 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v40 = 0uLL;
      v41 = v25;
      v42 = sub_100370F94;
      v43 = v26;
      v44 = 0;

      sub_1001D5888(&v40);
LABEL_8:

      return sub_100004590(v38);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v28 = result;
    sub_100010430(result + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v38, &qword_100581778, &qword_10040F648);
    sub_100261508(a1, a2, 0);

    if (v39)
    {
      sub_1000044A0(v38, v39);
      sub_100168088(&qword_100574690, &unk_100401BA0);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_100400790;
      v30 = *(a5 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      OS_dispatch_queue.sync<A>(execute:)();

      v31 = &v11[*(v9 + 20)];
      v33 = *v31;
      v32 = *(v31 + 1);

      sub_10037125C(v11, type metadata accessor for DownloadJob);
      *(v29 + 32) = v33;
      *(v29 + 40) = v32;
      v34 = sub_10039B51C(v29);
      swift_setDeallocating();
      sub_1002D23B8(v29 + 32);
      v35 = swift_allocObject();
      swift_beginAccess();
      v36 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      *&v40 = a1;
      *(&v40 + 1) = a2;
      v41 = v34;
      v42 = sub_100371394;
      v43 = v35;
      v44 = 0;

      sub_1001D5888(&v40);
      sub_100261518(a1, a2, 0);
      goto LABEL_8;
    }

    sub_100261518(a1, a2, 0);
  }

  return sub_100009104(v38, &qword_100581778, &qword_10040F648);
}

void sub_100369C14(uint64_t a1, uint64_t a2)
{
  v3 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v4 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100400790;
  v6 = *(a1 + 16);
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Retry %d episode downloads after prior network error.", v16);

  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v9 &= v9 - 1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;

      v15 = String._bridgeToObjectiveC()();
      [v14 downloadEpisode:v15 isFromSaving:0];
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void EpisodeDownloadsManager.restoreDownloadedEpisodes(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v9 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100400790;
  v11 = *(a1 + 16);
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v11;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Add restore downloads for %d episodes", LODWORD(v16[0]));

  v12 = sub_100011218();
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v16[4] = sub_100370A4C;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000F038;
  v16[3] = &unk_1004F0578;
  v14 = _Block_copy(v16);
  v15 = v4;

  sub_100013CB4(a2, a3);

  [v12 addOperationWithBlock:v14];
  _Block_release(v14);
}

Swift::Void __swiftcall EpisodeDownloadsManager.downloadEpisode(_:isFromSaving:)(Swift::String _, Swift::Bool isFromSaving)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v7 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v8 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100022C18();
  *(v9 + 32) = countAndFlagsBits;
  *(v9 + 40) = object;

  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Add user initiated download for episode %{public}s", 50, 2, v9);

  v10 = sub_100011218();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = countAndFlagsBits;
  *(v11 + 32) = object;
  *(v11 + 40) = isFromSaving;
  v14[4] = sub_100370A7C;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10000F038;
  v14[3] = &unk_1004F05C8;
  v12 = _Block_copy(v14);

  v13 = v3;

  [v10 addOperationWithBlock:v12];
  _Block_release(v12);
}

uint64_t sub_10036A25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;

  sub_100360558(a2, a3, sub_100371118, v7);
}

void sub_10036A2FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((sub_1002D4798(a2, a3, a1) & 1) == 0)
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 mainOrPrivateContext];

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = a2;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4 & 1;
    v12[4] = sub_100371164;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10000F038;
    v12[3] = &unk_1004F0F58;
    v10 = _Block_copy(v12);
    v11 = v8;

    [v11 performBlockAndWaitWithSave:v10];
    _Block_release(v10);
  }
}

void sub_10036A454(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = String._bridgeToObjectiveC()();
  v8 = [a1 episodeForUuid:v6];

  if (v8)
  {
    if (a4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    [v8 setDownloadBehavior:v7];
  }
}

void EpisodeDownloadsManager.addEpisodeAutoDownloads(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v9 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v9, v8))
  {

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 134349314;
    *(v10 + 4) = *(a1 + 16);

    *(v10 + 12) = 2082;
    v12 = Set.description.getter();
    v14 = sub_1000153E0(v12, v13, v19);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v8, "Add auto downloads for %{public}ld episodes: %{public}s", v10, 0x16u);
    sub_100004590(v11);
  }

  v15 = sub_100011218();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v19[4] = sub_100370ADC;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10000F038;
  v19[3] = &unk_1004F0618;
  v17 = _Block_copy(v19);

  v18 = v4;
  sub_100013CB4(a2, a3);

  [v15 addOperationWithBlock:v17];
  _Block_release(v17);
}

Swift::Bool __swiftcall EpisodeDownloadsManager.resumeOrPauseEpisodeDownload(withUuid:)(Swift::String withUuid)
{
  v23 = withUuid;
  v2 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);
  v6 = *(v5 + 16);

  [v6 lock];
  swift_beginAccess();
  v7 = *(v5 + 24);
  v20 = v5;
  if (v7 >> 62)
  {
LABEL_25:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v21 = v7 & 0xFFFFFFFFFFFFFF8;
    v22 = v7 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v9 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v10 = *(v7 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_17;
        }
      }

      v12 = *(v10 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      OS_dispatch_queue.sync<A>(execute:)();

      v13 = &v4[*(v2 + 20)];
      v15 = *v13;
      v14 = *(v13 + 1);

      sub_10037125C(v4, type metadata accessor for DownloadJob);
      if (v15 == v23._countAndFlagsBits && v14 == v23._object)
      {

LABEL_20:

        goto LABEL_21;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_20;
      }

      ++v9;
    }

    while (v11 != v8);
  }

  v10 = 0;
LABEL_21:
  [*(v20 + 16) unlock];

  if (v10)
  {
    sub_1001723C8();
  }

  return v10 != 0;
}

Swift::Void __swiftcall EpisodeDownloadsManager.cancelDownloads(forEpisodeUuid:userInitiated:)(Swift::String forEpisodeUuid, Swift::Bool userInitiated)
{
  object = forEpisodeUuid._object;
  countAndFlagsBits = forEpisodeUuid._countAndFlagsBits;
  v5 = sub_100011218();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = countAndFlagsBits;
  *(v7 + 32) = object;
  *(v7 + 40) = userInitiated;
  v9[4] = sub_100370B28;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000F038;
  v9[3] = &unk_1004F0668;
  v8 = _Block_copy(v9);

  [v5 addOperationWithBlock:v8];
  _Block_release(v8);
}

void *EpisodeDownloadsManager.cancelAllDownloads(userInitiated:)(char a1)
{
  v2 = v1;
  v4 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v5 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v4, "Cancelling all downloads. User Initiated: %{BOOL,public}d", v6, 8u);
  }

  v10 = &_swiftEmptySetSingleton;
  v7 = v2;

  sub_1003ADBE4(v8, v7, a1 & 1, &v10);

  return v10;
}

void sub_10036AF50(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v56 = a2;
  v57 = a3;
  v55 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_28;
  }

  v53 = a4;
  v8 = *(Strong + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);
  v9 = Strong;

  [*(v8 + 16) lock];
  swift_beginAccess();
  v52 = v8;
  v10 = *(v8 + 24);
  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v11)
  {
    v12 = 0;
    v54 = v10 & 0xC000000000000001;
    do
    {
      if (v54)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          v11 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        v13 = *(v10 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_18;
        }
      }

      v15 = *(v13 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      v16 = v55;
      OS_dispatch_queue.sync<A>(execute:)();

      v17 = &v6[*(v16 + 20)];
      v19 = *v17;
      v18 = *(v17 + 1);

      sub_10037125C(v6, type metadata accessor for DownloadJob);
      if (v19 == v56 && v18 == v57)
      {

LABEL_21:

        goto LABEL_22;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_21;
      }

      ++v12;
    }

    while (v14 != v11);
  }

  v13 = 0;
LABEL_22:
  [*(v52 + 16) unlock];

  v22 = v53;
  if (v13)
  {
    v23 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v24 = static OS_os_log.downloads.getter();
    v25 = os_log_type_enabled(v24, v23);
    if (v22)
    {
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v26 = 136446210;
        v28 = *(v13 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v29 = v55;
        OS_dispatch_queue.sync<A>(execute:)();

        v30 = &v6[*(v29 + 20)];
        v31 = *v30;
        v32 = v30[1];

        sub_10037125C(v6, type metadata accessor for DownloadJob);
        v33 = sub_1000153E0(v31, v32, aBlock);

        *(v26 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v24, v23, "Cancelling download pipeline for episode uuid %{public}s", v26, 0xCu);
        sub_100004590(v27);
      }

      v34 = [objc_opt_self() sharedInstance];
      v35 = [v34 mainOrPrivateContext];

      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v13;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_100371110;
      *(v37 + 24) = v36;
      aBlock[4] = sub_10002D7F0;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002D904;
      aBlock[3] = &unk_1004F0EE0;
      v38 = _Block_copy(aBlock);

      v39 = v35;

      [v39 performBlockAndWait:v38];
      _Block_release(v38);
      LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

      if (v38)
      {
        __break(1u);
      }

      else
      {
        sub_100170BCC();
      }
    }

    else
    {
      if (v25)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v44 = 136446210;
        v46 = *(v13 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v47 = v55;
        OS_dispatch_queue.sync<A>(execute:)();

        v48 = &v6[*(v47 + 20)];
        v49 = *v48;
        v50 = v48[1];

        sub_10037125C(v6, type metadata accessor for DownloadJob);
        v51 = sub_1000153E0(v49, v50, aBlock);

        *(v44 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v24, v23, "Non-interactive download pipeline cancellation for episode uuid %{public}s", v44, 0xCu);
        sub_100004590(v45);
      }

      sub_100170BCC();
    }
  }

  else
  {
LABEL_28:
    v40 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v41 = static OS_os_log.downloads.getter();
    if (os_log_type_enabled(v41, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1000153E0(v56, v57, aBlock);
      _os_log_impl(&_mh_execute_header, v41, v40, "Trying to cancel download but pipeline with episode uuid %{public}s not found, no download in flight.", v42, 0xCu);
      sub_100004590(v43);
    }
  }
}

void sub_10036B6B0(void *a1, uint64_t a2)
{
  type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_10037125C(v5, type metadata accessor for DownloadJob);
  v7 = String._bridgeToObjectiveC()();

  v8 = [a1 episodeForUuid:v7];

  if (v8)
  {
    [v8 setDownloadBehavior:3];
    [a1 saveInCurrentBlock];
  }
}

Swift::String_optional __swiftcall EpisodeDownloadsManager.episodeUuidForDownload(withAdamID:)(NSNumber withAdamID)
{
  v2 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_1003ACEB8([(objc_class *)withAdamID.super.super.isa longLongValue]);

  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    v7 = &v4[*(v2 + 20)];
    v8 = *v7;
    v9 = v7[1];

    sub_10037125C(v4, type metadata accessor for DownloadJob);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v8;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

void EpisodeDownloadsManager.removeDownload(_:shouldAllowAutomaticRedownloads:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v13 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100400790;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100022C18();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Perform user initiated removal for episode %{public}s", 53, 2, v14);

  v15 = *(v6 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_episodeRemover);
  v16 = String._bridgeToObjectiveC()();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  v19[4] = sub_100370BF8;
  v19[5] = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10000F038;
  v19[3] = &unk_1004F06B8;
  v18 = _Block_copy(v19);

  [v15 removeDownloadedEpisodeWithUuid:v16 completion:v18];
  _Block_release(v18);
}

uint64_t sub_10036BBD4(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = v10;
  v17[4] = sub_1003710FC;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000F038;
  v17[3] = &unk_1004F0E68;
  v12 = _Block_copy(v17);
  v13 = v9;

  [v13 performBlockAndWaitWithSave:v12];
  _Block_release(v12);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v15 = *(v10 + 24);

  a4(a1, a2, v14, v15);
}

void sub_10036BDA8(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 episodeForUuid:v8];

  if (v9)
  {
    if (a4 & 1) != 0 && (v10 = type metadata accessor for Podcasts(), v18[3] = v10, v18[4] = sub_10000E614(&qword_1005742C0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts), v11 = sub_10000E680(v18), (*(*(v10 - 8) + 104))(v11, enum case for Podcasts.serialSortAutoDownloads(_:), v10), LOBYTE(v10) = isFeatureEnabled(_:)(), sub_100004590(v18), (v10))
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    [v9 setDownloadBehavior:v12];
    v13 = [v9 podcastUuid];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0;
    }

    swift_beginAccess();
    *(a5 + 16) = v15;
    *(a5 + 24) = v17;
  }
}

void sub_10036C008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();
  if (a4)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

void EpisodeDownloadsManager.removeDownloadedEpisodes(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.downloads.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19[1] = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v13 = Set.description.getter();
    v15 = sub_1000153E0(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Scheduling work to remove episodes: %{public}s", v11, 0xCu);
    sub_100004590(v12);
  }

  (*(v5 + 8))(v7, v4);
  v16 = sub_100011218();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  aBlock[4] = sub_100370C08;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004F0708;
  v18 = _Block_copy(aBlock);

  [v16 addOperationWithBlock:v18];
  _Block_release(v18);
}

void sub_10036C320()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v1 removeDownloadAssetsForEpisodeUuids:isa];
  }

  else
  {
    __break(1u);
  }
}

Swift::Int __swiftcall EpisodeDownloadsManager.numberOfDownloads(from:)(Swift::String from)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);

  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 numberOfDownloadsFrom:v9];

  static Logger.downloads.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1000153E0(countAndFlagsBits, object, &v17);
    *(v13 + 12) = 2048;
    *(v13 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Data Source reports number of downloads for uuid: %s is: %ld", v13, 0x16u);
    sub_100004590(v14);
  }

  (*(v5 + 8))(v7, v4);
  return v10;
}

Swift::Int __swiftcall EpisodeDownloadsManager.numberOfDownloads()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage) numberOfDownloads];
  static Logger.downloads.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Data Source reports total number of downloads is: %ld", v9, 0xCu);
  }

  (*(v2 + 8))(v5, v1);
  return v6;
}

id EpisodeDownloadsManager.download(at:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage) downloadAtIndex:{a1, v5}];
  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 134218242;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v14 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v16 = sub_1000153E0(v14, v15, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Data Source reports download at index: %ld is: %s", v11, 0x16u);
    sub_100004590(v12);
  }

  (*(v4 + 8))(v7, v3);
  return v8;
}

id EpisodeDownloadsManager.index(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage) indexForDownload:{a1, v5}];
  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v8;
    *(v11 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v14 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v16 = sub_1000153E0(v14, v15, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Data Source reports index (%ld) for download: %s", v11, 0x16u);
    sub_100004590(v12);
  }

  (*(v4 + 8))(v7, v3);
  return v8;
}

id EpisodeDownloadsManager.downloadForEpisode(withUuid:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 downloadForEpisodeWithUuid:v10];

  static Logger.downloads.getter();

  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v5;
    v15 = v14;
    v22 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1000153E0(a1, a2, &v22);
    *(v15 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v17 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v19 = sub_1000153E0(v17, v18, &v22);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Data Source reports download for episode with uuid: %s is: %s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v21);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return v11;
}

uint64_t sub_10036CFA0(void *a1)
{
  v1 = [a1 downloadDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Void __swiftcall EpisodeDownloadsManager.invalidateURLSessions()()
{
  v1 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager__downloaders;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 10) | (16 * v9)) + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 72);
    swift_unknownObjectRetain();
    v12(ObjectType, v10);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10036D188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100168088(a3, a4);
  __chkstk_darwin();
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin();
  v10 = v19 - v9 + 16;
  __chkstk_darwin();
  v12 = v19 - v11 + 16;
  sub_10001B944(a1, v19);
  swift_dynamicCast();
  sub_100010430(v12, v10, a3, a4);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    sub_100009104(v10, a3, a4);
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_100010430(v12, v8, a3, a4);
      v15 = *((swift_isaMask & *v14) + 0x180);
      swift_beginAccess();
      sub_100016A14(v8, v14 + v15, a3, a4);
      swift_endAccess();
LABEL_6:
    }
  }

  return sub_100009104(v12, a3, a4);
}

uint64_t sub_10036D39C(uint64_t a1, uint64_t a2)
{
  sub_10001B944(a1, v15);
  sub_100168088(&unk_100581898, &qword_10040F710);
  swift_dynamicCast();
  v2 = v19;
  if (v19 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = v16;
    v4 = v17;
    v5 = v18;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = v6 + *((swift_isaMask & *v6) + 0x180);
      swift_beginAccess();
      v9 = *v8;
      v10 = *(v8 + 1);
      *v8 = v3;
      *(v8 + 1) = v4;
      v11 = v8[16];
      v8[16] = v5;
      v12 = v8[17];
      v8[17] = v2;
      sub_100371028(v3, v4, v5, v2);
      sub_100370FF0(v9, v10, v11, v12);
LABEL_6:
    }
  }

  return sub_100370FF0(v16, v17, v18, v19);
}

uint64_t sub_10036D558(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_1005735D0, &qword_10040F6F0);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin();
  v6 = v15 - v5 + 16;
  __chkstk_darwin();
  v8 = v15 - v7 + 16;
  sub_10001B944(a1, v15);
  swift_dynamicCast();
  sub_100010430(v8, v6, &qword_1005735D0, &qword_10040F6F0);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    sub_100009104(v6, &qword_1005735D0, &qword_10040F6F0);
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      sub_100010430(v8, v4, &qword_1005735D0, &qword_10040F6F0);
      v11 = *((swift_isaMask & *v10) + 0x198);
      swift_beginAccess();
      sub_100016A14(v4, v10 + v11, &qword_1005735D0, &qword_10040F6F0);
      swift_endAccess();
LABEL_6:
    }
  }

  return sub_100009104(v8, &qword_1005735D0, &qword_10040F6F0);
}

uint64_t sub_10036D7D0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10001B944(a1, &v13);
  sub_100168088(&qword_100578BE0, &unk_100405DA0);
  swift_dynamicCast();
  v4 = v15;
  if (v15 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = v14;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = v6 + *a3;
      v9 = *v8;
      *v8 = v5;
      v10 = *(v8 + 8);
      *(v8 + 8) = v4;
      sub_1000314A0(v5, v4);
      sub_10003163C(v9, v10);
LABEL_6:
    }
  }

  return sub_10003163C(v14, v15);
}

uint64_t sub_10036D968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  sub_10001B944(a1, &v17);
  sub_100168088(a3, a4);
  swift_dynamicCast();
  v8 = v19;
  if (v19 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = v18;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = v10 + *a5;
      v13 = *v12;
      *v12 = v9;
      v14 = *(v12 + 8);
      *(v12 + 8) = v8;
      sub_10003B668(v9, v8);
      sub_10003B684(v13, v14);
LABEL_6:
    }
  }

  return sub_10003B684(v18, v19);
}

void sub_10036DA88(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
    sub_100276194();
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
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

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
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

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1000319D8(a1);
      return;
    }

    while (1)
    {
      v16 = sub_100292F50(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
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

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_10036DCA8(uint64_t a1)
{
  sub_100168088(&unk_100581810, &qword_10040F6A8);
  __chkstk_darwin();
  v4 = v16 - v3;
  v5 = type metadata accessor for ShowInfo();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;
    v16[0] = v6 + 8;
    v16[1] = v6 + 16;

    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_10:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v6 + 16))(v8, *(a1 + 48) + *(v6 + 72) * (v15 | (v14 << 6)), v5);
      sub_10029326C(v8, v4);
      (*(v6 + 8))(v8, v5);
      sub_100009104(v4, &unk_100581810, &qword_10040F6A8);
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(a1 + 56 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_10036DEC4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10029351C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void *sub_10036DFF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
    sub_100276194();
    Set.Iterator.init(_cocoa:)();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_65;
      }

      v71 = v21;
      sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
LABEL_65:
        v53 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v29 = *(v3 + 32);
  v61 = ((1 << v29) + 63) >> 6;
  v5 = 8 * v61;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin();
    v31 = &v60 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v70, v30);
    v32 = *&v31[8 * v4] & ~v15;
    v33 = v3[2];
    v63 = v31;
    *&v31[8 * v4] = v32;
    v4 = v33 - 1;
    v35 = v67;
    v34 = v68;
    v36 = i;
LABEL_33:
    v65 = v4;
    while (v34 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(v3[5]);
      v44 = v3;
      v45 = -1 << *(v3 + 32);
      v46 = v43 & ~v45;
      v47 = v46 >> 6;
      v48 = 1 << v46;
      if (((1 << v46) & v70[v46 >> 6]) != 0)
      {
        v49 = ~v45;
        while (1)
        {
          v8 = *(v44[6] + 8 * v46);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v46 = (v46 + 1) & v49;
          v47 = v46 >> 6;
          v48 = 1 << v46;
          if (((1 << v46) & v70[v46 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v51 = v63[v47];
        v63[v47] = v51 & ~v48;
        v52 = (v51 & v48) == 0;
        v3 = v44;
        v35 = v67;
        v34 = v68;
        v4 = v65;
        v36 = i;
        if (!v52)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v44;
        v35 = v67;
        v34 = v68;
        v4 = v65;
        v36 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v34 + 48) + ((v15 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v15;
LABEL_49:
      v73 = v34;
      v74 = v35;
      v75 = v64;
      v76 = v40;
      v17 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v3 = sub_100370034(v63, v61, v4, v3, &unk_100581840, &qword_100408E88);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v36 <= (v17 + 1))
    {
      v39 = v17 + 1;
    }

    else
    {
      v39 = v36;
    }

    v40 = v39 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v36)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v35 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_10036F654(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  v53 = v73;
LABEL_63:
  sub_1000319D8(v53);
  return v3;
}

char *sub_10036E680(uint64_t a1, char *a2)
{
  sub_100168088(&unk_100581810, &qword_10040F6A8);
  __chkstk_darwin();
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = (&v61 - v7);
  v9 = type metadata accessor for ShowInfo();
  __chkstk_darwin();
  v81 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v12 = (&v61 - v11);
  __chkstk_darwin();
  v76 = (&v61 - v14);
  if (!*(a2 + 2))
  {

    return &_swiftEmptySetSingleton;
  }

  v62 = v8;
  v64 = v6;
  v16 = a1 + 56;
  v15 = *(a1 + 56);
  v17 = -1 << *(a1 + 32);
  v75 = ~v17;
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v83 = (v18 & v15);
  v68 = (63 - v17) >> 6;
  v82 = v13 + 16;
  v73 = (v13 + 48);
  v74 = (v13 + 56);
  v72 = (v13 + 32);
  v78 = a2 + 56;
  v63 = v13;
  v84 = (v13 + 8);

  v20 = 0;
  v65 = a1;
  for (i = a1 + 56; ; v16 = i)
  {
    v21 = v83;
    v22 = v20;
    if (v83)
    {
LABEL_14:
      v2 = (v21 - 1) & v21;
      v26 = v62;
      (*(v63 + 16))(v62, *(a1 + 48) + *(v63 + 72) * (__clz(__rbit64(v21)) | (v22 << 6)), v9);
      v27 = 0;
      v24 = v22;
    }

    else
    {
      v23 = v68 <= (v20 + 1) ? v20 + 1 : v68;
      v24 = v23 - 1;
      v25 = v20;
      while (1)
      {
        v22 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_58;
        }

        if (v22 >= v68)
        {
          break;
        }

        v21 = *(v16 + 8 * v22);
        ++v25;
        if (v21)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v27 = 1;
      v26 = v62;
    }

    v70 = *v74;
    v70(v26, v27, 1, v9);
    v85 = a1;
    v86 = v16;
    v87 = v75;
    v88 = v24;
    v89 = v2;
    v69 = *v73;
    if (v69(v26, 1, v9) == 1)
    {
      sub_100009104(v26, &unk_100581810, &qword_10040F6A8);
      v54 = a1;
      goto LABEL_53;
    }

    v67 = *v72;
    v67(v76, v26, v9);
    v66 = sub_10000E614(&qword_10057E770, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
    v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << a2[32];
    v20 = v28 & ~v29;
    v22 = v20 >> 6;
    v16 = 1 << v20;
    if (((1 << v20) & v78[v20 >> 6]) != 0)
    {
      break;
    }

    (*v84)(v76, v9);
LABEL_22:
    v20 = v24;
    v83 = v2;
  }

  v61 = v84 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v77 = ~v29;
  v30 = *(v63 + 72);
  v79 = *(v63 + 16);
  v80 = v30;
  while (1)
  {
    v79(v12, *(a2 + 6) + v80 * v20, v9);
    v31 = sub_10000E614(&unk_100581820, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v83 = *v84;
    v83(v12, v9);
    if (v32)
    {
      break;
    }

    v20 = (v20 + 1) & v77;
    v22 = v20 >> 6;
    v16 = 1 << v20;
    if (((1 << v20) & v78[v20 >> 6]) == 0)
    {
      a1 = v65;
      v83(v76, v9);
      goto LABEL_22;
    }
  }

  v77 = v31;
  v83(v76, v9);
  v33 = a2[32];
  v61 = ((1 << v33) + 63) >> 6;
  v19 = 8 * v61;
  a1 = v65;
  if ((v33 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v62 = &v61;
    __chkstk_darwin();
    v35 = &v61 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v35, v78, v34);
    v36 = *&v35[8 * v22] & ~v16;
    v37 = *(a2 + 2);
    v76 = v35;
    *&v35[8 * v22] = v36;
    v38 = v37 - 1;
    v20 = v64;
    v39 = i;
    v40 = v68;
LABEL_26:
    v63 = v38;
    while (v2)
    {
      v41 = v24;
LABEL_38:
      v44 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v79(v20, *(a1 + 48) + (v44 | (v41 << 6)) * v80, v9);
      v45 = 0;
LABEL_39:
      v70(v20, v45, 1, v9);
      v85 = a1;
      v86 = v39;
      v87 = v75;
      v88 = v24;
      v89 = v2;
      if (v69(v20, 1, v9) == 1)
      {
        sub_100009104(v20, &unk_100581810, &qword_10040F6A8);
        a2 = sub_100370220(v76, v61, v63, a2);
        goto LABEL_52;
      }

      v67(v81, v20, v9);
      v46 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v47 = a2;
      v48 = -1 << a2[32];
      v49 = v46 & ~v48;
      v22 = v49 >> 6;
      v16 = 1 << v49;
      if (((1 << v49) & v78[v49 >> 6]) != 0)
      {
        v79(v12, *(v47 + 6) + v49 * v80, v9);
        v50 = dispatch thunk of static Equatable.== infix(_:_:)();
        v83(v12, v9);
        if ((v50 & 1) == 0)
        {
          v51 = ~v48;
          do
          {
            v49 = (v49 + 1) & v51;
            v22 = v49 >> 6;
            v16 = 1 << v49;
            if (((1 << v49) & v78[v49 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v79(v12, *(v47 + 6) + v49 * v80, v9);
            v52 = dispatch thunk of static Equatable.== infix(_:_:)();
            v83(v12, v9);
          }

          while ((v52 & 1) == 0);
        }

        v83(v81, v9);
        v53 = v76[v22];
        v76[v22] = v53 & ~v16;
        a2 = v47;
        a1 = v65;
        v20 = v64;
        v39 = i;
        v40 = v68;
        if ((v53 & v16) != 0)
        {
          v38 = v63 - 1;
          if (__OFSUB__(v63, 1))
          {
            __break(1u);
          }

          if (v63 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v83(v81, v9);
        a2 = v47;
        a1 = v65;
        v20 = v64;
        v39 = i;
        v40 = v68;
      }
    }

    if (v40 <= (v24 + 1))
    {
      v42 = v24 + 1;
    }

    else
    {
      v42 = v40;
    }

    v43 = v42 - 1;
    while (1)
    {
      v41 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v41 >= v40)
      {
        v2 = 0;
        v45 = 1;
        v24 = v43;
        goto LABEL_39;
      }

      v2 = *(v39 + 8 * v41);
      ++v24;
      if (v2)
      {
        v24 = v41;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v56 = v19;

    v76 = a2;
    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v58 = v76;

      a2 = v58;
      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v78, v57);
  sub_10036F900(v59, v61, v76, v20, &v85);
  a2 = v60;

LABEL_52:
  v54 = v85;
LABEL_53:
  sub_1000319D8(v54);
  return a2;
}

void *sub_10036F0E4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v52 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v56 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v60 = a2 + 7;

  v15 = 0;
  v58 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v59 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v60[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v58;
    v15 = v59;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v60[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v58;
  v27 = v59;
  v62 = v56;
  v63 = v59;
  v64 = v11;
  v61[0] = v58;
  v61[1] = v7;

  v28 = *(v5 + 32);
  v53 = ((1 << v28) + 63) >> 6;
  v14 = 8 * v53;
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v54 = &v52;
    __chkstk_darwin();
    v2 = &v52 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v60, v29);
    v30 = *(v2 + 8 * v8) & ~v4;
    v31 = v5[2];
    v57 = v2;
    *(v2 + 8 * v8) = v30;
    v32 = v31 - 1;
LABEL_23:
    v55 = v32;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v34 = v27;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v12)
      {
        v5 = sub_100370548(v57, v53, v55, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v35);
      ++v34;
      if (v11)
      {
        v27 = v35;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v36 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v37 = *(v3 + 48);
            v59 = v27;
            v38 = (v37 + ((v27 << 10) | (16 * v36)));
            v39 = *v38;
            v4 = v38[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v40 = Hasher._finalize()();
            v41 = -1 << *(v5 + 32);
            v8 = v40 & ~v41;
            v2 = v8 >> 6;
            v42 = 1 << v8;
            if (((1 << v8) & v60[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v59;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v43 = (v5[6] + 16 * v8);
          if (*v43 != v39 || v43[1] != v4)
          {
            v45 = ~v41;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v45;
              v2 = v8 >> 6;
              v42 = 1 << v8;
              if (((1 << v8) & v60[v8 >> 6]) == 0)
              {
                v3 = v58;
                goto LABEL_45;
              }

              v46 = (v5[6] + 16 * v8);
              if (*v46 == v39 && v46[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v58;
          v33 = v57[v2];
          v57[v2] = v33 & ~v42;
          v26 = (v33 & v42) == 0;
          v27 = v59;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v32 = v55 - 1;
        if (__OFSUB__(v55, 1))
        {
          __break(1u);
        }

        if (v55 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v48 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v59;
  }

  v49 = swift_slowAlloc();
  memcpy(v49, v60, v48);
  v50 = v52;
  v51 = sub_10036FDD4(v49, v53, v5, v2, v61);

  if (!v50)
  {

    v3 = v61[0];
    v56 = v62;
    v5 = v51;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1000319D8(v13);
    return v5;
  }

  __break(1u);
  return result;
}

void sub_10036F654(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_100370034(a1, a2, v30, a3, &unk_100581840, &qword_100408E88);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_10036F900(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v45 = a2;
  sub_100168088(&unk_100581810, &qword_10040F6A8);
  __chkstk_darwin();
  v10 = &v44 - v9;
  v11 = type metadata accessor for ShowInfo();
  __chkstk_darwin();
  v55 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v61 = &v44 - v14;
  v15 = *(a3 + 16);
  v16 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v17 = *(a1 + v16);
  v47 = a1;
  v48 = v10;
  *(a1 + v16) = v17 & ((-1 << a4) - 1);
  v18 = v15 - 1;
  v58 = v19 + 16;
  v59 = a3;
  v52 = (v19 + 48);
  v53 = (v19 + 56);
  v51 = (v19 + 32);
  v57 = a3 + 56;
  v54 = v19;
  v60 = (v19 + 8);
  v49 = a5;
  while (2)
  {
    v46 = v18;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_15;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v26 = a5[3];
LABEL_14:
        v30 = (v25 - 1) & v25;
        (*(v54 + 16))(v10, *(v21 + 48) + *(v54 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, v13);
        v31 = 0;
        v29 = v26;
LABEL_15:
        (*v53)(v10, v31, 1, v11);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v52)(v10, 1, v11) == 1)
        {
          sub_100009104(v10, &unk_100581810, &qword_10040F6A8);
          v43 = v59;

          sub_100370220(v47, v45, v46, v43);
          return;
        }

        (*v51)(v61, v10, v11);
        v32 = v59;
        sub_10000E614(&qword_10057E770, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
        v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v34 = -1 << *(v32 + 32);
        v35 = v33 & ~v34;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if (((1 << v35) & *(v57 + 8 * (v35 >> 6))) != 0)
        {
          break;
        }

        v20 = *v60;
LABEL_4:
        v20(v61, v11);
      }

      v50 = v60 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v56 = ~v34;
      v38 = *(v54 + 72);
      v39 = *(v54 + 16);
      while (1)
      {
        v40 = v55;
        v39(v55, *(v59 + 48) + v38 * v35, v11);
        sub_10000E614(&unk_100581820, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20 = *v60;
        (*v60)(v40, v11);
        if (v41)
        {
          break;
        }

        v35 = (v35 + 1) & v56;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if (((1 << v35) & *(v57 + 8 * (v35 >> 6))) == 0)
        {
          v10 = v48;
          a5 = v49;
          goto LABEL_4;
        }
      }

      v20(v61, v11);
      v10 = v48;
      v42 = v47[v36];
      v47[v36] = v42 & ~v37;
      a5 = v49;
    }

    while ((v42 & v37) == 0);
    v18 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v46 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_10036FDD4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_100370548(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

Swift::Int sub_100370034(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_100168088(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
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

uint64_t sub_100370220(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for ShowInfo();
  v8 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100168088(&unk_100582860, &qword_10040F6B0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10000E614(&qword_10057E770, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100370548(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100168088(&qword_1005817A0, &qword_10040F650);
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

uint64_t (*sub_10037076C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100371324;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1003707EC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10037086C;
  }

  __break(1u);
  return result;
}

void (*sub_100370874(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100371328;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1003708F4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100370974;
  }

  __break(1u);
  return result;
}

void (*sub_10037097C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1003709FC;
  }

  __break(1u);
  return result;
}

uint64_t sub_100370A1C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100370A8C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100370B38()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    sub_10000F9A8(0xD00000000000001BLL, 0x8000000100471C30);
  }
}

uint64_t sub_100370C20()
{

  return _swift_deallocObject(v0, 41, 7);
}

void sub_100370C64()
{
  v1 = *(v0 + 16);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_100370EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100370FB8(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_100370FD4(id result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_100370FF0(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
    return sub_10037100C(result, a2, a3);
  }

  return result;
}

uint64_t sub_10037100C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 >> 6 == 2)
  {
  }

  if (!(a3 >> 6))
  {
    return sub_1001829A0(result, a2, a3);
  }

  return result;
}

uint64_t sub_100371028(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4 == 1)
  {
    return swift_errorRetain();
  }

  if (!a4)
  {
    return sub_1001841D0(result, a2, a3);
  }

  return result;
}

uint64_t sub_100371098(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 48));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100371124()
{

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_10037117C()
{
  result = qword_1005818B0;
  if (!qword_1005818B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005818B0);
  }

  return result;
}

uint64_t sub_1003711F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10037125C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RunOnceAsyncMigrationStep.requiresMigration.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  (*(a2 + 16))(a1, a2);
  v5 = String._bridgeToObjectiveC()();

  LODWORD(a2) = [v4 BOOLForKey:v5];

  return a2 ^ 1;
}

uint64_t sub_100371470()
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v2 = &v12 - v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  v6 = *(v0 + 17);
  v7 = v0[3];
  static TaskPriority.utility.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 49) = v6;
  *(v9 + 56) = v7;
  v10 = v7;
  sub_10023EE80(0, 0, v2, &unk_10040F828, v9);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RunOnceAsyncMigrationStep.performMigration()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v0 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = v13 - v8;
  static TaskPriority.utility.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  (*(v6 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v5;
  *(v12 + 5) = v4;
  (*(v6 + 32))(&v12[v11], v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_10023EE80(0, 0, v9, &unk_10040F7E0, v12);
}

uint64_t sub_100371798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  *(v7 + 40) = a5;
  *(v7 + 48) = a7;
  *(v7 + 112) = a6;
  *(v7 + 32) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100371860, 0, 0);
}

uint64_t sub_100371860()
{
  v1 = v0;
  v2 = *(v0 + 112);
  v10 = StaticString.description.getter();
  v11 = v3;

  v4._countAndFlagsBits = 0x726F7272652ELL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);

  v1[10] = v10;
  v1[11] = v11;
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_100371954;
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[4];

  return UpgradeMediaLibraryEntryArtwork.performMigrationStep()(v8, v6, v2 & 0x1FF, v7);
}

uint64_t sub_100371954()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100371BA8;
  }

  else
  {
    v2 = sub_100371A68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100371A68()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 setBool:1 forKey:v3];

  v4 = [v1 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();

  [v4 removeObjectForKey:v5];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100371BA8()
{
  v32 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  StaticString.description.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setBool:0 forKey:v5];

  v6 = [v3 standardUserDefaults];
  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50, &unk_100402650);
  String.init<A>(describing:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  [v6 setObject:v7 forKey:v8];

  if ((v2 & 0x100) != 0)
  {
    v10 = *(v0 + 48);
    static Logger.database.getter();
    swift_errorRetain();
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 104);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v14)
    {
      v30 = *(v0 + 56);
      v19 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v19 = 136315394;
      v29 = v16;
      v20 = _typeName(_:qualified:)();
      v28 = v13;
      v22 = v21;

      v23 = sub_1000153E0(v20, v22, v31);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v0 + 24) = v15;
      swift_errorRetain();
      v24 = String.init<A>(describing:)();
      v26 = sub_1000153E0(v24, v25, v31);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v12, v28, "Failed migration step silently: %s: %s.", v19, 0x16u);
      swift_arrayDestroy();

      (*(v17 + 8))(v29, v30);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v9 = *(v0 + 8);
  }

  else
  {
    swift_willThrow();

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_100371F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v6[7] = *(a5 - 8);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10037203C, 0, 0);
}

uint64_t sub_10037203C()
{
  v1 = v0[5];
  v10 = v0[6];
  v2 = *(v10 + 16);
  v0[12] = v2;
  v0[13] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0x3517000000000000;
  v11 = v2(v1);
  v12 = v3;

  v4._countAndFlagsBits = 0x726F7272652ELL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);

  v0[14] = v11;
  v0[15] = v12;
  v9 = (*(v10 + 32) + **(v10 + 32));
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1003721B4;
  v7 = v0[5];
  v6 = v0[6];

  return v9(v7, v6);
}

uint64_t sub_1003721B4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100372420;
  }

  else
  {
    v2 = sub_1003722C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003722C8()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v1(v3, v2);
  v6 = String._bridgeToObjectiveC()();

  [v5 setBool:1 forKey:v6];

  v7 = [v4 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();

  [v7 removeObjectForKey:v8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100372420()
{
  v41 = v0;
  v1 = v0[17];
  v2 = v0[12];
  v4 = v0[5];
  v3 = v0[6];
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v2(v4, v3);
  v7 = String._bridgeToObjectiveC()();

  [v6 setBool:0 forKey:v7];

  v8 = [v5 standardUserDefaults];
  v0[2] = v1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50, &unk_100402650);
  String.init<A>(describing:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  [v8 setObject:v9 forKey:v10];

  v11 = (*(v3 + 24))(v4, v3);
  v12 = v0[8];
  if (v11)
  {
    v13 = v0[7];
    v15 = v0[4];
    v14 = v0[5];
    static Logger.database.getter();
    (*(v13 + 16))(v12, v15, v14);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    v39 = v17;
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[7];
    v24 = v0[5];
    if (v18)
    {
      v35 = v0[17];
      v38 = v0[11];
      v25 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v25 = 136315394;
      swift_getDynamicType();
      v37 = v22;
      v26 = _typeName(_:qualified:)();
      log = v16;
      v28 = v27;
      (*(v23 + 8))(v21, v24);
      v29 = sub_1000153E0(v26, v28, v40);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v0[3] = v35;
      swift_errorRetain();
      v30 = String.init<A>(describing:)();
      v32 = sub_1000153E0(v30, v31, v40);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, log, v39, "Failed migration step silently: %s: %s.", v25, 0x16u);
      swift_arrayDestroy();

      (*(v19 + 8))(v38, v37);
    }

    else
    {

      (*(v19 + 8))(v20, v22);
      (*(v23 + 8))(v21, v24);
    }

    v33 = v0[1];
  }

  else
  {
    swift_willThrow();

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_100372838(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10021A620;

  return sub_100371F28(a1, v7, v8, v1 + v6, v4, v5);
}

uint64_t sub_100372934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  v11 = *(a4 + 17);
  v12 = *(a4 + 24);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  if (v11)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  *v13 = v4;
  v13[1] = sub_10001C51C;

  return sub_100371798(a1, a2, a3, v8, v9, v14 | v10, v12);
}

uint64_t sub_100372A20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C51C;

  return sub_100372934(a1, v4, v5, v1 + 32);
}

id sub_100372B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v7 = (&v29 - v6);
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v10 = type metadata accessor for Glyph();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (StationDetail.showCount.getter() < 1)
  {
    return 0;
  }

  v32 = a1;
  v14 = objc_opt_self();
  v15 = [v14 stringForEpisodeCount:StationDetail.episodeCount.getter() titleCase:1];
  v31 = v3;
  if (v15)
  {
    v16 = v15;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v29 = 0;
    v18 = 0;
  }

  v30 = a2;
  StationDetail.title.getter();
  static Glyph.Sidebar.station.getter();
  v20 = Glyph.image.getter();
  (*(v11 + 8))(v13, v10);
  v21 = String._bridgeToObjectiveC()();

  if (v18)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v21 detailText:v22 image:v20 accessoryImage:0 accessoryType:1];

  *v7 = v30;
  v23 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v24 = *(*(v23 - 8) + 56);
  v24(v7, 0, 1, v23);
  v24(v9, 1, 1, v23);
  v25 = type metadata accessor for CarPlayTemplateInfo(0);
  v26 = *(v25 + 20);

  sub_1001FBB44(v7, v9);
  v9[v26] = 0;
  (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
  sub_1001D2AD4(v9);
  aBlock[4] = sub_100373134;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  aBlock[3] = &unk_1004F1188;
  v27 = _Block_copy(aBlock);

  [v19 setHandler:v27];
  _Block_release(v27);
  return v19;
}