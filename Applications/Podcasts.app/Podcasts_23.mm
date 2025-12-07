void sub_100329A54()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v13[-v1];
  swift_beginAccess();
  if (*(v0 + 16))
  {
    type metadata accessor for OtherContextActionConfiguration(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = qword_100593318;
      v6 = type metadata accessor for URL();
      v7 = *(v6 - 8);
      (*(v7 + 16))(v2, v4 + v5, v6);
      (*(v7 + 56))(v2, 0, 1, v6);
      v8 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link;
      swift_beginAccess();

      sub_1001FDDA8(v2, v0 + v8);
      swift_endAccess();
      v9 = v4 + qword_100593320;
      v11 = *(v4 + qword_100593320);
      v10 = *(v9 + 8);

      v12 = (v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_shareTitle);
      *v12 = v11;
      v12[1] = v10;
    }
  }
}

uint64_t sub_100329C20()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xAC000000A680E24CLL;
  v1._countAndFlagsBits = 0xA680E26572616853;
  v5._countAndFlagsBits = 0x5255206572616853;
  v1._object = 0xA800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_100329F60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareOtherContextAction.ActivityItemProvider(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10032A018()
{

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link, &qword_100574040, &unk_100400AD0);

  v1 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_contextActionType, &qword_100575870, &unk_100402BE0);

  return swift_deallocClassInstance();
}

void sub_10032A14C(uint64_t a1)
{
  sub_10032A2AC(319, &qword_10057C350, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricsLabel();
    if (v2 <= 0x3F)
    {
      sub_10032A2AC(319, &qword_10057FEF0, &type metadata accessor for ContextActionType);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10032A2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10032A328(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_10032A3F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_systemImageName);

  return v1;
}

uint64_t sub_10032A42C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10032A52C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100234C18(a1, a2, WitnessTable);
}

uint64_t sub_10032A58C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10032A5EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

unint64_t sub_10032A674()
{
  result = qword_1005800C0;
  if (!qword_1005800C0)
  {
    type metadata accessor for ShareOtherContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005800C0);
  }

  return result;
}

unint64_t sub_10032A6CC(uint64_t a1)
{
  result = sub_10032A674();
  *(a1 + 8) = result;
  return result;
}

id sub_10032A6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShareOtherContextAction.ActivityItemProvider(0);
  v7 = objc_allocWithZone(v6);
  if (a3)
  {
    v8 = OBJC_IVAR____TtCC8Podcasts23ShareOtherContextActionP33_EEA9E3C8BAC5199A99988C7A83F9625320ActivityItemProvider_link;
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    (*(v10 + 16))(&v7[v8], a1, v9);
    v11 = [objc_opt_self() mainBundle];
    v23._object = 0xE000000000000000;
    v12._object = 0x8000000100470390;
    v12._countAndFlagsBits = 0xD00000000000002DLL;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v23);

    sub_100168088(&unk_100574670, &qword_100400AB0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100400790;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100022C18();
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    v15 = static String.localizedStringWithFormat(_:_:)();
    v17 = v16;

    v18 = &v7[OBJC_IVAR____TtCC8Podcasts23ShareOtherContextActionP33_EEA9E3C8BAC5199A99988C7A83F9625320ActivityItemProvider_title];
    *v18 = v15;
    v18[1] = v17;
    v22.receiver = v7;
    v22.super_class = v6;
    v19 = objc_msgSendSuper2(&v22, "init");
    (*(v10 + 8))(a1, v9);
  }

  else
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 8))(a1, v20);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v19;
}

unint64_t sub_10032A978()
{
  result = qword_1005800C8;
  if (!qword_1005800C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005800C8);
  }

  return result;
}

id SyncControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncControllerFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id SyncControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncControllerFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10032AABC()
{
  result = qword_10057ABB8;
  if (!qword_10057ABB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057ABB8);
  }

  return result;
}

unint64_t sub_10032AB1C()
{
  result = qword_100580110;
  if (!qword_100580110)
  {
    type metadata accessor for CreateStationIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580110);
  }

  return result;
}

void sub_10032AB74(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() insertNewPlaylistInManagedObjectContext:a1];
  CreateStationIntent.name.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setTitle:v5];

  [v4 setIncludesAllPodcasts:0];
  [v4 setNeedsUpdate:0];
  static Date.timeIntervalSinceReferenceDate.getter();
  [v4 setGeneratedDate:?];
  sub_100168088(&unk_100574680, &qword_100401740);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004007B0;
  *(v6 + 32) = v4;
  sub_1001D3D4C();
  v7 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = 0;
  v9 = [a1 obtainPermanentIDsForObjects:isa error:&v19];

  v10 = v19;
  if (v9 && (v19 = 0, v11 = v10, v12 = [a1 save:&v19], v10 = v19, v12))
  {
    type metadata accessor for StationDetail();
    v13 = v7;
    v14 = v10;
    v15 = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
    if (v15)
    {
      v16 = v15;

      *a2 = v16;
      return;
    }

    sub_10032B7F8();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0;
  }

  else
  {
    v17 = v10;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
}

uint64_t sub_10032ADC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1001B9C88;

  return (sub_10032AE7C)(a2, a3);
}

uint64_t sub_10032AE7C(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  StationIntent = type metadata accessor for CreateStationIntent();
  v1[8] = StationIntent;
  v4 = *(StationIntent - 8);
  v1[9] = v4;
  v1[10] = *(v4 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = sub_100168088(&unk_1005738E0, &qword_1004010A0);
  v6 = swift_task_alloc();
  v1[14] = v6;
  *v6 = v1;
  v6[1] = sub_10032B018;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v5, v5);
}

uint64_t sub_10032B018()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v5 = sub_10032B688;
  }

  else
  {
    *(v2 + 128) = v3;
    *(v2 + 136) = v4;
    v5 = sub_10032B17C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10032B17C()
{
  v1 = v0[2];
  v0[18] = v1;
  Station = CreateStationIntent.name.getter();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = Station & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    v9 = v0[6];
    v24 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = [v1 mainOrPrivateContext];
    v0[19] = v12;
    (*(v8 + 16))(v6, v10, v7);
    v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v0[20] = v14;
    *(v14 + 16) = v12;
    (*(v8 + 32))(v14 + v13, v6, v7);
    (*(v9 + 104))(v24, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v11);
    v12;
    v15 = swift_task_alloc();
    v0[21] = v15;
    v16 = type metadata accessor for StationDetail();
    *v15 = v0;
    v15[1] = sub_10032B404;
    v17 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v17, sub_10032B788, v14, v16);
  }

  else
  {

    v18 = CreateStationIntent.name.getter();
    v20 = v19;
    sub_10032B7F8();
    swift_allocError();
    *v21 = v18;
    v21[1] = v20;
    swift_willThrow();
    swift_unknownObjectRelease();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_10032B404()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v2[22] = v0;

  v4 = (v3 + 8);
  v5 = v2[7];
  v6 = v2[5];
  if (v0)
  {
    (*v4)(v2[7], v2[5]);

    v7 = v2[16];
    v8 = v2[17];
    v9 = sub_10032B700;
  }

  else
  {

    (*v4)(v5, v6);
    v7 = v2[16];
    v8 = v2[17];
    v9 = sub_10032B5C4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10032B5C4()
{
  v1 = v0[19];

  v2 = v0[3];
  type metadata accessor for SyncKeysRepository();
  v3 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isPlaylistSyncDirty.setter();

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_10032B688()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032B700()
{
  v1 = *(v0 + 152);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10032B7F8()
{
  result = qword_100580120;
  if (!qword_100580120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580120);
  }

  return result;
}

unint64_t sub_10032B870()
{
  result = qword_100580130;
  if (!qword_100580130)
  {
    type metadata accessor for DeleteStationIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580130);
  }

  return result;
}

void sub_10032B8C8(void *a1@<X2>, char *a2@<X8>)
{
  v5 = DeleteStationIntent.id.getter();
  v7 = v6;
  v9 = v8;
  v10 = NSManagedObjectContext.playlist(for:)();
  sub_1001CEA68(v5, v7, v9);
  if (!v2)
  {
    if (v10)
    {
      [a1 deletePlaylist:v10];

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    *a2 = v11;
  }
}

uint64_t sub_10032B978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10032BA30;

  return sub_10032BB40(a2, a3);
}

uint64_t sub_10032BA30(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10032BB40(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for DeleteStationIntent();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v7;
  v2[14] = v6;

  return _swift_task_switch(sub_10032BC98, v7, v6);
}

uint64_t sub_10032BC98()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[15] = v1;
  if (v1)
  {
    v2 = sub_100168088(&unk_1005738E0, &qword_1004010A0);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_10032BDD0;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
  }

  else
  {

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_10032BDD0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_10032C330;
  }

  else
  {
    v5 = sub_10032BF0C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10032BF0C()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v16 = v0[5];
  v17 = v0[7];
  v7 = v0[2];
  v8 = v0[3];
  v0[18] = v7;
  v9 = [v7 mainOrPrivateContext];
  v0[19] = v9;
  (*(v5 + 16))(v3, v8, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[20] = v11;
  *(v11 + 16) = v9;
  (*(v5 + 32))(v11 + v10, v3, v4);
  *(v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  (*(v6 + 104))(v17, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v16);
  v9;
  v12 = v1;
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_10032C0D0;
  v14 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 23, v14, sub_10032C450, v11, &type metadata for Bool);
}

uint64_t sub_10032C0D0()
{
  v2 = *v1;
  v2[22] = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {
    (*(v4 + 8))(v2[7], v2[5]);

    v6 = v2[13];
    v7 = v2[14];
    v8 = sub_10032C3B4;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[13];
    v7 = v2[14];
    v8 = sub_10032C28C;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10032C28C()
{
  v1 = *(v0 + 152);

  swift_unknownObjectRelease();
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10032C330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032C3B4()
{
  v1 = *(v0 + 152);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

void sub_10032C4EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (!a5)
  {
    a6 = 0;
  }

  sub_10032C518(a1, a2, a3, a4, a5, a6);
}

void sub_10032C518(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = a5;
  if (!a3)
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = a3;
  v17 = a4;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10032C680;
  v15 = &unk_1004EE650;
  v11 = _Block_copy(&v12);

  if (v8)
  {
LABEL_3:
    v16 = v8;
    v17 = a6;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_10032C6D4;
    v15 = &unk_1004EE628;
    v8 = _Block_copy(&v12);
  }

LABEL_4:
  [v6 performImport:a1 fromSource:a2 withProgressBlock:v11 completionHandler:v8];
  _Block_release(v8);
  _Block_release(v11);
}

uint64_t sub_10032C680(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

void sub_10032C6D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a4)
  {

    v7 = a3;
    v8 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v11 = a3;
    v10 = 0xF000000000000000;
  }

  v6(a2, a3, v4, v10);
  sub_1001F6D60(v4, v10);
}

id sub_10032C79C(uint64_t a1, char a2)
{
  v3 = [*v2 itemWithPersistentID:a1 verifyExistence:a2 & 1];

  return v3;
}

id sub_10032C7E0()
{
  result = [objc_allocWithZone(ML3ArtworkTokenSet) initWithEntity:v0 artworkType:1];
  if (result)
  {
    v2 = result;
    v3 = [result artworkTokenForSource:500];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_10032C878(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 populateLocationPropertiesWithPath:? protectionType:?];
}

id sub_10032C8E4(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = [v3 populateArtworkCacheWithArtworkData:isa];

  return v5;
}

id sub_10032C964(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 removeArtworkAssetWithToken:v4];

  return v5;
}

id sub_10032C9B8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(ML3Track) initWithPersistentID:MediaLibraryPid.value.getter() inLibrary:*v1];
  v4 = result;
  if (result)
  {
    result = sub_10032CA3C();
    v5 = &off_1004EE5D0;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

unint64_t sub_10032CA3C()
{
  result = qword_100580138;
  if (!qword_100580138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100580138);
  }

  return result;
}

void MTPlayerController.startPlayback(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PendingPlaybackMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([objc_opt_self() supportsBlueMoon] & 1) == 0)
  {
    (*(v5 + 16))(v7, a1, v4);
    v8 = objc_allocWithZone(type metadata accessor for PlaceholderManifest());
    sub_1001AD310(v7);
    v10 = v9;
    [v2 playManifest:v9 reason:3 interactive:0 completion:0];
  }
}

void sub_10032CBB8(uint64_t a1)
{
  v3 = type metadata accessor for PendingPlaybackMetadata();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (([objc_opt_self() supportsBlueMoon] & 1) == 0)
  {
    (*(v4 + 16))(v6, a1, v3);
    v8 = objc_allocWithZone(type metadata accessor for PlaceholderManifest());
    sub_1001AD310(v6);
    v10 = v9;
    [v7 playManifest:v9 reason:3 interactive:0 completion:0];
  }
}

uint64_t UpgradeMediaLibraryEntryArtwork.performMigrationStep()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = type metadata accessor for ArtworkRequest();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  type metadata accessor for ArtworkModel();
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for MediaLibraryPid();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v9 = sub_100168088(&qword_100574868, &qword_100401D18);
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[36] = v10;
  v4[37] = *(v10 - 8);
  v4[38] = swift_task_alloc();
  v11 = type metadata accessor for CachingImageContentProvider();
  v4[39] = v11;
  v4[40] = *(v11 - 8);
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_10032D048, 0, 0);
}

uint64_t sub_10032D048()
{
  if ([objc_opt_self() isRunningOnDesktop])
  {

    v1 = v0[1];
LABEL_8:

    return v1();
  }

  v2 = v0[13];
  if (!v2)
  {
    static Logger.artwork.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to migrate artwork, music library is unavailable", v6, 2u);
    }

    v7 = v0[23];
    v8 = v0[20];
    v9 = v0[21];

    (*(v9 + 8))(v7, v8);
    sub_10032EBB4();
    swift_allocError();
    swift_willThrow();

    v1 = v0[1];
    goto LABEL_8;
  }

  v3 = v2;
  static CachingImageContentProvider.shared.getter();
  sub_100009F1C(0, &qword_1005735F0, MTDB_ptr);
  v10 = static MTDB.shared.getter();
  v11 = NSManagedObjectContextProvider.privateManagedObjectContext.getter();
  v0[42] = v11;
  v13 = v11;
  v15 = v0[37];
  v14 = v0[38];
  v16 = v0[36];

  v17 = swift_allocObject();
  v0[43] = v17;
  *(v17 + 16) = v13;
  (*(v15 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v16);
  v13;
  v18 = swift_task_alloc();
  v0[44] = v18;
  v19 = sub_100168088(&qword_100580148, &qword_10040D7D0);
  *v18 = v0;
  v18[1] = sub_10032D4A8;
  v20 = v0[38];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 12, v20, sub_10032F600, v17, v19);
}

uint64_t sub_10032D4A8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  (*(v2[37] + 8))(v2[38], v2[36]);

  if (v0)
  {
    v3 = sub_10032E374;
  }

  else
  {
    v3 = sub_10032D62C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10032D62C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + 96);
  *(v4 + 368) = v5;
  v6 = *(v5 + 16);
  *(v4 + 376) = v6;
  if (v6)
  {
    v7 = *(v4 + 272);
    v8 = *(v4 + 280);
    v9 = *(v4 + 264);
    v10 = *(v4 + 224);
    v11 = *(v9 + 48);
    *(v4 + 448) = v11;
    v12 = *(v9 + 64);
    *(v4 + 452) = v12;
    v13 = *(v7 + 80);
    *(v4 + 456) = v13;
    *(v4 + 384) = 0;
    if (!*(v5 + 16))
    {
      __break(1u);
      return ImageContentProvider.url(for:)(a1, a2, a3, a4);
    }

    v14 = *(v4 + 256);
    v60 = *(v4 + 248);
    v16 = *(v4 + 208);
    v15 = *(v4 + 216);
    sub_100010430(v5 + ((v13 + 32) & ~v13), v8, &qword_100574868, &qword_100401D18);
    v58 = *v8;
    (*(v10 + 32))(v14, &v8[v11], v15);
    sub_1001FBAE0(&v8[v12], v16);
    static Logger.artwork.getter();
    v17 = *(v10 + 16);
    *(v4 + 392) = v17;
    *(v4 + 400) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18 = v60;
    v61 = v17;
    v17(v18, v14, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v4 + 376);
      v22 = *(v4 + 248);
      v23 = *(v4 + 216);
      v24 = *(v4 + 224);
      v25 = swift_slowAlloc();
      *v25 = 134218496;
      *(v25 + 4) = v58;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v21;
      *(v25 + 22) = 2048;
      v26 = MediaLibraryPid.value.getter();
      v27 = *(v24 + 8);
      v27(v22, v23);
      *(v25 + 24) = v26;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%ld/%ld] Updating media library artwork for persistent id: %lld", v25, 0x20u);
    }

    else
    {
      v28 = *(*(v4 + 224) + 8);
      v28(*(v4 + 248), *(v4 + 216));
    }

    *(v4 + 408) = v28;
    v30 = *(v4 + 200);
    v31 = *(v4 + 160);
    v32 = *(v4 + 168);
    v33 = *(v4 + 104);

    v34 = *(v32 + 8);
    *(v4 + 416) = v34;
    *(v4 + 424) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v30, v31);
    v35 = [objc_allocWithZone(ML3Track) initWithPersistentID:MediaLibraryPid.value.getter() inLibrary:v33];
    if (v35)
    {
      v36 = v35;
      *(v4 + 80) = sub_100009F1C(0, &qword_100580138, ML3Track_ptr);
      *(v4 + 88) = &off_1004EE5D0;
      *(v4 + 56) = v36;
      sub_100184658((v4 + 56), v4 + 16);
      ArtworkModel.preferredRequest.getter();
      v37 = swift_task_alloc();
      *(v4 + 432) = v37;
      *v37 = v4;
      v37[1] = sub_10032DBE4;
      a3 = *(v4 + 312);
      a1 = *(v4 + 152);
      a2 = *(v4 + 128);
      a4 = &protocol witness table for CachingImageContentProvider;

      return ImageContentProvider.url(for:)(a1, a2, a3, a4);
    }

    v38 = *(v4 + 256);
    v39 = *(v4 + 240);
    v40 = *(v4 + 216);

    static Logger.artwork.getter();
    v61(v39, v38, v40);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v4 + 240);
    v45 = *(v4 + 216);
    v59 = v28;
    if (v43)
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      v47 = MediaLibraryPid.value.getter();
      v48 = v28;
      v49 = v47;
      v48(v44, v45);
      *(v46 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "No track for persistent ID: %lld", v46, 0xCu);
    }

    else
    {
      v28(v44, v45);
    }

    v50 = *(v4 + 336);
    v62 = *(v4 + 256);
    v51 = *(v4 + 216);
    v52 = *(v4 + 208);
    v53 = *(v4 + 192);
    v54 = *(v4 + 160);
    v55 = *(v4 + 104);

    v34(v53, v54);
    sub_1001A0664(v52);
    v59(v62, v51);
  }

  else
  {
    v29 = *(v4 + 104);
  }

  (*(*(v4 + 320) + 8))(*(v4 + 328), *(v4 + 312));

  v56 = *(v4 + 8);

  return v56();
}

uint64_t sub_10032DBE4()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v3 = sub_10032E4C0;
  }

  else
  {
    v3 = sub_10032DD4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10032DD4C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 104);
  sub_10032F64C((v0 + 16), v1, v4);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 408);
  v6 = *(v0 + 376);
  v7 = *(v0 + 256);
  v8 = *(v0 + 216);
  v9 = *(v0 + 208);
  v10 = *(v0 + 384) + 1;
  sub_100004590((v0 + 16));
  sub_1001A0664(v9);
  v11 = v5(v7, v8);
  if (v10 != v6)
  {
    v16 = *(v0 + 384) + 1;
    *(v0 + 384) = v16;
    v17 = *(v0 + 368);
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = *(v0 + 452);
      v19 = *(v0 + 448);
      v20 = *(v0 + 280);
      v22 = *(v0 + 248);
      v21 = *(v0 + 256);
      v23 = *(v0 + 216);
      v24 = *(v0 + 224);
      v25 = *(v0 + 208);
      sub_100010430(v17 + ((*(v0 + 456) + 32) & ~*(v0 + 456)) + *(*(v0 + 272) + 72) * v16, v20, &qword_100574868, &qword_100401D18);
      v67 = *v20;
      (*(v24 + 32))(v21, &v20[v19], v23);
      sub_1001FBAE0(&v20[v18], v25);
      static Logger.artwork.getter();
      v26 = *(v24 + 16);
      *(v0 + 392) = v26;
      *(v0 + 400) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v65 = v26;
      v26(v22, v21, v23);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = *(v0 + 376);
        v30 = *(v0 + 248);
        v31 = *(v0 + 216);
        v32 = *(v0 + 224);
        v33 = swift_slowAlloc();
        *v33 = 134218496;
        *(v33 + 4) = v67;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v29;
        *(v33 + 22) = 2048;
        v34 = MediaLibraryPid.value.getter();
        v35 = *(v32 + 8);
        v35(v30, v31);
        *(v33 + 24) = v34;
        v36 = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "[%ld/%ld] Updating media library artwork for persistent id: %lld", v33, 0x20u);
      }

      else
      {
        v36 = *(*(v0 + 224) + 8);
        v36(*(v0 + 248), *(v0 + 216));
      }

      *(v0 + 408) = v36;
      v37 = *(v0 + 200);
      v38 = *(v0 + 160);
      v39 = *(v0 + 168);
      v40 = *(v0 + 104);

      v41 = *(v39 + 8);
      *(v0 + 416) = v41;
      *(v0 + 424) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v41(v37, v38);
      v42 = [objc_allocWithZone(ML3Track) initWithPersistentID:MediaLibraryPid.value.getter() inLibrary:v40];
      if (!v42)
      {
        v45 = *(v0 + 256);
        v46 = *(v0 + 240);
        v47 = *(v0 + 216);

        static Logger.artwork.getter();
        v65(v46, v45, v47);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();
        v50 = os_log_type_enabled(v48, v49);
        v51 = *(v0 + 240);
        v52 = *(v0 + 216);
        v68 = v36;
        if (v50)
        {
          v53 = swift_slowAlloc();
          *v53 = 134217984;
          v54 = MediaLibraryPid.value.getter();
          v55 = v36;
          v56 = v54;
          v55(v51, v52);
          *(v53 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v48, v49, "No track for persistent ID: %lld", v53, 0xCu);
        }

        else
        {
          v36(v51, v52);
        }

        v57 = *(v0 + 336);
        v66 = *(v0 + 256);
        v58 = *(v0 + 216);
        v59 = *(v0 + 208);
        v60 = *(v0 + 192);
        v61 = *(v0 + 160);
        v62 = *(v0 + 104);

        v41(v60, v61);
        sub_1001A0664(v59);
        v68(v66, v58);
        goto LABEL_15;
      }

      v43 = v42;
      *(v0 + 80) = sub_100009F1C(0, &qword_100580138, ML3Track_ptr);
      *(v0 + 88) = &off_1004EE5D0;
      *(v0 + 56) = v43;
      sub_100184658((v0 + 56), v0 + 16);
      ArtworkModel.preferredRequest.getter();
      v44 = swift_task_alloc();
      *(v0 + 432) = v44;
      *v44 = v0;
      v44[1] = sub_10032DBE4;
      v13 = *(v0 + 312);
      v11 = *(v0 + 152);
      v12 = *(v0 + 128);
      v14 = &protocol witness table for CachingImageContentProvider;
    }

    return ImageContentProvider.url(for:)(v11, v12, v13, v14);
  }

  v15 = *(v0 + 104);

LABEL_15:
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_10032E374()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10032E4C0(uint64_t a1)
{
  v2 = *(v1 + 392);
  v3 = *(v1 + 256);
  v4 = *(v1 + 232);
  v5 = *(v1 + 216);
  static Logger.artwork.getter();
  v2(v4, v3, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 408);
  v10 = *(v1 + 232);
  v11 = *(v1 + 216);
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = MediaLibraryPid.value.getter();
    v9(v10, v11);
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to upgrade artwork for episode with persistent ID: %lld", v12, 0xCu);
  }

  else
  {
    v9(*(v1 + 232), *(v1 + 216));
  }

  v14 = *(v1 + 416);
  v15 = *(v1 + 176);
  v16 = *(v1 + 160);

  v14(v15, v16);
  v17 = *(v1 + 408);
  v18 = *(v1 + 376);
  v19 = *(v1 + 256);
  v20 = *(v1 + 216);
  v21 = *(v1 + 208);
  v22 = *(v1 + 384) + 1;
  sub_100004590((v1 + 16));
  sub_1001A0664(v21);
  v23 = v17(v19, v20);
  if (v22 != v18)
  {
    v28 = *(v1 + 384) + 1;
    *(v1 + 384) = v28;
    v29 = *(v1 + 368);
    if (v28 >= *(v29 + 16))
    {
      __break(1u);
    }

    else
    {
      v30 = *(v1 + 452);
      v31 = *(v1 + 448);
      v32 = *(v1 + 280);
      v34 = *(v1 + 248);
      v33 = *(v1 + 256);
      v35 = *(v1 + 216);
      v36 = *(v1 + 224);
      v37 = *(v1 + 208);
      sub_100010430(v29 + ((*(v1 + 456) + 32) & ~*(v1 + 456)) + *(*(v1 + 272) + 72) * v28, v32, &qword_100574868, &qword_100401D18);
      v79 = *v32;
      (*(v36 + 32))(v33, &v32[v31], v35);
      sub_1001FBAE0(&v32[v30], v37);
      static Logger.artwork.getter();
      v38 = *(v36 + 16);
      *(v1 + 392) = v38;
      *(v1 + 400) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v77 = v38;
      v38(v34, v33, v35);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v1 + 376);
        v42 = *(v1 + 248);
        v43 = *(v1 + 216);
        v44 = *(v1 + 224);
        v45 = swift_slowAlloc();
        *v45 = 134218496;
        *(v45 + 4) = v79;
        *(v45 + 12) = 2048;
        *(v45 + 14) = v41;
        *(v45 + 22) = 2048;
        v46 = MediaLibraryPid.value.getter();
        v47 = *(v44 + 8);
        v47(v42, v43);
        *(v45 + 24) = v46;
        v48 = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "[%ld/%ld] Updating media library artwork for persistent id: %lld", v45, 0x20u);
      }

      else
      {
        v48 = *(*(v1 + 224) + 8);
        v48(*(v1 + 248), *(v1 + 216));
      }

      *(v1 + 408) = v48;
      v49 = *(v1 + 200);
      v50 = *(v1 + 160);
      v51 = *(v1 + 168);
      v52 = *(v1 + 104);

      v53 = *(v51 + 8);
      *(v1 + 416) = v53;
      *(v1 + 424) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v53(v49, v50);
      v54 = [objc_allocWithZone(ML3Track) initWithPersistentID:MediaLibraryPid.value.getter() inLibrary:v52];
      if (!v54)
      {
        v57 = *(v1 + 256);
        v58 = *(v1 + 240);
        v59 = *(v1 + 216);

        static Logger.artwork.getter();
        v77(v58, v57, v59);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        v62 = os_log_type_enabled(v60, v61);
        v63 = *(v1 + 240);
        v64 = *(v1 + 216);
        v80 = v48;
        if (v62)
        {
          v65 = swift_slowAlloc();
          *v65 = 134217984;
          v66 = MediaLibraryPid.value.getter();
          v67 = v48;
          v68 = v66;
          v67(v63, v64);
          *(v65 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v60, v61, "No track for persistent ID: %lld", v65, 0xCu);
        }

        else
        {
          v48(v63, v64);
        }

        v69 = *(v1 + 336);
        v78 = *(v1 + 256);
        v70 = *(v1 + 216);
        v71 = *(v1 + 208);
        v72 = *(v1 + 192);
        v73 = *(v1 + 160);
        v74 = *(v1 + 104);

        v53(v72, v73);
        sub_1001A0664(v71);
        v80(v78, v70);
        goto LABEL_18;
      }

      v55 = v54;
      *(v1 + 80) = sub_100009F1C(0, &qword_100580138, ML3Track_ptr);
      *(v1 + 88) = &off_1004EE5D0;
      *(v1 + 56) = v55;
      sub_100184658((v1 + 56), v1 + 16);
      ArtworkModel.preferredRequest.getter();
      v56 = swift_task_alloc();
      *(v1 + 432) = v56;
      *v56 = v1;
      v56[1] = sub_10032DBE4;
      v25 = *(v1 + 312);
      v23 = *(v1 + 152);
      v24 = *(v1 + 128);
      v26 = &protocol witness table for CachingImageContentProvider;
    }

    return ImageContentProvider.url(for:)(v23, v24, v25, v26);
  }

  v27 = *(v1 + 104);

LABEL_18:
  (*(*(v1 + 320) + 8))(*(v1 + 328), *(v1 + 312));

  v75 = *(v1 + 8);

  return v75();
}

unint64_t sub_10032EBB4()
{
  result = qword_100580140;
  if (!qword_100580140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580140);
  }

  return result;
}

void sub_10032EC08(void *a1@<X0>, int64_t *a2@<X8>)
{
  v80 = a1;
  v76 = a2;
  v2 = sub_100168088(&qword_100580158, &qword_10040D918);
  __chkstk_darwin();
  v82 = (&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v74 = &v61 - v4;
  v75 = sub_100168088(&qword_100574868, &qword_100401D18);
  v73 = *(v75 - 8);
  __chkstk_darwin();
  v83 = &v61 - v5;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v7 = &v61 - v6;
  v8 = type metadata accessor for ArtworkModel();
  v66 = *(v8 - 8);
  __chkstk_darwin();
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100168088(&qword_1005794E0, &qword_100406710);
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  __chkstk_darwin();
  v85 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v61 - v13;
  __chkstk_darwin();
  v15 = &v61 - v14;
  __chkstk_darwin();
  v17 = &v61 - v16;
  __chkstk_darwin();
  v19 = &v61 - v18;
  v20 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  v21 = [objc_opt_self() predicateForHasValidPersistentId:1];
  [v20 setPredicate:v21];

  v22 = v20;
  sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
  v23 = v81;
  v24 = NSManagedObjectContext.fetch<A>(_:)();
  v61 = v23;
  if (v23)
  {

    return;
  }

  v25 = v66;
  v64 = v19;
  v65 = v17;
  v80 = v8;
  v70 = v15;
  v26 = v24;
  if (v24 >> 62)
  {
    goto LABEL_37;
  }

  v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v28 = v76;
  v72 = v22;
  if (v27)
  {
    v22 = 0;
    v79 = v26 & 0xC000000000000001;
    v71 = v26 & 0xFFFFFFFFFFFFFF8;
    v68 = (v25 + 48);
    v66 = (v25 + 56);
    v81 = _swiftEmptyArrayStorage;
    v63 = v26;
    v62 = v7;
    while (1)
    {
      if (v79)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v71 + 16))
        {
          goto LABEL_34;
        }

        v29 = *(v26 + 8 * v22 + 32);
      }

      v30 = v29;
      v31 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v27 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_5;
      }

      v32 = [v29 podcast];
      if (v32)
      {
        v25 = v32;
        MTPodcast.artworkModel.getter();

        if ((*v68)(v7, 1, v80) != 1)
        {
          v33 = v7;
          v34 = v27;
          v35 = v67;
          sub_1001FBAE0(v33, v67);
          v36 = *(v77 + 48);
          [v30 persistentID];
          v37 = v65;
          MediaLibraryPid.init(_:)();

          sub_1001FBAE0(v35, v37 + v36);
          v38 = v37;
          v39 = v64;
          sub_100010498(v38, v64, &qword_1005794E0, &qword_100406710);
          v40 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_100243E6C(0, v40[2] + 1, 1, v40);
          }

          v25 = v40[2];
          v41 = v40[3];
          v81 = v40;
          v27 = v34;
          if (v25 >= v41 >> 1)
          {
            v81 = sub_100243E6C((v41 > 1), v25 + 1, 1, v81);
          }

          v7 = v62;
          v42 = v81;
          v81[2] = v25 + 1;
          sub_100010498(v39, v42 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v25, &qword_1005794E0, &qword_100406710);
          v28 = v76;
          v26 = v63;
          goto LABEL_9;
        }
      }

      else
      {

        (*v66)(v7, 1, 1, v80);
      }

      sub_100009104(v7, &unk_100578C10, &qword_100400B60);
      v28 = v76;
LABEL_9:
      ++v22;
      if (v31 == v27)
      {
        goto LABEL_24;
      }
    }
  }

  v81 = _swiftEmptyArrayStorage;
LABEL_24:

  v43 = v81;
  v22 = v81[2];
  if (v22)
  {
    v86 = _swiftEmptyArrayStorage;
    sub_1001A78FC(0, v22, 0);
    v44 = 0;
    v25 = v86;
    v67 = v43 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v68 = v22;
    v71 = v43[2];
    v7 = v75;
    v69 = v2;
    while (v71 != v44)
    {
      if (v44 >= v81[2])
      {
        goto LABEL_36;
      }

      v80 = v25;
      v45 = *(v2 + 48);
      v46 = v74;
      sub_100010430(v67 + *(v78 + 72) * v44, &v74[v45], &qword_1005794E0, &qword_100406710);
      v47 = v82;
      *v82 = v44;
      v48 = v47 + *(v2 + 48);
      sub_100010498(&v46[v45], v48, &qword_1005794E0, &qword_100406710);
      v49 = v77;
      v50 = *(v77 + 48);
      v51 = *(v7 + 12);
      v79 = *(v7 + 16);
      v52 = type metadata accessor for MediaLibraryPid();
      v53 = *(v52 - 8);
      v54 = v70;
      (*(v53 + 16))(v70, v48, v52);
      sub_1002445E8(v48 + v50, v54 + *(v49 + 48));
      sub_100010430(v54, v84, &qword_1005794E0, &qword_100406710);
      v55 = *(v49 + 48);
      v56 = &v83[v51];
      v26 = v83;
      (*(v53 + 32))(v56, v84, v52);
      sub_100010498(v54, v85, &qword_1005794E0, &qword_100406710);
      sub_1001FBAE0(v85 + *(v49 + 48), v26 + v79);
      v57 = v52;
      v25 = v80;
      (*(v53 + 8))(v85, v57);
      sub_1001A0664(v84 + v55);
      *v26 = v44;
      sub_100009104(v82, &qword_100580158, &qword_10040D918);
      v86 = v25;
      v59 = *(v25 + 16);
      v58 = *(v25 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1001A78FC((v58 > 1), v59 + 1, 1);
        v25 = v86;
      }

      ++v44;
      *(v25 + 16) = v59 + 1;
      sub_100010498(v26, v25 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v59, &qword_100574868, &qword_100401D18);
      v22 = v68;
      v2 = v69;
      v7 = v75;
      v60 = v72;
      if (v68 == v44)
      {

        *v76 = v25;
        return;
      }
    }

    goto LABEL_35;
  }

  *v28 = _swiftEmptyArrayStorage;
}

uint64_t sub_10032F56C()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001C51C;

  return UpgradeMediaLibraryEntryArtwork.performMigrationStep()(v3, v4, v5, v2);
}

uint64_t sub_10032F61C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10032F64C(void *a1, uint64_t a2, void *a3)
{
  v28[0] = type metadata accessor for Logger();
  v5 = *(v28[0] - 8);
  __chkstk_darwin();
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v9 = v28 - v8;
  v10 = a1[3];
  v11 = a1[4];
  sub_1000044A0(a1, v10);
  (*(v11 + 24))(v10, v11);
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
    [a3 removeArtworkAssetWithToken:v13];

    v18 = Data.init(contentsOf:options:)();
    v20 = v19;
    v21 = a1[3];
    v22 = a1[4];
    sub_1000044A0(a1, v21);
    v23 = *(v22 + 16);
    sub_10027636C(v18, v20);
    v24 = v23(v18, v20, v21, v22);
    sub_1001F6D74(v18, v20);
    if (v24)
    {

      return sub_1001F6D74(v18, v20);
    }

    else
    {
      static Logger.artwork.getter();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Artwork update failed", v27, 2u);

        sub_1001F6D74(v18, v20);
      }

      else
      {
        sub_1001F6D74(v18, v20);
      }

      return (*(v5 + 8))(v7, v28[0]);
    }
  }

  else
  {
    static Logger.artwork.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to update media library artwork, no artwork token", v16, 2u);
    }

    return (*(v5 + 8))(v9, v28[0]);
  }
}

unint64_t sub_10032FA44()
{
  result = qword_100580150;
  if (!qword_100580150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580150);
  }

  return result;
}

uint64_t sub_10032FA98(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_10032FAE8()
{
  result = qword_100580160;
  if (!qword_100580160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580160);
  }

  return result;
}

uint64_t sub_10032FB3C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100331B30(&qword_100580258, v4, type metadata accessor for RemoteNotificationSetting, &unk_10040DBB8);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v8 = objc_allocWithZone(IMWritePushNotificationSettingsService);
  sub_10027636C(v5, v7);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v8 initWithData:isa];

  sub_1001F6D74(v5, v7);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_100331AC8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100331314;
  aBlock[3] = &unk_1004EE9D8;
  v12 = _Block_copy(aBlock);

  [v10 performDataRequestWithCompletion:v12];
  _Block_release(v12);

  return sub_1001F6D74(v5, v7);
}

uint64_t sub_10032FD64(void *a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100580228, &qword_10040DC08);
  v69 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v62 - v7;
  *(v2 + 16) = &_swiftEmptyDictionarySingleton;
  v9 = a1[3];
  v70 = a1;
  sub_1000044A0(a1, v9);
  v10 = sub_1003319CC();
  v11 = v71;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {

    v12 = v2;
LABEL_46:
    sub_100004590(v70);
    return v12;
  }

  v13 = v69;
  v65 = (v2 + 16);
  v14 = v2;
  v71 = v10;
  v15 = v6;
  LOBYTE(v72) = 0;
  KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
  v64 = v8;
  v67 = v4;
  sub_1000044A0(v74, v75);
  v16 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
  v12 = v2;
  if ((v17 & 1) != 0 || (v18 = v16, v16 < 2))
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v57._countAndFlagsBits = 0xD00000000000002BLL;
    v57._object = 0x8000000100470520;
    String.append(_:)(v57);
    sub_100168088(&qword_100580238, &qword_10040DC10);
    _print_unlocked<A, B>(_:_:)();
    v58 = v72;
    v59 = v73;
    sub_100331A20();
    swift_allocError();
    *v60 = v58;
    v60[1] = v59;
    swift_willThrow();

    v13[1](v64, v67);
LABEL_45:
    sub_100004590(v74);
    goto LABEL_46;
  }

  v63 = 0x8000000100470580;
  v68 = 0x8000000100470550;
  v69 = v13 + 1;
  v66 = v14;
  v19 = v67;
  v20 = v15;
  v21 = v65;
  while (1)
  {
    sub_100010C38(v74, v75);
    dispatch thunk of UnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)();
    LOBYTE(v72) = 2;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v22;
    v25 = v23 == 0xD00000000000002ELL && v68 == v22;
    if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v23 == 0xD00000000000002ALL && v63 == v24)
    {

LABEL_26:
      LOBYTE(v72) = 1;
      v40 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = *v21;
      v42 = v76;
      *v21 = 0x8000000000000000;
      v43 = sub_100202384(1);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_49;
      }

      v49 = v44;
      if (v42[3] >= v48)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_31;
        }

        v54 = v43;
        sub_100260C64();
        v43 = v54;
        v37 = v76;
        if ((v49 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_32:
        *(v37[7] + v43) = v40 & 1;
      }

      else
      {
        sub_10025DAD8(v48, isUniquelyReferenced_nonNull_native);
        v43 = sub_100202384(1);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_51;
        }

LABEL_31:
        v37 = v76;
        if (v49)
        {
          goto LABEL_32;
        }

LABEL_41:
        v37[(v43 >> 6) + 8] |= 1 << v43;
        *(v37[6] + v43) = 1;
        *(v37[7] + v43) = v40 & 1;
        v55 = v37[2];
        v47 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v47)
        {
          goto LABEL_50;
        }

        v37[2] = v56;
      }

      v12 = v66;
LABEL_37:
      *v21 = v37;
      swift_endAccess();
      goto LABEL_38;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_26;
    }

    v12 = v66;
LABEL_38:
    v53 = *v69;
    (*v69)(v20, v19);
    if (!--v18)
    {
      v53(v64, v19);
      goto LABEL_45;
    }
  }

  LOBYTE(v72) = 1;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  swift_beginAccess();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v21;
  v28 = v76;
  *v21 = 0x8000000000000000;
  v30 = sub_100202384(0);
  v31 = v28[2];
  v32 = (v29 & 1) == 0;
  v33 = v31 + v32;
  if (!__OFADD__(v31, v32))
  {
    v34 = v29;
    if (v28[3] < v33)
    {
      sub_10025DAD8(v33, v27);
      v35 = sub_100202384(0);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_51;
      }

      v30 = v35;
      v37 = v76;
      if ((v34 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_18:
      *(v37[7] + v30) = v26 & 1;
LABEL_36:
      v12 = v66;
      v19 = v67;
      goto LABEL_37;
    }

    if (v27)
    {
      v37 = v76;
      if (v29)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_100260C64();
      v37 = v76;
      if (v34)
      {
        goto LABEL_18;
      }
    }

LABEL_34:
    v37[(v30 >> 6) + 8] |= 1 << v30;
    *(v37[6] + v30) = 0;
    *(v37[7] + v30) = v26 & 1;
    v51 = v37[2];
    v47 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v47)
    {
      goto LABEL_48;
    }

    v37[2] = v52;
    goto LABEL_36;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10033049C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656C62616E457369;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 1701667182;
  if (v4 == 1)
  {
    v6 = 0x656C62616E457369;
    v5 = 0xE900000000000064;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x8000000100464480;
  }

  if (*a2 != 1)
  {
    v3 = 1701667182;
    v2 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000018;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000100464480;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100330588()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10033062C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1003306BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10033075C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100331CA0(*a1);
  *a2 = result;
  return result;
}

void sub_10033078C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x656C62616E457369;
  if (v2 != 1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (v5)
  {
    v3 = 0x8000000100464480;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1003307EC()
{
  v1 = 0x656C62616E457369;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

unint64_t sub_100330848@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100331CA0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10033087C(uint64_t a1)
{
  v2 = sub_1003319CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003308B8(uint64_t a1)
{
  v2 = sub_1003319CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003308F4(void *a1)
{
  v2 = sub_100168088(&qword_100580248, &qword_10040DC18);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  sub_1000044A0(a1, a1[3]);
  sub_1003319CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  v19 = v7;
  KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
  v24 = (v3 + 8);
  sub_100010C38(v21, v22);
  dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
  v20 = 2;
  v8 = v18;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v8)
  {

    v9 = *v24;
    (*v24)(v5, v2);
    v9(v19, v2);
  }

  else
  {

    v10 = v17;
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      sub_100202384(0);
    }

    v11 = v24;
    swift_endAccess();
    v20 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *v11;
    (*v11)(v5, v2);
    v18 = v23;
    sub_100010C38(v21, v22);
    v16 = v12;
    dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
    v20 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v16;

    v15 = v17;
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {
      sub_100202384(1);
    }

    swift_endAccess();
    v20 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14(v5, v2);
    v14(v19, v2);
  }

  return sub_100004590(v21);
}

uint64_t sub_100330D2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchQoS();
  v34 = *(v13 - 8);
  v35 = v13;
  __chkstk_darwin();
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    swift_errorRetain();
    LODWORD(v33) = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v16 = static OS_os_log.notifications.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v19 = v15;
    v20 = v12;
    v21 = v10;
    v22 = a5;
    v23 = a4;
    v25 = v24;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100022C18();
    *(v17 + 32) = v18;
    *(v17 + 40) = v25;
    a4 = v23;
    a5 = v22;
    v10 = v21;
    v12 = v20;
    v15 = v19;
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v16, "Reading remote notifications settings failed with error: %@", 59, 2, v17);

    v26 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v26 = 0;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    sub_10027636C(a1, a2);
    JSONDecoder.init()();
    type metadata accessor for RemoteNotificationSetting();
    sub_100331B30(&qword_100580260, v27, type metadata accessor for RemoteNotificationSetting, &unk_10040DBE0);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_1001F6D60(a1, a2);
    v26 = aBlock[0];
  }

  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  v29 = swift_allocObject();
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = v26;
  v29[5] = a3;
  aBlock[4] = sub_100331B00;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EEA78;
  v30 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100331B30(&qword_10057D380, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v36 + 8))(v12, v10);
  return (*(v34 + 8))(v15, v35);
}

uint64_t sub_100331314(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1001F6D60(v4, v8);
}

uint64_t sub_1003313C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchQoS();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin();
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    swift_errorRetain();
    v28 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v15 = static OS_os_log.notifications.getter();
    v29 = a4;
    v16 = v9;
    v17 = v15;
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v20 = a5;
    v22 = v21;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100022C18();
    *(v18 + 32) = v19;
    *(v18 + 40) = v22;
    a5 = v20;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v17, "Changing remote notifications settings failed with error: %@", 60, 2, v18);

    v9 = v16;
    a4 = v29;
  }

  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a3;
  aBlock[4] = sub_100331AD0;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EEA28;
  v25 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100331B30(&qword_10057D380, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v9 + 8))(v11, v8);
  return (*(v30 + 8))(v14, v31);
}

uint64_t sub_1003317C0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100331874()
{
  result = qword_100580220;
  if (!qword_100580220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580220);
  }

  return result;
}

uint64_t sub_1003318C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_10032FD64(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100331944()
{
  swift_beginAccess();
  sub_100331A74();

  v0 = Dictionary.description.getter();

  return v0;
}

unint64_t sub_1003319CC()
{
  result = qword_100580230;
  if (!qword_100580230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580230);
  }

  return result;
}

unint64_t sub_100331A20()
{
  result = qword_100580240;
  if (!qword_100580240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580240);
  }

  return result;
}

unint64_t sub_100331A74()
{
  result = qword_100580250;
  if (!qword_100580250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580250);
  }

  return result;
}

uint64_t sub_100331B30(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100331B9C()
{
  result = qword_100580268;
  if (!qword_100580268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580268);
  }

  return result;
}

unint64_t sub_100331BF4()
{
  result = qword_100580270;
  if (!qword_100580270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580270);
  }

  return result;
}

unint64_t sub_100331C4C()
{
  result = qword_100580278;
  if (!qword_100580278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580278);
  }

  return result;
}

unint64_t sub_100331CA0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004DF2D0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100331D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for EpisodePlayState();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for EpisodeEntity();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_100168088(&unk_10057A4A0, &qword_100409850);
  v7 = swift_task_alloc();
  v3[14] = v7;
  *v7 = v3;
  v7[1] = sub_100331EA0;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v6, v6);
}

uint64_t sub_100331EA0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100332548;
  }

  else
  {
    v2 = sub_100331FB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100331FB4()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v19 = v0[9];
  v20 = v0[8];
  v0[16] = v0[2];
  UpdateEpisodePlayStateIntent.episode.getter();
  v4 = EpisodeEntity.episodeStateIdentifier.getter();
  v6 = v5;
  v8 = v7;
  v9 = *(v2 + 8);
  v0[17] = v9;
  v0[18] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  v0[19] = dispatch thunk of EpisodeStateController.stateMachine(for:)();
  sub_1001C1A4C(v4, v6, v8 & 1);
  dispatch thunk of EpisodeStateMachine.currentState.getter();
  updated = UpdateEpisodePlayStateIntent.playState.getter();
  sub_1003329D0(v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 3) < 2 || EnumCaseMultiPayload == 1)
  {
    if (updated != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      v17 = v0[8];

      sub_10021F0A0(v17);
      goto LABEL_11;
    }

    sub_1001A4748(v0[8]);
    if (updated)
    {
LABEL_5:
      UpdateEpisodePlayStateIntent.episode.getter();
      v12 = UpdateEpisodePlayStateIntent.playState.getter();
      v13 = swift_task_alloc();
      v0[20] = v13;
      *v13 = v0;
      v13[1] = sub_100332248;
      v14 = v0[12];
      v15 = v0[5];

      return sub_100332A34(v14, v12, v15);
    }
  }

LABEL_11:
  sub_100239BE4(v0[9], v0[3]);
  (*(v0[7] + 56))(v0[3], 0, 1, v0[6]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100332248()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  *(*v1 + 168) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_1003324A0;
  }

  else
  {
    v5 = sub_1003323C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003323C8(uint64_t a1)
{
  v2 = v1[9];
  dispatch thunk of EpisodeStateMachine.currentState.getter();

  sub_10021F0A0(v2);
  (*(v1[7] + 56))(v1[3], 0, 1, v1[6]);

  v3 = v1[1];

  return v3();
}

uint64_t sub_1003324A0()
{
  v1 = *(v0 + 72);

  sub_10021F0A0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100332548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003325D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a5;
  v9 = sub_100168088(&qword_100580288, &unk_10040DE90);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v18 - v11;
  v13 = a2[3];
  v18[0] = a2[4];
  sub_1000044A0(a2, v13);
  sub_100168088(&qword_100574690, &unk_100401BA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100400790;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v12, v9);

  dispatch thunk of LibraryActionControllerProtocol.mark(episodeUUIDS:as:completion:)();
}

uint64_t sub_10033279C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_100168088(&qword_100580288, &unk_10040DE90);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v13 - v8;
  sub_1000044A0(a2, a2[3]);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  dispatch thunk of LibraryActionControllerProtocol.mark(episodeOffers:as:completion:)();
}

uint64_t sub_100332920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001C51C;

  return sub_100331D0C(a1, a2, a3);
}

uint64_t sub_1003329D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100332A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  EpisodeOffersIntent = type metadata accessor for FetchEpisodeOffersIntent();
  v3[16] = EpisodeOffersIntent;
  v3[17] = *(EpisodeOffersIntent - 8);
  v3[18] = swift_task_alloc();
  v5 = sub_100168088(&qword_10057A160, &qword_1004076B0);
  v6 = swift_task_alloc();
  v3[19] = v6;
  *v6 = v3;
  v6[1] = sub_100332B54;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v5, v5);
}

uint64_t sub_100332B54()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003335A8, 0, 0);
  }

  else
  {
    v3 = sub_100168088(&qword_10057E670, &unk_100405FE0);
    v4 = swift_task_alloc();
    *(v2 + 168) = v4;
    *v4 = v2;
    v4[1] = sub_100332CF8;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v3, v3);
  }
}

uint64_t sub_100332CF8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10033360C;
  }

  else
  {
    v2 = sub_100332E0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100332E0C()
{
  v1 = EpisodeEntity.uuid.getter();
  v0[23] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = v0[14];
    v6 = swift_task_alloc();
    v0[24] = v6;
    v6[2] = v0 + 7;
    v6[3] = v3;
    v6[4] = v4;
    v6[5] = v5;
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_10033304C;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v8 = v0[5];
    v9 = v0[6];
    sub_1000044A0(v0 + 2, v8);
    sub_100168088(&unk_10057A0B0, &unk_100401C70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100400790;
    *(v10 + 32) = EpisodeEntity.adamID.getter();
    FetchEpisodeOffersIntent.init(adamIDs:)();
    v11 = swift_task_alloc();
    v0[26] = v11;
    v12 = sub_1003336EC(&unk_10057A170, &type metadata accessor for FetchEpisodeOffersIntent, &protocol conformance descriptor for FetchEpisodeOffersIntent);
    *v11 = v0;
    v11[1] = sub_1003331F8;
    v13 = v0[18];
    v14 = v0[15];
    v15 = v0[16];

    return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 12, v13, v14, v15, v12, v8, v9);
  }
}

uint64_t sub_10033304C()
{

  return _swift_task_switch(sub_100333180, 0, 0);
}

uint64_t sub_100333180()
{
  sub_100004590(v0 + 7);
  sub_100004590(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003331F8()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100333678;
  }

  else
  {
    v5 = sub_100333368;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100333368()
{
  v1 = v0[14];
  v2 = v0[12];
  v0[28] = v2;
  v3 = swift_task_alloc();
  v0[29] = v3;
  v3[2] = v0 + 7;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_100333474;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100333474()
{

  return _swift_task_switch(sub_1003337C0, 0, 0);
}

uint64_t sub_1003335A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033360C()
{
  sub_100004590((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100333678()
{
  sub_100004590(v0 + 7);
  sub_100004590(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003336EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003337C4()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v11 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_link;
  swift_beginAccess();
  sub_100010430(v0 + v7, v2, &qword_100574040, &unk_100400AD0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100009104(v2, &qword_100574040, &unk_100400AD0);
  }

  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_opt_self() generalPasteboard];
  URL.absoluteString.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setString:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003339D4()
{

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_link, &qword_100574040, &unk_100400AD0);

  v1 = OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_contextActionType, &qword_100575870, &unk_100402BE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CopyLinkOtherContextAction(uint64_t a1)
{
  result = qword_1005802B8;
  if (!qword_1005802B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100333B20(uint64_t a1)
{
  sub_10032A2AC(319, &qword_10057C350, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricsLabel();
    if (v2 <= 0x3F)
    {
      sub_10032A2AC(319, &qword_10057FEF0, &type metadata accessor for ContextActionType);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100333C80()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_systemImageName);

  return v1;
}

uint64_t sub_100333CBC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_100333D70()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v9[-v1];
  swift_beginAccess();
  if (*(v0 + 16))
  {
    type metadata accessor for OtherContextActionConfiguration(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = qword_100593318;
      v6 = type metadata accessor for URL();
      v7 = *(v6 - 8);
      (*(v7 + 16))(v2, v4 + v5, v6);
      (*(v7 + 56))(v2, 0, 1, v6);
      v8 = OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_link;
      swift_beginAccess();
      sub_1001FDDA8(v2, v0 + v8);
      swift_endAccess();
    }
  }
}

uint64_t sub_100333EF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100234C18(a1, a2, WitnessTable);
}

uint64_t sub_100333F50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_100333FB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

unint64_t sub_100334010(uint64_t a1)
{
  result = sub_100334038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100334038()
{
  result = qword_1005803B8;
  if (!qword_1005803B8)
  {
    type metadata accessor for CopyLinkOtherContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005803B8);
  }

  return result;
}

void sub_100334090(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.classKit.getter();

  v11 = a3;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000153E0(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v12, v13, "Setting user default - %s", v14, 0xCu);
    sub_100004590(v15);
  }

  (*(v7 + 8))(v9, v6);
  v16 = String._bridgeToObjectiveC()();
  [v10 setBool:1 forKey:v16];
}

uint64_t sub_1003342BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  v14 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  if (v16)
  {
    v17 = v9;
    static OS_os_log.classKit.getter();
    swift_bridgeObjectRetain_n();
    v18 = a3;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47 = v8;
      v23 = v22;
      v50 = v22;
      *v21 = 136315138;
      v24 = _typeName(_:qualified:)();
      v26 = v25;

      v27 = sub_1000153E0(v24, v26, &v50);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Skipping migration - %s", v21, 0xCu);
      sub_100004590(v23);

      return (*(v17 + 8))(v11, v47);
    }

    else
    {

      (*(v17 + 8))(v11, v8);
    }
  }

  else
  {
    static OS_os_log.classKit.getter();
    swift_bridgeObjectRetain_n();
    v29 = a3;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136315138;
      v34 = _typeName(_:qualified:)();
      v46 = a1;
      v47 = v8;
      v35 = v9;
      v36 = v34;
      v38 = v37;

      v39 = sub_1000153E0(v36, v38, &v50);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Starting migration - %s", v32, 0xCu);
      sub_100004590(v33);

      (*(v35 + 8))(v13, v47);
      a1 = v46;
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    v40 = swift_allocObject();
    v40[2] = a1;
    v40[3] = a2;
    v41 = v48;
    v42 = v49;
    v40[4] = v29;
    v40[5] = v41;
    v40[6] = v42;
    v43 = swift_allocObject();
    v43[2] = a1;
    v43[3] = a2;
    v43[4] = v29;
    v43[5] = sub_1003383F0;
    v43[6] = v40;
    swift_bridgeObjectRetain_n();
    v44 = v29;

    sub_1003514E4(sub_100338400, v43, a1, a2, v44);
  }
}

uint64_t sub_1003347A4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(uint64_t))
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100334090(a2, a3, a4);
  a5(a1);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.classKit.getter();
  swift_bridgeObjectRetain_n();
  v14 = a4;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = _typeName(_:qualified:)();
    v25 = v10;
    v20 = v19;
    v22 = v21;

    v23 = sub_1000153E0(v20, v22, &v26);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Finished migration - %s", v17, 0xCu);
    sub_100004590(v18);

    return (*(v11 + 8))(v13, v25);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }
}

id sub_100334A0C(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v16 - 8);
  __chkstk_darwin();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v6 = OBJC_IVAR____TtC8Podcasts15ClassKitManager_workQueue;
  v13[1] = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v14 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v7 = *(v3 + 104);
  v15 = v3 + 104;
  v17 = v7;
  v7(v5);
  *&v1[v6] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC8Podcasts15ClassKitManager_subscriptions] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC8Podcasts15ClassKitManager__playbackStart;
  v21 = 0;
  v22 = 1;
  sub_100168088(&unk_10057E2F0, &qword_1004059D0);
  *&v2[v8] = Synchronized.init(wrappedValue:)();
  v9 = OBJC_IVAR____TtC8Podcasts15ClassKitManager__lastSignificantChangeTime;
  v21 = 0;
  *&v2[v9] = Synchronized.init(wrappedValue:)();
  v13[0] = OBJC_IVAR____TtC8Podcasts15ClassKitManager_migrationQueue;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0, &unk_1003FEB50);
  sub_100009FAC(&qword_1005743C0, &unk_1005729E0, &unk_1003FEB50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17(v5, v14, v16);
  *&v2[v13[0]] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC8Podcasts15ClassKitManager_dataStoreDelegate] = [objc_allocWithZone(type metadata accessor for ClassKitContextBuilder()) init];
  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts15ClassKitManager_playbackController] = v21;
  v10 = type metadata accessor for ClassKitManager();
  v20.receiver = v2;
  v20.super_class = v10;
  v11 = objc_msgSendSuper2(&v20, "init");
  sub_100336C34();

  return v11;
}

void sub_100334E00(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    swift_errorRetain();
    static OS_os_log.classKit.getter();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = a1;
      v14 = v9;
      *v8 = 136315138;
      swift_errorRetain();
      sub_100168088(&qword_100575C50, &unk_100402650);
      v10 = String.init<A>(describing:)();
      v12 = sub_1000153E0(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error saving - %s", v8, 0xCu);
      sub_100004590(v9);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100335018(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin();
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC8Podcasts15ClassKitManager_workQueue];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v3;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_100338410;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EEEC8;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

void sub_100335304(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 podcast];
  if (v7)
  {
    v8 = v7;
    MPModelObject.adamID.getter();
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      v11 = MPModelObject.adamID.getter();
      if ((v12 & 1) == 0)
      {
        v13 = v11;
        sub_100168088(&qword_100574690, &unk_100401BA0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1004007C0;
        sub_1000366D8();
        *(v14 + 32) = BinaryInteger.description.getter();
        *(v14 + 40) = v15;
        v23[0] = v13;
        *(v14 + 48) = BinaryInteger.description.getter();
        *(v14 + 56) = v16;
        v17 = [objc_opt_self() shared];
        v18 = [v17 mainAppContext];

        isa = Array._bridgeToObjectiveC()().super.isa;
        v20 = swift_allocObject();
        v20[2] = v14;
        v20[3] = a2;
        v20[4] = a3;
        v20[5] = a4;
        v23[4] = sub_10033841C;
        v23[5] = v20;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_100335CA4;
        v23[3] = &unk_1004EEF18;
        v21 = _Block_copy(v23);
        v22 = a2;

        [v18 descendantMatchingIdentifierPath:isa completion:v21];
        _Block_release(v21);
      }
    }
  }
}

id sub_10033551C()
{
  result = [v0 podcast];
  if (result)
  {
    v2 = result;
    MPModelObject.adamID.getter();
    v4 = v3;

    if (v4)
    {
      return 0;
    }

    MPModelObject.adamID.getter();
    if (v5)
    {
      return 0;
    }

    else
    {
      sub_100168088(&qword_100574690, &unk_100401BA0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1004007C0;
      sub_1000366D8();
      *(v6 + 32) = BinaryInteger.description.getter();
      *(v6 + 40) = v7;
      v8 = BinaryInteger.description.getter();
      result = v6;
      *(v6 + 48) = v8;
      *(v6 + 56) = v9;
    }
  }

  return result;
}

uint64_t sub_10033561C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v47 = a3;
  v48 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v47 - v12;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for DispatchQoS() - 8);
  __chkstk_darwin();
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = *(a4 + OBJC_IVAR____TtC8Podcasts15ClassKitManager_workQueue);
    v48 = v18;
    v21 = swift_allocObject();
    v22 = v50;
    v21[2] = v49;
    v21[3] = v22;
    v21[4] = a1;
    aBlock[4] = sub_100338428;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004EEF68;
    v23 = _Block_copy(aBlock);
    v24 = a1;

    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100168088(&unk_100575CD0, &unk_100400B50);
    sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v51 + 8))(v16, v14);
    (*(v17 + 8))(v20, v48);
  }

  else
  {
    v26 = v48;
    if (v48)
    {
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      swift_errorRetain();
      v27 = v13;
      static OS_os_log.classKit.getter();
      swift_errorRetain();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v30 = 136315394;
        v31 = Array.description.getter();
        v33 = sub_1000153E0(v31, v32, aBlock);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2080;
        v53 = v26;
        swift_errorRetain();
        sub_100168088(&qword_100575C50, &unk_100402650);
        v34 = String.init<A>(describing:)();
        v36 = sub_1000153E0(v34, v35, aBlock);

        *(v30 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v28, v29, "Error finding episode context %s - %s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return (*(v9 + 8))(v27, v8);
    }

    else
    {
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v37 = v11;
      static OS_os_log.classKit.getter();

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      v40 = v8;
      v41 = v9;
      if (os_log_type_enabled(v38, v39))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v42 = 136315138;
        v44 = Array.description.getter();
        v46 = sub_1000153E0(v44, v45, aBlock);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unknown error finding episode context - %s", v42, 0xCu);
        sub_100004590(v43);
      }

      return (*(v41 + 8))(v37, v40);
    }
  }
}

void sub_100335CA4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100335D30()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v4 = *(v16 - 8);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC8Podcasts15ClassKitManager_migrationQueue);
  v21[3] = &type metadata for OldEpisodeContextMigration;
  v21[4] = &off_1004EFE18;
  v21[0] = 0xD00000000000002DLL;
  v21[1] = 0x8000000100470740;
  v21[2] = v7;
  sub_100004428(v21, v20);
  v8 = v7;
  sub_100004590(v21);
  v9 = sub_1000044A0(v20, v20[3]);
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v10;
  v13[4] = v12;
  v13[5] = sub_1002CF470;
  v13[6] = 0;
  aBlock[4] = sub_1003383E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EEE28;
  v14 = _Block_copy(aBlock);

  v12;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);

  return sub_100004590(v20);
}

void sub_1003360A0(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  sub_100337A18(a3, a1, a4, a5);
  v5 = [objc_opt_self() shared];
  v7[4] = sub_100334E00;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10022AF0C;
  v7[3] = &unk_1004EECE8;
  v6 = _Block_copy(v7);
  [v5 saveWithCompletion:v6];
  _Block_release(v6);
}

void sub_100336178(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v38 - v12;
  if ((a3 & 1) == 0)
  {
    v40 = a2;
    v41 = 0;
    swift_beginAccess();
    sub_100168088(&unk_100580430, &qword_10040DFE8);
    Synchronized.wrappedValue.setter();
    swift_endAccess();
  }

  [a1 becomeActive];
  if (sub_10033551C())
  {
    v14 = [a1 currentActivity];
    if (v14)
    {
      v15 = v14;
      [v14 setBackgroundTimeTrackingEnabled:1];
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      static OS_os_log.classKit.getter();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136315138;
        v20 = Array.description.getter();
        v39 = v7;
        v21 = v20;
        v23 = v22;

        v24 = sub_1000153E0(v21, v23, aBlock);

        *(v18 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v16, v17, "Resuming activity for episode - %s", v18, 0xCu);
        sub_100004590(v19);

        (*(v8 + 8))(v13, v39);
LABEL_12:
        [v15 start];

        v36 = [objc_opt_self() shared];
        aBlock[4] = sub_100334E00;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10022AF0C;
        aBlock[3] = &unk_1004EEDB0;
        v37 = _Block_copy(aBlock);
        [v36 saveWithCompletion:v37];
        _Block_release(v37);

        return;
      }

      v34 = *(v8 + 8);
      v35 = v13;
    }

    else
    {
      v15 = [a1 createNewActivity];
      [v15 setBackgroundTimeTrackingEnabled:1];
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      static OS_os_log.classKit.getter();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        aBlock[0] = v28;
        *v27 = 136315138;
        v29 = Array.description.getter();
        v39 = v7;
        v30 = v29;
        v32 = v31;

        v33 = sub_1000153E0(v30, v32, aBlock);

        *(v27 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v25, v26, "Starting activity for episode - %s", v27, 0xCu);
        sub_100004590(v28);

        (*(v8 + 8))(v10, v39);
        goto LABEL_12;
      }

      v34 = *(v8 + 8);
      v35 = v10;
    }

    v34(v35, v7);
    goto LABEL_12;
  }
}

void sub_100336688(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v44 - v14;
  v16 = [a1 currentActivity];
  if (v16)
  {
    v47 = v16;
    if ([v16 isStarted])
    {
      v46 = v10;
      swift_beginAccess();

      sub_100168088(&unk_10057E2F0, &qword_1004059D0);
      Synchronized.wrappedValue.getter();

      if ((v49 & 1) == 0 && (a4 & 1) == 0)
      {
        v17 = v48;
        v50 = a3;
        v51 = 0;
        swift_beginAccess();
        sub_100168088(&unk_100580430, &qword_10040DFE8);
        Synchronized.wrappedValue.setter();
        swift_endAccess();
        sub_100337A18(a5, a1, *&v17, *&a3);
      }

      v18 = sub_10033551C();
      if (v18)
      {
        v19 = v18;
        [a5 duration];
        if (v20 <= 120.0 || ([v47 progress], v21 >= 0.9))
        {
          [a5 duration];
          if (v22 > 120.0 || ([v47 progress], v23 >= 0.8))
          {
            v24 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
            static OS_os_log.classKit.getter();

            v25 = Logger.logObject.getter();
            v26 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              v45 = v24;
              v28 = v27;
              v44 = swift_slowAlloc();
              v48 = v44;
              *v28 = 136315138;
              v29 = Array.description.getter();
              v31 = sub_1000153E0(v29, v30, &v48);

              *(v28 + 4) = v31;
              _os_log_impl(&_mh_execute_header, v25, v26, "Setting progress to 100%%%% for episode - %s", v28, 0xCu);
              sub_100004590(v44);
            }

            v32 = *(v46 + 8);
            v32(v15, v9);
            [v47 addProgressRangeFromStart:0.0 toEnd:1.0];
            static OS_os_log.classKit.getter();

            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              v45 = v32;
              v36 = v35;
              v37 = swift_slowAlloc();
              v48 = v37;
              *v36 = 136315138;
              v38 = Array.description.getter();
              v40 = sub_1000153E0(v38, v39, &v48);

              *(v36 + 4) = v40;
              _os_log_impl(&_mh_execute_header, v33, v34, "Completing activities for episode - %s", v36, 0xCu);
              sub_100004590(v37);

              v45(v12, v9);
            }

            else
            {

              v32(v12, v9);
            }

            v42 = [objc_opt_self() shared];
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v42 completeAllAssignedActivitiesMatching:isa];
          }
        }

        sub_100338124(v19, v47, a1);
      }

      else
      {
      }
    }

    else
    {
      v41 = v47;
    }
  }
}

void sub_100336C34()
{
  v1 = v0;
  v2 = sub_100168088(&unk_10057DE20, &qword_100402F88);
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  __chkstk_darwin();
  v30 = &v28 - v4;
  v5 = sub_100168088(&qword_100580440, &qword_10040D120);
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  __chkstk_darwin();
  v28 = &v28 - v7;
  v8 = sub_100168088(&qword_100580448, &qword_10040DFF0);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  __chkstk_darwin();
  v29 = &v28 - v10;
  v11 = sub_100168088(&unk_100580450, &qword_100402F80);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v28 - v13;
  v15 = sub_100168088(&unk_10057A020, &unk_1004063B0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v28 - v17;
  dispatch thunk of PlaybackController.$isPlaying.getter();
  sub_100009FAC(&unk_100580460, &unk_100580450, &qword_100402F80, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.removeDuplicates()();
  (*(v12 + 8))(v14, v11);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&qword_10057A080, &unk_10057A020, &unk_1004063B0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  Publisher<>.sink(receiveValue:)();

  (*(v16 + 8))(v18, v15);
  swift_beginAccess();
  sub_100168088(&unk_1005783F0, &unk_1004031C0);
  sub_100009FAC(&unk_10057A070, &unk_1005783F0, &unk_1004031C0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v19 = v28;
  dispatch thunk of PlaybackController.$durationSnapshot.getter();
  v20 = v30;
  dispatch thunk of PlaybackController.$nowPlayingItem.getter();
  sub_100009FAC(&unk_100580470, &qword_100580440, &qword_10040D120, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100009FAC(&qword_100575E78, &unk_10057DE20, &qword_100402F88, &protocol conformance descriptor for Published<A>.Publisher);
  v21 = v29;
  v22 = v31;
  v23 = v33;
  Publisher.combineLatest<A>(_:)();
  (*(v34 + 8))(v20, v23);
  (*(v32 + 8))(v19, v22);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1003380BC;
  *(v25 + 24) = v24;
  sub_100009FAC(&qword_100580480, &qword_100580448, &qword_10040DFF0, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v26 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v21, v26);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v1 selector:"applicationWillTerminate:" name:MTApplicationWillTerminateNotification object:0];
}

void sub_1003372C0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;

    dispatch thunk of PlaybackController.durationSnapshot.getter();

    if (v33 != 2)
    {
      v10 = v29;
      v11 = v30;
      v12 = v31;
      v13 = v32;
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;

        v16 = dispatch thunk of PlaybackController.nowPlayingItem.getter();

        if (v16)
        {
          Date.init()();
          Date.timeIntervalSinceReferenceDate.getter();
          v18 = v17;
          (*(v4 + 8))(v6, v3);
          if (v12 + (v18 - v10) * v13 >= v11)
          {
            v19 = v11;
          }

          else
          {
            v19 = v12 + (v18 - v10) * v13;
          }

          swift_beginAccess();
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = fmax(v19, 0.0);
            v23 = swift_allocObject();
            if (v7)
            {
              *(v23 + 16) = v22;
              *(v23 + 24) = 0;
              *(v23 + 32) = v21;
              *(v23 + 40) = v16;
              v24 = v21;
              v25 = v16;
              v26 = sub_100338114;
            }

            else
            {
              *(v23 + 16) = v21;
              *(v23 + 24) = v22;
              *(v23 + 32) = 0;
              *(v23 + 40) = v16;
              v27 = v21;
              v25 = v16;
              v26 = sub_100338110;
            }

            sub_100335018(v25, v26, v23);
          }

          else
          {
            v21 = v16;
          }
        }
      }
    }
  }
}

void sub_10033756C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) != 2 && a2 != 0)
  {
    v10 = *a1;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = a2;
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = v12 + (v16 - v10) * v13;
      if (v19 >= v11)
      {
        v19 = v11;
      }

      sub_1003376DC(v14, fmax(v19, 0.0));
    }
  }
}

uint64_t sub_1003376DC(void *a1, double a2)
{
  swift_beginAccess();

  Synchronized.wrappedValue.getter();

  if (a2 - v9 > 30.0)
  {
    swift_beginAccess();
    sub_100168088(&unk_100580420, &qword_10040DFE0);
    Synchronized.wrappedValue.setter();
    swift_endAccess();
    swift_beginAccess();

    sub_100168088(&unk_10057E2F0, &qword_1004059D0);
    Synchronized.wrappedValue.getter();

    if ((v8 & 1) == 0)
    {
      swift_beginAccess();
      sub_100168088(&unk_100580430, &qword_10040DFE8);
      Synchronized.wrappedValue.setter();
      swift_endAccess();
      v6 = swift_allocObject();
      *(v6 + 16) = v2;
      *(v6 + 24) = a1;
      *(v6 + 32) = a2;
      *(v6 + 40) = a2;
      v7 = v2;
      sub_100335018(a1, sub_100337A0C, v6);
    }
  }

  return result;
}

id sub_10033793C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassKitManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100337A18(void *a1, void *a2, double a3, double a4)
{
  v8 = type metadata accessor for Logger();
  v60 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v59 - v11;
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v59 - v14;
  v16 = [a1 podcast];
  if (v16)
  {
    v17 = v16;
    v18 = MPModelObject.adamID.getter();
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      v21 = MPModelObject.adamID.getter();
      if ((v22 & 1) == 0)
      {
        v23 = v21;
        v59 = v8;
        sub_100168088(&qword_100574690, &unk_100401BA0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1004007C0;
        v61 = v18;
        sub_1000366D8();
        *(v24 + 32) = BinaryInteger.description.getter();
        *(v24 + 40) = v25;
        v61 = v23;
        *(v24 + 48) = BinaryInteger.description.getter();
        *(v24 + 56) = v26;
        v27 = [a2 currentActivity];
        if (v27)
        {
          v28 = v27;
          [a1 duration];
          v30 = fmin(a3 / v29, 1.0);
          if (v30 < 0.0)
          {
            v31 = 0.0;
          }

          else
          {
            v31 = v30;
          }

          [a1 duration];
          v33 = fmin(a4 / v32, 1.0);
          if (v33 < 0.0)
          {
            v34 = 0.0;
          }

          else
          {
            v34 = v33;
          }

          if (v31 == v34)
          {

            sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
            static OS_os_log.classKit.getter();
            v35 = Logger.logObject.getter();
            v36 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v35, v36, "Skipping range with equal start and stop times", v37, 2u);
            }

            (*(v60 + 8))(v10, v59);
          }

          else
          {
            v61 = 0;
            v62 = 0xE000000000000000;
            v38._countAndFlagsBits = 91;
            v38._object = 0xE100000000000000;
            String.append(_:)(v38);
            Double.write<A>(to:)();
            v39._countAndFlagsBits = 8236;
            v39._object = 0xE200000000000000;
            String.append(_:)(v39);
            Double.write<A>(to:)();
            v40._countAndFlagsBits = 93;
            v40._object = 0xE100000000000000;
            String.append(_:)(v40);
            v42 = v61;
            v41 = v62;
            sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
            if (v31 >= v34)
            {
              static OS_os_log.classKit.getter();

              v51 = Logger.logObject.getter();
              v52 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                v61 = swift_slowAlloc();
                *v53 = 136315394;
                v54 = sub_1000153E0(v42, v41, &v61);

                *(v53 + 4) = v54;
                *(v53 + 12) = 2080;
                v55 = Array.description.getter();
                v57 = v56;

                v58 = sub_1000153E0(v55, v57, &v61);

                *(v53 + 14) = v58;
                _os_log_impl(&_mh_execute_header, v51, v52, "Unable to add progress range %s to activity for episode - %s", v53, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
              }

              (*(v60 + 8))(v12, v59);
            }

            else
            {
              static OS_os_log.classKit.getter();

              v43 = Logger.logObject.getter();
              v44 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                v61 = swift_slowAlloc();
                *v45 = 136315394;
                v46 = sub_1000153E0(v42, v41, &v61);

                *(v45 + 4) = v46;
                *(v45 + 12) = 2080;
                v47 = Array.description.getter();
                v49 = v48;

                v50 = sub_1000153E0(v47, v49, &v61);

                *(v45 + 14) = v50;
                _os_log_impl(&_mh_execute_header, v43, v44, "Adding progress range %s to activity for episode - %s", v45, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
              }

              (*(v60 + 8))(v15, v59);
              [v28 addProgressRangeFromStart:v31 toEnd:v34];
            }
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1003380C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v4 = *(a1 + 56);
  v7 = *(a1 + 48);
  return v2(v6, v4);
}

void sub_100338124(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.classKit.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a2;
    v12 = a3;
    v13 = v11;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = Array.description.getter();
    v17 = sub_1000153E0(v15, v16, aBlock);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Stopping activity for episode - %s", v13, 0xCu);
    sub_100004590(v14);

    a3 = v12;
    a2 = v21;
  }

  (*(v6 + 8))(v8, v5);
  [a2 stop];
  [a3 resignActive];
  v18 = [objc_opt_self() shared];
  aBlock[4] = sub_100334E00;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10022AF0C;
  aBlock[3] = &unk_1004EEDD8;
  v19 = _Block_copy(aBlock);
  [v18 saveWithCompletion:v19];
  _Block_release(v19);
}

void sub_100338458()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
  if (v5)
  {
    v18[0] = v5;
    dispatch thunk of PlaybackController.durationSnapshot.getter();
    if (v20 == 2)
    {
      v6 = v18[0];
    }

    else
    {
      v7 = v19;
      v9 = v18[4];
      v8 = v18[5];
      v10 = v18[1];
      Date.init()();
      Date.timeIntervalSinceReferenceDate.getter();
      v12 = v11;
      (*(v2 + 8))(v4, v1);
      v13 = *&v8 + (v12 - *&v10) * v7;
      if (v13 >= *&v9)
      {
        v13 = *&v9;
      }

      v14 = fmax(v13, 0.0);
      v15 = swift_allocObject();
      *(v15 + 16) = v0;
      *(v15 + 24) = v14;
      *(v15 + 32) = 0;
      *(v15 + 40) = v18[0];
      v16 = v0;
      v17 = v18[0];
      sub_100335018(v17, sub_100338678, v15);
    }
  }
}

uint64_t sub_10033867C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_10001BD54(a1, v4, v5, v6);
}

uint64_t sub_100338730(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = swift_task_alloc();
    *(v3 + 32) = v5;
    *v5 = v4;
    v5[1] = sub_10033889C;

    return RestrictionsController.isExplicitContentRestrictedByDefaultInCurrentStorefront()();
  }

  else
  {
    v6 = *(v4 + 8);

    return v6(0);
  }
}

uint64_t sub_10033889C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_100338998(uint64_t a1)
{
  v28 = a1;
  v29 = type metadata accessor for Logger();
  v1 = *(v29 - 8);
  __chkstk_darwin();
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v31._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000016;
  v6._object = 0x8000000100470830;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v31);

  v8 = [v4 mainBundle];
  v32._object = 0xE000000000000000;
  v9._object = 0x8000000100470850;
  v9._countAndFlagsBits = 0xD000000000000014;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v32);

  v11 = [v4 mainBundle];
  v33._object = 0xE000000000000000;
  v12._countAndFlagsBits = 19279;
  v12._object = 0xE200000000000000;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v33);

  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() actionWithTitle:v17 style:0 handler:0];

  [v16 addAction:v18];
  [v16 setPreferredAction:v18];
  v19 = [objc_opt_self() sharedApplication];
  v20 = [v19 delegate];

  if (v20)
  {
    if ([v20 respondsToSelector:"window"])
    {
      v21 = [v20 window];
      swift_unknownObjectRelease();
      if (v21)
      {
        v22 = [v21 rootViewController];

        if (v22)
        {
          v23 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_100339034;
          aBlock[5] = v23;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10000F038;
          aBlock[3] = &unk_1004EF080;
          v24 = _Block_copy(aBlock);

          [v22 presentViewController:v16 animated:1 completion:v24];
          _Block_release(v24);

          return;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  static Logger.restrictions.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to present launch restrictions alert due to missing root view controller", v27, 2u);
  }

  else
  {
  }

  (*(v1 + 8))(v3, v29);
}

void sub_100338E74(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() standardUserDefaults];
    sub_10001C0C0();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 integerForKey:v4];

    if (__OFADD__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v7 = String._bridgeToObjectiveC()();

      [v3 setValue:isa forKey:v7];
    }
  }
}

uint64_t sub_100338F78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C51C;

  return sub_10001BD54(a1, v4, v5, v6);
}

id MTPlayerItem.init(podcastEpisode:podcast:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPodcastEpisode:a1 podcast:a2];

  return v4;
}

{
  v3 = v2;
  sub_100168088(&qword_100574E20, &unk_1004023B0);
  __chkstk_darwin();
  v318 = &v293 - v6;
  v330 = sub_100168088(&qword_100580488, " r\b");
  __chkstk_darwin();
  v317 = &v293 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v329 = &v293 - v8;
  __chkstk_darwin();
  v10 = &v293 - v9;
  v331 = type metadata accessor for URL();
  v322 = *(v331 - 8);
  __chkstk_darwin();
  v298 = &v293 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PodcastEpisodeAttributes.MediaKind();
  v327 = *(v12 - 8);
  v328 = v12;
  __chkstk_darwin();
  v316 = &v293 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v326 = &v293 - v14;
  v315 = type metadata accessor for PodcastEpisodeAttributes.EpisodeType();
  v314 = *(v315 - 8);
  __chkstk_darwin();
  v313 = &v293 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v323 = *(v16 - 8);
  v324 = v16;
  __chkstk_darwin();
  v297 = &v293 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PodcastEpisodeAttributes.ChannelKind();
  v312 = *(v18 - 8);
  __chkstk_darwin();
  v20 = &v293 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v311 = &v293 - v21;
  v301 = type metadata accessor for PodcastAttributes.DisplayType();
  v300 = *(v301 - 8);
  __chkstk_darwin();
  v299 = &v293 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v309 = &v293 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v310 = &v293 - v24;
  __chkstk_darwin();
  v26 = &v293 - v25;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v302 = &v293 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v305 = &v293 - v28;
  __chkstk_darwin();
  v296 = &v293 - v29;
  __chkstk_darwin();
  v31 = &v293 - v30;
  __chkstk_darwin();
  v333 = &v293 - v32;
  v321 = type metadata accessor for PriceType();
  v320 = *(v321 - 8);
  __chkstk_darwin();
  v335 = &v293 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v34 = a2;
    v35 = a2;
    v36 = ServerPodcastBase.relationships.getter();

    if (!v36)
    {
      v332 = 0;
LABEL_13:
      LODWORD(v325) = 1;
      goto LABEL_14;
    }

    v37 = PodcastRelationships.channel.getter();

    if (!v37)
    {
LABEL_12:
      v332 = 0;
      goto LABEL_13;
    }

    v38 = PodcastChannelRelationshipContainer.data.getter();

    if (v38 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_6:
        if ((v38 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_211;
          }

          v40 = *(v38 + 32);
        }

        v41 = v40;

        if (v41)
        {
          v42 = v41;
          ServerChannel.attributes.getter();
          v332 = v42;

          ChannelAttributes.isSubscribed.getter();

          LODWORD(v325) = 0;
LABEL_14:
          a2 = v34;
          goto LABEL_18;
        }

        goto LABEL_12;
      }
    }

    else
    {
      result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_6;
      }
    }

    a2 = v34;
  }

  v332 = 0;
  LODWORD(v325) = 1;
LABEL_18:
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)();
  if (!v43)
  {
    result = _MTLogCategoryPlayback();
    if (result)
    {
      v52 = result;
      v53 = static os_log_type_t.error.getter();
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100400790;
      v55 = ServerPodcastEpisode.id.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = sub_100022C18();
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      os_log(_:dso:log:type:_:)("No stream URL for episode %@", 28, 2, &_mh_execute_header, v52, v53, v54);

      (*(v320 + 8))(v335, v321);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return 0;
    }

    goto LABEL_213;
  }

  *&v319 = v44;
  LODWORD(v334) = v45;
  v304 = v43;
  URL.init(string:)();
  v306 = a2;
  v46 = dispatch thunk of ServerPodcastEpisode.relationships.getter();
  if (v46)
  {
    v47 = v46;
    v48 = a2;
    v49 = PodcastEpisodeRelationships.podcast.getter();

    if (v49)
    {
      v50 = PodcastRelationshipContainer.data.getter();

      if (v50 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        a2 = v48;
        if (result)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        a2 = v48;
        if (result)
        {
LABEL_23:
          if ((v50 & 0xC000000000000001) != 0)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_26;
          }

          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v51 = *(v50 + 32);
LABEL_26:
            a2 = v51;

            goto LABEL_32;
          }

LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
          goto LABEL_214;
        }
      }
    }

    else
    {
      a2 = v48;
    }
  }

LABEL_32:
  v336 = a2;
  sub_100010430(v333, v31, &qword_100574040, &unk_100400AD0);
  v59 = v322;
  v60 = *(v322 + 48);
  v61 = v331;
  v308 = v322 + 48;
  v307 = v60;
  if (v60(v31, 1, v331) == 1)
  {
    v63 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v62);
    v63 = v64;
    (*(v59 + 8))(v31, v61);
  }

  v65 = [v3 initWithUrl:v63];

  v66 = v65;
  ServerPodcastEpisode.id.getter();
  v67 = String._bridgeToObjectiveC()();

  v68 = [v67 longLongValue];

  v337 = v66;
  [v66 setEpisodeStoreId:v68];
  ServerPodcastEpisode.attributes.getter();
  PodcastEpisodeAttributes.name.getter();
  v70 = v69;

  if (v70)
  {
    v71 = String._bridgeToObjectiveC()();
  }

  else
  {
    v71 = 0;
  }

  [v337 setTitle:v71];

  ServerPodcastEpisode.attributes.getter();
  PodcastEpisodeAttributes.guid.getter();
  v73 = v72;

  if (v73)
  {
    v74 = String._bridgeToObjectiveC()();
  }

  else
  {
    v74 = 0;
  }

  [v337 setEpisodeGuid:v74];

  ServerPodcastEpisode.attributes.getter();
  v75 = PodcastEpisodeAttributes.description.getter();

  if (v75)
  {
    ServerDescription.standard.getter();
    v77 = v76;

    if (v77)
    {
      v75 = String._bridgeToObjectiveC()();
    }

    else
    {
      v75 = 0;
    }
  }

  [v337 setSubtitle:v75];

  if (!v336 || !ServerPodcastBase.attributes.getter() || (PodcastAttributes.name.getter(), v79 = v78, , !v79))
  {
  }

  v80 = String._bridgeToObjectiveC()();

  [v337 setAuthor:v80];

  ServerPodcastEpisode.attributes.getter();
  PodcastEpisodeAttributes.releaseDateResolved.getter();

  v82 = v323;
  v81 = v324;
  v83 = v323 + 48;
  v84 = *(v323 + 48);
  v85 = v84(v26, 1, v324);
  v295 = v83;
  v294 = v84;
  if (v85 == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v82 + 8))(v26, v81);
  }

  [v337 setPubDate:isa];

  v340 = ServerPodcastEpisode.attributes.getter();
  type metadata accessor for PodcastEpisodeAttributes();
  MediaAttributes.contentRatingResolved.getter();

  v87 = ContentRating.rawValue.getter();
  v89 = v88;
  v90 = 1;
  if (v87 != ContentRating.rawValue.getter() || v89 != v91)
  {
    v90 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v92 = v337;
  [v337 setIsExplicit:v90 & 1];
  PriceType.rawValue.getter();
  v93 = String._bridgeToObjectiveC()();

  [v92 setPriceType:v93];

  v94 = v336;
  if (v336)
  {
    v94 = ServerPodcastBase.attributes.getter();
    if (v94)
    {
      v95 = v299;
      PodcastAttributes.displayTypeResolved.getter();

      PodcastAttributes.DisplayType.rawValue.getter();
      (*(v300 + 8))(v95, v301);
      v94 = String._bridgeToObjectiveC()();
    }
  }

  [v92 setPodcastDisplayType:v94];

  v96 = *&v319 / 1000.0;
  if (v334)
  {
    v96 = 0.0;
  }

  [v92 setDuration:v96];
  v319 = v10;
  v303 = v20;
  v97 = v18;
  if (v325)
  {
    v98 = 0;
  }

  else
  {
    v99 = v332;
    ServerChannel.attributes.getter();

    v98 = ChannelAttributes.isSubscribed.getter();
  }

  [v92 setPaidSubscriptionActive:v98 & 1];
  v334 = a1;
  ServerPodcastEpisode.attributes.getter();
  v100 = PodcastEpisodeAttributes.channelKind.getter();
  v102 = v101;

  v103 = v312;
  v104 = *(v312 + 104);
  v105 = v311;
  v104(v311, enum case for PodcastEpisodeAttributes.ChannelKind.music(_:), v18);
  v106 = PodcastEpisodeAttributes.ChannelKind.rawValue.getter();
  v108 = v107;
  v109 = *(v103 + 8);
  v109(v105, v18);
  if (v102)
  {
    if (v100 == v106 && v102 == v108)
    {
      v110 = 1;
    }

    else
    {
      v110 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v111 = v336;
  }

  else
  {
    v110 = 0;
    v111 = v336;
  }

  [v337 setIsAppleMusicEpisode:v110 & 1];
  ServerPodcastEpisode.attributes.getter();
  v112 = PodcastEpisodeAttributes.channelKind.getter();
  v114 = v113;

  v115 = v303;
  v104(v303, enum case for PodcastEpisodeAttributes.ChannelKind.news(_:), v18);
  v116 = PodcastEpisodeAttributes.ChannelKind.rawValue.getter();
  v118 = v117;
  v109(v115, v97);
  if (v114)
  {
    v119 = v316;
    if (v112 == v116 && v114 == v118)
    {
      v120 = 1;
    }

    else
    {
      v120 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v58 = v337;
    v121 = v331;
  }

  else
  {
    v120 = 0;
    v58 = v337;
    v121 = v331;
    v119 = v316;
  }

  [v58 setIsAppleNewsEpisode:v120 & 1];
  if ((v325 & 1) == 0)
  {
    v122 = v332;
    v123 = ServerChannel.id.getter();
    v125 = v124;

    v126 = sub_1003390A0(v123, v125);
    if ((v127 & 1) == 0)
    {
      v128 = v119;
      [v58 setChannelStoreId:v126];
      v129 = v296;
      ServerPodcastEpisode.alternatePaidURL()();
      if (v307(v129, 1, v121) == 1)
      {
        v131 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v130);
        v131 = v132;
        (*(v322 + 8))(v129, v121);
      }

      [v58 setAlternatePaidURL:v131];

      v119 = v128;
    }
  }

  v133 = ServerPodcastEpisode.id.getter();
  v135 = sub_1003390A0(v133, v134);
  if (v136)
  {
    v137 = 0;
  }

  else
  {
    v137 = v135;
  }

  [v58 setEpisodeStoreId:v137];
  if (v111)
  {
    v138 = ServerPodcastBase.id.getter();
  }

  else
  {
    v139 = 0xE100000000000000;
    v138 = 48;
  }

  v140 = sub_1003390A0(v138, v139);
  if (v141)
  {
    v142 = 0;
  }

  else
  {
    v142 = v140;
  }

  [v58 setPodcastStoreId:v142];
  ServerPodcastEpisode.attributes.getter();
  v143 = PodcastEpisodeAttributes.seasonNumber.getter();
  v145 = v144;

  if (v145)
  {
    v143 = 0;
  }

  ServerPodcastEpisode.attributes.getter();
  v146 = PodcastEpisodeAttributes.episodeNumber.getter();
  v148 = v147;

  if (v148)
  {
    v146 = 0;
  }

  if (!v111)
  {
    goto LABEL_105;
  }

  v149 = v111;
  if (!ServerPodcastBase.attributes.getter())
  {
    goto LABEL_104;
  }

  v150 = PodcastAttributes.isSerialShowTypeInFeed.getter();

  if ((v150 & 1) == 0)
  {
    goto LABEL_104;
  }

  if (v143 > 0)
  {
    v151 = objc_opt_self();
    v325 = v337;
    v152 = [v151 mainBundle];
    v292 = 0xE000000000000000;
    if (v146 < 1)
    {
      v287._object = 0x8000000100466250;
      v287._countAndFlagsBits = 0xD000000000000014;
      v288._countAndFlagsBits = 0;
      v288._object = 0xE000000000000000;
      v289 = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v287, 0, v152, v288, *(&v292 - 1));

      sub_100168088(&unk_100574670, &qword_100400AB0);
      v290 = swift_allocObject();
      *(v290 + 16) = xmmword_100400790;
      *(v290 + 56) = &type metadata for Int;
      *(v290 + 64) = &protocol witness table for Int;
      *(v290 + 32) = v143;
      static String.localizedStringWithFormat(_:_:)();

      v291 = String._bridgeToObjectiveC()();

      [v325 setAlbum:v291];
    }

    else
    {
      v153._countAndFlagsBits = 0xD000000000000020;
      v153._object = 0x8000000100470910;
      v154._countAndFlagsBits = 0;
      v154._object = 0xE000000000000000;
      v155 = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v153, 0, v152, v154, *(&v292 - 1));

      sub_100168088(&unk_100574670, &qword_100400AB0);
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_1004007C0;
      *(v156 + 56) = &type metadata for Int;
      *(v156 + 64) = &protocol witness table for Int;
      *(v156 + 32) = v143;
      *(v156 + 96) = &type metadata for Int;
      *(v156 + 104) = &protocol witness table for Int;
      *(v156 + 72) = v146;
      static String.localizedStringWithFormat(_:_:)();

      v157 = String._bridgeToObjectiveC()();

      [v325 setAlbum:v157];
    }

    v167 = v334;
    v164 = v336;
    v58 = v337;
    v165 = v331;
    goto LABEL_204;
  }

  if (v146 <= 0)
  {
LABEL_104:

    v58 = v337;
LABEL_105:
    v168 = v146;
    v169 = v143;
    v170 = v119;
    v171 = [v58 pubDate];
    v172 = v121;
    if (v171)
    {
      v173 = v309;
      v174 = v171;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v175 = v173;
      v176 = 0;
      v167 = v334;
    }

    else
    {
      v176 = 1;
      v167 = v334;
      v175 = v309;
    }

    v178 = v323;
    v177 = v324;
    (*(v323 + 56))(v175, v176, 1, v324);
    v179 = v175;
    v180 = v310;
    sub_100010498(v179, v310, &qword_100574760, &unk_1003FEB60);
    if (v294(v180, 1, v177))
    {
      sub_100009104(v180, &qword_100574760, &unk_1003FEB60);
      v181 = 0;
    }

    else
    {
      v182 = v297;
      (*(v178 + 16))(v297, v180, v177);
      sub_100009104(v180, &qword_100574760, &unk_1003FEB60);
      Date.verboseDisplayStringWithoutTime()();
      (*(v178 + 8))(v182, v177);
      v181 = String._bridgeToObjectiveC()();
      v167 = v334;
    }

    v183 = v318;
    v165 = v172;
    [v58 setAlbum:v181];

    v184 = v58;
    v119 = v170;
    v143 = v169;
    v146 = v168;
    v164 = v336;
    goto LABEL_112;
  }

  v158 = objc_opt_self();
  v159 = v337;
  v325 = v337;
  v160 = [v158 mainBundle];
  v342._object = 0xE000000000000000;
  v161._countAndFlagsBits = 0xD000000000000015;
  v161._object = 0x80000001004665C0;
  v162._countAndFlagsBits = 0;
  v162._object = 0xE000000000000000;
  v342._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v161, 0, v160, v162, v342);

  sub_100168088(&unk_100574670, &qword_100400AB0);
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_100400790;
  *(v163 + 56) = &type metadata for Int;
  *(v163 + 64) = &protocol witness table for Int;
  *(v163 + 32) = v146;
  static String.localizedStringWithFormat(_:_:)();
  v164 = v336;

  v165 = v331;
  v166 = String._bridgeToObjectiveC()();

  [v325 setAlbum:v166];

  v58 = v159;
  v167 = v334;
LABEL_204:
  v183 = v318;
LABEL_112:
  [v58 setSeasonNumber:v143];
  [v58 setEpisodeNumber:v146];
  if (v164 && ServerPodcastBase.attributes.getter())
  {
    v185 = PodcastAttributes.isSerialShowTypeInFeed.getter();
  }

  else
  {
    v185 = 0;
  }

  [v58 setPodcastIsSerial:v185 & 1];

  ServerPodcastEpisode.attributes.getter();
  v186 = v313;
  PodcastEpisodeAttributes.episodeType.getter();

  v187 = v314;
  v188 = v315;
  v189 = (*(v314 + 88))(v186, v315);
  if (v189 == enum case for PodcastEpisodeAttributes.EpisodeType.full(_:))
  {
    [v58 setEpisodeType:0];
  }

  else if (v189 == enum case for PodcastEpisodeAttributes.EpisodeType.trailer(_:))
  {
    [v58 setEpisodeType:1];
  }

  else if (v189 == enum case for PodcastEpisodeAttributes.EpisodeType.bonus(_:))
  {
    [v58 setEpisodeType:2];
  }

  else
  {
    [v58 setEpisodeType:0];
    (*(v187 + 8))(v186, v188);
  }

  ServerPodcastEpisode.attributes.getter();
  v190 = PodcastEpisodeAttributes.description.getter();

  if (v190)
  {
    ServerDescription.standard.getter();
    v192 = v191;

    if (v192)
    {
      v190 = String._bridgeToObjectiveC()();
    }

    else
    {
      v190 = 0;
    }
  }

  v193 = v183;
  [v58 setItemDescription:v190];

  ServerPodcastEpisode.attributes.getter();
  PodcastEpisodeAttributes.mediaKindResolved.getter();

  v194.n128_f64[0] = (*(v327 + 104))(v119, enum case for PodcastEpisodeAttributes.MediaKind.video(_:), v328);
  sub_10033BA54(v194);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v340 == v338 && v341 == v339)
  {
    v195 = v165;
    v196 = 1;
  }

  else
  {
    v195 = v165;
    v196 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v197 = *(v327 + 8);
  v198 = v119;
  v199 = v328;
  v197(v198, v328);
  v197(v326, v199);

  [v58 setIsVideo:v196 & 1];

  ServerPodcastEpisode.attributes.getter();
  PodcastEpisodeAttributes.url.getter();
  v201 = v200;

  v202 = v195;
  v203 = v193;
  v204 = v336;
  if (!v201)
  {
LABEL_134:
    if (!v204)
    {
      goto LABEL_139;
    }

    goto LABEL_137;
  }

  v205 = v305;
  URL.init(string:)();

  if (v307(v205, 1, v202) == 1)
  {
    sub_100009104(v205, &qword_100574040, &unk_100400AD0);
    goto LABEL_134;
  }

  v206 = v322;
  v207 = v298;
  (*(v322 + 32))(v298, v205, v202);
  URL._bridgeToObjectiveC()(v208);
  v210 = v209;
  [v58 setEpisodeShareUrl:v209];

  (*(v206 + 8))(v207, v202);
  if (!v204)
  {
LABEL_139:

    goto LABEL_140;
  }

LABEL_137:
  if (!ServerPodcastBase.attributes.getter())
  {
    goto LABEL_139;
  }

  PodcastAttributes.feedUrl.getter();
  v212 = v211;

  if (!v212)
  {
    goto LABEL_139;
  }

LABEL_140:
  v213 = String._bridgeToObjectiveC()();

  [v58 setPodcastFeedUrl:v213];

  if (v204)
  {
    ServerPodcastBase.id.getter();
    v214 = String._bridgeToObjectiveC()();

    v215 = [v214 longLongValue];

    [v58 setPodcastStoreId:v215];
    if (ServerPodcastBase.attributes.getter())
    {
      v216 = PodcastAttributes.subscribable.getter();

      v217 = (v216 != 2) & (v216 ^ 1u);
      goto LABEL_145;
    }
  }

  else
  {
    v218 = String._bridgeToObjectiveC()();

    v219 = [v218 longLongValue];

    [v58 setPodcastStoreId:v219];
  }

  v217 = 0;
LABEL_145:
  v220 = v319;
  [v58 setIsNotSubscribeable:v217];
  [v58 paidSubscriptionActive];
  *v220 = ServerPodcastEpisode.determineBestTranscriptMetadata(isSubscriptionActive:)();
  *(v220 + 8) = v221;
  *(v220 + 16) = v222;
  *(v220 + 24) = v223;
  v224 = v329;
  sub_100010430(v220, v329, &qword_100580488, " r\b");
  v225 = *(v224 + 8);

  if (v225)
  {
    v226 = String._bridgeToObjectiveC()();
  }

  else
  {
    v226 = 0;
  }

  v227 = v330;
  sub_100009104(v329 + *(v330 + 64), &qword_100574E20, &unk_1004023B0);
  [v58 setTranscriptIdentifier:v226];

  v228 = v317;
  sub_100010430(v220, v317, &qword_100580488, " r\b");

  sub_100010498(v228 + *(v227 + 64), v203, &qword_100574E20, &unk_1004023B0);
  v229 = type metadata accessor for MetadataSource();
  v230 = *(v229 - 8);
  if ((*(v230 + 48))(v203, 1, v229) == 1)
  {
    sub_100009104(v203, &qword_100574E20, &unk_1004023B0);
    v231 = 0;
  }

  else
  {
    MetadataSource.rawValue.getter();
    (*(v230 + 8))(v203, v229);
    v231 = String._bridgeToObjectiveC()();
  }

  [v58 setTranscriptSource:v231];

  ServerPodcastEpisode.attributes.getter();
  v232 = PodcastEpisodeAttributes.artwork.getter();

  if (v232)
  {
    ServerArtwork.url.getter();
    v234 = v233;

    if (v234)
    {
      type metadata accessor for ArtworkFormatter();
      v235 = v302;
      static ArtworkFormatter.formatArtworkUrl(string:for:cropCode:fileExtension:)();

      v237 = 0;
      if (v307(v235, 1, v202) != 1)
      {
        URL._bridgeToObjectiveC()(v236);
        v237 = v238;
        (*(v322 + 8))(v235, v202);
      }

      [v58 setArtworkUrl:v237];
    }
  }

  v239 = dispatch thunk of ServerPodcastEpisode.relationships.getter();
  if (!v239)
  {
    goto LABEL_165;
  }

  v240 = v239;
  v241 = PodcastEpisodeRelationships.playbackPosition.getter();

  if (!v241)
  {
    goto LABEL_165;
  }

  v242 = PodcastPlaybackPositionContainer.data.getter();

  if (!(v242 >> 62))
  {
    result = *((v242 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_160;
    }

    goto LABEL_206;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_206:

LABEL_165:

LABEL_166:
    ServerPodcastEpisode.attributes.getter();
    v253 = PodcastEpisodeAttributes.episodeArtwork.getter();

    if (v253)
    {
      v254 = ServerArtwork.url.getter();
      if (v255)
      {
        v331 = v254;
        v256 = ServerArtwork.width.getter();
        if (v257)
        {
          v256 = 0.0;
        }

        v330 = *&v256;
        v258 = ServerArtwork.height.getter();
        if (v259)
        {
          v258 = 0.0;
        }

        v329 = *&v258;
        v260 = ServerArtwork.bgColor.getter();
        v327 = v261;
        v328 = v260;
        ServerArtwork.textColor1.getter();
        ServerArtwork.textColor2.getter();
        ServerArtwork.textColor3.getter();
        ServerArtwork.textColor4.getter();
        v262 = objc_allocWithZone(type metadata accessor for PlayerArtwork());
        v204 = v336;
        v220 = v319;
        v58 = v337;
        v263 = PlayerArtwork.init(template:width:height:backgroundColor:primaryTextColor:secondaryTextColor:tertiaryTextColor:quaternaryTextColor:)();
        [v58 setEpisodeArtworkProperties:v263];
      }

      else
      {
      }

      v167 = v334;
    }

    if (v204)
    {
      if (ServerPodcastBase.attributes.getter())
      {
        v264 = PodcastAttributes.artwork.getter();

        if (v264)
        {
          v265 = ServerArtwork.url.getter();
          if (v266)
          {
            v331 = v265;
            v267 = ServerArtwork.width.getter();
            if (v268)
            {
              v267 = 0.0;
            }

            v330 = *&v267;
            v269 = ServerArtwork.height.getter();
            if (v270)
            {
              v269 = 0.0;
            }

            v329 = *&v269;
            v271 = ServerArtwork.bgColor.getter();
            v327 = v272;
            v328 = v271;
            ServerArtwork.textColor1.getter();
            ServerArtwork.textColor2.getter();
            ServerArtwork.textColor3.getter();
            ServerArtwork.textColor4.getter();
            v273 = objc_allocWithZone(type metadata accessor for PlayerArtwork());
            v220 = v319;
            v58 = v337;
            v204 = v336;
            v274 = PlayerArtwork.init(template:width:height:backgroundColor:primaryTextColor:secondaryTextColor:tertiaryTextColor:quaternaryTextColor:)();
            [v58 setShowArtworkProperties:v274];
          }

          else
          {
          }

          v167 = v334;
        }
      }

      if (ServerPodcastBase.attributes.getter())
      {
        v275 = PodcastAttributes.editorialArtwork.getter();

        if (v275)
        {
          v276 = PodcastEditorialArtworkContainer.podcastPageBackground.getter();

          if (v276)
          {
            v277 = ServerArtwork.url.getter();
            if (v278)
            {
              v331 = v277;
              v279 = ServerArtwork.width.getter();
              if (v280)
              {
                v279 = 0.0;
              }

              v330 = *&v279;
              v281 = ServerArtwork.height.getter();
              if (v282)
              {
                v281 = 0.0;
              }

              v329 = *&v281;
              v283 = ServerArtwork.bgColor.getter();
              v327 = v284;
              v328 = v283;
              ServerArtwork.textColor1.getter();
              ServerArtwork.textColor2.getter();
              ServerArtwork.textColor3.getter();
              ServerArtwork.textColor4.getter();
              v285 = objc_allocWithZone(type metadata accessor for PlayerArtwork());
              v220 = v319;
              v58 = v337;
              v286 = PlayerArtwork.init(template:width:height:backgroundColor:primaryTextColor:secondaryTextColor:tertiaryTextColor:quaternaryTextColor:)();
              [v58 setUberArtworkProperties:v286];
            }

            else
            {
            }

            goto LABEL_198;
          }
        }
      }
    }

    else
    {
    }

LABEL_198:
    sub_100009104(v220, &qword_100580488, " r\b");
    sub_100009104(v333, &qword_100574040, &unk_100400AD0);
    (*(v320 + 8))(v335, v321);
    return v58;
  }

LABEL_160:
  if ((v242 & 0xC000000000000001) == 0)
  {
    if (*((v242 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_163;
    }

    goto LABEL_212;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_163:

  PodcastPlaybackPositionData.attributes.getter();

  PodcastPlaybackPositionDataAttributes.positionInMilliseconds.getter();
  v244 = v243;

  v245 = v244 / 1000.0;
  [v58 setPlayhead:v245];
  result = _MTLogCategoryPlayback();
  if (result)
  {
    v246 = result;

    v247 = static os_log_type_t.default.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v248 = swift_allocObject();
    *(v248 + 16) = xmmword_1004007C0;
    *(v248 + 56) = &type metadata for Double;
    *(v248 + 64) = &protocol witness table for Double;
    *(v248 + 32) = v245;
    v249 = v334;
    v250 = ServerPodcastEpisode.id.getter();
    v252 = v251;
    *(v248 + 96) = &type metadata for String;
    *(v248 + 104) = sub_100022C18();
    *(v248 + 72) = v250;
    *(v248 + 80) = v252;
    os_log(_:dso:log:type:_:)("NetworkMediaManifest: Applying playhead of %f to episode %@", 59, 2, &_mh_execute_header, v246, v247, v248);

    v167 = v249;

    v58 = v337;
    goto LABEL_166;
  }

LABEL_214:
  __break(1u);
  return result;
}

unint64_t sub_1003390A0(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100311A9C();
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10033BA54(__n128 a1)
{
  result = qword_100580490;
  if (!qword_100580490)
  {
    type metadata accessor for PodcastEpisodeAttributes.MediaKind();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580490);
  }

  return result;
}

unint64_t sub_10033BB08(void *a1)
{
  v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  v3 = [objc_opt_self() predicateForDerivedEntitlementStateEntitled];
  [v2 setPredicate:v3];

  [v2 setReturnsObjectsAsFaults:0];
  [v2 setFetchBatchSize:200];
  sub_10033BE20();
  result = NSManagedObjectContext.fetch<A>(_:)();
  v9 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
LABEL_14:
    }
  }

  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = (v9 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v9 + 8 * v6 + 32);
      v8 = v7;
      [v7 resolveAvailabilityDate];
      result = [v2 fetchBatchSize];
      if (!result)
      {
        break;
      }

      if (!(++v6 % result))
      {
        [a1 saveInCurrentBlock];
      }

      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10033BCEC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v5[4] = sub_1002C22AC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000F038;
  v5[3] = &unk_1004EF198;
  v3 = _Block_copy(v5);
  v4 = v1;

  [v4 performBlockAndWaitWithSave:v3];
  _Block_release(v3);
}

unint64_t sub_10033BE20()
{
  result = qword_100573660;
  if (!qword_100573660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100573660);
  }

  return result;
}

uint64_t sub_10033BE6C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100252820(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100252820(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10033C850(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_100252820(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_10033BF88(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10033BFD0(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10033CB3C(v2, *(a1 + 36), 0, a1);

  return v4;
}

void sub_10033C04C()
{
  v1 = v0;
  type metadata accessor for EpisodeMetadata(0);
  __chkstk_darwin();
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_1005817E0, qword_100410CF0);
  __chkstk_darwin();
  v5 = &aBlock - v4;
  v6 = *(v0 + OBJC_IVAR____TtC8Podcasts34FetchBatchEpisodeMetadataOperation_uuids);
  if (*(v6 + 16) == 1 && (v7 = sub_10033BFD0(*(v0 + OBJC_IVAR____TtC8Podcasts34FetchBatchEpisodeMetadataOperation_uuids)), v8))
  {
    v9 = v7;
    v10 = v8;
    sub_1003A2E48(v7, v8, v5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v11 = *v5;
      v12 = *(v5 + 1);
      v13 = v5[16];
      sub_1002178A8();
      v14 = swift_allocError();
      *v15 = v11;
      *(v15 + 8) = v12;
      *(v15 + 16) = v13;
      v16 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      if (v16)
      {
        v17 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
        v39 = sub_100168088(&qword_1005804E8, qword_10040E140);
        aBlock = v14;
        LOBYTE(v37) = 1;
        sub_1002179DC(v11, v12, v13);
        sub_100013CB4(v16, v17);
        swift_errorRetain();
        v16(&aBlock);
        sub_100037470(v16, v17);
        sub_100004590(&aBlock);
      }

      else
      {
        sub_1002179DC(v11, v12, v13);
      }

      v34 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
      v35 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
      swift_errorRetain();
      [v35 lock];
      *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v14;
      swift_errorRetain();

      [*(v1 + v34) unlock];

      sub_10003172C();
      sub_10033CB14(v11, v12, v13);
    }

    else
    {
      sub_10033C788(v5, v3);
      sub_100168088(&qword_1005804E0, &unk_10040E130);
      v26 = (sub_100168088(&qword_100572D90, &unk_1003FF350) - 8);
      v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100400790;
      v29 = (v28 + v27);
      v30 = v26[14];
      *v29 = v9;
      v29[1] = v10;
      sub_10033C7EC(v3, v29 + v30);
      v31 = sub_10016AADC(v28);
      swift_setDeallocating();
      sub_10033CA50(v29);
      swift_deallocClassInstance();
      v32 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      if (v32)
      {
        v33 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
        v39 = sub_100168088(&qword_1005804E8, qword_10040E140);
        aBlock = v31;
        LOBYTE(v37) = 0;
        sub_100013CB4(v32, v33);

        v32(&aBlock);
        sub_100037470(v32, v33);
        sub_100004590(&aBlock);
      }

      sub_10003172C();

      sub_10033CAB8(v3);
    }
  }

  else
  {
    v18 = *(v0 + OBJC_IVAR____TtC8Podcasts34FetchBatchEpisodeMetadataOperation_episodeStorage);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *(v18 + 16);

    v22 = v20(v21);

    v23 = swift_allocObject();
    v23[2] = v6;
    v23[3] = v22;
    v23[4] = v18;
    v23[5] = sub_10033C770;
    v23[6] = v19;
    v40 = sub_10033C778;
    v41 = v23;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_10000F038;
    v39 = &unk_1004EF210;
    v24 = _Block_copy(&aBlock);

    v25 = v22;
    swift_unknownObjectRetain();

    [v25 performBlock:v24];
    _Block_release(v24);
  }
}

void sub_10033C584(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v5)
    {
      v6 = *(Strong + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
      v9 = sub_100168088(&qword_1005804E8, qword_10040E140);
      v7 = a1;
      v8 = 0;
      sub_100013CB4(v5, v6);

      v5(&v7);
      sub_100037470(v5, v6);
      sub_100004590(&v7);
    }

    sub_10003172C();
  }
}

uint64_t sub_10033C68C()
{
  swift_unknownObjectRelease();
}

id sub_10033C6CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FetchBatchEpisodeMetadataOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10033C788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033C7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10033C850(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10033BE20();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10033BE20();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10033CA50(uint64_t a1)
{
  v2 = sub_100168088(&qword_100572D90, &unk_1003FF350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10033CAB8(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10033CB14(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return v3;
}

uint64_t sub_10033CB3C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10033CBC4()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_overlayViewController);
}

uint64_t sub_10033CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (v5 + *a5);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_10033CDF0(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for OSLogger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActionMetricsBehavior();
  v7 = *(v20 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB60, &unk_100409160);
  __chkstk_darwin();
  v11 = &v19 - v10;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v12 = &v2[OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_actionRunner];
  swift_beginAccess();
  if (*v12)
  {
    swift_unknownObjectRetain();
    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    v13 = type metadata accessor for TabChangeAction();
    swift_allocObject();
    v14 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    type metadata accessor for ActionRunnerOptions();

    BaseObjectGraph.__allocating_init(_:)();
    v15 = type metadata accessor for InteractionContext();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v21 = 0u;
    v22 = 0u;
    v16 = [v2 view];
    ActionRunnerOptions.withActionOrigin(context:sender:view:)();

    sub_100009104(&v21, &unk_1005783D0, &qword_1004031E0);
    sub_100009104(v11, &unk_10057BB60, &unk_100409160);
    swift_getObjectType();
    *(&v22 + 1) = v13;
    v23 = sub_10033D8B8(&qword_10057ADD0, 255, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
    *&v21 = v14;
    v17 = v20;
    (*(v7 + 104))(v9, enum case for ActionMetricsBehavior.notProcessed(_:), v20);

    ActionRunner.perform(_:withMetrics:asPartOf:)();

    swift_unknownObjectRelease();

    (*(v7 + 8))(v9, v17);
    return sub_100004590(&v21);
  }

  else
  {
    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_10033D2F8()
{
  v1 = v0;
  type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin();
  static JULoadingViewController.PresentationContext.fullCover.getter();
  v2 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v3 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v4 = OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_overlayViewController;
  v5 = *(v1 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_overlayViewController);
  static ViewControllerContainment.remove(_:)();

  v6 = *(v1 + v4);
  *(v1 + v4) = v3;
  v7 = v3;

  static ViewControllerContainment.add(_:to:frame:)();
}

uint64_t sub_10033D408()
{
  v1 = OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_overlayViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_overlayViewController);
  static ViewControllerContainment.remove(_:)();

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  return static ViewControllerContainment.add(_:to:frame:)();
}

id sub_10033D480()
{
  v1 = [v0 selectedViewController];

  return v1;
}

void (*sub_10033D4BC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = UITabBarController.selectedNavigationController.modify();
  return sub_1001A60EC;
}

void *sub_10033D530(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UITabBarController.selectedNavigationController.getter();
  if (result)
  {
    v6 = result;
    v7 = [result visibleViewController];
    if (v7 && (v13 = v7, sub_100009F1C(0, &qword_1005745E0, UIViewController_ptr), sub_100168088(&qword_100580560, &unk_10040E2E0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v15 + 1))
      {
        sub_1000109E4(&v14, v17);
LABEL_11:
        sub_1000044A0(v17, v17[3]);
        dispatch thunk of SearchPerforming.perform(searchAction:)();

        return sub_100004590(v17);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    sub_100009104(&v14, &qword_100580558, &qword_10040E2D8);
    v8 = [v6 bottomViewController];
    if (v8 && (v13 = v8, sub_100009F1C(0, &qword_1005745E0, UIViewController_ptr), sub_100168088(&qword_100580560, &unk_10040E2E0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v15 + 1))
      {
        sub_1000109E4(&v14, v17);

        goto LABEL_11;
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    sub_100009104(&v14, &qword_100580558, &qword_10040E2D8);
    static Logger.ui.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Search actions may only be performed while the SearchViewController is visible.", v11, 2u);
    }

    else
    {
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

unint64_t sub_10033D854()
{
  result = qword_100580550;
  if (!qword_100580550)
  {
    sub_100168310(&qword_100580548, &qword_10040E2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100580550);
  }

  return result;
}

uint64_t sub_10033D8B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10033D904@<D0>(unint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = URL.scheme.getter();
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = v5;
  v8 = v6;
  if (v5 == 1886680168 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0x7370747468 && v8 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

LABEL_9:

    return sub_10033E0AC(a1, a3);
  }

  if (v7 == 0x74736163646F70 && v8 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_10033DB98(a3);
    return result;
  }

  type metadata accessor for PodcastsURLScheme();
  if (static PodcastsURLScheme.schemeIdentifier.getter() == v7 && v8 == v10)
  {

    goto LABEL_22;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_22:

    sub_10033DF60(&v13);
    if (v14)
    {
      sub_100184658(&v13, a3);
      return result;
    }

    goto LABEL_9;
  }

  if (v7 != 0x646F702D736D7469 || v8 != 0xED00007374736163)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_28;
    }

LABEL_31:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

LABEL_28:

  return sub_10033E71C(a1, a3);
}

uint64_t sub_10033DB98@<X0>(uint64_t a1@<X8>)
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = URL.absoluteString.getter();
  v10 = v9;
  v11 = String.count.getter();
  v12._countAndFlagsBits = 0x3A74736163646F70;
  v12._object = 0xEC00000070747468;
  result = String.hasPrefix(_:)(v12);
  if (result)
  {
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    v14 = String.index(_:offsetBy:)();
    sub_10033FFC4(v14, v8, v10);
    v18 = v3;

    v8 = static String._fromSubstring(_:)();
    v10 = v15;
    v3 = v18;
  }

  v16._countAndFlagsBits = 0x74736163646F70;
  v16._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v16))
  {
    String.index(_:offsetBy:)();
    v23 = v8;
    v24 = v10;
    v21 = 0x74736163646F70;
    v22 = 0xE700000000000000;
    v19 = 1886680168;
    v20 = 0xE400000000000000;
    sub_10019FA64();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  }

  URL.init(string:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_100009104(v3, &qword_100574040, &unk_100400AD0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL.absoluteString.getter();
    *(a1 + 24) = type metadata accessor for TextFieldAlertAction();
    *(a1 + 32) = sub_1003440C8(&qword_100579A18, &type metadata accessor for TextFieldAlertAction, &protocol conformance descriptor for TextFieldAlertAction);
    sub_10000E680(a1);
    static TextFieldAlertAction.followShowByURL(initialText:then:)();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

double sub_10033DF60@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for PodcastsURLScheme();
  if (!static PodcastsURLScheme.commandType(for:)())
  {
    goto LABEL_12;
  }

  type metadata accessor for PodcastsURLNowPlayingCommand();
  if (swift_dynamicCastClass())
  {
    v3 = type metadata accessor for PresentNowPlayingAction();
    swift_allocObject();
    v4 = PresentNowPlayingAction.init()();
    *(a2 + 24) = v3;
    *(a2 + 32) = sub_1003440C8(&qword_100580578, &type metadata accessor for PresentNowPlayingAction, &protocol conformance descriptor for Action);

    *a2 = v4;
    return result;
  }

  type metadata accessor for PodcastsURLShowCommand();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for PodcastsURLPlayCommand();
    if (swift_dynamicCastClass())
    {
      sub_1003404F8(2u, a2);
      goto LABEL_8;
    }

LABEL_12:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_100340010(a2);
LABEL_8:

  return result;
}

double sub_10033E0AC@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin();
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = URL.pathComponents.getter();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 40;
    v35 = v10 - 1;
    v13 = _swiftEmptyArrayStorage;
    v36 = v8 + 40;
    do
    {
      v14 = (v12 + 16 * v11);
      v15 = v11;
      while (1)
      {
        if (v15 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        v2 = *(v14 - 1);
        v16 = *v14;
        v17 = v2 == 47 && v16 == 0xE100000000000000;
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        ++v15;
        v14 += 2;
        if (v10 == v15)
        {
          goto LABEL_18;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v13;
      v34 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001A7364(0, v13[2] + 1, 1);
        v13 = v41;
      }

      v20 = v13[2];
      v19 = v13[3];
      if (v20 >= v19 >> 1)
      {
        sub_1001A7364((v19 > 1), v20 + 1, 1);
        v13 = v41;
      }

      v11 = v15 + 1;
      v13[2] = v20 + 1;
      v21 = &v13[2 * v20];
      v21[4] = v2;
      v21[5] = v16;
      a1 = v34;
      v12 = v36;
    }

    while (v35 != v15);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

LABEL_18:

  v22 = v13[2];
  if (!v22 || ((v2 = v13[4], v9 = v13[5], v2 == 7824750) ? (v23 = v9 == 0xE300000000000000) : (v23 = 0), v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v2 == 0x6573776F7262 ? (v24 = v9 == 0xE600000000000000) : (v24 = 0), v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0x676F6C61746163 && v9 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
  {
    a1 = v13[2];

    if (v22)
    {
      v25 = a1 == 0;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    if (a1 >= v22 && (v26 & 1) == 0)
    {
      if (v22 <= 1)
      {
        Link.Presentation.init(rawValue:)();
        static ActionMetrics.notInstrumented.getter();
        v27 = type metadata accessor for TabChangeAction();
        swift_allocObject();
LABEL_42:
        v28 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
        *(a2 + 24) = v27;
        v29 = &qword_10057ADD0;
        v30 = &type metadata accessor for TabChangeAction;
LABEL_43:
        *(a2 + 32) = sub_1003440C8(v29, v30, &protocol conformance descriptor for Action);
        *a2 = v28;
        return result;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_59:

    if (v2 == 0x686372616573 && v9 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      Link.Presentation.init(rawValue:)();
      static ActionMetrics.notInstrumented.getter();
      v27 = type metadata accessor for TabChangeAction();
      swift_allocObject();
      goto LABEL_42;
    }

    if (v2 == 0x687475616FLL && v9 == 0xE500000000000000)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
LABEL_68:
        *(a2 + 32) = 0;
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }
    }

    (*(v37 + 16))(v39, a1, v38);
    v33 = type metadata accessor for ResumeOAuthAction();
    swift_allocObject();
    v28 = ResumeOAuthAction.init(redirectURL:)();
    *(a2 + 24) = v33;
    v29 = &unk_100580570;
    v30 = &type metadata accessor for ResumeOAuthAction;
    goto LABEL_43;
  }

LABEL_45:
  if (v2 == 1701670760 && v9 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0x6E2D6E657473696CLL && v9 == 0xEA0000000000776FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    v27 = type metadata accessor for TabChangeAction();
    swift_allocObject();
    goto LABEL_42;
  }

  if ((v2 != 0x7972617262696CLL || v9 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_59;
  }

  sub_10033EA34(v13, a2);

  return result;
}

double sub_10033E71C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v5 = v16 - v4;
  sub_100341D84(&v17);
  if (v18 || (sub_100009104(&v17, &qword_100578C20, &unk_100403D30), v6 = type metadata accessor for URL(), v7 = *(v6 - 8), (*(v7 + 16))(v5, a1, v6), (*(v7 + 56))(v5, 0, 1, v6), sub_10034299C(v5, &v17), sub_100009104(v5, &qword_100574040, &unk_100400AD0), v18))
  {
    sub_100184658(&v17, v19);
    sub_100184658(v19, a2);
    return result;
  }

  sub_100009104(&v17, &qword_100578C20, &unk_100403D30);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v10 pf_queryAsDictionary];

  if (v12)
  {
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v16[0] = 0x6E6F69746361;
    *(&v16[0] + 1) = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (!*(v13 + 16) || (v14 = sub_100202028(v19), (v15 & 1) == 0))
    {

      sub_10016BE9C(v19);
      return sub_10033E0AC(a1, a2);
    }

    sub_10001B944(*(v13 + 56) + 32 * v14, v16);
    sub_10016BE9C(v19);
    sub_10016B7CC(v16, &v17);
    sub_10001B944(&v17, v19);
    if (swift_dynamicCast())
    {
      if (v16[0] == __PAIR128__(0xE600000000000000, 0x686372616573) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1003434D0(v13, a2);

        sub_100004590(&v17);
        return result;
      }
    }

    sub_100004590(&v17);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

double sub_10033EA34@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = type metadata accessor for FlowDestinationPageHeader();
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v82 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v79 = type metadata accessor for FlowPresentationContext();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v70 - v7;
  __chkstk_darwin();
  *&v76 = &v70 - v8;
  __chkstk_darwin();
  v10 = &v70 - v9;
  __chkstk_darwin();
  v12 = &v70 - v11;
  v13 = type metadata accessor for FlowDestination();
  v77 = *(v13 - 8);
  __chkstk_darwin();
  v73 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v70 - v15;
  __chkstk_darwin();
  v18 = &v70 - v17;
  __chkstk_darwin();
  v20 = &v70 - v19;
  __chkstk_darwin();
  v22 = &v70 - v21;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v84 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[2];
  if (!v24 || (a1[4] != 0x7972617262696CLL || a1[5] != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v72 = a2;
  v70 = type metadata accessor for PopToRootAction();
  swift_allocObject();
  v83 = a1;

  v71 = PopToRootAction.init(animationBehavior:)();
  v25 = [objc_opt_self() currentTraitCollection];
  v26 = UITraitCollection.interfaceMode.getter();

  if (v26)
  {
    if (v24 != 1)
    {
      v28 = v83[6];
      v29 = v83[7];
      if ((v28 != 0x73776F6873 || v29 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v28 != 0x6465766173 || v29 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v28 != 0x64616F6C6E776F64 || v29 != 0xEA00000000006465) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v28 != 0x652D74736574616CLL || v29 != 0xEF7365646F736970))
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    goto LABEL_14;
  }

  if (v24 == 1)
  {
LABEL_14:
    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    v30 = type metadata accessor for TabChangeAction();
    swift_allocObject();
    v31 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    v32 = v72;
    *(v72 + 24) = v30;
    v32[4] = sub_1003440C8(&qword_10057ADD0, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);

LABEL_15:

    *v32 = v31;
    return result;
  }

  v34 = v83[6];
  v33 = v83[7];
  if (v34 == 0x73776F6873 && v33 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    (*(v77 + 104))(v22, enum case for FlowDestination.shows(_:), v13);
    (*(v78 + 104))(v12, enum case for FlowPresentationContext.showDetail(_:), v79);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    inited = swift_initStackObject();
    v79 = xmmword_1004007C0;
    *(inited + 16) = xmmword_1004007C0;
    v36 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v36;
    v37 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v37;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v36)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    v38 = Link.Presentation.init(rawValue:)();
    v39 = v71;
    if (v38 != v37)
    {
      Link.Presentation.init(rawValue:)();
    }

    (*(v80 + 104))(v82, enum case for FlowDestinationPageHeader.standard(_:), v81);
    static ActionMetrics.notInstrumented.getter();
    v40 = type metadata accessor for FlowAction();
    swift_allocObject();
    v41 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    sub_100168088(&unk_1005747F0, &unk_1004091D0);
    v42 = swift_allocObject();
    *(v42 + 16) = v79;
    *(v42 + 56) = v70;
    *(v42 + 64) = sub_1003440C8(&qword_10057ADB0, &type metadata accessor for PopToRootAction, &protocol conformance descriptor for Action);
    *(v42 + 32) = v39;
    *(v42 + 96) = v40;
    goto LABEL_36;
  }

  if (v34 == 0x6465766173 && v33 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v20 = 6;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 7) = 0;
    v20[64] = 10;
    (*(v77 + 104))(v20, enum case for FlowDestination.episodeList(_:), v13);
    (*(v78 + 104))(v10, enum case for FlowPresentationContext.showDetail(_:), v79);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    v43 = swift_initStackObject();
    v79 = xmmword_1004007C0;
    *(v43 + 16) = xmmword_1004007C0;
    v44 = static Link.Presentation.textFollowsTintColor.getter();
    *(v43 + 32) = v44;
    v45 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v43 + 33) = v45;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v44)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    v46 = Link.Presentation.init(rawValue:)();
    v47 = v71;
    if (v46 != v45)
    {
      Link.Presentation.init(rawValue:)();
    }

LABEL_35:
    (*(v80 + 104))(v82, enum case for FlowDestinationPageHeader.standard(_:), v81);
    static ActionMetrics.notInstrumented.getter();
    v48 = type metadata accessor for FlowAction();
    swift_allocObject();
    v41 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    sub_100168088(&unk_1005747F0, &unk_1004091D0);
    v42 = swift_allocObject();
    *(v42 + 16) = v79;
    *(v42 + 56) = v70;
    *(v42 + 64) = sub_1003440C8(&qword_10057ADB0, &type metadata accessor for PopToRootAction, &protocol conformance descriptor for Action);
    *(v42 + 32) = v47;
    *(v42 + 96) = v48;
LABEL_36:
    *(v42 + 104) = sub_1003440C8(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *(v42 + 72) = v41;

    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    v49 = type metadata accessor for TabChangeAction();
    swift_allocObject();
LABEL_37:
    v50 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    v51 = v72;
    *(v72 + 24) = v49;
    v51[4] = sub_1003440C8(&qword_10057ADD0, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);

    *v51 = v50;
    return result;
  }

  if (v34 == 0x64616F6C6E776F64 && v33 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v18[64] = 10;
    (*(v77 + 104))(v18, enum case for FlowDestination.episodeList(_:), v13);
    (*(v78 + 104))(v76, enum case for FlowPresentationContext.showDetail(_:), v79);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    v52 = swift_initStackObject();
    v79 = xmmword_1004007C0;
    *(v52 + 16) = xmmword_1004007C0;
    v53 = static Link.Presentation.textFollowsTintColor.getter();
    *(v52 + 32) = v53;
    v54 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v52 + 33) = v54;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v53)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    v55 = Link.Presentation.init(rawValue:)();
    v47 = v71;
    if (v55 != v54)
    {
      Link.Presentation.init(rawValue:)();
    }

    goto LABEL_35;
  }

  if (v34 == 0x652D74736574616CLL && v33 == 0xEF7365646F736970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v16 = 5;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 7) = 0;
    v16[64] = 10;
    (*(v77 + 104))(v16, enum case for FlowDestination.episodeList(_:), v13);
    (*(v78 + 104))(v75, enum case for FlowPresentationContext.showDetail(_:), v79);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    v56 = swift_initStackObject();
    v79 = xmmword_1004007C0;
    *(v56 + 16) = xmmword_1004007C0;
    v57 = static Link.Presentation.textFollowsTintColor.getter();
    *(v56 + 32) = v57;
    v58 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v56 + 33) = v58;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v57)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v58)
    {
      Link.Presentation.init(rawValue:)();
    }

    (*(v80 + 104))(v82, enum case for FlowDestinationPageHeader.standard(_:), v81);
    static ActionMetrics.notInstrumented.getter();
    v59 = type metadata accessor for FlowAction();
    swift_allocObject();
    v60 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    sub_100168088(&unk_1005747F0, &unk_1004091D0);
    v61 = swift_allocObject();
    *(v61 + 16) = v79;
    *(v61 + 56) = v70;
    *(v61 + 64) = sub_1003440C8(&qword_10057ADB0, &type metadata accessor for PopToRootAction, &protocol conformance descriptor for Action);
    *(v61 + 32) = v71;
    *(v61 + 96) = v59;
    *(v61 + 104) = sub_1003440C8(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *(v61 + 72) = v60;

    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    v49 = type metadata accessor for TabChangeAction();
    swift_allocObject();
    goto LABEL_37;
  }

  if (v34 == 0xD000000000000010 && 0x8000000100470AD0 == v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100168088(&unk_1005747F0, &unk_1004091D0);
    v62 = swift_allocObject();
    v76 = xmmword_1004007C0;
    *(v62 + 16) = xmmword_1004007C0;
    *(v62 + 56) = v70;
    *(v62 + 64) = sub_1003440C8(&qword_10057ADB0, &type metadata accessor for PopToRootAction, &protocol conformance descriptor for Action);
    *(v62 + 32) = v71;
    (*(v77 + 104))(v73, enum case for FlowDestination.recentlyUpdated(_:), v13);
    (*(v78 + 104))(v74, enum case for FlowPresentationContext.showDetail(_:), v79);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    v63 = swift_initStackObject();
    *(v63 + 16) = v76;

    v64 = static Link.Presentation.textFollowsTintColor.getter();
    *(v63 + 32) = v64;
    v65 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v63 + 33) = v65;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v64)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v65)
    {
      Link.Presentation.init(rawValue:)();
    }

    (*(v80 + 104))(v82, enum case for FlowDestinationPageHeader.standard(_:), v81);
    static ActionMetrics.notInstrumented.getter();
    v66 = type metadata accessor for FlowAction();
    swift_allocObject();
    v67 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    *(v62 + 96) = v66;
    *(v62 + 104) = sub_1003440C8(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *(v62 + 72) = v67;
    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    v68 = type metadata accessor for TabChangeAction();
    swift_allocObject();
    v31 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    v32 = v72;
    *(v72 + 24) = v68;
    v32[4] = sub_1003440C8(&qword_10057ADD0, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);

    goto LABEL_15;
  }

  v69 = v72;
  *(v72 + 32) = 0;
  result = 0.0;
  *v69 = 0u;
  v69[1] = 0u;
  return result;
}

unint64_t sub_10033FFC4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

double sub_100340010@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v2 = type metadata accessor for PodcastsURLEpisodeParameters();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PodcastsURLEpisodeCommand.episodeParameters.getter();
  v6 = sub_100343D60(v5);
  v7 = v6;
  v9 = v8;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v36 = v5;
  if (v6)
  {
    v10 = v6;
    sub_100340B10(v10, v9, &v39);
    sub_100009104(&v42, &qword_100578C20, &unk_100403D30);
    v42 = v39;
    v43 = v40;
    v44 = v41;
    sub_100009F1C(0, &qword_10057BC40, UITraitCollection_ptr);
    static UITraitCollection.interfaceMode.getter();
    v11 = InterfaceMode.rawValue.getter();
    v13 = v12;
    if (v11 == InterfaceMode.rawValue.getter() && v13 == v14)
    {

      v15 = 1;
    }

    else
    {
      v21 = a1;
      v22 = v9;
      v23 = v2;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = (v24 & 1) == 0;
      v2 = v23;
      v9 = v22;
      a1 = v21;
      v5 = v36;
      if (v25)
      {
        v15 = 7;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else
  {
    v16 = PodcastsURLEpisodeParameters.storeCollectionId.getter();
    v18 = v17;
    v19 = PodcastsURLEpisodeParameters.storeTrackId.getter();
    sub_100341290(v16, v18 & 1, v19, v20 & 1, &v39);
    sub_100009104(&v42, &qword_100578C20, &unk_100403D30);
    v42 = v39;
    v43 = v40;
    v44 = v41;
    v15 = 10;
  }

  sub_100010430(&v42, &v37, &qword_100578C20, &unk_100403D30);
  if (v38)
  {
    sub_100184658(&v37, &v39);
    sub_100168088(&unk_1005747F0, &unk_1004091D0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1004007C0;
    v27 = type metadata accessor for PopToRootAction();
    v35 = v2;
    v28 = v27;
    swift_allocObject();
    sub_100304FEC(v15);
    v29 = PopToRootAction.init(animationBehavior:)();
    *(v26 + 56) = v28;
    *(v26 + 64) = sub_1003440C8(&qword_10057ADB0, &type metadata accessor for PopToRootAction, &protocol conformance descriptor for Action);
    *(v26 + 32) = v29;
    sub_100004428(&v39, v26 + 72);
    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    v30 = a1;
    v31 = v9;
    v32 = type metadata accessor for TabChangeAction();
    swift_allocObject();
    v33 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    v30[3] = v32;
    v30[4] = sub_1003440C8(&qword_10057ADD0, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
    sub_10002ACE0(v15);

    *v30 = v33;
    sub_100004590(&v39);
    sub_100009104(&v42, &qword_100578C20, &unk_100403D30);
    (*(v3 + 8))(v36, v35);
  }

  else
  {
    sub_10002ACE0(v15);

    sub_100009104(&v42, &qword_100578C20, &unk_100403D30);
    (*(v3 + 8))(v5, v2);
    sub_100009104(&v37, &qword_100578C20, &unk_100403D30);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1003404F8@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v6 = &v37 - v5;
  v7 = type metadata accessor for PodcastsURLEpisodeParameters();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  PodcastsURLEpisodeCommand.episodeParameters.getter();
  v11 = sub_100343D60(v10);
  v13 = v11;
  v14 = v12;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 1;
  if (!v12)
  {
    goto LABEL_7;
  }

  v44 = v11;
  v15 = v12;
  v16 = [v15 managedObjectContext];
  if (!v16)
  {

    v13 = v44;
LABEL_7:
    v18 = 0;
    v27 = 0;
    v47 = 0;
    aBlock = 0u;
    v46 = 0u;
    goto LABEL_8;
  }

  v17 = v16;
  v40 = a1;
  v41 = v7;
  v42 = a2;
  v18 = swift_allocObject();
  v18[2] = &v52;
  v18[3] = v15;
  v18[4] = &v50;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1003440BC;
  *(v19 + 24) = v18;
  v47 = sub_10002D950;
  v48 = v19;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v46 = sub_10002D904;
  *(&v46 + 1) = &unk_1004EF3F0;
  v20 = _Block_copy(&aBlock);
  v21 = v15;

  [v17 performBlockAndWait:v20];

  _Block_release(v20);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    v47 = 0;
    aBlock = 0u;
    v46 = 0u;
    if (v53)
    {
      v39 = (&aBlock + 8);
      v23 = type metadata accessor for EpisodeListSettings();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);

      v38 = v21;
      static ActionMetrics.notInstrumented.getter();
      v24 = type metadata accessor for LibraryPlayAction();
      swift_allocObject();
      v25 = LibraryPlayAction.init(episodeUuid:episodeAdamId:channelAdamId:settings:showPlayerIfPlaying:title:timestamp:actionMetrics:)();
      v26 = sub_1003440C8(&qword_100580588, &type metadata accessor for LibraryPlayAction, &protocol conformance descriptor for Action);

      sub_100009104(&aBlock, &qword_100578C20, &unk_100403D30);
      (*(v8 + 8))(v10, v41);
      *v39 = v49;
      *&aBlock = v25;
      *(&v46 + 1) = v24;
      v47 = v26;
      v27 = sub_1003440BC;
      a2 = v42;
LABEL_15:
      v36 = v46;
      *a2 = aBlock;
      *(a2 + 16) = v36;
      *(a2 + 32) = v47;

      return sub_1000112B4(v27, v18);
    }

    v27 = sub_1003440BC;
    v7 = v41;
    a2 = v42;
    v13 = v44;
LABEL_8:
    PodcastsURLEpisodeParameters.storeTrackId.getter();
    if (v28)
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v29 = v7;
      v30 = PodcastsURLEpisodeParameters.storeTrackId.getter();
      if ((v31 & 1) != 0 || ![objc_opt_self() isNotEmpty:v30])
      {

        v34 = 0;
        v33 = 0;
        v35 = 0;
      }

      else
      {
        AdamID.init(rawValue:)();
        static ActionMetrics.notInstrumented.getter();
        v32 = type metadata accessor for StoreEpisodePlayAction();
        v44 = v13;
        v33 = v32;
        swift_allocObject();
        v34 = StoreEpisodePlayAction.init(adamID:actionMetrics:)();
        v35 = sub_1003440C8(&qword_100580580, &type metadata accessor for StoreEpisodePlayAction, &protocol conformance descriptor for Action);
      }

      sub_100009104(&aBlock, &qword_100578C20, &unk_100403D30);
      (*(v8 + 8))(v10, v29);
      aBlock = v34;
      *&v46 = 0;
      *(&v46 + 1) = v33;
      v47 = v35;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100340B10@<X0>(void *a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowDestinationPageHeader();
  v50 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowPresentationContext();
  v48 = *(v11 - 8);
  __chkstk_darwin();
  v49 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FlowDestination();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin().n128_u64[0];
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v60 = 0;
  if (a2)
  {
    v46 = v8;
    v47 = a1;
    v18 = a2;
    a2 = [v18 managedObjectContext];
    if (a2)
    {
      v42 = v10;
      v43 = v7;
      v45 = a3;
      v19 = swift_allocObject();
      *(v19 + 16) = &v59;
      *(v19 + 24) = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_100344010;
      *(v20 + 24) = v19;
      v44 = v19;
      v56 = sub_10002D950;
      v57 = v20;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10002D904;
      v55 = &unk_1004EF300;
      v21 = _Block_copy(&aBlock);
      v22 = v18;

      [a2 performBlockAndWait:v21];

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        goto LABEL_23;
      }

      v24 = v60;
      v58 = 0;
      if (v60)
      {
        LOBYTE(aBlock) = 1;
        v51 = 1;
        *v17 = v59;
        *(v17 + 1) = v24;
        *(v17 + 3) = 0;
        *(v17 + 4) = 0;
        *(v17 + 2) = 0;
        v17[40] = 1;
        *(v17 + 6) = 0;
        v17[56] = 1;
        (*(v14 + 104))(v17, enum case for FlowDestination.episodeDetails(_:), v13);
        (*(v48 + 104))(v49, enum case for FlowPresentationContext.pushDetail(_:), v11);
        sub_100168088(&qword_1005742B0, &qword_100406C70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004007C0;

        v26 = static Link.Presentation.textFollowsTintColor.getter();
        *(inited + 32) = v26;
        v27 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
        *(inited + 33) = v27;
        Link.Presentation.init(rawValue:)();
        Link.Presentation.init(rawValue:)();
        v28 = Link.Presentation.init(rawValue:)();
        a3 = v45;
        if (v28 != v26)
        {
          Link.Presentation.init(rawValue:)();
        }

        Link.Presentation.init(rawValue:)();
        v29 = Link.Presentation.init(rawValue:)();
        v30 = v42;
        if (v29 != v27)
        {
          Link.Presentation.init(rawValue:)();
        }

        (*(v50 + 104))(v30, enum case for FlowDestinationPageHeader.standard(_:), v46);
        static ActionMetrics.notInstrumented.getter();
        type metadata accessor for FlowAction();
        swift_allocObject();
        v31 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

        v32 = 0;
        v33 = 0;
        a2 = sub_100344010;
        v34 = v44;
        if (!v31)
        {
          goto LABEL_20;
        }

LABEL_18:
        v39 = type metadata accessor for FlowAction();
        v40 = sub_1003440C8(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
LABEL_21:
        *a3 = v31;
        a3[3] = v39;
        a3[4] = v40;

        sub_1000112B4(a2, v34);
        return sub_1000112B4(v32, v33);
      }

      a2 = sub_100344010;
      a3 = v45;
      v34 = v44;
    }

    else
    {

      v34 = 0;
      v58 = 0;
    }

    a1 = v47;
  }

  else
  {
    v34 = 0;
    v58 = 0;
  }

  v32 = [a1 managedObjectContext];
  if (!v32)
  {
    v33 = 0;
    goto LABEL_20;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = &v58;
  *(v33 + 24) = a1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100344008;
  *(v35 + 24) = v33;
  v56 = sub_10002D7F0;
  v57 = v35;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10002D904;
  v55 = &unk_1004EF288;
  v36 = _Block_copy(&aBlock);
  v37 = a1;

  [v32 performBlockAndWait:v36];

  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v32 = sub_100344008;
    v31 = v58;
    if (v58)
    {
      goto LABEL_18;
    }

LABEL_20:
    v31 = 0;
    v39 = 0;
    v40 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_100341290(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a1;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestinationPageHeader();
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin();
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowPresentationContext();
  v36 = *(v11 - 8);
  __chkstk_darwin();
  v45 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowDestination();
  __chkstk_darwin();
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v44 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v35 - v19;
  __chkstk_darwin();
  v22 = &v35 - v21;
  __chkstk_darwin();
  v24 = &v35 - v23;
  if (a2)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    if ((a4 & 1) != 0 || ![objc_opt_self() isNotEmpty:v41])
    {
      v28 = [objc_opt_self() productURLForStoreCollectionId:v42 storeTrackId:0];
      v26 = v15;
      if (v28)
      {
        v29 = v28;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v26 + 56))(v20, 0, 1, v14);
      }

      else
      {
        (*(v15 + 56))(v20, 1, 1, v14);
      }

      v22 = v20;
    }

    else
    {
      v25 = [objc_opt_self() productURLForStoreCollectionId:v42 storeTrackId:v41];
      v26 = v15;
      if (v25)
      {
        v27 = v25;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v26 + 56))(v22, 0, 1, v14);
      }

      else
      {
        (*(v15 + 56))(v22, 1, 1, v14);
      }
    }

    sub_1001B8A3C(v22, v24);
    sub_100010430(v24, v18, &qword_100574040, &unk_100400AD0);
    if ((*(v26 + 48))(v18, 1, v14) == 1)
    {
      sub_100009104(v24, &qword_100574040, &unk_100400AD0);
      sub_100009104(v18, &qword_100574040, &unk_100400AD0);
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0;
    }

    else
    {
      (*(v26 + 32))(v44, v18, v14);
      static FlowDestination.page(_:)();
      (*(v36 + 104))(v45, enum case for FlowPresentationContext.infer(_:), v11);
      sub_100168088(&qword_1005742B0, &qword_100406C70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004007C0;
      v31 = static Link.Presentation.textFollowsTintColor.getter();
      *(inited + 32) = v31;
      v32 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
      *(inited + 33) = v32;
      Link.Presentation.init(rawValue:)();
      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v31)
      {
        Link.Presentation.init(rawValue:)();
      }

      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v32)
      {
        Link.Presentation.init(rawValue:)();
      }

      (*(v37 + 104))(v39, enum case for FlowDestinationPageHeader.standard(_:), v38);
      static ActionMetrics.notInstrumented.getter();
      v33 = type metadata accessor for FlowAction();
      swift_allocObject();
      v34 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
      *(a5 + 24) = v33;
      *(a5 + 32) = sub_1003440C8(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      *a5 = v34;
      (*(v26 + 8))(v44, v14);
      sub_100009104(v24, &qword_100574040, &unk_100400AD0);
    }
  }
}

uint64_t sub_100341940(uint64_t *a1, id a2)
{
  v3 = [a2 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
}

uint64_t sub_1003419C0(uint64_t *a1, void *a2)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowPresentationContext();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowAction();
  (*(v7 + 104))(v9, enum case for FlowPresentationContext.pushDetail(_:), v6);
  v10 = a2;
  static ActionMetrics.notInstrumented.getter();
  *a1 = FlowAction.init(podcast:presentationContext:actionMetrics:)(v10, v9, v5, v11);
}

uint64_t sub_100341B20(uint64_t *a1, id a2, uint64_t a3)
{
  v5 = [a2 uuid];
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

  *a1 = v7;
  a1[1] = v9;

  result = MTEpisode.adamID.getter();
  *a3 = result;
  *(a3 + 8) = v11 & 1;
  return result;
}

void sub_100341BB0(uint64_t a1, id *a2, void **a3, void *a4)
{
  PodcastsURLEpisodeParameters.episodeUuid.getter();
  if (v7)
  {
  }

  else
  {
    PodcastsURLEpisodeParameters.storeTrackId.getter();
    if (v8)
    {
      goto LABEL_11;
    }
  }

  v9 = [objc_allocWithZone(MTEpisodeLookupRequest) init];
  PodcastsURLEpisodeParameters.episodeUuid.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v9 setUuid:v11];

  v12 = PodcastsURLEpisodeParameters.storeTrackId.getter();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  [v9 setStoreTrackId:v14];
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 findEpisodeWithRequest:v9];

  v17 = *a2;
  *a2 = v16;

LABEL_11:
  if (*a2)
  {
    v18 = [*a2 podcast];
    v19 = *a3;
    *a3 = v18;
  }

  else
  {
    v19 = *a3;
    *a3 = 0;
  }

  if (!*a3)
  {
    PodcastsURLEpisodeParameters.podcastUuid.getter();
    if (v20)
    {
      v21 = String._bridgeToObjectiveC()();

      v22 = [a4 podcastForUuid:v21];

      v23 = *a3;
      *a3 = v22;
    }
  }
}

void sub_100341D84(uint64_t *a1@<X8>)
{
  v89 = a1;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v87 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FlowDestinationPageHeader();
  v79 = *(v80 - 8);
  __chkstk_darwin();
  v81 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FlowPresentationContext();
  v85 = *(v3 - 8);
  v86 = v3;
  __chkstk_darwin();
  v84 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v70 - v5;
  v78 = type metadata accessor for FlowDestination();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578E88, &qword_100406128);
  __chkstk_darwin();
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v70 - v12;
  __chkstk_darwin();
  v88 = &v70 - v14;
  URL._bridgeToObjectiveC()((&v70 - v14));
  v16 = v15;
  v17 = [v15 pf_cleanUrlToStoreId];
  v18 = [v16 pf_cleanUrlToStoreTrackId];
  v90 = v16;
  v19 = [v16 pf_cleanUrlToEpisodeGuid];
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

  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 mainQueueContext];

  v93 = 0;
  v94 = 0;
  v26 = swift_allocObject();
  v26[2] = v17;
  v26[3] = v25;
  v26[4] = &v94;
  v26[5] = v18;
  v26[6] = v21;
  v26[7] = v23;
  v26[8] = &v93;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100344110;
  *(v27 + 24) = v26;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004EF468;
  v28 = _Block_copy(aBlock);
  v29 = v25;

  [v29 performBlockAndWait:v28];
  _Block_release(v28);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if ((v25 & 1) == 0)
  {
    if (v94)
    {
      v30 = v93;
      v82 = v94;
      if (v93)
      {
        v31 = v94;
        v32 = v30;
        v33 = [v32 uuid];
        if (v33)
        {
          v73 = v32;
          v34 = v33;
          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v35;

          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v88;
          URLComponents.init(url:resolvingAgainstBaseURL:)();
          (*(v75 + 8))(v9, v76);
          sub_100010430(v36, v13, &qword_100578E88, &qword_100406128);
          v37 = type metadata accessor for URLComponents();
          v38 = *(v37 - 8);
          v39 = *(v38 + 48);
          if (v39(v13, 1, v37) == 1)
          {
            sub_100009104(v13, &qword_100578E88, &qword_100406128);
            v76 = 0;
            LODWORD(v75) = 1;
          }

          else
          {
            v76 = URLComponents.referenceTime.getter();
            LODWORD(v75) = v51;
            (*(v38 + 8))(v13, v37);
          }

          sub_100010430(v88, v11, &qword_100578E88, &qword_100406128);
          v52 = v39(v11, 1, v37);
          v74 = v29;
          if (v52 == 1)
          {
            sub_100009104(v11, &qword_100578E88, &qword_100406128);
            v53 = 0;
            v54 = 1;
          }

          else
          {
            v53 = URLComponents.playerTime.getter();
            v54 = v55;
            (*(v38 + 8))(v11, v37);
          }

          v44 = v86;
          v56 = v75 & 1;
          LOBYTE(aBlock[0]) = v75 & 1;
          v91 = v54 & 1;
          v57 = v71;
          *v7 = v72;
          *(v7 + 1) = v57;
          *(v7 + 2) = 0;
          *(v7 + 3) = 0;
          *(v7 + 4) = v76;
          v7[40] = v56;
          *(v7 + 6) = v53;
          v7[56] = v54 & 1;
          (*(v77 + 104))(v7, enum case for FlowDestination.episodeDetails(_:), v78);
          v43 = *(v85 + 104);
          v43(v83, enum case for FlowPresentationContext.infer(_:), v44);
          sub_100168088(&qword_1005742B0, &qword_100406C70);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1004007C0;
          v59 = static Link.Presentation.textFollowsTintColor.getter();
          *(inited + 32) = v59;
          v60 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
          *(inited + 33) = v60;
          Link.Presentation.init(rawValue:)();
          Link.Presentation.init(rawValue:)();
          if (Link.Presentation.init(rawValue:)() != v59)
          {
            Link.Presentation.init(rawValue:)();
          }

          Link.Presentation.init(rawValue:)();
          if (Link.Presentation.init(rawValue:)() != v60)
          {
            Link.Presentation.init(rawValue:)();
          }

          v29 = v74;
          (*(v79 + 104))(v81, enum case for FlowDestinationPageHeader.standard(_:), v80);
          static ActionMetrics.notInstrumented.getter();
          type metadata accessor for FlowAction();
          swift_allocObject();
          v49 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

          sub_100009104(v88, &qword_100578E88, &qword_100406128);
          v42 = v84;
          goto LABEL_26;
        }

        v40 = v82;
      }

      else
      {
        v40 = v94;
        v41 = v94;
      }

      type metadata accessor for FlowAction();
      v42 = v84;
      v43 = *(v85 + 104);
      v44 = v86;
      v43(v84, enum case for FlowPresentationContext.infer(_:), v86);
      v45 = v40;
      v46 = v87;
      static ActionMetrics.notInstrumented.getter();
      v48 = FlowAction.init(podcast:presentationContext:actionMetrics:)(v45, v42, v46, v47);
      if (v48)
      {
        v49 = v48;
LABEL_26:
        v43(v42, enum case for FlowPresentationContext.showDetail(_:), v44);
        dispatch thunk of FlowAction.presentationContext.setter();
        sub_100009F1C(0, &qword_10057BC40, UITraitCollection_ptr);
        static UITraitCollection.interfaceMode.getter();
        v61 = InterfaceMode.rawValue.getter();
        v63 = v62;
        if (v61 == InterfaceMode.rawValue.getter() && v63 == v64)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        sub_100168088(&unk_1005747F0, &unk_1004091D0);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_100400790;
        *(v65 + 56) = type metadata accessor for FlowAction();
        *(v65 + 64) = sub_1003440C8(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
        *(v65 + 32) = v49;

        Link.Presentation.init(rawValue:)();
        static ActionMetrics.notInstrumented.getter();
        v66 = type metadata accessor for TabChangeAction();
        swift_allocObject();
        v67 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
        v68 = v89;
        v89[3] = v66;
        v68[4] = sub_1003440C8(&qword_10057ADD0, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);

        *v68 = v67;
        goto LABEL_31;
      }
    }

    else
    {
    }

    v50 = v89;
    v89[4] = 0;
    *v50 = 0u;
    *(v50 + 1) = 0u;
LABEL_31:

    v69 = v94;

    return;
  }

  __break(1u);
}

uint64_t sub_10034299C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v69 = a1;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v65 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for FlowDestinationPageHeader();
  v60 = *(v61 - 8);
  __chkstk_darwin();
  v62 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for FlowPresentationContext();
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for FlowDestination();
  v55 = *(v56 - 8);
  __chkstk_darwin();
  v64 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for URLQueryItem();
  v6 = *(v66 - 8);
  __chkstk_darwin();
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v49 - v9;
  sub_100168088(&qword_100578E88, &qword_100406128);
  __chkstk_darwin();
  v11 = &v49 - v10;
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v67 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v16 = &v49 - v15;
  v17 = *(type metadata accessor for URL() - 8);
  __chkstk_darwin();
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20;
  sub_100010430(v69, v16, &qword_100574040, &unk_100400AD0);
  if ((*(v17 + 48))(v16, 1, v21) == 1)
  {
    v22 = &qword_100574040;
    v23 = &unk_100400AD0;
    v24 = v16;
LABEL_5:
    result = sub_100009104(v24, v22, v23);
    goto LABEL_6;
  }

  (*(v17 + 32))(v19, v16, v21);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    (*(v17 + 8))(v19, v21);
    v22 = &qword_100578E88;
    v23 = &qword_100406128;
    v24 = v11;
    goto LABEL_5;
  }

  v54 = v17;
  v27 = v67;
  (*(v13 + 32))(v67, v11, v12);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    (*(v13 + 8))(v27, v12);
    result = (*(v54 + 8))(v19, v21);
LABEL_6:
    v26 = v68;
LABEL_7:
    *(v26 + 32) = 0;
    *v26 = 0u;
    *(v26 + 16) = 0u;
    return result;
  }

  v28 = result;
  v50 = v19;
  v53 = v21;
  v51 = v13;
  v52 = v12;
  v29 = v66;
  v69 = *(result + 16);
  if (!v69)
  {
LABEL_17:

    (*(v51 + 8))(v67, v52);
    result = (*(v54 + 8))(v50, v53);
    goto LABEL_6;
  }

  v30 = 0;
  while (1)
  {
    if (v30 >= *(v28 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v6 + 16))(v8, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, v29);
    if (URLQueryItem.name.getter() == 0xD000000000000010 && 0x8000000100470AF0 == v31)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_21;
    }

    ++v30;
    result = (*(v6 + 8))(v8, v29);
    if (v69 == v30)
    {
      goto LABEL_17;
    }
  }

LABEL_21:

  v33 = v63;
  (*(v6 + 32))(v63, v8, v29);
  URLQueryItem.value.getter();
  v35 = v34;
  (*(v6 + 8))(v33, v29);
  v26 = v68;
  v36 = v64;
  v37 = v54;
  if (!v35)
  {
    (*(v51 + 8))(v67, v52);
    result = (*(v37 + 8))(v50, v53);
    goto LABEL_7;
  }

  v38 = [objc_opt_self() sharedInstance];
  v39 = String._bridgeToObjectiveC()();

  v40 = [v38 syncValueForKey:v39];

  if (v40)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  v41 = v59;
  v72[0] = v70;
  v72[1] = v71;
  sub_100010430(v72, &v70, &unk_1005783D0, &qword_1004031E0);
  if (*(&v71 + 1))
  {
    v42 = v53;
    v43 = swift_dynamicCast();
    (*(v37 + 56))(v36, v43 ^ 1u, 1, v42);
  }

  else
  {
    sub_100009104(&v70, &unk_1005783D0, &qword_1004031E0);
    (*(v37 + 56))(v36, 1, 1, v53);
  }

  (*(v55 + 104))(v36, enum case for FlowDestination.finance(_:), v56);
  (*(v57 + 104))(v41, enum case for FlowPresentationContext.infer(_:), v58);
  sub_100168088(&qword_1005742B0, &qword_100406C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v45 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v45;
  v46 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v46;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v45)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v46)
  {
    Link.Presentation.init(rawValue:)();
  }

  (*(v60 + 104))(v62, enum case for FlowDestinationPageHeader.standard(_:), v61);
  static ActionMetrics.notInstrumented.getter();
  v47 = type metadata accessor for FlowAction();
  swift_allocObject();
  v48 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  *(v26 + 24) = v47;
  *(v26 + 32) = sub_1003440C8(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  *v26 = v48;
  sub_100009104(v72, &unk_1005783D0, &qword_1004031E0);
  (*(v51 + 8))(v67, v52);
  return (*(v37 + 8))(v50, v53);
}

uint64_t sub_1003434D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v21 = 1836213620;
  v22 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v6 = sub_100202028(&v23), (v7 & 1) == 0))
  {
    sub_10016BE9C(&v23);
LABEL_7:

    goto LABEL_8;
  }

  sub_10001B944(*(a1 + 56) + 32 * v6, v25);
  sub_10016BE9C(&v23);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v23 = v21;
  v24 = v22;
  sub_10019FA64();
  StringProtocol.removingPercentEncoding.getter();
  v9 = v8;

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_8:
  v21 = 0x6574617669746361;
  v22 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v10 = sub_100202028(&v23), (v11 & 1) != 0))
  {
    sub_10001B944(*(a1 + 56) + 32 * v10, v25);
    sub_10016BE9C(&v23);
    if (swift_dynamicCast())
    {
      v23 = v21;
      v24 = v22;
      sub_10019FA64();
      StringProtocol.removingPercentEncoding.getter();
      v13 = v12;

      if (v13)
      {
        v14 = String.lowercased()();

        if (v14._countAndFlagsBits == 1702195828 && v14._object == 0xE400000000000000)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }
  }

  else
  {
    sub_10016BE9C(&v23);
  }

  sub_100168088(&unk_1005747F0, &unk_1004091D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100400790;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  static ActionMetrics.notInstrumented.getter();
  *(v15 + 56) = type metadata accessor for SearchAction();
  *(v15 + 64) = sub_1003440C8(&qword_10057ADC0, &type metadata accessor for SearchAction, &protocol conformance descriptor for SearchAction);
  sub_10000E680((v15 + 32));
  SearchAction.init(origin:term:url:hintIndex:activatesSearchBar:actionMetrics:)();
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  v17 = type metadata accessor for TabChangeAction();
  swift_allocObject();
  v18 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  a2[3] = v17;
  result = sub_1003440C8(&qword_10057ADD0, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
  a2[4] = result;
  *a2 = v18;
  return result;
}

void sub_100343950(uint64_t a1, unint64_t a2, void **a3, uint64_t a4, uint64_t a5, void *a6, void **a7)
{
  v14 = objc_opt_self();
  if (![v14 isNotEmpty:a1])
  {
    return;
  }

  v35 = a5;
  v15 = a7;
  v16 = AMSUserNotification_ptr;
  v36 = [objc_opt_self() predicateForPodcastStoreId:a1];
  v17 = [a2 objectsInEntity:kMTPodcastEntityName predicate:? sortDescriptors:?];
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  sub_100009F1C(0, &qword_1005739D0, NSManagedObject_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

LABEL_13:
    v17 = 0;
  }

LABEL_14:
  v16 = v15;
  v22 = *a3;
  *a3 = v17;

  if (*a3)
  {
    if ([v14 isNotEmpty:a4])
    {
      v23 = [objc_opt_self() predicateForEpisodeStoreTrackId:a4];
      goto LABEL_19;
    }

    if (a6)
    {
      sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1004007C0;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      v28 = sub_100022C18();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      *(v24 + 96) = &type metadata for String;
      *(v24 + 104) = v28;
      v16 = v15;
      *(v24 + 64) = v28;
      *(v24 + 72) = v35;
      *(v24 + 80) = a6;

      v23 = NSPredicate.init(format:_:)();
LABEL_19:
      a6 = v23;
      v29 = [a2 objectsInEntity:kMTEpisodeEntityName predicate:v23 sortDescriptors:{0, v35}];
      if (!v29)
      {

        goto LABEL_33;
      }

      v30 = v29;
      sub_100009F1C(0, &qword_1005739D0, NSManagedObject_ptr);
      a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(a2 >> 62))
      {
        if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_22:
          if ((a2 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v31 = *(a2 + 32);
          }

          v32 = v31;

          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            goto LABEL_34;
          }

LABEL_33:
          v33 = 0;
LABEL_34:
          v34 = *v16;
          *v16 = v33;
          goto LABEL_35;
        }

LABEL_32:

        goto LABEL_33;
      }

LABEL_31:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  v34 = v36;
LABEL_35:
}

uint64_t sub_100343D60(uint64_t a1)
{
  v2 = type metadata accessor for PodcastsURLEpisodeParameters();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 mainOrPrivateContext];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v8, v5, v2);
  *(v11 + v9) = &v19;
  *(v11 + v10) = &v18;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100344018;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004EF378;
  v13 = _Block_copy(aBlock);
  v14 = v7;

  [v14 performBlockAndWait:v13];

  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v18;

    return v16;
  }

  return result;
}

void sub_100344018()
{
  v1 = *(type metadata accessor for PodcastsURLEpisodeParameters() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100341BB0(v0 + v2, v5, v6, v7);
}

uint64_t sub_1003440C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100344148(__n128 a1, double a2, double a3)
{
  v3 = a1.n128_f64[0];
  a1.n128_f64[0] = ceil(0.1 * a3);
  if (a1.n128_f64[0] <= v3)
  {
    a1.n128_f64[0] = ceil(0.25 * a3);
    if (a1.n128_f64[0] <= v3)
    {
      a1.n128_f64[0] = ceil(0.75 * a3);
      if (a1.n128_f64[0] <= v3)
      {
        a1.n128_f64[0] = ceil(0.85 * a3);
        if (a1.n128_f64[0] <= v3)
        {
          a1.n128_f64[0] = ceil(0.95 * a3);
          if (a1.n128_f64[0] <= v3)
          {
            a1.n128_f64[0] = a3;
          }
        }
      }
    }
  }

  return CGSize.init(width:proportionalTo:)(a1);
}

uint64_t sub_100344208()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100572850 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:qword_100580590 object:0];

  sub_1000112B4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1003442C0()
{
  v1 = v0;
  v2 = Notification.name.getter();
  if (qword_100572850 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
    {

      goto LABEL_9;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }

LABEL_9:
    isa = Notification._bridgeToObjectiveC()().super.isa;
    v11 = MTImageDownloaderArtworkDidLoadEntityUuids();

    v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = 1 << *(v2 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v2 + 56);

    swift_beginAccess();
    v15 = 0;
    v16 = (v12 + 63) >> 6;
    while (v14)
    {
      v17 = v14;
LABEL_18:
      v14 = (v17 - 1) & v17;
      v19 = *(v1 + 16);
      if (v19)
      {
        v20 = (*(v2 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v17)))));
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v1 + 24);

        sub_100013CB4(v19, v23);
        v19(v21, v22);

        sub_1000112B4(v19, v23);
      }
    }

    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v17 = *(v2 + 56 + 8 * v18);
      ++v15;
      if (v17)
      {
        v15 = v18;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }
}