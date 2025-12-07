int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ApplicationDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id Application.init()()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v78 = *(v1 - 8);
  v79 = v1;
  __chkstk_darwin();
  v77 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v82 = *(v84 - 8);
  __chkstk_darwin();
  v80 = &v65 - v3;
  v85 = sub_10010FC20(&unk_101183B20, &unk_100EBDF20);
  v83 = *(v85 - 8);
  __chkstk_darwin();
  v81 = &v65 - v4;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v76 = &v65 - v5;
  v72 = sub_10010FC20(&qword_101183A40, &qword_100EBF468);
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v69 = &v65 - v6;
  v7 = sub_10010FC20(&qword_101183A48, &qword_100EBF470);
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin();
  v70 = &v65 - v8;
  v68 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v9 = *(v68 - 8);
  __chkstk_darwin();
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v65 - v13;
  __chkstk_darwin();
  v16 = &v65 - v15;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v18 = &v65 - v17;
  v19 = type metadata accessor for Application();
  v90.receiver = v0;
  v90.super_class = v19;
  v75 = objc_msgSendSuper2(&v90, "init");
  if (qword_10117F618 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_101218AF0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Welcome to MusicX!", v23, 2u);
  }

  BagProvider.shared.unsafeMutableAddressor();
  v24 = type metadata accessor for TaskPriority();
  v25 = *(*(v24 - 8) + 56);
  v25(v18, 1, 1, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  sub_10035EB10(0, 0, v18, &unk_100EC7BD0, v26);

  sub_1000095E8(v18, &unk_101181520, &qword_100EBCC60);
  [objc_opt_self() setFilteringDisabled:1];
  v25(v18, 1, 1, v24);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_10035EB10(0, 0, v18, &unk_100EC7BE0, v27);

  sub_1000095E8(v18, &unk_101181520, &qword_100EBCC60);
  v28 = [objc_opt_self() standardUserDefaults];
  v86 = 0xD00000000000001ALL;
  v87 = 0x8000000100E47B70;
  sub_100009838();
  NSUserDefaults.subscript.getter(&v88);

  if (v89)
  {
    if (swift_dynamicCast() & 1) == 0 || (v86)
    {
      goto LABEL_18;
    }

    v29 = [objc_opt_self() defaultManager];
    NSFileManager.musicAppGroupCachesURL.getter(v14);

    v30 = type metadata accessor for URL();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    if (v32(v14, 1, v30) == 1)
    {
      sub_1000095E8(v14, &qword_101183A20, &unk_100EBCF80);
      v33 = 1;
    }

    else
    {
      URL.appending(_:)(0x7472416F65646956, 0xEC0000006B726F77, 0);
      (*(v31 + 8))(v14, v30);
      v33 = 0;
    }

    (*(v31 + 56))(v16, v33, 1, v30);
    result = [objc_opt_self() sharedStoreArtworkDataSource];
    v38 = v67;
    if (!result)
    {
      __break(1u);
      return result;
    }

    v39 = result;
    sub_1000089F8(v16, v67, &qword_101183A20, &unk_100EBCF80);
    if (v32(v38, 1, v30) == 1)
    {
      v41 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v40);
      v41 = v42;
      (*(v31 + 8))(v38, v30);
    }

    [v39 setVideoArtworkCacheURL:v41];

    v34 = &qword_101183A20;
    v35 = &unk_100EBCF80;
    v36 = v16;
  }

  else
  {
    v34 = &unk_101183F30;
    v35 = qword_100EBF960;
    v36 = &v88;
  }

  sub_1000095E8(v36, v34, v35);
LABEL_18:
  [objc_opt_self() setScriptedLoopingDisabled:1];
  (*(v9 + 104))(v11, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v68);
  static MusicDataRequest.preferredExecutionMethod.setter();
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v43 = qword_101218AC8;

  PlaybackController.player.setter(v44);
  v45 = sub_10001B988();
  v46 = v69;
  (*(*v43 + 552))(v45);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v47 = static OS_dispatch_queue.main.getter();
  *&v88 = v47;
  v48 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v49 = *(v48 - 8);
  v67 = *(v49 + 56);
  v68 = v49 + 56;
  v50 = v76;
  (v67)(v76, 1, 1, v48);
  v66 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100020674(&unk_101183A50, &qword_101183A40, &qword_100EBF468, &protocol conformance descriptor for Published<A>.Publisher);
  v65 = sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v51 = v70;
  v52 = v72;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v50, &qword_101182140, &unk_100EBD2A0);

  (*(v71 + 8))(v46, v52);
  sub_100020674(&qword_101183A60, &qword_101183A48, &qword_100EBF470, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v53 = v74;
  v54 = Publisher<>.sink(receiveValue:)();
  (*(v73 + 8))(v51, v53);
  qword_10118C3B0 = v54;

  v56 = v80;
  (*(*v43 + 648))(v55);
  v58 = v77;
  v57 = v78;
  v59 = v79;
  (*(v78 + 104))(v77, enum case for DispatchQoS.QoSClass.default(_:), v79);
  v60 = static OS_dispatch_queue.global(qos:)();
  (*(v57 + 8))(v58, v59);
  *&v88 = v60;
  (v67)(v50, 1, 1, v48);
  sub_100020674(&qword_101184280, &unk_101182130, &unk_100EBF5B0, v66);
  v61 = v81;
  v62 = v84;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v50, &qword_101182140, &unk_100EBD2A0);

  (*(v82 + 8))(v56, v62);
  sub_100020674(&unk_101182180, &unk_101183B20, &unk_100EBDF20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v63 = v85;
  v64 = Publisher<>.sink(receiveValue:)();
  (*(v83 + 8))(v61, v63);
  qword_10118C3B8 = v64;

  [objc_opt_self() setupSubscriptionStatusHacks];
  return v75;
}

uint64_t sub_1000050DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100005138(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005170(uint64_t a1)
{
  sub_10000547C(319, &qword_1011AEE68, &type metadata for String, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_1000054CC(319, &qword_1011AEE70, &qword_1011AED80, &qword_100EFAE20);
    if (v2 <= 0x3F)
    {
      sub_10000547C(319, &qword_1011AEE78, &type metadata for Int, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_1000054CC(319, &qword_1011AEE80, &qword_1011AEDC0, &qword_100EFAF20);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100005390(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_1000053DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10000542C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10000547C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000054CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1001109D0(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100005540(uint64_t a1)
{
  sub_10000547C(319, &qword_1011AEEF0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100005600(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100005600(uint64_t a1)
{
  if (!qword_1011AEEF8)
  {
    type metadata accessor for SocialProfile();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011AEEF8);
    }
  }
}

uint64_t static Logger.music(_:)(uint64_t a1, uint64_t a2)
{

  return Logger.init(subsystem:category:)();
}

uint64_t *BagProvider.shared.unsafeMutableAddressor()
{
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  return &static BagProvider.shared;
}

void sub_100005738()
{
  if (qword_1011A6988 != -1)
  {
    swift_once();
  }

  v0 = static ICClientInfo.music;
  type metadata accessor for BagProvider(0);
  swift_allocObject();
  v1 = v0;
  v2 = sub_100005C60(v1);

  static BagProvider.shared = v2;
}

id sub_1000057C4()
{
  result = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  static ICClientInfo.music = result;
  return result;
}

uint64_t type metadata accessor for BagProvider(uint64_t a1)
{
  result = qword_1011AA340;
  if (!qword_1011AA340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005848(uint64_t a1)
{
  sub_100005A00(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_1011BB468;
  if (!qword_1011BB468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000059A8(uint64_t a1)
{
  if (!qword_1011A3F08)
  {
    type metadata accessor for Signpost(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A3F08);
    }
  }
}

void sub_100005A00(uint64_t a1)
{
  if (!qword_1011AA350)
  {
    type metadata accessor for Signpost(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011AA350);
    }
  }
}

uint64_t sub_100005A58(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
  if (v2 <= 0x3F)
  {
    result = sub_100005C14();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100005AE4()
{
  result = qword_101191A90;
  if (!qword_101191A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101191A90);
  }

  return result;
}

unint64_t sub_100005B30()
{
  result = qword_1011AFB00;
  if (!qword_1011AFB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011AFB00);
  }

  return result;
}

unint64_t sub_100005B7C()
{
  result = qword_1011B1428;
  if (!qword_1011B1428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B1428);
  }

  return result;
}

unint64_t sub_100005BC8()
{
  result = qword_1011B90C8;
  if (!qword_1011B90C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B90C8);
  }

  return result;
}

unint64_t sub_100005C14()
{
  result = qword_1011BB478;
  if (!qword_1011BB478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BB478);
  }

  return result;
}

uint64_t sub_100005C60(void *a1)
{
  v2 = v1;
  type metadata accessor for Signpost(0);
  v4 = __chkstk_darwin();
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 56))(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_bindings) = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + v8) = UnfairLock.init()();
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers) = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC9MusicCore11BagProvider_durableObservers;
  v10 = type metadata accessor for BagProvider.Observer();
  *(v2 + v9) = WeakArray.init(_:)(_swiftEmptyArrayStorage, v10);
  if (qword_1011A6930 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.musicBag;
  Logger.init(_:)();
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_isFetching) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_deferReload) = 0;
  v12 = OBJC_IVAR____TtC9MusicCore11BagProvider_retry;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for BagProvider.Retry()) init];
  *(v2 + 16) = a1;
  v13 = v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  *v13 = 0;
  *(v13 + 8) = 2;
  v14 = a1;
  sub_100007260(v6);
  Signpost.begin(dso:)(&_mh_execute_header);
  sub_100007908(v6);
  sub_10000679C(0);
  type metadata accessor for Whitetail.Binding();
  if (qword_1011A68F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1011AA2B0;
  UIScreen.Dimensions.size.getter();
  v22[3] = &type metadata for DistributedNotificationTrigger;
  v22[4] = &protocol witness table for DistributedNotificationTrigger;
  v22[0] = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v15;
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v22, 0, sub_100968C64, v17);
  v19 = OBJC_IVAR____TtC9MusicCore11BagProvider_bindings;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_100005FB8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100006014()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218AF0);
  sub_1000060E4(v0, qword_101218AF0);
  return static Logger.music(_:)(0x746163696C707041, 0xEB000000006E6F69);
}

uint64_t *sub_100006080(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000060E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OSSignpostID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t WeakArray.init(_:)(uint64_t a1, uint64_t a2)
{
  v10[5] = a1;
  v10[2] = a2;
  v3 = type metadata accessor for Array();
  v5 = type metadata accessor for WeakArray.WeakBox(0, a2, a2, v4);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_100006E28(sub_100C5FE20, v10, v3, v5, &type metadata for Never, WitnessTable, &protocol witness table for Never, v7);

  return v8;
}

uint64_t sub_100006330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_100005B30();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_100006428(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AA2D0, qword_100EFB480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006498(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A3FD0, &unk_100EE4010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000065D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000663C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BB408, "tT\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000066A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A3FD0, &unk_100EE4010);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006714(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AA2D0, qword_100EFB480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10000679C(char a1)
{
  v2 = v1;
  UnfairLock.locked<A>(_:)(sub_10000695C);
  if (LOBYTE(aBlock[0]) == 1)
  {
    UnfairLock.locked<A>(_:)(sub_100006994);
    v4 = [objc_opt_self() activeAccount];
    v5 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v4 clientInfo:*(v1 + 16)];

    v6 = [objc_opt_self() sharedBagProvider];
    aBlock[4] = sub_10000B750;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000B378;
    aBlock[3] = &unk_1010D34A0;
    v7 = _Block_copy(aBlock);

    [v6 getBagForRequestContext:v5 forceRefetch:a1 & 1 withCompletionHandler:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1000069C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100006A08(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v37 = a1;
  v38 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v39 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  __chkstk_darwin();
  v35 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v29 = *(v15 - 8);
  v30 = v15;
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = dispatch thunk of Collection.count.getter();
  if (!v18)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v40 = v18;
  v44 = ContiguousArray.init()();
  v31 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v40);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v40 & 0x8000000000000000) == 0)
  {
    v26 = v10;
    v27 = a5;
    v20 = 0;
    v32 = (v41 + 16);
    v33 = (v41 + 8);
    v34 = v8;
    while (!__OFADD__(v20, 1))
    {
      v41 = v20 + 1;
      v21 = dispatch thunk of Collection.subscript.read();
      v22 = v13;
      v23 = v13;
      v24 = AssociatedTypeWitness;
      (*v32)(v22);
      v21(v43, 0);
      v25 = v42;
      v37(v23, v39);
      if (v25)
      {
        (*v33)(v23, v24);
        (*(v29 + 8))(v17, v30);

        return (*(v26 + 32))(v28, v39, v27);
      }

      v42 = 0;
      (*v33)(v23, v24);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v20;
      v13 = v23;
      if (v41 == v40)
      {
        (*(v29 + 8))(v17, v30);
        return v44;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100006E28(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v37 = a1;
  v38 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v39 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  __chkstk_darwin();
  v35 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v29 = *(v15 - 8);
  v30 = v15;
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = dispatch thunk of Collection.count.getter();
  if (!v18)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v40 = v18;
  v44 = ContiguousArray.init()();
  v31 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v40);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v40 & 0x8000000000000000) == 0)
  {
    v26 = v10;
    v27 = a5;
    v20 = 0;
    v32 = (v41 + 16);
    v33 = (v41 + 8);
    v34 = v8;
    while (!__OFADD__(v20, 1))
    {
      v41 = v20 + 1;
      v21 = dispatch thunk of Collection.subscript.read();
      v22 = v13;
      v23 = v13;
      v24 = AssociatedTypeWitness;
      (*v32)(v22);
      v21(v43, 0);
      v25 = v42;
      v37(v23, v39);
      if (v25)
      {
        (*v33)(v23, v24);
        (*(v29 + 8))(v17, v30);

        return (*(v26 + 32))(v28, v39, v27);
      }

      v42 = 0;
      (*v33)(v23, v24);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v20;
      v13 = v23;
      if (v41 == v40)
      {
        (*(v29 + 8))(v17, v30);
        return v44;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100007260@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011AA2D0, qword_100EFB480);
  __chkstk_darwin();
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost;
  swift_beginAccess();
  sub_100006428(v1 + v7, v6);
  v8 = type metadata accessor for Signpost(0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_10000C464(v6, a1);
  }

  sub_10000746C(v6);
  if (qword_1011A6930 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.musicBag;

  Signpost.init(name:object:log:)("Bag", 3, 2, v10, a1);
  sub_1000065D8(a1, v4);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_100006714(v4, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_10000746C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AA2D0, qword_100EFB480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000074D4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A3FD0, &unk_100EE4010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Signpost.init(name:object:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v25 = a1;
  v26 = a2;
  v24 = a6;
  sub_10010FC20(&qword_1011BB408, "tT\n");
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v24 - v9;
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = a5;
  swift_unknownObjectRetain();
  OSSignpostID.init(log:object:)();
  (*(v12 + 16))(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_10000782C(v10, v8);
  v18 = *(v12 + 48);
  if (v18(v8, 1, v11) == 1)
  {
    v19 = v17;
    OSSignpostID.init(log:)();
    swift_unknownObjectRelease();
    sub_10000663C(v10);
    (*(v12 + 8))(v16, v11);
    if (v18(v8, 1, v11) != 1)
    {
      sub_10000663C(v8);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_10000663C(v10);
    (*(v12 + 8))(v16, v11);
    (*(v12 + 32))(v14, v8, v11);
  }

  v20 = v24;
  (*(v12 + 32))(v24, v14, v11);
  result = type metadata accessor for Signpost(0);
  *(v20 + *(result + 20)) = v17;
  v22 = v20 + *(result + 24);
  v23 = v26;
  *v22 = v25;
  *(v22 + 8) = v23;
  *(v22 + 16) = v27;
  return result;
}

uint64_t sub_10000782C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BB408, "tT\n");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000789C(uint64_t a1, uint64_t (*a2)(void))
{
  a2();
  type metadata accessor for Signpost(0);

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t sub_100007908(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void UnfairLock.locked<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_1000079CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000079DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000079EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000079FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007A9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007ABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007ACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007BAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007DCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007DDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007ECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007EEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000800C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000801C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000802C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000803C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000804C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000805C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000806C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000807C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000808C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000809C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000080AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000080BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000080CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000080FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000810C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000811C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000812C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000813C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000814C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000815C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000816C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000817C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000818C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000819C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000081FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000820C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000821C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000822C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000824C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000825C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000826C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000827C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000828C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000829C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000082FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000830C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000831C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000832C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000833C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000834C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000835C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000836C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000837C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000838C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000083FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000840C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000841C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000842C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000843C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000844C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000845C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000846C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000848C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000849C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000084FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000850C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000851C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000852C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000853C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000855C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000856C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000857C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000858C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000859C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000085FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000860C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000861C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000862C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000863C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000864C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000865C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000866C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000867C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000868C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000869C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000086FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000870C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000871C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000872C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000873C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000874C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000875C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000876C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000877C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000878C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000879C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000087AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000087BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000087CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000087DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000087EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000087FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000880C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000881C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000882C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000883C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NSString sub_100008870()
{
  result = String._bridgeToObjectiveC()();
  qword_1011AA2B0 = result;
  return result;
}

id sub_1000088AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = sub_1001D3174;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10002BC98;
  v11[3] = &unk_1010F0A78;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:v5 handler:v8];
  _Block_release(v8);

  return v9;
}

uint64_t sub_1000089BC()
{

  return swift_deallocObject();
}

uint64_t sub_1000089F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10010FC20(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008A7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100008A60();
}

uint64_t sub_100008B28()
{
  v1 = [objc_opt_self() sharedController];
  [v1 beginObservingCloudLibraryEnabled];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100008BB4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_100008C60();
}

uint64_t sub_100008C7C()
{
  v1 = [objc_opt_self() defaultMediaLibrary];
  if ([v1 artworkDataSource])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  [v1 setCloudFilteringType:0];
  v3 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:2049];
  v4 = [objc_opt_self() predicateWithValue:v3 forProperty:MPMediaItemPropertyMediaType];

  [v1 addLibraryFilterPredicate:v4];
  [v1 beginGeneratingLibraryChangeNotifications];

  v5 = *(v0 + 8);

  return v5();
}

void sub_100008E30()
{
  if (!qword_10119ED80)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10119ED80);
    }
  }
}

void sub_100008E80()
{
  if (!qword_1011AC790)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AC790);
    }
  }
}

void sub_100008ED0()
{
  if (!qword_1011B3E78)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B3E78);
    }
  }
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  sub_10010FC20(&qword_1011B9CB8, &qword_100F0C068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  sub_100008FE4(a1, inited + 32);
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, v6, a3, a4);
  sub_10000959C(a1);
  return v9;
}

uint64_t sub_100008FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin();
  v33 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  __chkstk_darwin();
  v31 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 40) = _swiftEmptyArrayStorage;
  v13 = (v5 + 40);
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v43[0] = _swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (v14)
  {
    v29[0] = v5 + 40;
    v29[1] = a1;
    v30 = a2;
    v15 = a1 + 32;
    v37 = a4;

    v38 = _swiftEmptyArrayStorage;
    do
    {
      sub_100008FE4(v15, aBlock);
      v17 = v40;
      v16 = v41;
      sub_10000954C(aBlock, v40);
      v18 = swift_allocObject();
      v19 = v5;
      swift_weakInit();
      v20 = *(v16 + 1);

      v20(sub_100060F28, v18, v17, v16);

      sub_10000959C(aBlock);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v38 = v43[0];
      v5 = v19;
      v15 += 40;
      --v14;
    }

    while (v14);

    v21 = v38;
    LOBYTE(a2) = v30;
    v13 = v29[0];
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  *v13 = v21;

  if (a2)
  {
    v22 = objc_opt_self();

    if (![v22 isMainThread])
    {
      sub_100027140();
      v23 = static OS_dispatch_queue.main.getter();
      v41 = sub_1001D3174;
      v42 = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      v40 = &unk_1010F0730;
      v24 = _Block_copy(aBlock);

      v25 = v31;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100024844();
      sub_10010FC20(&unk_1011BADE0, &qword_100F0C060);
      sub_100024A2C();
      v26 = v33;
      v27 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v35 + 8))(v26, v27);
      (*(v32 + 8))(v25, v34);
      return v5;
    }

    (*(v5 + 16))();
  }

  return v5;
}

uint64_t sub_100009514()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_10000954C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000959C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000095E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10010FC20(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009648(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000651A8;

  return v6(a1);
}

uint64_t sub_100009740(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100066B28;

  return v6(a1);
}

unint64_t sub_100009838()
{
  result = qword_101184CC0;
  if (!qword_101184CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184CC0);
  }

  return result;
}

unint64_t sub_10000988C()
{
  result = qword_1011A7200;
  if (!qword_1011A7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7200);
  }

  return result;
}

unint64_t sub_1000098E0()
{
  result = qword_1011B46F0;
  if (!qword_1011B46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B46F0);
  }

  return result;
}

unint64_t sub_100009934()
{
  result = qword_1011BA5A0;
  if (!qword_1011BA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA5A0);
  }

  return result;
}

unint64_t sub_100009988()
{
  result = qword_1011BBAE8;
  if (!qword_1011BBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBAE8);
  }

  return result;
}

double NSUserDefaults.subscript.getter@<D0>(_OWORD *a4@<X8>)
{
  v6 = __chkstk_darwin();
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  String.init<A>(_:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v4 objectForKey:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_100009B18()
{
  v0 = _s11CoordinatorCMa_1();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v4[3] = v0;
  v4[4] = &off_1010BAB10;
  v4[0] = v1;
  v2 = objc_allocWithZone(type metadata accessor for PlaybackController());
  result = PlaybackController.init(coordinator:)(v4);
  qword_101218AD8 = result;
  return result;
}

void *PlaybackController.init(coordinator:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_player] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  sub_100008FE4(a1, &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator]);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_10000959C(a1);
  return v5;
}

uint64_t sub_100009C78()
{
  type metadata accessor for Player(0);
  swift_allocObject();
  Player.init()();
  v0 = Player.with(_:)(sub_100020B0C);

  qword_101218AC8 = v0;
  return result;
}

void sub_100009CE4(uint64_t a1)
{
  sub_100009F10(319);
  if (v1 <= 0x3F)
  {
    sub_1000054CC(319, &qword_1011AD1E0, &qword_1011AD040, &unk_100EF6D90);
    if (v2 <= 0x3F)
    {
      sub_1000054CC(319, &qword_1011AD1E8, &qword_1011AD050, &qword_100EF7958);
      if (v3 <= 0x3F)
      {
        sub_1000054CC(319, qword_1011AD1F0, &qword_1011AD060, &unk_100EF7960);
        if (v4 <= 0x3F)
        {
          sub_100008E80();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100009F10(uint64_t a1)
{
  if (!qword_1011AD1D8)
  {
    sub_100009F78(255, &qword_1011A8538, MPCPlayerPath_ptr);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1011AD1D8);
    }
  }
}

uint64_t sub_100009F78(uint64_t a1, unint64_t *a2, void *a3)
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

char *Player.init()()
{
  v1 = v0;
  v102 = *v0;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v113 = &v89 - v2;
  sub_10010FC20(&qword_1011A90D0, &qword_100EEF678);
  __chkstk_darwin();
  v112 = &v89 - v3;
  v4 = sub_10010FC20(&qword_1011ACFE0, "z_\n");
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin();
  v103 = &v89 - v5;
  v6 = sub_10010FC20(&qword_1011ACFE8, &qword_100EF7918);
  v108 = *(v6 - 8);
  v109 = v6;
  __chkstk_darwin();
  v106 = &v89 - v7;
  v8 = sub_10010FC20(&unk_1011ACFF0, &unk_100EF7920);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin();
  v107 = &v89 - v9;
  v10 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin();
  v98 = &v89 - v11;
  v96 = sub_10010FC20(&qword_1011AD000, &qword_100EF7930);
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v89 - v12;
  v93 = sub_10010FC20(&unk_1011AD008, &unk_100EF7938);
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v14 = &v89 - v13;
  v97 = sub_10010FC20(&qword_1011ACC50, &qword_100EF7370);
  v15 = *(v97 - 8);
  __chkstk_darwin();
  v17 = &v89 - v16;
  v18 = sub_10010FC20(&qword_1011AD018, &unk_100EF7948);
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v89 - v20;
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v101 = objc_opt_self();
  v22 = [v101 systemRoute];
  v23 = [v22 isDeviceRoute];
  v24 = objc_opt_self();
  v25 = v24;
  if (v23)
  {
    if (qword_1011A6A50 != -1)
    {
      swift_once();
    }

    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 systemMusicPathWithRoute:v22 playerID:v26];
  }

  else
  {
    v27 = [v24 pathWithRoute:v22 bundleID:0 playerID:0];
  }

  v28 = OBJC_IVAR____TtC9MusicCore6Player__path;
  aBlock = v27;
  sub_100009F78(0, &qword_1011A8538, MPCPlayerPath_ptr);
  Published.init(initialValue:)();
  (*(v19 + 32))(&v1[v28], v21, v18);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver] = 0;
  v29 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  aBlock = 0;
  v30 = v17;
  v91 = sub_10010FC20(&qword_1011AD040, &unk_100EF6D90);
  Published.init(initialValue:)();
  v31 = *(v15 + 32);
  v32 = v97;
  v90 = v31;
  v31(&v1[v29], v17, v97);
  v33 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  aBlock = 0;
  sub_10010FC20(&qword_1011AD050, &qword_100EF7958);
  Published.init(initialValue:)();
  (*(v92 + 32))(&v1[v33], v14, v93);
  v34 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  aBlock = 0;
  sub_10010FC20(&qword_1011AD060, &unk_100EF7960);
  v35 = v94;
  Published.init(initialValue:)();
  (*(v95 + 32))(&v1[v34], v35, v96);
  v36 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  v37 = v98;
  Published.init(initialValue:)();
  v38 = v100;
  v39 = *(v99 + 32);
  v39(&v1[v36], v37, v100);
  v40 = OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v39(&v1[v40], v37, v38);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken] = 0;
  v41 = &v1[OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration];
  if (qword_1011A6A88 != -1)
  {
    swift_once();
  }

  v42 = qword_1011ACFD0;
  *v41 = qword_1011ACFD0;
  *(v41 + 1) = v42;
  *(v41 + 2) = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_routingController] = 0;
  v1[OBJC_IVAR____TtC9MusicCore6Player_engineState] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady] = _swiftEmptyArrayStorage;
  v43 = OBJC_IVAR____TtC9MusicCore6Player__playerResponse;
  aBlock = 0;
  v44 = v42;
  Published.init(initialValue:)();
  v90(&v1[v43], v30, v32);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = 0;
  v45 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  *&v1[v45] = sub_10000F9E8(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = 0;
  v46 = OBJC_IVAR____TtC9MusicCore6Player_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v46] = UnfairLock.init()();
  if (qword_1011A6A50 != -1)
  {
    swift_once();
  }

  v47 = qword_101219CD0;
  v48 = unk_101219CD8;
  v49 = objc_allocWithZone(MPCPlaybackEngine);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 initWithPlayerID:v50];

  v52 = v51;
  sub_10000FB18(v47, v48);

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine] = v52;
  [v52 becomeActive];
  v53 = OBJC_IVAR____TtC9MusicCore6Player_engine;
  v54 = *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine];

  v55 = sub_10000CD9C(v54);
  LOBYTE(v54) = sub_10000FC04(4u, v55);

  if (v54)
  {
    v56 = *&v1[v53];
    v118 = sub_100A59DAC;
    v119 = 0;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v116 = sub_100A59F54;
    v117 = &unk_1010DAD38;
    v57 = _Block_copy(&aBlock);
    v58 = v56;
    [v58 restoreStateWithCompletion:v57];
    _Block_release(v57);
  }

  v59 = v101;
  v60 = [v101 systemRoute];
  v61 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v60 outputDeviceRoute:0];
  v62 = [objc_opt_self() sharedController];
  [v62 setActiveDataSource:v61];

  v63 = swift_allocObject();
  v64 = v102;
  *(v63 + 16) = v1;
  *(v63 + 24) = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_100062DF8;
  *(v65 + 24) = v63;
  v118 = sub_100062D64;
  v119 = v65;
  aBlock = _NSConcreteStackBlock;
  v115 = 1107296256;
  v116 = sub_1000603D0;
  v117 = &unk_1010DACC0;
  v66 = _Block_copy(&aBlock);

  [v59 getActiveRouteWithTimeout:v66 completion:1.0];

  _Block_release(v66);
  v67 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v68 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v67, 0, 1, 1, sub_100A6FE88, v68);

  v69 = MRAVEndpointGroupSessionInfoDidChangeNotification;
  v70 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v69, 0, 1, 1, sub_100A6DD30, v70);

  v71 = MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification;
  v72 = swift_allocObject();
  swift_weakInit();
  v73 = v71;

  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v73, 0, 1, 1, sub_100A6DD68, v72);

  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10010FC20(&qword_1011AD0E0, &unk_100EF1878);
  v74 = v103;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&unk_1011AD0E8, &qword_1011ACFE0, "z_\n", &protocol conformance descriptor for Published<A>.Publisher);
  v75 = v105;
  v76 = v106;
  Publisher.map<A>(_:)();
  (*(v104 + 8))(v74, v75);
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v77 = static OS_dispatch_queue.main.getter();
  aBlock = v77;
  v78 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v79 = v112;
  (*(*(v78 - 8) + 56))(v112, 1, 1, v78);
  sub_100020674(&qword_1011AD0F8, &qword_1011ACFE8, &qword_100EF7918, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100020724();
  v80 = v107;
  v81 = v109;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v79, &qword_1011A90D0, &qword_100EEF678);

  (*(v108 + 8))(v76, v81);
  sub_100020674(&qword_1011AD108, &unk_1011ACFF0, &unk_100EF7920, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v82 = v111;
  v83 = Publisher<>.sink(receiveValue:)();
  (*(v110 + 8))(v80, v82);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = v83;

  v84 = v113;
  static TaskPriority.userInitiated.getter();
  v85 = type metadata accessor for TaskPriority();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  type metadata accessor for MainActor();

  v86 = static MainActor.shared.getter();
  v87 = swift_allocObject();
  v87[2] = v86;
  v87[3] = &protocol witness table for MainActor;
  v87[4] = v1;
  sub_1008A3074(0, 0, v84, &unk_100EF7978, v87);

  sub_1000095E8(v84, &qword_1011A7F00, &qword_100EEDE10);
  return v1;
}

uint64_t sub_10000B184()
{

  return swift_deallocObject();
}

uint64_t sub_10000B1BC()
{

  return swift_deallocObject();
}

uint64_t sub_10000B1F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10000B244()
{
  v0 = sub_10000C2C0(&off_1010C6570);
  v1 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v2 = String._bridgeToObjectiveC()();
  [v1 setLabel:v2];

  v3 = [objc_opt_self() kindWithVariants:3];
  [v1 setItemKind:v3];

  v4 = [v1 playbackIntentWithStartItemIdentifiers:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setShuffleMode:1];
  }

  static MPCPlaybackEngine.Configuration.systemMusic = 0x636973754DLL;
  *algn_101219CC8 = 0xE500000000000000;
  qword_101219CD0 = v0;
  unk_101219CD8 = v5;
}

void sub_10000B378(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10000B404(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + OBJC_IVAR____TtC9MusicCore11BagProvider_lock);
  UnfairLock.locked<A>(_:)(sub_10000B758);
  if (v27)
  {
    sub_10000679C(1);
    v9 = sub_100968CE4;
LABEL_19:
    UnfairLock.locked<A>(_:)(v9);
    return;
  }

  v10 = a1;
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    swift_errorRetain();
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
  }

  v27 = _swiftEmptyArrayStorage;
  __chkstk_darwin();
  *(&v23 - 4) = a3;
  *(&v23 - 3) = v10;
  LOBYTE(v21) = v12;
  BYTE1(v21) = 1;
  v22 = &v27;
  v13 = a1;
  UnfairLock.locked<A>(_:)(sub_10000B860);
  if (!a1)
  {
    goto LABEL_18;
  }

  v14 = v27;
  if (v27 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
LABEL_18:

      sub_100007260(v7);
      Signpost.end(dso:)(&_mh_execute_header);

      sub_100007908(v7);
      v9 = sub_10000C4E0;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v25 = v7;
  v26 = v8;
  if (v15 >= 1)
  {
    v24 = v10;
    v16 = v10;
    v17 = 0;
    while ((v14 & 0xC000000000000001) == 0)
    {
      v18 = *(v14 + 8 * v17 + 32);

      v19 = *(v18 + 24);
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_11:
      ++v17;

      if (v15 == v17)
      {

        v7 = v25;
        v10 = v24;
        goto LABEL_18;
      }
    }

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v19 = *(v18 + 24);
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_16:
    v20 = *(v18 + 32);

    v19(v16);
    sub_100020438(v19, v20);
    goto LABEL_11;
  }

  __break(1u);
LABEL_23:
  LODWORD(v22) = 0;
  v21 = 149;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10000B76C(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5)
{
  v7 = a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  v8 = *(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  *v7 = a2;
  *(v7 + 8) = a3;
  v9 = a2;

  sub_10000B8A0();
  if (a4)
  {
    swift_beginAccess();
    v10 = type metadata accessor for BagProvider.Observer();

    v14 = WeakArray.allElements.getter(v11, v10, v12, v13);

    swift_beginAccess();

    sub_10000BF68(v15);
    *a5 = v14;
  }
}

void sub_10000B8A0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) != 1)
    {
      return;
    }

    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully loaded a bag from iTunesCloud", v6, 2u);
    }

    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v7;
    sub_10000BAC0(Strong);
  }

  else
  {
    v3 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v3 code];
      _os_log_impl(&_mh_execute_header, v10, v11, "Error retrieving bag: %ld", v12, 0xCu);
    }

    v13 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    v14 = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v13;
    sub_10000BAC0(v14);
  }
}

void sub_10000BAC0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  Strong = swift_weakLoadStrong();
  if (!a1)
  {
    if (!Strong)
    {
      return;
    }

LABEL_7:
    if (swift_weakLoadStrong())
    {

      v12 = swift_weakLoadStrong();
      if (v12)
      {
        (*(v5 + 16))(v9, v12 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v13, v14))
        {
          v16 = &selRef_registerObserver_;
          goto LABEL_19;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Beginning observation to retry loading bag", v15, 2u);
        v16 = &selRef_registerObserver_;
LABEL_14:

LABEL_19:

        (*(v5 + 8))(v9, v4);
        goto LABEL_20;
      }

      v16 = &selRef_registerObserver_;
    }

    else
    {
      v17 = swift_weakLoadStrong();
      if (v17)
      {
        (*(v5 + 16))(v7, v17 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v13 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v13, v18))
        {
          v16 = &selRef_unregisterObserver_;
          v9 = v7;
          goto LABEL_19;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v13, v18, "Stopping observation to retry loading bag", v19, 2u);
        v16 = &selRef_unregisterObserver_;
        v9 = v7;
        goto LABEL_14;
      }

      v16 = &selRef_unregisterObserver_;
    }

LABEL_20:
    v20 = [objc_opt_self() sharedMonitor];
    [v20 *v16];

    return;
  }

  if (!Strong)
  {
    goto LABEL_7;
  }

  v11 = Strong;

  if (v11 != a1)
  {
    goto LABEL_7;
  }
}

uint64_t WeakArray.allElements.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray(0, a2, a3, a4);
  swift_getWitnessTable();
  return Sequence.compactMap<A>(_:)();
}

uint64_t sub_10000BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t WeakArray.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray.WeakBox(0, a2, a2, a4);

  return Array.endIndex.getter();
}

uint64_t sub_10000BF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = WeakArray.endIndex.getter(*v4, *(a1 + 16), a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_10000BFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180438, &unk_100EBA6F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100019C10(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000C0A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8568, &qword_100EED838);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001FD3C(v5, v6, sub_10000F930);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000C1BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1620, "h)\n");
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000F8B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

Swift::Int sub_10000C2C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A7CB8, &qword_100EEC410);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10000C410()
{
  result = qword_1011AC738;
  if (!qword_1011AC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC738);
  }

  return result;
}

uint64_t sub_10000C464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

UIContentSizeCategory static Application._defaultContentSizeCategory()()
{
  v0 = [objc_opt_self() mainScreen];
  v1 = [v0 fixedCoordinateSpace];

  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_unknownObjectRelease();
  v13.origin.x = v3;
  v13.origin.y = v5;
  v13.size.width = v7;
  v13.size.height = v9;
  if (CGRectGetWidth(v13) <= 320.0)
  {

    return UIContentSizeCategoryMedium;
  }

  else
  {
    v11.receiver = swift_getObjCClassFromMetadata();
    v11.super_class = &OBJC_METACLASS___MusicApplication;
    result = objc_msgSendSuper2(&v11, "_defaultContentSizeCategory");
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000CD8C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void *sub_10000CD9C(void *a1)
{
  v8 = &_swiftEmptySetSingleton;
  if ([a1 isSystemMusicApplication])
  {
    sub_10000CE84(&v3, 0);
  }

  if ([a1 isAudioAnalyzerEnabled])
  {
    sub_10000CE84(&v4, 1);
  }

  if ([a1 isPictureInPictureSupported])
  {
    sub_10000CE84(&v5, 2);
  }

  if ([a1 isVideoSupported])
  {
    sub_10000CE84(&v6, 3);
  }

  if ([a1 isStateRestorationSupported])
  {
    sub_10000CE84(&v7, 4);
  }

  return v8;
}

uint64_t sub_10000CE84(_BYTE *a1, Swift::Int a2)
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
    while (*(*(v5 + 48) + v8) != a2)
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
    sub_10000CF7C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_10000CF7C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000D0DC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1001943D4(&qword_1011A7CB8, &qword_100EEC410);
      a2 = v7;
      goto LABEL_12;
    }

    sub_10000FCD0(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
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
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_10000D0DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011A7CB8, &qword_100EEC410);
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

void *sub_10000D33C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000DA5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000DA5C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_10000D46C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000DAD0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000DAD0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_10000D59C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000DB44(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000DB44(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_10000D6CC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000DBB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000DBB8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_10000D7FC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000DC2C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000DC2C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_10000D92C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000DCA0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000DCA0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_10000DA5C(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&unk_10118A390, &unk_100F11FE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_10000DAD0(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&unk_1011AFD90, &qword_100EFCC70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_10000DB44(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011B1448, &qword_100F00148);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_10000DBB8(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011B9120, &qword_100F0B078);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_10000DC2C(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011BA910, &qword_100F0CFB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_10000DCA0(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011BC170, &qword_100F0F0A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10000DD18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000DD98(uint64_t a1)
{
  sub_1000113B4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10000DE78()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) = 0;
  v2 = v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v3) = UnfairLock.init()();
  v4 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag;
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_100011404);
  *(v0 + v4) = *&v41[0];
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings) = _swiftEmptyArrayStorage;
  result = UIApp;
  if (UIApp)
  {
    *(v0 + 16) = [UIApp launchedToTest];
    type metadata accessor for MusicTabsDictionaryProvider();
    swift_allocObject();
    v6 = sub_100011440(0x626154636973756DLL, 0xE900000000000073, sub_10095DBC4, 0);
    *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider) = v6;

    UnfairLock.locked<A>(_:)(sub_100011404);
    v7 = *(v0 + 16);

    sub_10000E44C(*&v41[0], v6, v7, v41);
    v8 = (v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
    v9 = v44;
    v10 = v45;
    v8[4] = v44;
    v8[5] = v10;
    v11 = v46;
    v12 = v47;
    v8[6] = v46;
    v8[7] = v12;
    v13 = v41[0];
    v14 = v41[1];
    *v8 = v41[0];
    v8[1] = v14;
    v15 = v42;
    v16 = v43;
    v8[2] = v42;
    v8[3] = v16;
    v39 = v11;
    v40 = v12;
    v37 = v9;
    v38 = v10;
    v35 = v15;
    v36 = v16;
    v33 = v13;
    v34 = v14;
    swift_beginAccess();
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    aBlock = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    sub_10001494C(&v33, &v24);
    Published.init(initialValue:)();
    swift_endAccess();
    v17 = swift_allocObject();
    swift_weakInit();

    sub_100014A44(sub_1009614A4, v17);

    UnfairLock.locked<A>(_:)(sub_100016444);
    sub_100017E48();
    sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = String._bridgeToObjectiveC()();
    v20 = swift_allocObject();
    swift_weakInit();

    *&v27 = sub_1009614AC;
    *(&v27 + 1) = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = sub_10095DEF4;
    *(&v26 + 1) = &unk_1010D2C98;
    v21 = _Block_copy(&aBlock);

    v22 = MSVLogAddStateHandler();

    _Block_release(v21);

    v23 = v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
    *v23 = v22;
    *(v23 + 8) = 0;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E300()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_10000E354@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

_BYTE *sub_10000E3B0@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  v3 = &result[OBJC_IVAR____TtC9MusicCore11BagProvider_result];
  if (result[OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8] == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_10000E40C(void *result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_10000E44C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = objc_opt_self();
  result = [v6 sharedCloudController];
  if (result)
  {
    v8 = result;
    v9 = [result hasProperNetworkConditionsToShowCloudMedia];

    *(&v85 + 1) = v9;
    *(&v85 + 1) = 0;
    *&v86 = 0;
    *&v87 = &_swiftEmptySetSingleton;
    *(&v87 + 1) = &_swiftEmptySetSingleton;
    *v88 = 0x7FFFFFFFFFFFFFFFLL;
    memset(&v88[8], 0, 32);
    v10 = objc_opt_self();
    v11 = [v10 sharedController];
    v12 = [v11 musicSubscriptionStatus];

    v13 = 1;
    LOBYTE(v89) = 1;
    *(&v89 + 1) = sub_10000EDDC(_swiftEmptyArrayStorage);
    LOBYTE(v90) = v14;
    *(&v90 + 1) = v15;
    v16 = [v10 sharedController];
    v17 = [objc_opt_self() sharedConnection];
    v72 = [v6 sharedCloudController];
    v74 = v16;
    v18 = [v16 musicSubscriptionStatus];
    v19 = v18;
    if (v18)
    {
      v71 = 2 * ([v18 capabilities] & 1);
    }

    else
    {
      v71 = 0;
    }

    v20 = [objc_opt_self() defaultIdentityStore];
    sub_10000F474();
    v22 = v21;

    LOBYTE(v85) = (v22 & 1) == 0;
    if (v19)
    {
      v23 = v19;
      *&v86 = [v23 statusType];
      v24 = [v23 capabilities];

      *(&v85 + 1) = v24;
      v13 = (v24 & 1) == 0;
    }

    v25 = [objc_opt_self() sharedPrivacyInfo];
    v26 = [v25 privacyAcknowledgementRequiredForMusic];

    BYTE8(v86) = v26 ^ 1;
    v27 = v74;
    if (sub_100011ABC(v19, v74))
    {
      sub_100011F90(v84, 2);
    }

    if (qword_1011A6830 != -1)
    {
      swift_once();
    }

    if ([qword_1011A9CE0 isRadioAvailable])
    {
      sub_100011F90(v84, 4);
    }

    if (sub_1000131A0(v17, a1))
    {
      sub_100011F90(v84, 3);
    }

    if (a1)
    {
      v28 = String._bridgeToObjectiveC()();
      v29 = [a1 BOOLValueForBagKey:v28];

      if (v29)
      {
        sub_100011F90(v84, 9);
      }
    }

    if (v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();

      v31 = [v17 effectiveBoolValueForSetting:v30];

      if (v31 != 2)
      {
        sub_100011F90(v84, 6);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = String._bridgeToObjectiveC()();

      v33 = [v17 effectiveBoolValueForSetting:v32];

      if (v33 != 2)
      {
        sub_100011F90(v84, 0);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = String._bridgeToObjectiveC()();

      v35 = [v17 effectiveBoolValueForSetting:v34];

      if (v35 != 2)
      {
        sub_100011F90(v84, 1);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = String._bridgeToObjectiveC()();

      v37 = [v17 effectiveBoolValueForSetting:v36];

      if (v37 != 2)
      {
        sub_100011F90(v84, 5);
      }

      *&v88[40] = v19;
      v38 = v19;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = String._bridgeToObjectiveC()();

      v40 = [v17 effectiveBoolValueForSetting:v39];

      if (v40 != 2)
      {
        sub_100011F90(v84, 8);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = String._bridgeToObjectiveC()();

      v42 = [v17 isBoolSettingLockedDownByRestrictions:v41];

      v27 = v74;
      if (v42)
      {
        sub_100011F90(v84, 7);
      }
    }

    else
    {
      *&v88[40] = v19;
      v43 = v19;
    }

    v44 = v87;
    sub_10010FC20(&unk_1011A9F20, &unk_100EF1D10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = 2;
    LOBYTE(v44) = sub_1000135EC(inited, v44);
    swift_setDeallocating();
    if (v44)
    {
      LOBYTE(v89) = v71;
      if (v19)
      {
        v46 = v19;
        if ([v46 statusType] == 3)
        {
          if (qword_1011A6838 != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          sub_1000060E4(v47, qword_1011A9CE8);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Unexpectedly found a Voice subscriber! 😡", v50, 2u);
            v27 = v74;
          }
        }
      }
    }

    else
    {
      v71 = 1;
    }

    if (a1)
    {
      v51 = v13;
    }

    else
    {
      v51 = 1;
    }

    if ((v51 & 1) == 0)
    {
      v52 = sub_10095F928();
      if (v52 != 2 && (v52 & 1) != 0)
      {
        v53 = sub_10095FB7C();
        if (v53 != 2 && (v53 & 1) != 0)
        {
          sub_100011F90(v84, 10);
        }
      }
    }

    v54 = v72;
    if (v72)
    {
      v55 = v72;
      if ([v55 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        v56 = 0;
      }

      else
      {
        v56 = [v55 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      v56 = 0;
    }

    BYTE1(v85) = v56;
    BYTE2(v85) = [v27 isCloudLibraryEnabled];
    v57 = a1;
    sub_100013A28(a1, v88);
    if (a3)
    {
      *&v84[0] = &off_1010C6358;
      sub_100013C14(&off_1010C6380);
      v58 = *&v84[0];
    }

    else
    {
      v59 = *(a2 + 16);
      __chkstk_darwin();
      os_unfair_lock_lock((v59 + 44));
      sub_1009612C4((v59 + 16), v84);
      os_unfair_lock_unlock((v59 + 44));
      if (*&v84[0])
      {
        sub_100960B6C(v71, *&v84[0]);
        v58 = v60;

        v54 = v72;
      }

      else
      {
        v54 = v72;
        if (v71)
        {
          if (v71 == 1)
          {
            v58 = &off_1010C6148;
          }

          else
          {
            *&v84[0] = &off_1010C6198;
            sub_100013C14(&off_1010C61C0);
            v58 = *&v84[0];
          }
        }

        else
        {
          v58 = &off_1010C6170;
        }
      }
    }

    v61 = sub_100013E0C(v58, &v85);

    v62 = sub_10000EDDC(v61);
    LOBYTE(v61) = v63;
    v65 = v64;

    *(&v89 + 1) = v62;
    LOBYTE(v90) = v61;
    *(&v90 + 1) = v65;
    v80 = *&v88[16];
    v81 = *&v88[32];
    v76 = v85;
    v77 = v86;
    v78 = v87;
    v79 = *v88;
    v82 = v89;
    v83 = v90;
    v84[6] = v89;
    v84[7] = v90;
    v84[2] = v87;
    v84[3] = *v88;
    v84[0] = v85;
    v84[1] = v86;
    v84[4] = *&v88[16];
    v84[5] = *&v88[32];
    sub_10001494C(&v76, &v75);
    result = sub_100014984(v84);
    v66 = v81;
    a4[4] = v80;
    a4[5] = v66;
    v67 = v83;
    a4[6] = v82;
    a4[7] = v67;
    v68 = v77;
    *a4 = v76;
    a4[1] = v68;
    v69 = v79;
    a4[2] = v78;
    a4[3] = v69;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10000EDDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v2;
      v2 += 2;
      v4 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10001475C(0, *(v3 + 2) + 1, 1, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      if (v7 >= v6 >> 1)
      {
        v3 = sub_10001475C((v6 > 1), v7 + 1, 1, v3);
      }

      *(v3 + 2) = v7 + 1;
      v3[v7 + 32] = 0x5040302010100uLL >> (8 * v4);
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v29 = v3;
  if (qword_1011A6980 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    if (!static NSUserDefaults.mobileiPod)
    {
      goto LABEL_16;
    }

    sub_100011A14();
    sub_10000988C();
    NSUserDefaults.subscript.getter(&v27);
    if (!v28)
    {
      sub_1000095E8(&v27, &qword_1011ABB20, &unk_100EF1530);
LABEL_16:
      v8 = 1;
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v8 = v26 ^ 1;
LABEL_17:
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 1 || (v11 = *(v3 + 2)) == 0)
    {
LABEL_28:
      v14 = *(v3 + 2);
      if (!v14)
      {
        return v3;
      }

      goto LABEL_29;
    }

    v12 = 0;
    while (1)
    {
      if (v12 >= *(v3 + 2))
      {
        goto LABEL_57;
      }

      if (v3[v12 + 32] > 2u && v3[v12 + 32] <= 4u && v3[v12 + 32] != 3)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_51;
      }

      if (v11 == ++v12)
      {
        goto LABEL_28;
      }
    }

LABEL_51:
    v22 = sub_100014780(v12);
    v3 = v29;
    v23 = *(v29 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v23 >= *(v3 + 3) >> 1)
    {
      v3 = sub_10001475C(isUniquelyReferenced_nonNull_native, v23 + 1, 1, v3);
      v29 = v3;
    }

    sub_100014824(0, 0, 1, v22);
    v14 = *(v3 + 2);
    if (!v14)
    {
      return v3;
    }

LABEL_29:
    v15 = (v8 & 1) == 0;
    if (v8)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x7972617262696CLL;
    }

    if (v15)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE900000000000077;
    }

    v18 = 0;
    while (v18 < *(v3 + 2))
    {
      v19 = v3[v18 + 32];
      if (v19 > 2)
      {
        goto LABEL_38;
      }

      if (v3[v18 + 32])
      {
        if (v19 != 1)
        {
          goto LABEL_38;
        }

        v21 = 0xE900000000000077;
        if (v16 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v21 = 0xE700000000000000;
        if (v16 != 0x7972617262696CLL)
        {
          goto LABEL_38;
        }
      }

      if (v21 == v17)
      {

LABEL_40:

        return v3;
      }

LABEL_38:
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0 && v14 != ++v18)
      {
        continue;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }
}

uint64_t NSUserDefaults.subscript.getter@<X0>(_OWORD *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = NSUserDefaults.subscript.getter(a4);
  return (*(v6 + 8))(v8, AssociatedTypeWitness, v9);
}

id sub_10000F474()
{
  v1 = [objc_opt_self() activeAccount];
  v7 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v7];

  v3 = v7;
  if (v2)
  {
    v7 = 0;
    v8 = 1;
    v4 = v3;
    static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();

    return v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

void sub_10000F580()
{
  sub_10010FC20(&qword_1011AAC20, &unk_100EF8210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = objc_opt_self();
  *(inited + 48) = [v2 emptyPropertySet];
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v3;
  *(inited + 72) = [v2 emptyPropertySet];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = [v2 emptyPropertySet];
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_100EBE260;
  *(v6 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 40) = v7;
  *(v6 + 48) = [v2 emptyPropertySet];
  *(v6 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 64) = v8;
  *(v6 + 72) = [v2 emptyPropertySet];
  *(v6 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 88) = v9;
  *(v6 + 96) = [v2 emptyPropertySet];
  sub_10000C0A4(v6);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011AAC28, qword_100EF30B0);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100009F78(0, &qword_1011AC8D0, MPPropertySet_ptr);
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithProperties:isa relationships:v12];

  *(inited + 120) = v13;
  sub_10000C0A4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MPPropertySet);
  v15 = Array._bridgeToObjectiveC()().super.isa;
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v14 initWithProperties:v15 relationships:v16];

  qword_1011ACFD0 = v17;
}

unint64_t sub_10000F8B8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000F930(a1, a2, v4);
}

unint64_t sub_10000F930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000F9E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8540, &unk_100EED820);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1008B64C8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10000FB18(uint64_t a1, uint64_t a2)
{
  [v2 setSystemMusicApplication:{sub_10000FC04(0, a1)}];
  [v2 setAudioAnalyzerEnabled:{sub_10000FC04(1u, a1)}];
  [v2 setPictureInPictureSupported:{sub_10000FC04(2u, a1)}];
  [v2 setVideoSupported:{sub_10000FC04(3u, a1)}];
  [v2 setStateRestorationSupported:{sub_10000FC04(4u, a1)}];

  return [v2 setFallbackPlaybackIntent:a2];
}

BOOL sub_10000FC04(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
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

Swift::Int sub_10000FCD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011A7CB8, &qword_100EEC410);
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

uint64_t sub_10000FEF0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219D38);
  sub_1000060E4(v0, qword_101219D38);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10000FF64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100010A74(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_100010070(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100010AC0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_10001017C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100010B0C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_100010288(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100010B58(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_100010394(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100010BA4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_1000104A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100010BF0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_1000105AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000FF64(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DD18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000959C(v11);
  return v7;
}

unint64_t sub_100010678(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100010070(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DD18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000959C(v11);
  return v7;
}

unint64_t sub_100010744(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001017C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DD18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000959C(v11);
  return v7;
}

unint64_t sub_100010810(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100010288(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DD18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000959C(v11);
  return v7;
}

unint64_t sub_1000108DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100010394(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DD18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000959C(v11);
  return v7;
}

unint64_t sub_1000109A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000104A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DD18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000959C(v11);
  return v7;
}

void *sub_100010A74(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D33C(a1, a2);
  sub_100010C3C(&off_101098A18);
  return v3;
}

void *sub_100010AC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D46C(a1, a2);
  sub_100010D28(&off_1010C5680);
  return v3;
}

void *sub_100010B0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D59C(a1, a2);
  sub_100010E14(&off_1010E09F8);
  return v3;
}

void *sub_100010B58(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D6CC(a1, a2);
  sub_100010F00(&off_1010EA088);
  return v3;
}

void *sub_100010BA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D7FC(a1, a2);
  sub_100010FEC(&off_1010EFC60);
  return v3;
}

void *sub_100010BF0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D92C(a1, a2);
  sub_1000110D8(&off_1010F2F68);
  return v3;
}

uint64_t sub_100010C3C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_10035AA4C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100010D28(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_10089776C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100010E14(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_100B0CC30(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100010F00(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_100C1457C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100010FEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_100C41BEC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000110D8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_100C71238(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v6 + 40) = v15;
  v16 = *(v6 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v6 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t type metadata accessor for ApplicationCapabilities.Controller(uint64_t a1)
{
  result = qword_1011A9DA0;
  if (!qword_1011A9DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011374()
{
  type metadata accessor for ApplicationCapabilities.Controller(0);
  swift_allocObject();
  result = sub_10000DE78();
  static ApplicationCapabilities.Controller.shared = result;
  return result;
}

void sub_1000113B4()
{
  if (!qword_1011A9DB0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A9DB0);
    }
  }
}

void *sub_100011440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v42 - v14;
  __chkstk_darwin();
  v17 = &v42 - v16;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v18 = objc_opt_self();

  v19 = [v18 sharedBagProvider];
  LODWORD(a2) = [v19 useAMSBag];

  if (!a2)
  {
    if (qword_1011A6930 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "UserDefaults enabled as source for cached musicTabs.", v35, 2u);
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_22;
  }

  if (qword_1011A6988 != -1)
  {
    swift_once();
  }

  v20 = static ICClientInfo.music;
  v21 = [static ICClientInfo.music bagProfile];
  if (!v21)
  {
LABEL_17:
    if (qword_1011A6930 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "    AMSBag was intended to be enabled as source for cached musicTabs, but bag profile and/or version were unexpectedly nil.\n    Defaulting to .userDefaults configuration.", v39, 2u);
    }

    (*(v11 + 8))(v15, v10);
LABEL_22:
    v29 = 0;
    v31 = 0;
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v20 bagProfileVersion];
  if (!v23)
  {

    goto LABEL_17;
  }

  v24 = v23;
  if (qword_1011A6930 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.musicBag;
  Logger.init(_:)();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "AMSBag enabled as source for cached musicTabs.", v28, 2u);
  }

  (*(v11 + 8))(v17, v10);
  v29 = [objc_opt_self() bagForProfile:v22 profileVersion:v24];

  v30 = v29;
  v31 = 1;
LABEL_23:
  sub_10010FC20(&qword_1011B01E8, &qword_100EFD398);
  v40 = swift_allocObject();
  *(v40 + 44) = 0;

  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v29;
  *(v40 + 40) = v31;
  sub_10000E40C(v29, 0);
  v5[2] = v40;
  return v5;
}

void sub_100011958(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1000119A4()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static NSUserDefaults.mobileiPod = v2;
}

unint64_t sub_100011A14()
{
  result = qword_1011A9F18;
  if (!qword_1011A9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9F18);
  }

  return result;
}

unint64_t sub_100011A68()
{
  result = qword_1011BF348;
  if (!qword_1011BF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF348);
  }

  return result;
}

BOOL sub_100011ABC(_BOOL8 a1, void *a2)
{
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v5 = &v9[-v4];
  if (qword_1011A6980 != -1)
  {
    swift_once();
  }

  if (!static NSUserDefaults.mobileiPod)
  {
    goto LABEL_10;
  }

  sub_100011A14();
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v10);
  if (!v11)
  {
    sub_1000095E8(&v10, &qword_1011ABB20, &unk_100EF1530);
LABEL_10:
    a1 = 1;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0 || v9[15] != 1)
  {
    goto LABEL_10;
  }

  if (a1)
  {
    a1 = [a1 statusType] == 1;
  }

LABEL_11:
  v6 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.applicationScriptURL.getter(v5);

  v7 = type metadata accessor for URL();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_1000095E8(v5, &qword_1011A77F0, &unk_100EEAA20);
  if (v6 == 1 && [a2 hasLoadedSubscriptionAvailability])
  {
    return [a2 isSubscriptionAvailable] & a1;
  }

  return a1;
}

uint64_t NSUserDefaults.applicationScriptURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      v2 = (0x8000000100E64090 >> 56) & 0xF;
      if ((0x8000000100E64090 & 0x2000000000000000) == 0)
      {
        v2 = 20;
      }

      if (v2)
      {
        URL.init(string:)();
      }
    }
  }

  else
  {
    sub_100011E58(&v5);
  }

  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
}

uint64_t sub_100011DF0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101183F30, qword_100EBF960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011E58(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011ABB20, &unk_100EF1530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011EC0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7C70, &unk_100EFFD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011F28(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BADF0, "rb\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011F90(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  ApplicationCapabilities.Service.rawValue.getter(a2);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v31 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v32 + 48) + v7);
      v33 = v7;
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x8000000100E4DAB0;
        }

        v13 = *(*(v32 + 48) + v7) ? 0x646956636973756DLL : 0x636973756DLL;
        v14 = *(*(v32 + 48) + v7) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(v32 + 48) + v7) <= 1u ? v13 : v11;
        v10 = *(*(v32 + 48) + v7) <= 1u ? v14 : v12;
      }

      else if (*(*(v32 + 48) + v7) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x8000000100E4DA90;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x8000000100E4DA70;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a2 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a2 == 9)
      {
        v16 = 0x8000000100E4DA70;
      }

      if (a2 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x8000000100E4DA90;
      }

      v17 = 0x746963696C707865;
      if (a2 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a2 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a2 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a2 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a2 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a2 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a2 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x8000000100E4DAB0;
      }

      if (a2)
      {
        v21 = 0x646956636973756DLL;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a2)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a2 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a2 <= 4u ? v19 : v15;
      v24 = a2 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_78;
      }

      v7 = (v33 + 1) & v30;
      if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    result = 0;
    LOBYTE(a2) = *(*(v32 + 48) + v33);
  }

  else
  {
LABEL_76:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v28;
    sub_100012518(a2, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t sub_1000123A0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x636973756DLL;
    v7 = 0xD000000000000013;
    v8 = 0x6C6169636F73;
    if (a1 != 3)
    {
      v8 = 0x6F69646172;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x646956636973756DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD000000000000011;
    if (a1 != 9)
    {
      v2 = 0x6C62616E45696C6DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x73656E757469;
    v4 = 0x74634170756F7267;
    if (a1 != 6)
    {
      v4 = 0x746963696C707865;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

void sub_100012518(Swift::Int result, unint64_t a2, char a3)
{
  v37 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_84;
  }

  if (a3)
  {
    sub_100012DC4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1001943D4(&qword_1011ABA88, &qword_100EF5898);
      goto LABEL_84;
    }

    sub_10001297C(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  ApplicationCapabilities.Service.rawValue.getter(v37);
  String.hash(into:)();

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v36 = ~v9;
    v10 = 0xEB00000000736F65;
    v11 = 0x8000000100E4DAB0;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 <= 4)
      {
        if (v12 == 3)
        {
          v15 = 0x6C6169636F73;
        }

        else
        {
          v15 = 0x6F69646172;
        }

        if (v12 == 3)
        {
          v16 = 0xE600000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (v12 == 2)
        {
          v15 = 0xD000000000000013;
          v16 = v11;
        }

        v17 = *(*(v7 + 48) + a2) ? 0x646956636973756DLL : 0x636973756DLL;
        v18 = *(*(v7 + 48) + a2) ? v10 : 0xE500000000000000;
        v13 = *(*(v7 + 48) + a2) <= 1u ? v17 : v15;
        v14 = *(*(v7 + 48) + a2) <= 1u ? v18 : v16;
      }

      else if (*(*(v7 + 48) + a2) > 7u)
      {
        if (v12 == 8)
        {
          v13 = 0xD000000000000013;
          v14 = 0x8000000100E4DA90;
        }

        else if (v12 == 9)
        {
          v13 = 0xD000000000000011;
          v14 = 0x8000000100E4DA70;
        }

        else
        {
          v13 = 0x6C62616E45696C6DLL;
          v14 = 0xEA00000000006465;
        }
      }

      else if (v12 == 5)
      {
        v14 = 0xE600000000000000;
        v13 = 0x73656E757469;
      }

      else if (v12 == 6)
      {
        v13 = 0x74634170756F7267;
        v14 = 0xED00007974697669;
      }

      else
      {
        v13 = 0x746963696C707865;
        v14 = 0xEF746E65746E6F43;
      }

      v19 = 0xD000000000000011;
      if (v37 != 9)
      {
        v19 = 0x6C62616E45696C6DLL;
      }

      v20 = 0xEA00000000006465;
      if (v37 == 9)
      {
        v20 = 0x8000000100E4DA70;
      }

      if (v37 == 8)
      {
        v19 = 0xD000000000000013;
        v20 = 0x8000000100E4DA90;
      }

      v21 = 0x746963696C707865;
      if (v37 == 6)
      {
        v21 = 0x74634170756F7267;
      }

      v22 = 0xEF746E65746E6F43;
      if (v37 == 6)
      {
        v22 = 0xED00007974697669;
      }

      if (v37 == 5)
      {
        v21 = 0x73656E757469;
        v22 = 0xE600000000000000;
      }

      if (v37 <= 7u)
      {
        v19 = v21;
        v20 = v22;
      }

      if (v37 == 3)
      {
        v23 = 0x6C6169636F73;
      }

      else
      {
        v23 = 0x6F69646172;
      }

      if (v37 == 3)
      {
        v24 = 0xE600000000000000;
      }

      else
      {
        v24 = 0xE500000000000000;
      }

      if (v37 == 2)
      {
        v23 = 0xD000000000000013;
      }

      v25 = v11;
      if (v37 == 2)
      {
        v24 = v11;
      }

      if (v37)
      {
        v26 = 0x646956636973756DLL;
      }

      else
      {
        v26 = 0x636973756DLL;
      }

      v27 = v10;
      if (!v37)
      {
        v10 = 0xE500000000000000;
      }

      if (v37 <= 1u)
      {
        v23 = v26;
        v24 = v10;
      }

      v28 = v37 <= 4u ? v23 : v19;
      v29 = v37 <= 4u ? v24 : v20;
      if (v13 == v28 && v14 == v29)
      {
        goto LABEL_87;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_88;
      }

      a2 = (a2 + 1) & v36;
      v10 = v27;
      v11 = v25;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_84:
  v31 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + a2) = v37;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v31 + 16) = v34;
    return;
  }

  __break(1u);
LABEL_87:

LABEL_88:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_10001297C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABA88, &qword_100EF5898);
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
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
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
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_100012D3C()
{
  result = qword_1011A9D58;
  if (!qword_1011A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9D58);
  }

  return result;
}

id sub_100012D90()
{
  result = [objc_allocWithZone(RadioAvailabilityController) init];
  qword_1011A9CE0 = result;
  return result;
}

Swift::Int sub_100012DC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011ABA88, &qword_100EF5898);
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
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

uint64_t sub_1000131A0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();

    LODWORD(v3) = [v3 effectiveBoolValueForSetting:v4];

    v5 = v3 != 2;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (qword_1011A6828 != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [a2 dictionaryForBagKey:v6];

  if (v7)
  {

    sub_100009F78(0, &qword_1011A9F38, ICUserIdentityStore_ptr);
    v8 = static ICUserIdentityStore.activeAccountDSID.getter();
    if (v8)
    {

      if (v5)
      {
        return 1;
      }
    }
  }

LABEL_11:
  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 0;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  sub_10001351C();
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v11);

  if (!v12)
  {
    sub_1000095E8(&v11, &qword_1011ABB20, &unk_100EF1530);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1000133C4()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1011A9CD0 = result;
  *algn_1011A9CD8 = v1;
  return result;
}

id static ICUserIdentityStore.activeAccountDSID.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultIdentityStore];
  v1 = [objc_opt_self() activeAccount];
  v6 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v6];

  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t sub_1000134F4()
{
  result = os_variant_has_internal_content();
  static DeviceCapabilities.isInternalInstall = result;
  return result;
}

unint64_t sub_10001351C()
{
  result = qword_1011A9F30;
  if (!qword_1011A9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9F30);
  }

  return result;
}

void sub_100013570(unint64_t *a1@<X8>)
{
  v2 = "gMusicTabsDictionary";
  v3 = 0xD000000000000025;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000014;
    v2 = "countUniqueIdentifier";
  }

  v4 = 0xD000000000000024;
  if (*v1)
  {
    v5 = "UserRequestedSubscriptionHidden";
  }

  else
  {
    v4 = 0xD00000000000001FLL;
    v5 = "explicitContent";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1000135EC(uint64_t a1, uint64_t a2)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 1;
  }

  v3 = 0;
  v29 = a1 + 32;
  v4 = a2 + 56;
  while (*(a2 + 16))
  {
    v5 = *(v29 + v3);
    Hasher.init(_seed:)();
    ApplicationCapabilities.Service.description.getter(v5);
    String.hash(into:)();

    v6 = Hasher._finalize()();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      break;
    }

    v30 = v3 + 1;
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 <= 4)
      {
        v13 = 0x6C6169636F73;
        if (v10 != 3)
        {
          v13 = 0x6F69646172;
        }

        v14 = 0xE600000000000000;
        if (v10 != 3)
        {
          v14 = 0xE500000000000000;
        }

        if (v10 == 2)
        {
          v13 = 0xD000000000000013;
          v14 = 0x8000000100E4DAB0;
        }

        v15 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v8))
        {
          v15 = 0x636973756DLL;
        }

        v16 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v8))
        {
          v16 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(*(a2 + 48) + v8) > 7u)
      {
        if (v10 == 8)
        {
          v11 = 0xD000000000000013;
          v12 = 0x8000000100E4DA90;
        }

        else if (v10 == 9)
        {
          v11 = 0xD000000000000011;
          v12 = 0x8000000100E4DA70;
        }

        else
        {
          v11 = 0x6C62616E45696C6DLL;
          v12 = 0xEA00000000006465;
        }
      }

      else if (v10 == 5)
      {
        v12 = 0xE600000000000000;
        v11 = 0x73656E757469;
      }

      else
      {
        if (v10 == 6)
        {
          v11 = 0x74634170756F7267;
        }

        else
        {
          v11 = 0x746963696C707865;
        }

        if (v10 == 6)
        {
          v12 = 0xED00007974697669;
        }

        else
        {
          v12 = 0xEF746E65746E6F43;
        }
      }

      if (v5 > 4)
      {
        v17 = 0xD000000000000011;
        if (v5 != 9)
        {
          v17 = 0x6C62616E45696C6DLL;
        }

        v18 = 0xEA00000000006465;
        if (v5 == 9)
        {
          v18 = 0x8000000100E4DA70;
        }

        if (v5 == 8)
        {
          v17 = 0xD000000000000013;
          v18 = 0x8000000100E4DA90;
        }

        v19 = 0x746963696C707865;
        if (v5 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        v20 = 0xEF746E65746E6F43;
        if (v5 == 6)
        {
          v20 = 0xED00007974697669;
        }

        if (v5 == 5)
        {
          v19 = 0x73656E757469;
          v20 = 0xE600000000000000;
        }

        if (v5 <= 7)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v5 <= 7)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        if (v11 == v21)
        {
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (v5 <= 1)
      {
        break;
      }

      v23 = 0x6C6169636F73;
      if (v5 != 3)
      {
        v23 = 0x6F69646172;
      }

      v24 = 0xE600000000000000;
      if (v5 != 3)
      {
        v24 = 0xE500000000000000;
      }

      if (v5 == 2)
      {
        v25 = 0xD000000000000013;
      }

      else
      {
        v25 = v23;
      }

      if (v5 == 2)
      {
        v22 = 0x8000000100E4DAB0;
      }

      else
      {
        v22 = v24;
      }

      if (v11 == v25)
      {
        goto LABEL_74;
      }

LABEL_75:
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_80;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v5)
    {
      v22 = 0xE500000000000000;
      if (v11 == 0x636973756DLL)
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    v22 = 0xEB00000000736F65;
    if (v11 != 0x646956636973756DLL)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (v12 != v22)
    {
      goto LABEL_75;
    }

LABEL_80:
    v3 = v30;
    if (v30 == v28)
    {
      return 1;
    }
  }

  return 0;
}

void sub_100013A28(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 numberForBagKey:v4];

    if (v5)
    {
      static Int._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    v10 = v3;
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 stringForBagKey:v11];

    if (v12)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v13;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }

    v14 = v10;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 stringForBagKey:v15];

    if (v16)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v17;
    }

    else
    {

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v6;
  a2[4] = v7;
}

uint64_t sub_100013C14(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_100013D00(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 2 * v7 + 32), (v6 + 32), 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100013D00(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7BD0, &unk_100EEC3A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_100013E0C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v34 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  v31 = *(result + 16);
LABEL_3:
  v33 = v4;
  while (v3 < v2)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_63;
    }

    v6 = (v34 + 2 * v3);
    v7 = v6[1];
    ++v3;
    v8 = *v6;
    if (v8 == 2)
    {
      v21 = *(a2 + 32);
      if (!*(v21 + 16))
      {
        goto LABEL_6;
      }

      v32 = v6[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v21 + 32);
      v24 = v22 & ~v23;
      if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = *(*(v21 + 48) + v24);
          if (v26 <= 4)
          {
            if (v26 == 2)
            {
              goto LABEL_57;
            }
          }

          else if (*(*(v21 + 48) + v24) > 7u && v26 == 8 && 0x8000000100E4DAB0 == 0x8000000100E4DA90)
          {
LABEL_57:

LABEL_49:

            LOBYTE(v8) = 2;
LABEL_50:
            v2 = v31;
            v4 = v33;
            v7 = v32;
LABEL_51:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_10001462C(0, v4[2] + 1, 1);
            }

            v29 = v4[2];
            v28 = v4[3];
            if (v29 >= v28 >> 1)
            {
              result = sub_10001462C((v28 > 1), v29 + 1, 1);
            }

            v4[2] = v29 + 1;
            v30 = v4 + 2 * v29;
            v30[32] = v8;
            v30[33] = v7;
            if (v5 == v2)
            {
              return v4;
            }

            goto LABEL_3;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_49;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }
    }

    else
    {
      if (v8 == 6)
      {
        v15 = *(a2 + 32);
        if (!*(v15 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (*(*(v15 + 48) + v18) > 2u || !*(*(v15 + 48) + v18) || *(*(v15 + 48) + v18) == 2)
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v20)
            {
              goto LABEL_48;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_48:

          LOBYTE(v8) = 6;
          goto LABEL_50;
        }
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_51;
        }

        v9 = *(a2 + 32);
        if (!*(v9 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();
        v11 = -1 << *(v9 + 32);
        v12 = v10 & ~v11;
        if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (*(*(v9 + 48) + v12) > 5u || *(*(v9 + 48) + v12) < 4u || *(*(v9 + 48) + v12) == 5)
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v14)
            {
              goto LABEL_47;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_47:

          LOBYTE(v8) = 4;
          goto LABEL_50;
        }
      }

LABEL_4:
      v2 = v31;
    }

    v4 = v33;
LABEL_6:
    if (v5 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

char *sub_10001462C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001464C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001464C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7BD0, &unk_100EEC3A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_100014798(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

char *sub_100014834(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

__n128 sub_1000149D8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

__n128 sub_1000149FC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

__n128 sub_100014A20(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

void sub_100014A44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 11);
  sub_100014B64(&v5[4], &v8);
  os_unfair_lock_unlock(v5 + 11);
  v6 = v8;
  if (v8)
  {
    v7 = sub_100014E14(v8, a1, a2);
    __chkstk_darwin();
    os_unfair_lock_lock(v5 + 11);
    sub_1000162F4(&v5[4]);
    os_unfair_lock_unlock(v5 + 11);
  }
}

void sub_100014B64(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) != 0 && !*(a1 + 16))
    {
      *(a1 + 16) = 1;
      *(a1 + 24) = 1;
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 16) = 1;
      *(a3 + 24) = 1;

      v13 = v11;
      return;
    }

    v25 = v8;
    v14 = qword_1011A6930;
    v24 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23[1] = v4;
      v19 = v18;
      v23[0] = swift_slowAlloc();
      v26 = v23[0];
      *v19 = 136315394;
      v20 = _typeName(_:qualified:)();
      v22 = sub_100010678(v20, v21, &v26);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_100010678(0xD000000000000021, 0x8000000100E643A0, &v26);
      _os_log_impl(&_mh_execute_header, v16, v17, "    An unexpected attempt to configure an %s instance twice using %s will be ignored.", v19, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 8))(v10, v25);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}

id sub_100014E14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = type metadata accessor for Logger();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v74 - v10;
  v94 = [objc_opt_self() uninitializedToken];
  v11 = *(v3 + 24);
  v12 = *(v4 + 32);
  sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v11;
  *(inited + 40) = v12;

  sub_100015A48(inited);
  swift_setDeallocating();
  sub_100015BB0(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v15 = swift_allocObject();
  v16 = a1;
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = a2;
  v17[6] = a3;
  aBlock[4] = sub_100AECDAC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100AECD28;
  aBlock[3] = &unk_1010E0188;
  v18 = _Block_copy(aBlock);

  v19 = [a1 cachedValuesForKeys:isa observationToken:&v94 updateHandler:v18];
  _Block_release(v18);

  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v20 + 16) && (v21 = sub_100019C28(v11, v12), (v22 & 1) != 0))
  {
    sub_10000DD18(*(v20 + 56) + 32 * v21, aBlock);

    sub_10010FC20(&qword_1011A9FC0, &qword_100EF1D60);
    if (swift_dynamicCast())
    {
      v23 = *&v96[0];
      v24 = qword_1011A6930;

      if (v24 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v25 = static OS_os_log.musicBag;
        v26 = v90;
        Logger.init(_:)();

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v27, v28))
        {

          (*(v91 + 8))(v26, v92);
          return v16;
        }

        v77 = v28;
        v78 = v27;
        v29 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v97 = v75;
        v76 = v29;
        *v29 = 136315138;
        sub_10010FC20(&qword_1011B01D8, &qword_100EFD388);
        v30 = static _DictionaryStorage.copy(original:)();
        v31 = v30;
        v32 = 0;
        v33 = *(v23 + 64);
        v79 = v23 + 64;
        v34 = 1 << *(v23 + 32);
        v35 = v34 < 64 ? ~(-1 << v34) : -1;
        v36 = v35 & v33;
        v37 = (v34 + 63) >> 6;
        v89 = "v16@?0@NSDictionary8";
        v84 = v30 + 64;
        v82 = v16;
        v83 = v23;
        v81 = v30;
        v80 = v37;
        if ((v35 & v33) == 0)
        {
          break;
        }

        while (1)
        {
          v38 = __clz(__rbit64(v36));
          v36 &= v36 - 1;
LABEL_16:
          v41 = v38 | (v32 << 6);
          v42 = *(v23 + 56);
          v43 = (*(v23 + 48) + 16 * v41);
          v44 = v43[1];
          v87 = *v43;
          v88 = v41;
          v45 = *(v42 + 8 * v41);
          v23 = *(v45 + 16);
          if (v23)
          {
            v86 = v36;
            v93 = _swiftEmptyArrayStorage;
            v85 = v44;

            sub_100015C24(0, v23, 0);
            v9 = v93;
            v46 = 32;
            do
            {
              v47 = *(v45 + v46);
              *&v95[0] = 25705;
              *(&v95[0] + 1) = 0xE200000000000000;

              AnyHashable.init<A>(_:)();
              if (*(v47 + 16) && (v48 = sub_1000160B4(aBlock), (v49 & 1) != 0))
              {
                sub_10000DD18(*(v47 + 56) + 32 * v48, v95);
                sub_10001621C(aBlock);
                sub_100016270(v95, v96);
                sub_10000DD18(v96, aBlock);
                if (swift_dynamicCast())
                {
                  v51 = *(&v95[0] + 1);
                  v50 = *&v95[0];
                }

                else
                {
                  *&v95[0] = 0;
                  *(&v95[0] + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(23);
                  v52._object = (v89 | 0x8000000000000000);
                  v52._countAndFlagsBits = 0xD000000000000014;
                  String.append(_:)(v52);
                  _print_unlocked<A, B>(_:_:)();
                  v53._countAndFlagsBits = 62;
                  v53._object = 0xE100000000000000;
                  String.append(_:)(v53);

                  v51 = *(&v95[0] + 1);
                  v50 = *&v95[0];
                }

                sub_10000959C(v96);
              }

              else
              {
                sub_10001621C(aBlock);

                v50 = 0x204449206261743CLL;
                v51 = 0xEF3E746E65736261;
              }

              v93 = v9;
              v55 = *(v9 + 2);
              v54 = *(v9 + 3);
              if (v55 >= v54 >> 1)
              {
                sub_100015C24((v54 > 1), v55 + 1, 1);
                v9 = v93;
              }

              *(v9 + 2) = v55 + 1;
              v56 = &v9[16 * v55];
              *(v56 + 4) = v50;
              *(v56 + 5) = v51;
              v46 += 8;
              --v23;
            }

            while (v23);

            v16 = v82;
            v31 = v81;
            v37 = v80;
            v36 = v86;
            v57 = v85;
          }

          else
          {

            v9 = _swiftEmptyArrayStorage;
          }

          v58 = v88;
          *(v84 + ((v88 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v88;
          v59 = (v31[6] + 16 * v58);
          *v59 = v87;
          v59[1] = v57;
          *(v31[7] + 8 * v58) = v9;
          v60 = v31[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            break;
          }

          v31[2] = v62;
          v23 = v83;
          if (!v36)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

LABEL_11:
      v39 = v32;
      while (1)
      {
        v32 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v32 >= v37)
        {

          sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
          v68 = Dictionary.description.getter();
          v70 = v69;

          v71 = sub_100010678(v68, v70, &v97);

          v72 = v76;
          *(v76 + 1) = v71;
          v73 = v78;
          _os_log_impl(&_mh_execute_header, v78, v77, "AMSBag provided initial state of musicTabs: %s", v72, 0xCu);
          sub_10000959C(v75);

          (*(v91 + 8))(v90, v92);
          return v16;
        }

        v40 = *(v79 + 8 * v32);
        ++v39;
        if (v40)
        {
          v38 = __clz(__rbit64(v40));
          v36 = (v40 - 1) & v40;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
  }

  if (qword_1011A6930 != -1)
  {
LABEL_42:
    swift_once();
  }

  v63 = static OS_os_log.musicBag;
  Logger.init(_:)();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "AMSBag didn't provide initial state of musicTabs. No cached value was found.", v66, 2u);
  }

  (*(v91 + 8))(v9, v92);
  return v16;
}