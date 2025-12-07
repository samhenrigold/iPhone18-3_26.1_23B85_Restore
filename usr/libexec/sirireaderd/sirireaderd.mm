int main(int argc, const char **argv, const char **envp)
{
  v3 = stdout.getter();
  setlinebuf(v3);
  qword_10001D4F0 = [objc_allocWithZone(type metadata accessor for SiriReaderDaemonServer()) init];
  v4 = [objc_opt_self() mainRunLoop];
  [v4 run];

  return 0;
}

void *sub_100001B1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001B2C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100001B68(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001BBC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100001C30(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001CA8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001D28@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100001D7C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100001E08@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001E34(uint64_t a1)
{
  v2 = sub_10000210C(&qword_10001D078, type metadata accessor for FileAttributeKey, &unk_100013068);
  v3 = sub_10000210C(&qword_10001D080, type metadata accessor for FileAttributeKey, &unk_100012FBC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001EF0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100001F38(uint64_t a1)
{
  v2 = sub_10000210C(&qword_10001D088, type metadata accessor for NSKeyValueChangeKey, &unk_1000130AC);
  v3 = sub_10000210C(&qword_10001D090, type metadata accessor for NSKeyValueChangeKey, &unk_100012EA8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_100002030(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000210C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000022A0()
{
  if (qword_10001CFC0 != -1)
  {
    swift_once();
  }

  v1 = qword_10001D508;
  qword_10001D098 = qword_10001D508;

  return v1;
}

uint64_t sub_100002304()
{
  v0 = type metadata accessor for Logger();
  sub_10000C5B0(v0, qword_10001D0A0);
  sub_10000C510(v0, qword_10001D0A0);
  if (qword_10001CF98 != -1)
  {
    swift_once();
  }

  v1 = qword_10001D098;
  return Logger.init(_:)();
}

id sub_100002390()
{
  result = [objc_allocWithZone(AVQueuePlayer) init];
  qword_10001D0B8 = result;
  return result;
}

id sub_1000023C4()
{
  result = [objc_allocWithZone(type metadata accessor for DaemonSession()) init];
  qword_10001D0C0 = result;
  return result;
}

NSNumber sub_1000023F8()
{
  sub_10000C458(&qword_10001D240, &qword_100013268);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100013100;
  sub_10000FCE8(0, &qword_10001D238, NSNumber_ptr);
  *(v0 + 32) = NSNumber.init(floatLiteral:)(0.75);
  *(v0 + 40) = NSNumber.init(floatLiteral:)(1.0);
  *(v0 + 48) = NSNumber.init(floatLiteral:)(1.25);
  *(v0 + 56) = NSNumber.init(floatLiteral:)(1.5);
  *(v0 + 64) = NSNumber.init(floatLiteral:)(1.75);
  result.super.super.isa = NSNumber.init(floatLiteral:)(2.0).super.super.isa;
  *(v0 + 72) = result;
  qword_10001D4F8 = v0;
  return result;
}

id sub_1000024B0()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isCurrentlySeeking] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_nowPlayingInfo] = &_swiftEmptyDictionarySingleton;
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_boostToken] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer] = 0;
  v6 = &v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences] = &_swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive] = 0;
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlayingStartingTone] = 0;
  v7 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_processMonitor;
  *&v0[v7] = [objc_allocWithZone(RBSProcessMonitor) init];
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentRequestStartTime] = 0;
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker] = 0;
  v8 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
  v27 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_serialQueue;
  sub_10000FCE8(0, &qword_10001D2E8, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_10000FE5C(&qword_10001D330, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000C458(&qword_10001D338, &qword_1000132C8);
  sub_10000FEA4(&qword_10001D340, &qword_10001D338, &qword_1000132C8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *&v0[v27] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = type metadata accessor for SiriReaderInstrumentationUtility();
  v11 = swift_allocObject();
  v12 = type metadata accessor for SelfEmitter();
  v13 = swift_allocObject();
  v11[5] = v12;
  v11[6] = &off_100018E88;
  v11[2] = v13;
  v14 = &v1[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_instrumentationUtil];
  *(v14 + 3) = v10;
  *(v14 + 4) = &off_100018E50;
  *v14 = v11;
  v15 = type metadata accessor for SiriReaderDaemon(0);
  v31.receiver = v1;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, "init");
  v17 = qword_10001CFA8;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_10001D0B8;
  v20 = String._bridgeToObjectiveC()();
  [v19 addObserver:v18 forKeyPath:v20 options:5 context:0];

  sub_100009E7C();
  sub_100003A28(0);
  v21 = [objc_opt_self() defaultCenter];
  v22 = objc_opt_self();
  v23 = v18;
  v24 = [v22 sharedInstance];
  [v21 addObserver:v23 selector:"handlePlaybackInterruptionWithNotification:" name:AVAudioSessionInterruptionNotification object:v24];

  return v23;
}

void sub_100002B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v32 = Strong;
  sub_1000063FC(a2, a3, a4, a5);
  sub_100006AB4(a6, a7);
  sub_10000703C();
  sub_100007A38();
  v15 = *&v32[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID];
  v14 = *&v32[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8];

  v16 = String.count.getter();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (HIDWORD(v16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = *&v32[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences];
  v18 = *(v17 + 16);
  if (HIDWORD(v18))
  {
LABEL_33:
    __break(1u);
    return;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      v19 = 0;
      v20 = 0.0;
    }

    else
    {
      v19 = *(v17 + 16) & 0xFFFFFFFELL;
      v22 = v17 + 64;
      v23 = v19;
      v20 = 0.0;
      do
      {
        v24 = *v22;
        v25 = *(v22 + 56);
        v26 = *(v22 - 16);
        v27 = *(v22 + 40);
        if (*(v22 - 8))
        {
          v26 = 0.0;
        }

        if (*(v22 + 48))
        {
          v27 = 0.0;
        }

        if (*(v22 + 8))
        {
          v24 = v26;
        }

        if (*(v22 + 64))
        {
          v25 = v27;
        }

        v20 = v20 + v24 + v25;
        v22 += 112;
        v23 -= 2;
      }

      while (v23);
      if (v18 == v19)
      {
        goto LABEL_27;
      }
    }

    v28 = (v17 + 56 * v19 + 72);
    v29 = v18 - v19;
    do
    {
      v30 = *(v28 - 1);
      v31 = *(v28 - 3);
      if (*(v28 - 16))
      {
        v31 = 0.0;
      }

      if (*v28)
      {
        v30 = v31;
      }

      v20 = v20 + v30;
      v28 += 7;
      --v29;
    }

    while (v29);
LABEL_27:
    v21 = v20;
    goto LABEL_28;
  }

  v21 = 0.0;
LABEL_28:
  sub_100011278(v15, v14, v16, v18, v21);
}

id sub_100002DF8()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
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
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  v8 = &NSObject__properties;
  if (*(&v32 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
      if (v9 && (v29 == *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) && v9 == v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v28 = v0;
        v10 = String._bridgeToObjectiveC()();
        v6 = [v3 integerForKey:v10];

        if (qword_10001CFA0 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10000C510(v11, qword_10001D0A0);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *&v33[0] = v15;
          *v14 = 136315138;
          v16 = sub_10000C7C4(v29, v30, v33);

          *(v14 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v12, v13, "#sirireaderd previouslyInProgressUUID: %s", v14, 0xCu);
          sub_10000FEF8(v15);
          p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);

          v8 = &NSObject__properties;
        }

        else
        {
        }

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = v6;
          _os_log_impl(&_mh_execute_header, v25, v26, "#sirireaderd previouslyInProgressSentence: %ld", v27, 0xCu);
        }

        v0 = v28;
        goto LABEL_19;
      }
    }
  }

  else
  {
    sub_10000FD30(v33, &qword_10001D248, &qword_100013270);
  }

  v6 = 0;
LABEL_19:
  if (*(&p_opt_class_meths[31][1] + v0))
  {

    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = String._bridgeToObjectiveC()();
  [v3 setObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  if (*&v8[500] != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C510(v19, qword_10001D0A0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "#sirireaderd clear sessionUuidEndedByClient", v22, 2u);
  }

  v23 = String._bridgeToObjectiveC()();
  [v3 removeObjectForKey:v23];

  return v6;
}

void sub_1000032F0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() readerStartingToneAudioAssetURL];
  if (v6)
  {
    v7 = v6;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = objc_allocWithZone(AVPlayerItem);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v12 = [v8 initWithURL:v10];

    v13 = [objc_allocWithZone(AVPlayer) initWithPlayerItem:v12];
    v14 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer;
    v15 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer);
    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer) = v13;

    v16 = [objc_opt_self() defaultCenter];
    v17 = objc_opt_self();
    v18 = v12;
    v19 = [v17 mainQueue];
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10000F4C0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003704;
    aBlock[3] = &unk_100018D48;
    v21 = _Block_copy(aBlock);

    v22 = [v16 addObserverForName:AVPlayerItemDidPlayToEndTimeNotification object:v18 queue:v19 usingBlock:v21];
    _Block_release(v21);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlayingStartingTone) = 1;
    [*(v1 + v14) play];

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C510(v23, qword_10001D0A0);
    v28 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v28, v24, "#sirireaderd Starting tone file not found", v25, 2u);
    }

    v26 = v28;
  }
}

void sub_1000036A4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000037F8();
  }
}

uint64_t sub_100003704(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1000037F8()
{
  v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlayingStartingTone] = 0;
  v1 = *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer];
  *&v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingTonePlayer] = 0;

  if (v0[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying])
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C510(v2, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "#sirireaderd Finished playing starting tone, but player is already playing!", v4, 2u);
    }
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C510(v5, qword_10001D0A0);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(v6 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence);

      _os_log_impl(&_mh_execute_header, v7, v8, "#sirireaderd Finished playing starting tone, enqueuing sentence %ld", v9, 0xCu);
    }

    else
    {

      v7 = v6;
    }

    sub_100008820(*(&v6->isa + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence), 1);
  }
}

uint64_t sub_100003A28(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_processMonitor];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10000F3DC;
  *(v5 + 24) = v4;
  v11[4] = sub_10000F3F4;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100004664;
  v11[3] = &unk_100018CA8;
  v6 = _Block_copy(v11);
  v7 = v3;
  v8 = v1;

  [v7 updateConfiguration:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100003B94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() predicateMatchingBundleIdentifier:v4];

  sub_10000C458(&qword_10001D240, &qword_100013268);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100013110;
  *(v6 + 32) = v5;
  sub_10000FCE8(0, &qword_10001D2E0, RBSProcessPredicate_ptr);
  v7 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  [a1 setServiceClass:25];
  [a1 setEvents:1];
  v9 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [a1 setStateDescriptor:v9];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_10000F41C;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000045C4;
  v12[3] = &unk_100018CD0;
  v11 = _Block_copy(v12);

  [a1 setUpdateHandler:v11];
  _Block_release(v11);
}

uint64_t sub_100003DD4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FCE8(0, &qword_10001D2E8, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_10000F46C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010140;
  aBlock[3] = &unk_100018D20;
  v15 = _Block_copy(aBlock);

  v16 = a2;
  v17 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000FE5C(&qword_10001D2F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C458(&qword_10001D2F8, &qword_1000132A8);
  sub_10000FEA4(&qword_10001D300, &qword_10001D2F8, &qword_1000132A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

void sub_1000040CC(uint64_t a1, void *a2, void *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = [a2 currentState];
  if (v5 && (v6 = v5, v7 = [v5 isRunning], v6, v7))
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C510(v8, qword_10001D0A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10000C7C4(0xD000000000000016, 0x8000000100014820, &v33);
      _os_log_impl(&_mh_execute_header, v9, v10, "#sirireaderd %s is running", v11, 0xCu);
      sub_10000FEF8(v12);

      return;
    }
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C510(v13, qword_10001D0A0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000C7C4(0xD000000000000016, 0x8000000100014820, &v33);
      _os_log_impl(&_mh_execute_header, v14, v15, "#sirireaderd %s stopped running", v16, 0xCu);
      sub_10000FEF8(v17);
    }

    v18 = [a3 exitEvent];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 context];

      if (v20)
      {
        v31 = [v20 status];

        if (v31)
        {
          if ([v31 isJetsam])
          {
            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&_mh_execute_header, v21, v22, "#sirireaderd exitStatus is jetsam, don't tear down", v23, 2u);
            }

            v24 = v31;
            goto LABEL_26;
          }

          v25 = v31;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *v28 = 138412290;
            *(v28 + 4) = v25;
            *v29 = v31;
            v30 = v25;
            _os_log_impl(&_mh_execute_header, v26, v27, "#sirireaderd exitStatus: %@", v28, 0xCu);
            sub_10000FD30(v29, &qword_10001D278, &unk_100013298);

            v25 = v26;
            v26 = v30;
          }
        }
      }
    }

    sub_100004AE0();
  }

  v24 = Strong;
LABEL_26:
}

uint64_t sub_100004580(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000045C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_100004664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1000046B8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  v28 = 0;
  v7 = [v6 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeSpokenAudio options:0 error:&v28];
  v8 = v28;
  if (v7 && (v28 = 0, v9 = v8, v10 = [v6 setActive:1 withOptions:0 error:&v28], v8 = v28, v10))
  {
    v11 = qword_10001CFA0;
    v12 = v28;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C510(v13, qword_10001D0A0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "#sirireaderd Successfully set up audioSession", v16, 2u);
    }

    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) = 1;
  }

  else
  {
    v17 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C510(v18, qword_10001D0A0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "#sirireaderd Failed setting up audioSession: %@", v21, 0xCu);
      sub_10000FD30(v22, &qword_10001D278, &unk_100013298);
    }

    v24 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v25 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    sub_10000BB10(v5);
    sub_100010C0C(v24, v25, v5, 0);

    (*(v3 + 8))(v5, v2);
    v26 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v3 + 56))(v1 + v26, 1, 1, v2);
  }
}

void sub_100004AE0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  v35 = 0;
  v7 = [v6 setActive:0 withOptions:0 error:&v35];
  v8 = v35;
  if (v7)
  {
    v9 = (v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v10 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v11 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    v12 = v8;
    sub_10000BB10(v5);
    sub_100010884(v10, v11, *&dword_10001D0C8, *&dword_10001D0C8 + *&dword_10001D0CC);

    (*(v3 + 8))(v5, v2);
    v13 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v3 + 56))(v1 + v13, 1, 1, v2);
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C510(v14, qword_10001D0A0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "#sirireaderd Successfully tore down audioSession", v17, 2u);
    }

    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) = 0;
    sub_10000B9C4();
    v18 = [objc_opt_self() defaultCenter];
    [v18 setNowPlayingInfo:0];

    v19 = v9[1];
    if (v19)
    {
      v20 = *v9;

      sub_10000D9BC(v20, v19);
    }

    else
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "#sirireaderd skipped setSessionUuidEndedByClient because currentlyPlayingUUID is nil", v33, 2u);
      }
    }
  }

  else
  {
    v21 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C510(v22, qword_10001D0A0);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "#sirireaderd Failed tearing down audioSession: %@", v25, 0xCu);
      sub_10000FD30(v26, &qword_10001D278, &unk_100013298);
    }

    v28 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v29 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    sub_10000BB10(v5);
    sub_100010C0C(v28, v29, v5, 1u);

    (*(v3 + 8))(v5, v2);
    v30 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v3 + 56))(v1 + v30, 1, 1, v2);
  }
}

void sub_100005190(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  if (v3 && (*(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) == a1 ? (v6 = v3 == a2) : (v6 = 0), v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v7 = v2;
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C510(v8, qword_10001D0A0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10000C7C4(a1, a2, &v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "#sirireaderd received pause command for %s", v11, 0xCu);
      sub_10000FEF8(v12);
    }

    *(v7 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker) = CFAbsoluteTimeGetCurrent();

    sub_100005434();
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C510(v13, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "#sirireaderd received pause command but identifiers did not match", v15, 2u);
    }
  }
}

void sub_100005434()
{
  v1 = v0;
  v2 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v3 = __chkstk_darwin(v2 - 8);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 pause];
  v11 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  v39 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);

  sub_10000BB10(v10);
  [qword_10001D0B8 volume];
  v13 = v12;
  v14 = [objc_allocWithZone(READSchemaREADPlaybackSessionStartedOrChanged) init];
  [v14 setPlaybackStateChange:2];
  LODWORD(v15) = v13;
  [v14 setVolume:v15];
  v16 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
  if (v16)
  {
    v17 = objc_allocWithZone(SISchemaUUID);
    v18 = v16;
    v38 = v16;
    v19 = v6;
    v20 = v14;
    v21 = v11;
    v22 = v8;
    v23 = v7;
    v24 = v0;
    v25 = v18;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v27 = [v17 initWithNSUUID:isa];

    [v25 setContextId:v27];
    v1 = v24;
    v7 = v23;
    v8 = v22;
    v11 = v21;
    v14 = v20;
    v6 = v19;
    v16 = v38;
  }

  [v16 setStartedOrChanged:v14];
  v28 = v40;
  if (v11 && ((UUID.init(uuidString:)(), (*(v8 + 48))(v28, 1, v7) != 1) ? ((*(v8 + 32))(v6, v28, v7), v29 = 0) : (sub_10000FD30(v28, &qword_10001D230, &qword_100013260), v29 = 1), (*(v8 + 56))(v6, v29, 1, v7), v30 = sub_100010348(v6), sub_10000FD30(v6, &qword_10001D230, &qword_100013260), v30))
  {
    [v30 setPlaybackSessionContext:v16];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
    v31 = v14;
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C510(v32, qword_10001D358);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "error generating READClient Event", v35, 2u);
    }
  }

  v36 = (*(v8 + 8))(v10, v7);
  sub_10000B714(v36);
  *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying) = 0;
}

void sub_10000591C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  if (v3 && (*(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) == a1 ? (v4 = v3 == a2) : (v4 = 0), v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v5 = CFAbsoluteTimeGetCurrent() - *(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker);
    *&dword_10001D0CC = *&dword_10001D0CC + v5;

    sub_100005A94();
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C510(v6, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "#sirireaderd received resume command but identifiers did not match", v8, 2u);
    }
  }
}

void sub_100005A94()
{
  v1 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v47 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v47 - v12;
  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 rate];
  if (v14 == 0.0)
  {
    [qword_10001D0B8 play];
    sub_10000B9C4();
    *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying) = 1;
    v16 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v15 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    sub_10000BB10(v13);
    [qword_10001D0B8 volume];
    v18 = v17;
    v19 = [objc_allocWithZone(READSchemaREADPlaybackSessionStartedOrChanged) init];
    [v19 setPlaybackStateChange:4];
    LODWORD(v20) = v18;
    [v19 setVolume:v20];
    v21 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
    if (v21)
    {
      v22 = objc_allocWithZone(SISchemaUUID);
      v47 = v16;
      v23 = v22;
      v24 = v21;
      v48 = v4;
      v25 = v6;
      v26 = v21;
      v27 = v8;
      v28 = v19;
      v29 = v15;
      v30 = v7;
      v31 = v24;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v33 = [v23 initWithNSUUID:isa];

      [v31 setContextId:v33];
      v7 = v30;
      v15 = v29;
      v19 = v28;
      v8 = v27;
      v21 = v26;
      v6 = v25;
      v4 = v48;
    }

    [v21 setStartedOrChanged:v19];
    if (v15 && ((UUID.init(uuidString:)(), (*(v8 + 48))(v4, 1, v7) != 1) ? ((*(v8 + 32))(v6, v4, v7), v34 = 0) : (sub_10000FD30(v4, &qword_10001D230, &qword_100013260), v34 = 1), (*(v8 + 56))(v6, v34, 1, v7), v42 = sub_100010348(v6), sub_10000FD30(v6, &qword_10001D230, &qword_100013260), v42))
    {
      [v42 setPlaybackSessionContext:v21];
      [objc_msgSend(objc_opt_self() "sharedStream")];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_10001CFC8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000C510(v43, qword_10001D358);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "error generating READClient Event", v46, 2u);
      }
    }

    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v35 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v36 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    sub_10000BB10(v11);
    sub_100010C0C(v35, v36, v11, 2u);

    (*(v8 + 8))(v11, v7);
    v37 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v8 + 56))(v0 + v37, 1, 1, v7);
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C510(v38, qword_10001D0A0);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "#sirireaderd playCommand failed due to player rate being non zero", v41, 2u);
    }
  }
}

void sub_1000060F4(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  if (v3 && (*(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID) == a1 ? (v6 = v3 == a2) : (v6 = 0), v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C510(v7, qword_10001D0A0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000C7C4(a1, a2, &v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "#sirireaderd received end media session command for %s", v10, 0xCu);
      sub_10000FEF8(v11);
    }

    sub_100005434();

    sub_100004AE0();
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C510(v12, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "#sirireaderd received end media session command but identifiers did not match", v14, 2u);
    }
  }
}

uint64_t sub_100006390(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_1000063FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = *(v4 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
  if (v12)
  {
    v13 = *(v4 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v14 = &type metadata for String;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    *&v60 = 0;
  }

  *&v59 = v13;
  *(&v59 + 1) = v12;
  *(&v60 + 1) = v14;

  sub_1000069E4(&v59, v9, v11);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  *(&v60 + 1) = &type metadata for String;
  *&v59 = a1;
  *(&v59 + 1) = a2;

  sub_1000069E4(&v59, v15, v17);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v60 + 1) = &type metadata for String;
  *&v59 = 32;
  *(&v59 + 1) = 0xE100000000000000;
  sub_1000069E4(&v59, v18, v19);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v60 + 1) = &type metadata for Double;
  *&v59 = 0;
  sub_1000069E4(&v59, v20, v21);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v60 + 1) = &type metadata for Double;
  *&v59 = 0;
  sub_1000069E4(&v59, v22, v23);
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 defaultRate];
  *(&v60 + 1) = &type metadata for Float;
  LODWORD(v59) = v27;
  sub_1000069E4(&v59, v24, v26);
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  [qword_10001D0B8 defaultRate];
  *(&v60 + 1) = &type metadata for Float;
  LODWORD(v59) = v31;
  sub_1000069E4(&v59, v28, v30);
  if (a3)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    v35 = a3;
    [v35 size];
    v37 = v36;
    v39 = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = v35;
    v41 = objc_allocWithZone(MPMediaItemArtwork);
    v61 = sub_10000F39C;
    v62 = v40;
    *&v59 = _NSConcreteStackBlock;
    *(&v59 + 1) = 1107296256;
    *&v60 = sub_10000C548;
    *(&v60 + 1) = &unk_100018C30;
    v42 = _Block_copy(&v59);
    v43 = v35;
    v44 = [v41 initWithBoundsSize:v42 requestHandler:{v37, v39}];
    _Block_release(v42);

    *(&v60 + 1) = sub_10000FCE8(0, &qword_10001D270, MPMediaItemArtwork_ptr);
    *&v59 = v44;
    sub_1000069E4(&v59, v32, v34);
  }

  else
  {
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = 0u;
    v60 = 0u;
    sub_1000069E4(&v59, v45, v46);
  }

  if (a4 == 3)
  {
    v47 = 32;
  }

  else
  {
    v47 = 0xD000000000000016;
  }

  if (a4 == 3)
  {
    v48 = 0xE100000000000000;
  }

  else
  {
    v48 = 0x8000000100014820;
  }

  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000C510(v49, qword_10001D0A0);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v59 = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_10000C7C4(v47, v48, &v59);
    _os_log_impl(&_mh_execute_header, v50, v51, "#sirireaderd setting represented bundle identifier: %s", v52, 0xCu);
    sub_10000FEF8(v53);
  }

  v54 = objc_opt_self();
  v55 = [v54 defaultCenter];
  v56 = String._bridgeToObjectiveC()();

  [v55 setRepresentedApplicationBundleIdentifier:v56];

  v57 = [v54 defaultCenter];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v57 setNowPlayingInfo:isa];
}

uint64_t sub_1000069E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10000F1A0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_10000D648(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000FD30(a1, &qword_10001D248, &qword_100013270);
    sub_10000D13C(a2, a3, v9);

    return sub_10000FD30(v9, &qword_10001D248, &qword_100013270);
  }

  return result;
}

void sub_100006AB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SpeakableStringExtractor.InputType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences) = &_swiftEmptyArrayStorage;

  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  if (v16 >> 60 == 15)
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C510(v17, qword_10001D0A0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "#sirireaderd failed to create sentence data from article body", v20, 2u);
    }

    v21 = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
    v22 = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);

    v23 = v31;
    sub_10000BB10(v31);
    sub_100010C0C(v21, v22, v23, 3u);

    v24 = v32;
    v25 = v23;
    v26 = v33;
    (*(v32 + 8))(v25, v33);
    v27 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
    sub_10000FD30(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, &qword_10001D230, &qword_100013260);
    (*(v24 + 56))(v3 + v27, 1, 1, v26);
  }

  else
  {
    v28 = sub_10000E86C();
    dispatch thunk of SynthesisVoice.language.getter();
    (*(v7 + 104))(v9, enum case for SpeakableStringExtractor.InputType.plainText(_:), v6);
    objc_allocWithZone(type metadata accessor for SpeakableStringExtractor());
    sub_10000F2A0(v14, v16);
    v29 = SpeakableStringExtractor.init(language:data:inputType:)();
    __chkstk_darwin(v29);
    *(&v30 - 2) = v3;
    dispatch thunk of SpeakableStringExtractor.enumerate(_:)();
    sub_10000F2FC(v14, v16);

    *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence) = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence);
  }
}

uint64_t sub_100006F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
  v7 = *(a3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10000C69C(0, *(v7 + 2) + 1, 1, v7);
    *(a3 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_10000C69C((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[56 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v11 + 6) = 0;
  v11[56] = 1;
  *(v11 + 15) = *&v15[3];
  *(v11 + 57) = *v15;
  *(v11 + 8) = 0;
  v11[72] = 1;
  v11[73] = 0;
  *(v11 + 74) = v13;
  *(v11 + 39) = v14;
  *(v11 + 10) = 0;
  *(a3 + v6) = v7;
  return 1;
}

uint64_t sub_10000703C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10000E86C();
  static os_signpost_type_t.begin.getter();
  if (qword_10001CF98 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v5 = qword_10001D098;
    static OSSignpostID.exclusive.getter();
    v29 = v5;
    os_signpost(_:dso:log:name:signpostID:)();
    v6 = *(v2 + 8);
    v30 = v4;
    v31 = v2 + 8;
    v32 = v1;
    v28 = v6;
    v6(v4, v1);
    v7 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
    v8 = *(*(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences) + 16);
    v37 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);

    v35 = v8;
    if (!v8)
    {
      break;
    }

    v2 = v0;
    v4 = 0;
    v10 = 0;
    v1 = v37 + 40;
    *&v9 = 134218240;
    v33 = v9;
    while (v10 < *(v37 + 16))
    {
      v11 = *(v1 + 40);
      v12 = objc_allocWithZone(type metadata accessor for SynthesisRequest());
      v13 = v11;
      v14 = v36;
      swift_bridgeObjectRetain_n();
      v15 = SynthesisRequest.init(text:voice:)();
      type metadata accessor for DurationEstimator();
      static DurationEstimator.roughEstimation(request:)();
      v17 = v16;
      if (qword_10001CFA0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C510(v18, qword_10001D0A0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v34 = v15;
        *v21 = v33;
        *(v21 + 4) = v10;
        *(v21 + 12) = 2048;
        *(v21 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v19, v20, "#sirireaderd estimated duration of sentence %ld is %f", v21, 0x16u);
        v15 = v34;
      }

      v0 = *(v2 + v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v7) = v0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *(v2 + v7) = sub_10000D9A8(v0);
      }

      v23 = *(v2 + v7);
      if (v10 >= *(v23 + 16))
      {
        goto LABEL_15;
      }

      ++v10;
      v24 = &v4[v23];
      *(v24 + 6) = v17;
      v24[56] = 0;
      *(v2 + v7) = v23;
      v1 += 56;
      v4 += 56;
      if (v35 == v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_13:

  static os_signpost_type_t.end.getter();
  v25 = v30;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return v28(v25, v32);
}

uint64_t sub_10000741C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  v3 = 0.0;
  if (*(v2 + 16) > result)
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (result)
    {
      if (result == 1)
      {
        v4 = 0;
LABEL_17:
        v11 = result - v4;
        v12 = (v2 + 56 * v4 + 72);
        do
        {
          v13 = *(v12 - 1);
          v14 = *(v12 - 3);
          if (*(v12 - 16))
          {
            v14 = 0.0;
          }

          if (*v12)
          {
            v13 = v14;
          }

          v3 = v3 + v13;
          v12 += 7;
          --v11;
        }

        while (v11);
        return result;
      }

      v4 = result & 0x7FFFFFFFFFFFFFFELL;
      v5 = v2 + 64;
      v6 = result & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v7 = *v5;
        v8 = *(v5 + 56);
        v9 = *(v5 - 16);
        v10 = *(v5 + 40);
        if (*(v5 - 8))
        {
          v9 = 0.0;
        }

        if (*(v5 + 48))
        {
          v10 = 0.0;
        }

        if (*(v5 + 8))
        {
          v7 = v9;
        }

        if (*(v5 + 64))
        {
          v8 = v10;
        }

        v3 = v3 + v7 + v8;
        v5 += 112;
        v6 -= 2;
      }

      while (v6);
      if (v4 != result)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

double sub_100007508()
{
  v1 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  if (v2 == 1)
  {
    v3 = 0;
    result = 0.0;
LABEL_16:
    v11 = v2 - v3;
    v12 = (v1 + 56 * v3 + 72);
    do
    {
      v13 = *(v12 - 1);
      v14 = *(v12 - 3);
      if (*(v12 - 16))
      {
        v14 = 0.0;
      }

      if (*v12)
      {
        v13 = v14;
      }

      result = result + v13;
      v12 += 7;
      --v11;
    }

    while (v11);
    return result;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v5 = v1 + 64;
  v6 = v2 & 0x7FFFFFFFFFFFFFFELL;
  result = 0.0;
  do
  {
    v7 = *v5;
    v8 = *(v5 + 56);
    v9 = *(v5 - 16);
    v10 = *(v5 + 40);
    if (*(v5 - 8))
    {
      v9 = 0.0;
    }

    if (*(v5 + 48))
    {
      v10 = 0.0;
    }

    if (*(v5 + 8))
    {
      v7 = v9;
    }

    if (*(v5 + 64))
    {
      v8 = v10;
    }

    result = result + v7 + v8;
    v5 += 112;
    v6 -= 2;
  }

  while (v6);
  if (v2 != v3)
  {
    goto LABEL_16;
  }

  return result;
}

double sub_1000075F0(double result)
{
  v2 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  v3 = *(v2 + 16);
  v4 = -1;
  if (v3 && result >= 0.0)
  {
    v5 = (v2 + 72);
    v6 = 0.0;
    do
    {
      v7 = *(v5 - 3);
      if (*(v5 - 16))
      {
        v7 = 0.0;
      }

      if (!*v5)
      {
        v7 = *(v5 - 1);
      }

      v8 = v4 + 2;
      ++v4;
      if (v8 >= v3)
      {
        break;
      }

      v6 = v6 + v7;
      v5 += 7;
    }

    while (v6 <= result);
  }

  return result;
}

void sub_100007660()
{
  v1 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence);
  sub_100007BF8(v1);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v3 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
    v4 = 56 * v1;
    v5 = v1 + 1;
    v6 = 0.0;
    while (1)
    {
      if (qword_10001CFA8 != -1)
      {
        swift_once();
      }

      [qword_10001D0B8 defaultRate];
      if (v6 >= (v7 * 15.0) || v5 >= *(*(v0 + v3) + 16))
      {
        break;
      }

      sub_100007BF8(v5);
      if (v2 < 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(v0 + v3);
      if (v5 >= *(v8 + 16))
      {
        goto LABEL_16;
      }

      v9 = v8 + v4;
      v10 = *(v9 + 104);
      v11 = *(v9 + 112);
      v12 = *(v9 + 120);
      v13 = *(v9 + 128);
      if (v11)
      {
        v10 = 0.0;
      }

      if (!v13)
      {
        v10 = v12;
      }

      v6 = v6 + v10;
      ++v5;
      v4 += 56;
    }
  }
}

void sub_1000077AC()
{
  v1 = v0;
  if (qword_10001CFA0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10000C510(v2, qword_10001D0A0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "#sirireaderd Canceling all TTS requests", v5, 2u);
    }

    v6 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
    v7 = *(*(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences) + 16);
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = 80;
    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
    while (1)
    {
      v11 = *(v1 + v6);
      if (v8 >= *(v11 + 16))
      {
        break;
      }

      v12 = *(v11 + v9);
      if (v12)
      {
        v13 = qword_10001CFB0;
        v14 = v12;
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = p_opt_class_meths[24];
        dispatch thunk of DaemonSession.cancel(request:)();

        v16 = *(v1 + v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v6) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_10000D9A8(v16);
          *(v1 + v6) = v16;
        }

        if (v8 >= *(v16 + 2))
        {
          goto LABEL_19;
        }

        v18 = *&v16[v9];
        *&v16[v9] = 0;

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134217984;
          *(v21 + 4) = v8;
          _os_log_impl(&_mh_execute_header, v19, v20, "#sirireaderd Canceled TTS generation for sentence %ld", v21, 0xCu);
          p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
        }
      }

      ++v8;
      v9 += 56;
      if (v7 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }
}

void sub_100007A38()
{
  *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying) = 0;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C510(v1, qword_10001D0A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "#sirireaderd Pausing player and calling removeAllItems", v4, 2u);
  }

  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 pause];
  [qword_10001D0B8 removeAllItems];
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "#sirireaderd Buffering the first sentences", v7, 2u);
  }

  sub_100007660();
}

void sub_100007BF8(int64_t a1)
{
  v3 = sub_10000C458(&qword_10001D268, &qword_100013290);
  __chkstk_darwin(v3 - 8);
  v5 = v60 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C458(&qword_10001D230, &qword_100013260);
  __chkstk_darwin(v10 - 8);
  v11 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
  v12 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  if (*(v12 + 16) <= a1)
  {
    return;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v13 = v12 + 56 * a1;
    if (*(v13 + 73) == 3)
    {
      if (qword_10001CFA0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_31;
    }

    if (*(v13 + 80))
    {
      return;
    }

    v17 = *(v13 + 40);
    v62 = *(v13 + 32);

    v18 = sub_10000E86C();
    v19 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
    v65 = v18;
    if (v19)
    {
      v63 = v7;
      v64 = v1;
      v61 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
      v20 = v61;
      v60[0] = 0x80000001000147C0;
      v67 = 0x6E7568435354542FLL;
      v68 = 0xEA00000000002D6BLL;

      v21._countAndFlagsBits = v20;
      v21._object = v19;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 45;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v66 = a1;
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v60[1] = v17;
      String.append(_:)(v23);

      v24._countAndFlagsBits = v67;
      v25 = v68;
      v67 = 0xD00000000000001ALL;
      v68 = v60[0];
      v24._object = v25;
      String.append(_:)(v24);

      v26._countAndFlagsBits = 1717658414;
      v26._object = 0xE400000000000000;
      String.append(_:)(v26);

      v60[0] = v67;
      v27 = objc_allocWithZone(type metadata accessor for SynthesisRequest());
      v28 = v65;
      v29 = SynthesisRequest.init(text:voice:)();
      UUID.init(uuidString:)();

      dispatch thunk of BaseRequest.logLinkId.setter();
      URL.init(fileURLWithPath:)();

      v30 = v63;
      (*(v63 + 16))(v5, v9, v6);
      (*(v30 + 56))(v5, 0, 1, v6);
      dispatch thunk of BaseRequest.outputPath.setter();
      v65 = v29;

      if (qword_10001CFA0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000C510(v31, qword_10001D0A0);
      v32 = v28;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      v35 = os_log_type_enabled(v33, v34);
      v62 = v32;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v67 = v61;
        *v36 = 134218498;
        *(v36 + 4) = a1;
        *(v36 + 12) = 2080;
        v37 = dispatch thunk of SynthesisVoice.language.getter();
        v39 = sub_10000C7C4(v37, v38, &v67);

        *(v36 + 14) = v39;
        *(v36 + 22) = 2080;
        v40 = dispatch thunk of SynthesisVoice.name.getter();
        if (v41)
        {
          v42 = v41;
        }

        else
        {
          v40 = 0x656D616E206C696ELL;
          v42 = 0xE800000000000000;
        }

        v43 = sub_10000C7C4(v40, v42, &v67);

        *(v36 + 24) = v43;
        _os_log_impl(&_mh_execute_header, v33, v34, "#sirireaderd synthesizing sentence %ld with voice: %s named %s", v36, 0x20u);
        swift_arrayDestroy();
      }

      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = a1;
      if (qword_10001CFB0 != -1)
      {
        swift_once();
      }

      v46 = qword_10001D0C0;
      v47 = v65;
      dispatch thunk of DaemonSession.synthesize(request:didFinish:)();

      v48 = v64;
      v49 = *(v64 + v11);
      v50 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v48 + v11) = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *(v48 + v11) = sub_10000D9A8(v49);
      }

      (*(v63 + 8))(v9, v6);
      v52 = *(v48 + v11);
      if (*(v52 + 16) > a1)
      {
        v53 = v52 + 56 * a1;
        v54 = *(v53 + 80);
        *(v53 + 80) = v50;

        return;
      }

      __break(1u);
    }

    else
    {

      if (qword_10001CFA0 == -1)
      {
LABEL_24:
        v55 = type metadata accessor for Logger();
        sub_10000C510(v55, qword_10001D0A0);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "#sirireaderd No currently playing UUID", v58, 2u);
        }

        goto LABEL_27;
      }
    }

    swift_once();
    goto LABEL_24;
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_5:
  v14 = type metadata accessor for Logger();
  sub_10000C510(v14, qword_10001D0A0);
  v65 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v65, v15, "#sirireaderd Sentence %ld has already been generated, not doing generation", v16, 0xCu);
  }

LABEL_27:
  v59 = v65;
}

void sub_1000083D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C510(v4, qword_10001D0A0);
    v5 = static os_log_type_t.error.getter();
    swift_errorRetain();
    v6 = Logger.logObject.getter();

    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_10000C7C4(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v6, v5, "#sirireaderd %s", v7, 0xCu);
      sub_10000FEF8(v8);
    }

    else
    {
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_100008640(a3);
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C510(v14, qword_10001D0A0);
    v13 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, v15, "#sirireaderd unexpectedly found nil self", v16, 2u);
    }
  }
}

void sub_100008640(unint64_t a1)
{
  v3 = v1;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C510(v5, qword_10001D0A0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v2 = swift_slowAlloc();
    *v2 = 134217984;
    *(v2 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v7, "#sirireaderd Generation completed for sentence: %ld", v2, 0xCu);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
    v6 = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
    if (v6[2].isa > a1)
    {
      v7 = BYTE1(v6[7 * a1 + 9].isa);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v2) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  v6 = sub_10000D9A8(v6);
LABEL_8:
  if (v6[2].isa <= a1)
  {
    __break(1u);
    return;
  }

  v9 = &v6[7 * a1];
  BYTE1(v9[9].isa) = 3;
  *(v3 + v2) = v6;
  isa = v9[10].isa;
  v9[10].isa = 0;

  if (*(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence) == a1 && *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlayingStartingTone) != 1)
  {
    v11 = 1;
  }

  else
  {
    if ((v7 - 1) > 1)
    {
      return;
    }

    v11 = v7 == 1;
  }

  sub_100008820(a1, v11);
}

uint64_t sub_100008820(uint64_t a1, int a2)
{
  v3 = v2;
  v95 = a2;
  v5 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v87 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = __chkstk_darwin(v15);
  v19 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
  if (*(*(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences) + 16) <= a1)
  {
    if (qword_10001CFA0 == -1)
    {
LABEL_28:
      v68 = type metadata accessor for Logger();
      sub_10000C510(v68, qword_10001D0A0);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "#sirireaderd Playback complete, resetting to beginning of content", v71, 2u);
      }

      *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence) = 0;
      if (qword_10001CFA8 != -1)
      {
        swift_once();
      }

      [qword_10001D0B8 removeAllItems];
      sub_100004AE0();
      return 0;
    }

LABEL_58:
    swift_once();
    goto LABEL_28;
  }

  v93 = v16;
  v94 = v14;
  v90 = v12;
  v91 = v11;
  v92 = v17;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  sub_10000C510(v89, qword_10001D0A0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v21, v22, "#sirireaderd Updating playback duration and position for sentence: %ld", v23, 0xCu);
  }

  sub_100009540(a1);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v24, v25, "#sirireaderd Attempting to add sentence to play queue: %ld", v26, 0xCu);
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v27 = *(v3 + v20);
  if (*(v27 + 16) <= a1)
  {
    __break(1u);
LABEL_60:
    v24 = sub_10000D9A8(v24);
    goto LABEL_40;
  }

  v28 = *(v27 + 56 * a1 + 73);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  if (v28 == 3)
  {
    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v29, v30, "#sirireaderd Validated sentence has been generated: %ld", v32, 0xCu);
    }

    v33 = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID + 8);
    if (v33)
    {
      v34 = *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID);
      v97 = 0x6E7568435354542FLL;
      v98 = 0xEA00000000002D6BLL;

      v87[1] = v34;
      v87[2] = v33;
      v35._countAndFlagsBits = v34;
      v35._object = v33;
      String.append(_:)(v35);
      v36._countAndFlagsBits = 45;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v96 = a1;
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      v38._countAndFlagsBits = v97;
      v39 = v98;
      v97 = 0xD00000000000001ALL;
      v98 = 0x80000001000147C0;
      v38._object = v39;
      String.append(_:)(v38);

      v40._countAndFlagsBits = 1717658414;
      v40._object = 0xE400000000000000;
      String.append(_:)(v40);

      URL.init(fileURLWithPath:)();

      v41 = objc_allocWithZone(AVPlayerItem);
      URL._bridgeToObjectiveC()(v42);
      v44 = v43;
      v45 = [v41 initWithURL:v43];

      v46 = String._bridgeToObjectiveC()();
      v88 = v45;
      [v45 addObserver:v3 forKeyPath:v46 options:3 context:0];

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v47, v48, "#sirireaderd Adding sentence to play queue: %ld", v49, 0xCu);
      }

      if (qword_10001CFA8 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_62;
    }

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "#sirireaderd No currently playing UUID", v82, 2u);
    }

    return 0;
  }

  if (v31)
  {
    v73 = swift_slowAlloc();
    *v73 = 134217984;
    *(v73 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v29, v30, "#sirireaderd Sentence %ld has not been generated, will begin playback once generation is complete.", v73, 0xCu);
  }

  if (v95)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v24 = *(v3 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v20) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_40:
  if (v24[2].isa > a1)
  {
    result = 0;
    BYTE1(v24[7 * a1 + 9].isa) = v19;
    *(v3 + v20) = v24;
    return result;
  }

  __break(1u);
LABEL_62:
  swift_once();
LABEL_17:
  [qword_10001D0B8 insertItem:v88 afterItem:0];
  v50 = v94;
  if ((v95 & 1) == 0)
  {
    goto LABEL_42;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v51, v52, "#sirireaderd Starting playback for sentence: %ld", v53, 0xCu);
    v50 = v94;
  }

  [qword_10001D0B8 play];
  *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying) = 1;
  if (*(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence) == a1)
  {
    sub_10000BB10(v50);
    v54 = CFAbsoluteTimeGetCurrent() - *(v3 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentRequestStartTime);
    [qword_10001D0B8 volume];
    v56 = v55;
    v57 = [objc_allocWithZone(READSchemaREADPlaybackSessionStartedOrChanged) init];
    [v57 setPlaybackStateChange:1];
    LODWORD(v58) = v56;
    [v57 setVolume:v58];
    if (v54 > 0.0)
    {
      *&v59 = v54;
      [v57 setCustomerPerceivedLatency:v59];
    }

    v60 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
    if (v60)
    {
      v61 = objc_allocWithZone(SISchemaUUID);
      v62 = v60;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v64 = [v61 initWithNSUUID:isa];

      [v62 setContextId:v64];
    }

    [v60 setStartedOrChanged:v57];
    UUID.init(uuidString:)();
    v66 = v90;
    v65 = v91;
    if ((*(v90 + 48))(v8, 1, v91) == 1)
    {
      sub_10000FD30(v8, &qword_10001D230, &qword_100013260);
      v67 = 1;
    }

    else
    {
      (*(v66 + 32))(v10, v8, v65);
      v67 = 0;
    }

    (*(v66 + 56))(v10, v67, 1, v65);
    v83 = sub_100010348(v10);
    sub_10000FD30(v10, &qword_10001D230, &qword_100013260);
    if (v83)
    {
      [v83 setPlaybackSessionContext:v60];
      [objc_msgSend(objc_opt_self() "sharedStream")];

      swift_unknownObjectRelease();
      (*(v66 + 8))(v94, v65);
    }

    else
    {
      if (qword_10001CFC8 != -1)
      {
        swift_once();
      }

      sub_10000C510(v89, qword_10001D358);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&_mh_execute_header, v84, v85, "error generating READClient Event", v86, 2u);
      }

      (*(v90 + 8))(v94, v91);
    }
  }

  else
  {
LABEL_42:
  }

  v75 = v88;
  v76 = objc_allocWithZone(NSUserDefaults);
  v77 = String._bridgeToObjectiveC()();
  v78 = [v76 initWithSuiteName:v77];

  if (v78)
  {
    v79 = String._bridgeToObjectiveC()();
    [v78 setInteger:a1 forKey:v79];

    v75 = v79;
  }

  (*(v92 + 8))(v19, v93);
  return 1;
}

void sub_100009540(uint64_t a1)
{
  sub_10000741C(a1);
  v3 = v2;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C510(v4, qword_10001D0A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "#sirireaderd calculated estimated playback position: %f", v7, 0xCu);
  }

  v8 = *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v11 = 0.0;
    goto LABEL_26;
  }

  if (v9 == 1)
  {
    v10 = 0;
    v11 = 0.0;
LABEL_20:
    v18 = (v8 + 56 * v10 + 72);
    v19 = v9 - v10;
    do
    {
      v20 = *(v18 - 1);
      v21 = *(v18 - 3);
      if (*(v18 - 16))
      {
        v21 = 0.0;
      }

      if (*v18)
      {
        v20 = v21;
      }

      v11 = v11 + v20;
      v18 += 7;
      --v19;
    }

    while (v19);
    goto LABEL_26;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFFELL;
  v12 = v8 + 64;
  v13 = v9 & 0x7FFFFFFFFFFFFFFELL;
  v11 = 0.0;
  do
  {
    v14 = *v12;
    v15 = *(v12 + 56);
    v16 = *(v12 - 16);
    v17 = *(v12 + 40);
    if (*(v12 - 8))
    {
      v16 = 0.0;
    }

    if (*(v12 + 48))
    {
      v17 = 0.0;
    }

    if (*(v12 + 8))
    {
      v14 = v16;
    }

    if (*(v12 + 64))
    {
      v15 = v17;
    }

    v11 = v11 + v14 + v15;
    v12 += 112;
    v13 -= 2;
  }

  while (v13);
  if (v9 != v10)
  {
    goto LABEL_20;
  }

LABEL_26:
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v22, v23, "#sirireaderd calculated total playback duration of %f", v24, 0xCu);
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = &type metadata for Double;
  *v31 = v11;
  sub_1000069E4(v31, v25, v26);
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = &type metadata for Double;
  v31[0] = v3;
  sub_1000069E4(v31, v27, v28);
  v29 = [objc_opt_self() defaultCenter];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v29 setNowPlayingInfo:isa];
}

void sub_1000099EC()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16))
  {
    goto LABEL_21;
  }

  v4 = sub_10000CE74(v20);
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_10000EFB0(*(v3 + 56) + 32 * v4, v21);
  sub_10000F1B0(v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    return;
  }

  if (!v18)
  {
    *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) = 1;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16))
    {
      v10 = sub_10000CE74(v20);
      if (v11)
      {
        sub_10000EFB0(*(v3 + 56) + 32 * v10, v21);
        sub_10000F1B0(v20);

        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        if (v19)
        {
          sub_100005A94();
          if (qword_10001CFA0 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          sub_10000C510(v17, qword_10001D0A0);
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v13, v14))
          {
            goto LABEL_28;
          }

          v15 = swift_slowAlloc();
          *v15 = 0;
          v16 = "#sirireaderd Audio session resumed";
        }

        else
        {
          if (qword_10001CFA0 != -1)
          {
            swift_once();
          }

          v12 = type metadata accessor for Logger();
          sub_10000C510(v12, qword_10001D0A0);
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v13, v14))
          {
            goto LABEL_28;
          }

          v15 = swift_slowAlloc();
          *v15 = 0;
          v16 = "#sirireaderd Audio session ended and should not resume";
        }

        _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

LABEL_28:

        return;
      }
    }

LABEL_21:

    sub_10000F1B0(v20);
    return;
  }

  if (v18 != 1)
  {
    goto LABEL_12;
  }

  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C510(v6, qword_10001D0A0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "#sirireaderd Audio session interrupted", v9, 2u);
  }

  *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive) = 0;
}

uint64_t sub_100009E7C()
{
  v0 = [objc_opt_self() sharedCommandCenter];
  v1 = [v0 changePlaybackRateCommand];
  if (qword_10001CFB8 != -1)
  {
    swift_once();
  }

  sub_10000FCE8(0, &qword_10001D238, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setSupportedPlaybackRates:isa];

  v3 = [v0 changePlaybackRateCommand];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C66C;
  v39 = v4;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018AF0;
  v5 = _Block_copy(&aBlock);

  v6 = [v3 addTargetWithHandler:v5];
  _Block_release(v5);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v7 = [v0 playCommand];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C674;
  v39 = v8;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018B18;
  v9 = _Block_copy(&aBlock);

  v10 = [v7 addTargetWithHandler:v9];
  _Block_release(v9);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v11 = [v0 pauseCommand];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C67C;
  v39 = v12;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018B40;
  v13 = _Block_copy(&aBlock);

  v14 = [v11 addTargetWithHandler:v13];
  _Block_release(v13);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v15 = [v0 skipForwardCommand];
  sub_10000C458(&qword_10001D240, &qword_100013268);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100013120;
  *(v16 + 32) = NSNumber.init(floatLiteral:)(1.0);
  *(v16 + 40) = NSNumber.init(floatLiteral:)(30.0);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  [v15 setPreferredIntervals:v17];

  v18 = [v0 skipForwardCommand];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C684;
  v39 = v19;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018B68;
  v20 = _Block_copy(&aBlock);

  v21 = [v18 addTargetWithHandler:v20];
  _Block_release(v20);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v22 = [v0 skipBackwardCommand];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100013120;
  *(v23 + 32) = NSNumber.init(floatLiteral:)(1.0);
  *(v23 + 40) = NSNumber.init(floatLiteral:)(30.0);
  v24 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setPreferredIntervals:v24];

  v25 = [v0 skipBackwardCommand];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C68C;
  v39 = v26;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018B90;
  v27 = _Block_copy(&aBlock);

  v28 = [v25 addTargetWithHandler:v27];
  _Block_release(v27);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FEF8(&aBlock);
  v29 = [v0 changePlaybackPositionCommand];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10000C694;
  v39 = v30;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10000AB10;
  v37 = &unk_100018BB8;
  v31 = _Block_copy(&aBlock);

  v32 = [v29 addTargetWithHandler:v31];
  _Block_release(v31);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_10000FEF8(&aBlock);
}

uint64_t sub_10000A624(void *a1, uint64_t a2)
{
  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  v3 = [qword_10001D0B8 currentItem];
  if (!v3)
  {
    return 200;
  }

  v4 = v3;
  v5 = [v3 status];

  if (v5 != 1)
  {
    return 200;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return 200;
  }

  v7 = v6;
  v8 = a1;
  [v7 playbackRate];
  if (v9 <= 0.0)
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C510(v34, qword_10001D0A0);
    v35 = v8;
    v11 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      [v7 playbackRate];
      *(v37 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v11, v36, "#sirireaderd cannot play at negative rate %f", v37, 0xCu);

      v39 = 200;
      v40 = v11;
      v11 = v35;
    }

    else
    {
      v39 = 200;
      v40 = v35;
    }
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C510(v10, qword_10001D0A0);
    v11 = v8;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      [v7 playbackRate];
      *(v14 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v12, v13, "#sirireaderd changing playback rate to %f", v14, 0xCu);
    }

    v16 = qword_10001D0B8;
    [v7 playbackRate];
    [v16 setDefaultRate:?];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      [v7 playbackRate];
      v47 = &type metadata for Float;
      v46[0] = v22;
      sub_1000069E4(v46, v19, v21);
    }

    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      [v7 playbackRate];
      v47 = &type metadata for Float;
      v46[0] = v28;
      sub_1000069E4(v46, v25, v27);
    }

    v29 = [objc_opt_self() defaultCenter];
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;

      v32.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v32.super.isa = 0;
    }

    [v29 setNowPlayingInfo:v32.super.isa];

    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying];

      if (v42 == 1)
      {
        v43 = qword_10001D0B8;
        [v7 playbackRate];
        [v43 playImmediatelyAtRate:?];
      }
    }

    v44 = swift_unknownObjectWeakLoadStrong();
    if (!v44)
    {
      v39 = 0;
      goto LABEL_30;
    }

    v40 = v44;
    [v7 playbackRate];
    sub_10000F010(v45);
    v39 = 0;
  }

LABEL_30:
  return v39;
}

uint64_t sub_10000AB10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_10000AB68(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C510(v4, qword_10001D0A0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "#sirireaderd playCommand", v7, 2u);
    }

    if (sub_10000EA78())
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "#sirireaderd playCommand refused due this session being ended by the client.";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);
      }
    }

    else
    {
      if (qword_10001CFA8 != -1)
      {
        swift_once();
      }

      [qword_10001D0B8 rate];
      if (v13 == 0.0)
      {
        [qword_10001D0B8 play];
        sub_10000B9C4();
        v12 = 0;
        v3[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] = 1;
LABEL_18:

        return v12;
      }

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "#sirireaderd playCommand failed due to player rate being non zero";
        goto LABEL_16;
      }
    }

    v12 = 200;
    v3 = v8;
    goto LABEL_18;
  }

  return 200;
}

uint64_t sub_10000ADA8(uint64_t a1, uint64_t a2)
{
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C510(v2, qword_10001D0A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#sirireaderd pauseCommand", v5, 2u);
  }

  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 pause];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_10000B714(Strong);
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v8[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] = 0;
  }

  return 0;
}

uint64_t sub_10000AF00(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 200;
  }

  v3 = Strong;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C510(v4, qword_10001D0A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "#sirireaderd skipForwardCommand", v7, 2u);
  }

  if (sub_10000EA78())
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "#sirireaderd skipForwardCommand refused due this session being ended by the client.", v10, 2u);
    }

    v11 = 200;
    v3 = v8;
  }

  else
  {
    if (qword_10001CFA8 != -1)
    {
      swift_once();
    }

    [qword_10001D0B8 advanceToNextItem];
    v11 = 0;
  }

  return v11;
}

uint64_t sub_10000B0C8(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 200;
  }

  v3 = Strong;
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C510(v4, qword_10001D0A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "#sirireaderd skipBackwardCommand", v7, 2u);
  }

  if (sub_10000EA78())
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "#sirireaderd skipBackwardCommand refused due this session being ended by the client.", v10, 2u);
    }

    v11 = 200;
    v3 = v8;
  }

  else
  {
    v3[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] = 0;
    v12 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence;
    v13 = *&v3[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence];
    v14 = v13 < 1;
    v15 = v13 - 1;
    if (!v14)
    {
      *&v3[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence] = v15;
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "#sirireaderd pausing player before skip backward", v18, 2u);
    }

    if (qword_10001CFA8 != -1)
    {
      swift_once();
    }

    [qword_10001D0B8 pause];
    [qword_10001D0B8 removeAllItems];
    sub_100007660();
    sub_100008820(*&v3[v12], 1);
    v11 = 0;
  }

  return v11;
}

uint64_t sub_10000B344(void *a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return 200;
  }

  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 200;
  }

  v6 = Strong;
  v7 = qword_10001CFA0;
  v8 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C510(v9, qword_10001D0A0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "#sirireaderd changePlaybackPositionCommand", v12, 2u);
  }

  [v4 positionTime];
  v14 = v13;
  v15 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isCurrentlySeeking;
  v6[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isCurrentlySeeking] = 1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "#sirireaderd pausing player before changing playback position", v18, 2u);
  }

  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  [qword_10001D0B8 pause];
  [qword_10001D0B8 removeAllItems];
  sub_1000075F0(v14);
  v20 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "#sirireaderd changePlaybackPositionCommand to sentence %ld", v23, 0xCu);
  }

  v24 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence;
  *&v6[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence] = v20;
  sub_1000077AC();
  sub_100007660();
  sub_100008820(*&v6[v24], 1);

  v6[v15] = 0;
  return 0;
}

void sub_10000B628()
{
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C510(v0, qword_10001D0A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "#sirireaderd releasing audio session after idle", v3, 2u);
  }

  sub_100004AE0();
}

void sub_10000B714(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer;
  if (*(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer))
  {
    sub_10000B9C4();
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_10000C64C;
  v12[5] = v4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000B95C;
  v12[3] = &unk_100018AC8;
  v5 = _Block_copy(v12);

  v6 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:420.0];
  _Block_release(v5);
  v7 = *(v1 + v2);
  *(v1 + v2) = v6;

  *(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker) = CFAbsoluteTimeGetCurrent();
  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C510(v8, qword_10001D0A0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "#sirireaderd idle timer started", v11, 2u);
  }
}

void sub_10000B8FC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10000B628();
  }
}

void sub_10000B95C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10000B9C4()
{
  v1 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimer);
  if (v2)
  {
    v3 = v2;
    [v3 invalidate];
    v4 = *(v0 + v1);
    *(v0 + v1) = 0;

    v5 = CFAbsoluteTimeGetCurrent() - *(v0 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker);
    *&dword_10001D0CC = *&dword_10001D0CC + v5;
  }

  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C510(v6, qword_10001D0A0);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "#sirireaderd idle timer invalidated", v8, 2u);
  }
}

uint64_t sub_10000BB10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v17 - v8;
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId;
  sub_10000FDF4(v1 + OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentContextId, v9, &qword_10001D230, &qword_100013260);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    UUID.init()();
    if (v15(v9, 1, v13) != 1)
    {
      sub_10000FD30(v9, &qword_10001D230, &qword_100013260);
    }
  }

  else
  {
    (*(v14 + 32))(v11, v9, v13);
  }

  (*(v14 + 56))(v11, 0, 1, v13);
  sub_10000C4A0(v11, v1 + v12);
  sub_10000FDF4(v1 + v12, v6, &qword_10001D230, &qword_100013260);
  if (v15(v6, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v6, v13);
  }

  UUID.init()();
  result = (v15)(v6, 1, v13);
  if (result != 1)
  {
    return sub_10000FD30(v6, &qword_10001D230, &qword_100013260);
  }

  return result;
}

uint64_t type metadata accessor for SiriReaderDaemon(uint64_t a1)
{
  result = qword_10001D180;
  if (!qword_10001D180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000BEE4(uint64_t a1)
{
  sub_10000BFD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000BFD4(uint64_t a1)
{
  if (!qword_10001D190)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10001D190);
    }
  }
}

Swift::Int sub_10000C040()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000C0B4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

id sub_10000C0F8()
{
  v1 = OBJC_IVAR____TtC11sirireaderd22SiriReaderDaemonServer_server;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for SiriReaderDaemon(0)) init];
  v2 = OBJC_IVAR____TtC11sirireaderd22SiriReaderDaemonServer_interface;
  *&v0[v2] = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP11sirireaderd24SiriReaderDaemonProtocol_];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SiriReaderDaemonServer();
  v3 = objc_msgSendSuper2(&v9, "init");
  v4 = objc_allocWithZone(NSXPCListener);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithMachServiceName:v6];

  [v7 setDelegate:v5];
  [v7 resume];

  return v5;
}

id sub_10000C2F0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10000C398(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10000C3B4(uint64_t a1, int a2)
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

uint64_t sub_10000C3FC(uint64_t result, int a2, int a3)
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

uint64_t sub_10000C458(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000C4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C458(&qword_10001D230, &qword_100013260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C510(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_10000C548(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);

  v7 = v5(v6, a2, a3);

  return v7;
}

uint64_t *sub_10000C5B0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000C614()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10000C654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_10000C69C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C458(&qword_10001D260, &qword_100013288);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10000C7C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C890(v11, 0, 0, 1, a1, a2);
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
    sub_10000EFB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000FEF8(v11);
  return v7;
}

unint64_t sub_10000C890(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000C99C(a5, a6);
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

char *sub_10000C99C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C9E8(a1, a2);
  sub_10000CB18(&off_100018978);
  return v3;
}

char *sub_10000C9E8(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000CC04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000CC04(v10, 0);
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

uint64_t sub_10000CB18(uint64_t result)
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

  result = sub_10000CC78(result, v11, 1, v3);
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

void *sub_10000CC04(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000C458(&qword_10001D250, &qword_100013278);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000CC78(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C458(&qword_10001D250, &qword_100013278);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10000CD6C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000CEB8(a1, a2, v4);
}

unint64_t sub_10000CDE4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10000CF70(a1, v2);
}

unint64_t sub_10000CE74(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000D074(a1, v4);
}

unint64_t sub_10000CEB8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000CF70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_10000D074(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000F204(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000F1B0(v8);
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

double sub_10000D13C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000CD6C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000D804();
      v10 = v12;
    }

    sub_10000F1A0((*(v10 + 56) + 32 * v8), a3);
    sub_10000D498(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Int sub_10000D1E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C458(&qword_10001D258, &qword_100013280);
  v33 = v4;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000F1A0(v24, v34);
      }

      else
      {
        sub_10000EFB0(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000F1A0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10000D498(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10000D648(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000CD6C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000D804();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000D1E0(v16, a4 & 1);
    v11 = sub_10000CD6C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000FEF8(v22);

    return sub_10000F1A0(a1, v22);
  }

  else
  {
    sub_10000D798(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10000D798(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000F1A0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10000D804()
{
  v1 = v0;
  sub_10000C458(&qword_10001D258, &qword_100013280);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000EFB0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000F1A0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_10000D9BC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C510(v7, qword_10001D0A0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000C7C4(a1, a2, &v14);
      _os_log_impl(&_mh_execute_header, v8, v9, "#sirireaderd set sessionUuidEndedByClient %s", v10, 0xCu);
      sub_10000FEF8(v11);
    }

    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    [v6 setObject:v12 forKey:v13];
  }
}

unint64_t sub_10000DBE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C458(&qword_10001D328, &qword_1000132C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FDF4(v4, &v11, &qword_10001D320, &qword_1000132B8);
      v5 = v11;
      result = sub_10000CDE4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000F1A0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

float sub_10000DD08()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  v3 = 1.0;
  if (v2)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 objectForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
      sub_10000FD30(v10, &qword_10001D248, &qword_100013270);
    }
  }

  return v3;
}

uint64_t sub_10000DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, unint64_t a8)
{
  v9 = v8;
  v69 = a7;
  v70 = a4;
  v68 = a3;
  v71 = a2;
  v67 = a1;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v13 - 8);
  v77 = v13;
  __chkstk_darwin(v13);
  v74 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  v17 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentRequestStartTime;
  *&v8[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentRequestStartTime] = Current;
  if (v8[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isSessionActive] == 1)
  {
    sub_100004AE0();
  }

  sub_1000046B8();
  if (qword_10001CFB0 != -1)
  {
    swift_once();
  }

  v18 = qword_10001D0C0;
  dispatch thunk of DaemonSession.keepActive.setter();

  if (qword_10001CFA0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000C510(v19, qword_10001D0A0);

  v21 = v9;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v66 = v20;
    v25 = a8;
    v26 = v24;
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_10000C7C4(a5, a6, aBlock);
    *(v26 + 12) = 2048;
    *(v26 + 14) = *&v9[v17];
    _os_log_impl(&_mh_execute_header, v22, v23, "#sirireaderd new UUID now playing: %s started at %f", v26, 0x16u);
    sub_10000FEF8(v27);

    a8 = v25;
  }

  v28 = &v21[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentlyPlayingUUID];
  *v28 = a5;
  v28[1] = a6;

  dword_10001D0C8 = 0;
  dword_10001D0CC = 0;
  *&v21[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_idleTimeTracker] = 0;
  sub_10000B9C4();
  v29 = 0;
  if (a8 <= 2)
  {
    v29 = dword_10001334C[a8];
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v32 = 136315138;
    v33 = READSchemaREADRequestTrigger.description.getter();
    v35 = a8;
    v36 = sub_10000C7C4(v33, v34, aBlock);

    *(v32 + 4) = v36;
    a8 = v35;
    _os_log_impl(&_mh_execute_header, v30, v31, "#sirireaderd logging trigger as: %s", v32, 0xCu);
    sub_10000FEF8(v66);
  }

  v37 = *v28;
  v38 = v28[1];

  sub_100010F7C(v37, v38, v29);

  *&v21[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_startingSentence] = sub_100002DF8();
  sub_100003A28(a8);
  sub_1000032F0();
  v39 = [objc_opt_self() defaultManager];
  v40 = String._bridgeToObjectiveC()();
  sub_10000C458(&qword_10001D318, &qword_1000132B0);
  inited = swift_initStackObject();
  *(inited + 32) = NSFileOwnerAccountName;
  *(inited + 16) = xmmword_100013130;
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = 0x656C69626F6DLL;
  *(inited + 48) = 0xE600000000000000;
  v42 = NSFileOwnerAccountName;
  sub_10000DBE0(inited);
  swift_setDeallocating();
  sub_10000FD30(inited + 32, &qword_10001D320, &qword_1000132B8);
  type metadata accessor for FileAttributeKey(0);
  sub_10000FE5C(&qword_10001D078, type metadata accessor for FileAttributeKey, &unk_100013068);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[0] = 0;
  v44 = [v39 createDirectoryAtPath:v40 withIntermediateDirectories:0 attributes:isa error:aBlock];

  if (v44)
  {
    v45 = aBlock[0];
  }

  else
  {
    v46 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v51;
      *v50 = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "#sirireaderd error creating TTS generation directory: %@", v49, 0xCu);
      sub_10000FD30(v50, &qword_10001D278, &unk_100013298);
    }

    else
    {
    }
  }

  if (qword_10001CFA8 != -1)
  {
    swift_once();
  }

  v52 = qword_10001D0B8;
  *&v53 = sub_10000DD08();
  [v52 setDefaultRate:v53];

  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v56 = v67;
  v55[2] = v54;
  v55[3] = v56;
  v57 = v69;
  v55[4] = v71;
  v55[5] = v57;
  v58 = v68;
  v55[6] = a8;
  v55[7] = v58;
  v55[8] = v70;
  aBlock[4] = sub_10000FDE0;
  aBlock[5] = v55;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010140;
  aBlock[3] = &unk_100018D98;
  v59 = _Block_copy(aBlock);
  v60 = v57;

  v61 = v72;
  static DispatchQoS.unspecified.getter();
  v78 = &_swiftEmptyArrayStorage;
  sub_10000FE5C(&qword_10001D2F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C458(&qword_10001D2F8, &qword_1000132A8);
  sub_10000FEA4(&qword_10001D300, &qword_10001D2F8, &qword_1000132A8);
  v62 = v74;
  v63 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v59);
  (*(v76 + 8))(v62, v63);
  (*(v73 + 8))(v61, v75);
}

id sub_10000E86C()
{
  v0 = type metadata accessor for SynthesisVoice();
  v1 = objc_allocWithZone(v0);
  v2 = SynthesisVoice.init(language:name:)();
  v3 = [objc_opt_self() sharedPreferences];
  v4 = [v3 outputVoice];

  if (!v4)
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C510(v9, qword_10001D0A0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "#sirireaderd Unable to retrieve outputVoice, falling back to en-us", v12, 2u);
    }

    goto LABEL_10;
  }

  result = [v4 languageCode];
  if (result)
  {
    v6 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = [v4 name];
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v13 = objc_allocWithZone(v0);
    v14 = SynthesisVoice.init(language:name:)();

    v10 = v2;
    v2 = v14;
LABEL_10:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EA78()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      if (swift_dynamicCast())
      {
        v6 = String._bridgeToObjectiveC()();
        v7 = [v2 valueForKey:v6];

        if (v7)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        v25 = v23;
        v26 = v24;
        if (*(&v24 + 1))
        {
          if (swift_dynamicCast())
          {
            if (qword_10001CFA0 != -1)
            {
              swift_once();
            }

            v13 = type metadata accessor for Logger();
            sub_10000C510(v13, qword_10001D0A0);

            v14 = Logger.logObject.getter();
            v15 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              *&v25 = swift_slowAlloc();
              *v16 = 136315394;
              *(v16 + 4) = sub_10000C7C4(v21, v22, &v25);
              *(v16 + 12) = 2080;
              *(v16 + 14) = sub_10000C7C4(v21, v22, &v25);
              _os_log_impl(&_mh_execute_header, v14, v15, "#sirireaderd sessionUuidEndedByClient %s previouslyInProgressUUID %s", v16, 0x16u);
              swift_arrayDestroy();
            }

            v17 = String.uppercased()();

            v18 = String.uppercased()();

            if (v17._countAndFlagsBits == v18._countAndFlagsBits && v17._object == v18._object)
            {
              v5 = 1;
            }

            else
            {
              v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            goto LABEL_33;
          }
        }

        else
        {

          sub_10000FD30(&v25, &qword_10001D248, &qword_100013270);
        }

        if (qword_10001CFA0 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_10000C510(v19, qword_10001D0A0);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v9, v10))
        {
LABEL_32:

          v5 = 0;
          v2 = v9;
LABEL_33:

          return v5 & 1;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "#sirireaderd sessionUuidEndedByClient is nil";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

        goto LABEL_32;
      }
    }

    else
    {
      sub_10000FD30(&v25, &qword_10001D248, &qword_100013270);
    }

    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C510(v8, qword_10001D0A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_32;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "#sirireaderd previouslyInProgressUUID is nil";
    goto LABEL_31;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_10000EFB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000F010(float a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    *&v6 = a1;
    oslog = v5;
    [v4 setFloat:v6 forKey:?];
  }

  else
  {
    if (qword_10001CFA0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C510(v7, qword_10001D0A0);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "#sirireaderd failed to fetch user defaults", v9, 2u);
    }
  }
}

_OWORD *sub_10000F1A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000F260()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10000F2A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10000F2FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F310(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F310(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000F364()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F3A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F424()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F478(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000F4C8(unint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a2)
  {
    v9 = a2;
    v10 = a1;
    if ((a1 != 0x49746E6572727563 || a2 != 0xEB000000006D6574) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }

    sub_10000FDF4(a3, &time, &qword_10001D248, &qword_100013270);
    if (!v58)
    {
      sub_10000FD30(&time, &qword_10001D248, &qword_100013270);
      goto LABEL_25;
    }

    sub_10000FCE8(0, &qword_10001D310, AVPlayer_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_25;
    }

    v11 = v56;
    v12 = [v56 currentItem];
    if (v12)
    {
    }

    else if ((v4[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isPlaying] & 1) != 0 && (v4[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_isCurrentlySeeking] & 1) == 0)
    {
      v6 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence;
      v5 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
      if (*&v4[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence] < *(*&v4[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences] + 16))
      {
        if (qword_10001CFA0 == -1)
        {
          goto LABEL_14;
        }

        goto LABEL_69;
      }
    }

    while (1)
    {

LABEL_25:
      if ((v10 != 0x737574617473 || v9 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return;
      }

      if (a4 && *(a4 + 2) && (v28 = sub_10000CDE4(NSKeyValueChangeNewKey), (v29 & 1) != 0) && (sub_10000EFB0(*(a4 + 7) + 32 * v28, &time), sub_10000FCE8(0, &qword_10001D238, NSNumber_ptr), (swift_dynamicCast() & 1) != 0))
      {
        v30 = [v56 integerValue];

        v31 = v30 == 2;
      }

      else
      {
        v31 = 0;
      }

      sub_10000FDF4(a3, &time, &qword_10001D248, &qword_100013270);
      if (!v58)
      {
        sub_10000FD30(&time, &qword_10001D248, &qword_100013270);
        if (!v31)
        {
          return;
        }

        goto LABEL_58;
      }

      sub_10000FCE8(0, &qword_10001D308, AVPlayerItem_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_57;
      }

      v11 = v4;
      a3 = v56;
      [v56 duration];
      Seconds = CMTimeGetSeconds(&time);
      if (qword_10001CFA0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      v4 = sub_10000C510(v33, qword_10001D0A0);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = Seconds;
        _os_log_impl(&_mh_execute_header, v34, v35, "#sirireaderd playerItem.duration in seconds : %f", v36, 0xCu);
      }

      if ((~*&Seconds & 0x7FF0000000000000) == 0 && (*&Seconds & 0xFFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_52;
      }

      v10 = *&v11[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_currentSentence];
      v9 = OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences;
      a4 = *&v11[OBJC_IVAR____TtC11sirireaderd16SiriReaderDaemon_articleSentences];
      if (v10 >= *(a4 + 2))
      {
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "#sirireaderd attempting to save duration for sentence outside bounds", v41, 2u);
        }

        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v11[v9] = a4;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        a4 = sub_10000D9A8(a4);
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }
      }

      if (v10 < *(a4 + 2))
      {
        v38 = &a4[56 * v10];
        *(v38 + 8) = Seconds;
        v38[72] = 0;
        *&v11[v9] = a4;
LABEL_52:
        v42 = [v56 error];
        if (v42)
        {
          v43 = v42;
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *v46 = 138412290;
            v48 = v43;
            v49 = _swift_stdlib_bridgeErrorToNSError();
            *(v46 + 4) = v49;
            *v47 = v49;
            _os_log_impl(&_mh_execute_header, v44, v45, "#sirireaderd playerItem error: %@", v46, 0xCu);
            sub_10000FD30(v47, &qword_10001D278, &unk_100013298);

            if (!v31)
            {
              return;
            }
          }

          else
          {

            if (!v31)
            {
              return;
            }
          }
        }

        else
        {

LABEL_57:
          if (!v31)
          {
            return;
          }
        }

LABEL_58:
        if (qword_10001CFA0 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000C510(v50, qword_10001D0A0);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "#sirireaderd AVPlayerItem failure has occured", v53, 2u);
        }

        return;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      swift_once();
LABEL_14:
      v13 = type metadata accessor for Logger();
      sub_10000C510(v13, qword_10001D0A0);
      v55 = v4;
      v14 = v4;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v54 = v5;
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        v18 = v14;
        v19 = v55;
        *(v17 + 4) = *&v55[v6];

        _os_log_impl(&_mh_execute_header, v15, v16, "#sirireaderd Marking playback as complete for sentence: %ld", v17, 0xCu);
        v5 = v54;
      }

      else
      {

        v15 = v14;
        v19 = v55;
      }

      v20 = *&v19[v6];
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        return;
      }

      v21 = *&v19[v5];
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_71;
      }

      v22 = v21 + 56 * v20;
      v23 = *(v22 + 48);
      v24 = *(v22 + 56);
      v25 = *(v22 + 64);
      v26 = *(v22 + 72);
      if (v24)
      {
        v23 = 0.0;
      }

      if (!v26)
      {
        v23 = v25;
      }

      v27 = v23;
      *&dword_10001D0C8 = *&dword_10001D0C8 + v27;
      *&v19[v6] = v20 + 1;
      sub_100008820(v20 + 1, 0);
      sub_100007660();
      v4 = v55;
    }
  }
}

uint64_t sub_10000FCE8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000FD30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000C458(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000FD90()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000FDF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C458(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000FE5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000FEA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000F478(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FEF8(void *a1)
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

uint64_t getEnumTagSinglePayload for GenerationState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerationState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000100BC()
{
  result = qword_10001D348;
  if (!qword_10001D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D348);
  }

  return result;
}

uint64_t sub_100010174()
{
  sub_1000101E0();
  result = OS_os_log.init(subsystem:category:)();
  qword_10001D508 = result;
  return result;
}

unint64_t sub_1000101E0()
{
  result = qword_10001D350;
  if (!qword_10001D350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D350);
  }

  return result;
}

uint64_t sub_10001022C()
{
  v0 = type metadata accessor for Logger();
  sub_10000C5B0(v0, qword_10001D358);
  sub_10000C510(v0, qword_10001D358);
  if (qword_10001CFC0 != -1)
  {
    swift_once();
  }

  v1 = qword_10001D508;
  return Logger.init(_:)();
}

uint64_t sub_1000102EC()
{
  sub_10000FEF8((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *sub_100010348(uint64_t a1)
{
  v2 = sub_10000C458(&qword_10001D230, &qword_100013260);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000107AC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001081C(v4);
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C510(v9, qword_10001D358);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "cannot generate READClient event with nil readId", v12, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v13 = [objc_allocWithZone(READSchemaREADClientEvent) init];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_allocWithZone(READSchemaREADClientEventMetadata) init];
      if (v15)
      {
        v16 = v15;
        v17 = objc_allocWithZone(SISchemaUUID);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v19 = [v17 initWithNSUUID:isa];

        [v16 setReadId:v19];
        [v14 setEventMetadata:v16];

        (*(v6 + 8))(v8, v5);
        return v14;
      }

      if (qword_10001CFC8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C510(v25, qword_10001D358);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "error initializing READSchemaREADClientEventMetadata", v28, 2u);
      }
    }

    else
    {
      if (qword_10001CFC8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000C510(v21, qword_10001D358);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "error initializing READSchemaREADClientEvent", v24, 2u);
      }
    }

    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

uint64_t sub_1000107AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C458(&qword_10001D230, &qword_100013260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001081C(uint64_t a1)
{
  v2 = sub_10000C458(&qword_10001D230, &qword_100013260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100010884(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v7 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = [objc_allocWithZone(READSchemaREADPlaybackSessionEnded) init];
  *&v14 = a3;
  [v13 setPlayedAudioDuration:v14];
  *&v15 = a4;
  [v13 setTotalDuration:v15];
  v16 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
  if (v16)
  {
    v17 = objc_allocWithZone(SISchemaUUID);
    v18 = v16;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v20 = [v17 initWithNSUUID:isa];

    [v18 setContextId:v20];
  }

  [v16 setEnded:v13];
  if (a2 && ((UUID.init(uuidString:)(), v21 = type metadata accessor for UUID(), v22 = *(v21 - 8), (*(v22 + 48))(v10, 1, v21) != 1) ? ((*(v22 + 32))(v12, v10, v21), v23 = 0) : (sub_10001081C(v10), v23 = 1), (*(v22 + 56))(v12, v23, 1, v21), v24 = sub_100010348(v12), sub_10001081C(v12), v24))
  {
    [v24 setPlaybackSessionContext:v16];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C510(v25, qword_10001D358);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "error generating READClient Event", v28, 2u);
    }
  }
}

void sub_100010C0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = [objc_allocWithZone(READSchemaREADPlaybackSessionFailed) init];
  v13 = v12;
  if (v12)
  {
    [v12 setErrorCodes:a4];
  }

  v14 = [objc_allocWithZone(READSchemaREADPlaybackSessionContext) init];
  if (v14)
  {
    v15 = objc_allocWithZone(SISchemaUUID);
    v16 = v14;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v18 = [v15 initWithNSUUID:isa];

    [v16 setContextId:v18];
  }

  [v14 setFailed:v13];
  if (a2 && ((UUID.init(uuidString:)(), v19 = type metadata accessor for UUID(), v20 = *(v19 - 8), (*(v20 + 48))(v9, 1, v19) != 1) ? ((*(v20 + 32))(v11, v9, v19), v21 = 0) : (sub_10001081C(v9), v21 = 1), (*(v20 + 56))(v11, v21, 1, v19), v22 = sub_100010348(v11), sub_10001081C(v11), v22))
  {
    [v22 setPlaybackSessionContext:v14];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C510(v23, qword_10001D358);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "error generating READClient Event", v26, 2u);
    }
  }
}

void sub_100010F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = [objc_allocWithZone(READSchemaREADRequestStarted) init];
  [v11 setTrigger:a3];
  v12 = [objc_allocWithZone(READSchemaREADRequestContext) init];
  [v12 setStartedOrChanged:v11];
  if (a2 && ((UUID.init(uuidString:)(), v13 = type metadata accessor for UUID(), v14 = *(v13 - 8), (*(v14 + 48))(v8, 1, v13) != 1) ? ((*(v14 + 32))(v10, v8, v13), v15 = 0) : (sub_10001081C(v8), v15 = 1), (*(v14 + 56))(v10, v15, 1, v13), v16 = sub_100010348(v10), sub_10001081C(v10), v16))
  {
    [v16 setReadThisRequestContext:v12];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C510(v17, qword_10001D358);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "error generating READClient Event", v20, 2u);
    }
  }
}

void sub_100011278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v9 = sub_10000C458(&qword_10001D230, &qword_100013260);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = [objc_allocWithZone(READSchemaREADRequestPreprocessingEnded) init];
  [v15 setUtteranceCount:a4];
  [v15 setArticleTextLength:a3];
  *&v16 = a5;
  [v15 setEstimatedDuration:v16];
  v17 = [objc_allocWithZone(READSchemaREADRequestPreprocessingContext) init];
  [v17 setEnded:v15];
  if (a2 && ((UUID.init(uuidString:)(), v18 = type metadata accessor for UUID(), v19 = *(v18 - 8), (*(v19 + 48))(v12, 1, v18) != 1) ? ((*(v19 + 32))(v14, v12, v18), v20 = 0) : (sub_10001081C(v12), v20 = 1), (*(v19 + 56))(v14, v20, 1, v18), v21 = sub_100010348(v14), sub_10001081C(v14), v21))
  {
    [v21 setReadsThisRequestPreprocessingContext:v17];
    [objc_msgSend(objc_opt_self() "sharedStream")];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10001CFC8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C510(v22, qword_10001D358);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "error generating READClient Event", v25, 2u);
    }
  }
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}