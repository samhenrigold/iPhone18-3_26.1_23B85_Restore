uint64_t Player.PlaybackStatus.playbackItemInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Player.PlaybackStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Player.PlaybackStatus.loading(_:) || v12 == enum case for Player.PlaybackStatus.paused(_:) || v12 == enum case for Player.PlaybackStatus.playing(_:))
  {
    (*(v5 + 96))(v7, v4);
    (*(v9 + 32))(v11, v7, v8);
    PlaybackInfo.playbackItemInfo.getter();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = type metadata accessor for PlaybackInfo.PlaybackItemInfo();
    (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100001D30(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for Player.PlaybackStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003344(&qword_10002C710, &qword_1000229A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  Player.playbackStatus.getter();
  Player.PlaybackStatus.playbackItemInfo.getter(v8);
  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for PlaybackInfo.PlaybackItemInfo();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100003750(v8, &qword_10002C710, &qword_1000229A0);
    return 0;
  }

  else
  {
    v12 = a1();
    (*(v10 + 8))(v8, v9);
    return v12;
  }
}

uint64_t sub_100001F3C(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for Player.PlaybackStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003344(&qword_10002C710, &qword_1000229A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  Player.playbackStatus.getter();
  Player.PlaybackStatus.playbackItemInfo.getter(v8);
  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for PlaybackInfo.PlaybackItemInfo();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100003750(v8, &qword_10002C710, &qword_1000229A0);
    return static Duration.zero.getter();
  }

  else
  {
    v12 = a1();
    (*(v10 + 8))(v8, v9);
    return v12;
  }
}

uint64_t sub_100002114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000021AC, v6, v5);
}

uint64_t sub_1000021AC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100002244;

  return Player.previous()();
}

uint64_t sub_100002244()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1000037BC;
  }

  else
  {
    v5 = sub_1000037C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100002380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003344(&qword_10002C708, &qword_100021B30);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100003444(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100003750(v10, &qword_10002C708, &qword_100021B30);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100003750(a3, &qword_10002C708, &qword_100021B30);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003750(a3, &qword_10002C708, &qword_100021B30);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000261C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000026B4, v6, v5);
}

uint64_t sub_1000026B4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10000274C;

  return Player.next()();
}

uint64_t sub_10000274C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1000028EC;
  }

  else
  {
    v5 = sub_100002888;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100002888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000028EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000029E8, v6, v5);
}

uint64_t sub_1000029E8()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100002244;

  return Player.resume()();
}

uint64_t sub_100002A80()
{

  v1 = OBJC_IVAR____TtC16AdaptiveMusicApp15PlayerViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayerViewModel(uint64_t a1)
{
  result = qword_10002C5D8;
  if (!qword_10002C5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002B78(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

__n128 initializeBufferWithCopyOfBuffer for GrowingCapsule(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GrowingCapsule(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GrowingCapsule(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_10002C6F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10002C6F8);
    }
  }
}

BOOL sub_100002D50()
{
  v0 = type metadata accessor for Player.PlaybackStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Player.playbackStatus.getter();
  v4 = (*(v1 + 88))(v3, v0);
  v6 = v4 == enum case for Player.PlaybackStatus.loading(_:) || v4 == enum case for Player.PlaybackStatus.playing(_:);
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_100002EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100003344(&qword_10002C708, &qword_100021B30);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *v4;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  sub_100002380(0, 0, v8, a4, v12);
}

uint64_t sub_100003004(double a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  type metadata accessor for MainActor();
  *(v2 + 32) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1000030A4, v4, v3);
}

uint64_t sub_1000030A4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100003140;
  v2.n128_u64[0] = *(v0 + 16);

  return Player.seek(to:)(v2);
}

uint64_t sub_100003140()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000037C4;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100003264;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100003264()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000032C4(uint64_t a1)
{
  result = sub_1000032EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000032EC()
{
  result = qword_10002C700;
  if (!qword_10002C700)
  {
    type metadata accessor for PlayerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C700);
  }

  return result;
}

uint64_t sub_100003344(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003390(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000037B8;

  return sub_100002950(a1, v4, v5, v6);
}

uint64_t sub_100003444(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002C708, &qword_100021B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000034B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003568;

  return sub_10000261C(a1, v4, v5, v6);
}

uint64_t sub_100003568()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000365C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000369C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000037B8;

  return sub_100002114(a1, v4, v5, v6);
}

uint64_t sub_100003750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003344(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000037DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003344(&qword_10002C718, &unk_100021BB0);
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

uint64_t sub_1000038B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003344(&qword_10002C718, &unk_100021BB0);
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

uint64_t type metadata accessor for PlayerBackgroundView(uint64_t a1)
{
  result = qword_10002C778;
  if (!qword_10002C778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000039C8(uint64_t a1)
{
  sub_100003ACC(319, &qword_10002C788, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_100003ACC(319, &unk_10002C790, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100003ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100003B4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003344(&qword_10002C7D0, &qword_100021C30);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004F5C(v2, &v14 - v9, &qword_10002C7D0, &qword_100021C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
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

uint64_t sub_100003D4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v73 = sub_100003344(&qword_10002C7F0, &qword_100021C50);
  v3 = __chkstk_darwin(v73);
  v74 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v59 - v6;
  __chkstk_darwin(v5);
  v82 = &v59 - v8;
  v9 = type metadata accessor for BlendMode();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100003344(&qword_10002C7F8, &qword_100021C58);
  v11 = __chkstk_darwin(v67);
  v81 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v66 = &v59 - v14;
  __chkstk_darwin(v13);
  v80 = &v59 - v15;
  v16 = type metadata accessor for ColorScheme();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v59 - v21;
  v72 = static VerticalAlignment.center.getter();
  sub_1000046D8(a1, &v92);
  v78 = *(&v92 + 1);
  v79 = v92;
  v77 = v93;
  v83 = BYTE2(v93);
  sub_100003B4C(v22);
  v23 = *(v17 + 104);
  v65 = enum case for ColorScheme.light(_:);
  v63 = v23;
  v64 = v17 + 104;
  v23(v20);
  v24 = static ColorScheme.== infix(_:_:)();
  v25 = *(v17 + 8);
  v25(v20, v16);
  v62 = v25;
  v25(v22, v16);
  sub_100003344(&qword_10002C800, &qword_100021C60);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100021B80;
  type metadata accessor for PlayerBackgroundView(0);
  v71 = a1;
  Color.opacity(_:)();
  *(v26 + 32) = Gradient.Stop.init(color:location:)();
  *(v26 + 40) = v27;
  Color.opacity(_:)();
  *(v26 + 48) = Gradient.Stop.init(color:location:)();
  *(v26 + 56) = v28;
  Color.opacity(_:)();
  *(v26 + 64) = Gradient.Stop.init(color:location:)();
  *(v26 + 72) = v29;
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v85 = v89;
  v86 = v90;
  v87 = v91;
  v88 = (v24 & 1) == 0;
  sub_100004E90();
  _ConditionalContent<>.init(storage:)();
  v75 = v92;
  v76 = v93;
  v61 = v94;
  v60 = BYTE8(v94);
  v30 = [objc_opt_self() systemBackgroundColor];
  v31 = Color.init(_:)();
  sub_100003B4C(v22);
  v63(v20, v65, v16);
  v32 = static ColorScheme.== infix(_:_:)();
  v33 = v20;
  v34 = v62;
  v62(v33, v16);
  v34(v22, v16);
  v36 = v68;
  v35 = v69;
  v37 = &enum case for BlendMode.plusLighter(_:);
  if ((v32 & 1) == 0)
  {
    v37 = &enum case for BlendMode.plusDarker(_:);
  }

  v38 = v70;
  (*(v69 + 104))(v68, *v37, v70);
  v39 = v66;
  (*(v35 + 32))(&v66[*(v67 + 36)], v36, v38);
  *v39 = v31;
  *(v39 + 8) = 256;
  *(v39 + 16) = 0x3FC3333333333333;
  v40 = v80;
  sub_100004EE4(v39, v80, &qword_10002C7F8, &qword_100021C58);
  v41 = static HorizontalAlignment.center.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v84[55] = v95;
  *&v84[71] = v96;
  *&v84[87] = v97;
  *&v84[103] = v98;
  *&v84[7] = v92;
  *&v84[23] = v93;
  LOBYTE(v85) = 1;
  v42 = &v7[*(v73 + 36)];
  *&v84[39] = v94;
  static Material.thin.getter();
  v43 = static Edge.Set.all.getter();
  v42[*(sub_100003344(&qword_10002C810, &qword_100021C68) + 36)] = v43;
  v44 = *&v84[32];
  *(v7 + 65) = *&v84[48];
  *(v7 + 49) = v44;
  v45 = *v84;
  *(v7 + 33) = *&v84[16];
  *(v7 + 17) = v45;
  *(v7 + 16) = *&v84[111];
  *(v7 + 113) = *&v84[96];
  v46 = *&v84[64];
  *(v7 + 97) = *&v84[80];
  *v7 = v41;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v7 + 81) = v46;
  v47 = v82;
  sub_100004EE4(v7, v82, &qword_10002C7F0, &qword_100021C50);
  v48 = v81;
  sub_100004F5C(v40, v81, &qword_10002C7F8, &qword_100021C58);
  v49 = v74;
  sub_100004F5C(v47, v74, &qword_10002C7F0, &qword_100021C50);
  v50 = v59;
  *v59 = v72;
  v50[1] = 0;
  *(v50 + 16) = 1;
  v51 = v78;
  v52 = v79;
  v50[3] = v79;
  v50[4] = v51;
  *(v50 + 20) = v77;
  *(v50 + 42) = v83;
  v53 = v76;
  *(v50 + 3) = v75;
  *(v50 + 4) = v53;
  v54 = v61;
  v50[10] = v61;
  v55 = v60;
  *(v50 + 88) = v60;
  v56 = sub_100003344(&qword_10002C818, &qword_100021C70);
  sub_100004F5C(v48, v50 + *(v56 + 64), &qword_10002C7F8, &qword_100021C58);
  sub_100004F5C(v49, v50 + *(v56 + 80), &qword_10002C7F0, &qword_100021C50);
  j__swift_retain(v52);
  v57 = v75;
  j__swift_bridgeObjectRetain(v75, *(&v75 + 1), v76, *(&v76 + 1), v54, v55);
  sub_100003750(v82, &qword_10002C7F0, &qword_100021C50);
  sub_100003750(v80, &qword_10002C7F8, &qword_100021C58);
  sub_100003750(v49, &qword_10002C7F0, &qword_100021C50);
  sub_100003750(v81, &qword_10002C7F8, &qword_100021C58);
  j__swift_bridgeObjectRelease(v57);
  return j__swift_release(v79);
}

double sub_1000046D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for PlayerBackgroundView(0) + 20));
  swift_getKeyPath();
  *&v19 = v8;
  sub_100004FCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + 16))
  {
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);

    v9 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v15 = v9;
    v16 = 0;
    v17 = 257;
    v18 = 0;

    sub_100003344(&qword_10002C828, &qword_100021CA0);
    sub_100003344(&qword_10002C830, &qword_100021CA8);
    sub_100005024();
    sub_100005264(&qword_10002C840, &qword_10002C830, &qword_100021CA8, &protocol conformance descriptor for _ShapeView<A, B>);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v10 = [objc_opt_self() systemLightGrayColor];
    v15 = Color.init(_:)();
    v16 = 256;
    v17 = 0;
    v18 = 1;
    sub_100003344(&qword_10002C828, &qword_100021CA0);
    sub_100003344(&qword_10002C830, &qword_100021CA8);
    sub_100005024();
    sub_100005264(&qword_10002C840, &qword_10002C830, &qword_100021CA8, &protocol conformance descriptor for _ShapeView<A, B>);
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v19;
  v12 = v20;
  v13 = v21;
  *a2 = v19;
  *(a2 + 16) = v12;
  *(a2 + 18) = v13;
  return result;
}

void sub_1000049D4(void *a1@<X8>)
{
  GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100004A00(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for PlayerBackgroundView(0);
  sub_100003344(&qword_10002C7E8, &qword_100021C48);
  return State.wrappedValue.setter();
}

uint64_t sub_100004AA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = sub_100003344(&qword_10002C7C8, &qword_100021C28);
  sub_100003D4C(v2, (a2 + *(v7 + 44)));
  sub_100004C1C(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_100004DBC(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (a2 + *(sub_100003344(&qword_10002C7D8, &qword_100021C38) + 36));
  *v10 = sub_1000049D4;
  v10[1] = 0;
  v10[2] = sub_100004E20;
  v10[3] = v9;
  v11 = static SafeAreaRegions.all.getter();
  LOBYTE(v8) = static Edge.Set.all.getter();
  result = sub_100003344(&qword_10002C7E0, &qword_100021C40);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  v13[8] = v8;
  return result;
}

uint64_t sub_100004C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerBackgroundView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004C80()
{
  v1 = *(type metadata accessor for PlayerBackgroundView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100003344(&qword_10002C7D0, &qword_100021C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100004DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerBackgroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004E20(uint64_t *a1)
{
  v3 = *(type metadata accessor for PlayerBackgroundView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100004A00(a1, v4);
}

unint64_t sub_100004E90()
{
  result = qword_10002C808;
  if (!qword_10002C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C808);
  }

  return result;
}

uint64_t sub_100004EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003344(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004F5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003344(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100004FCC()
{
  result = qword_10002C820;
  if (!qword_10002C820)
  {
    type metadata accessor for ArtworkViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C820);
  }

  return result;
}

unint64_t sub_100005024()
{
  result = qword_10002C838;
  if (!qword_10002C838)
  {
    sub_1000050A8(&qword_10002C828, &qword_100021CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C838);
  }

  return result;
}

uint64_t sub_1000050A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000050F4()
{
  result = qword_10002C848;
  if (!qword_10002C848)
  {
    sub_1000050A8(&qword_10002C7E0, &qword_100021C40);
    sub_100005180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C848);
  }

  return result;
}

unint64_t sub_100005180()
{
  result = qword_10002C850;
  if (!qword_10002C850)
  {
    sub_1000050A8(&qword_10002C7D8, &qword_100021C38);
    sub_100005264(&qword_10002C858, &qword_10002C860, &unk_100021CB0, &protocol conformance descriptor for ZStack<A>);
    sub_100005264(&qword_10002C868, &qword_10002C870, &qword_1000229C0, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C850);
  }

  return result;
}

uint64_t sub_100005264(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000050A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000052AC()
{
  v0 = type metadata accessor for Logger();
  sub_10000531C(v0, qword_10002E470);
  sub_100005380(v0, qword_10002E470);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10000531C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100005380(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000053B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003344(&qword_10002C7D0, &qword_100021C30);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004F5C(v2, &v14 - v9, &qword_10002C7D0, &qword_100021C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
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

uint64_t sub_1000055B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_100003344(&qword_10002C7D0, &qword_100021C30);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for PlayerControls(0, a2, a3, v8);
  v10 = v9[9];
  *&a4[v10] = swift_getKeyPath();
  sub_100003344(qword_10002C878, &qword_100021D38);
  swift_storeEnumTagMultiPayload();
  v11 = &a4[v9[11]];
  State.init(wrappedValue:)();
  *v11 = v13;
  *(v11 + 1) = v14;
  return (*(*(a2 - 8) + 32))(&a4[v9[10]], a1, a2);
}

uint64_t sub_1000056E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v73 = *(a1 - 8);
  v74 = *(v73 + 64);
  __chkstk_darwin(a1);
  v72 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScenePhase();
  v59 = v4;
  v75 = *(v4 - 8);
  __chkstk_darwin(v4);
  v71 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ColorScheme();
  v67 = *(v69 - 8);
  v6 = __chkstk_darwin(v69);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v50 - v8;
  v70 = type metadata accessor for BlendMode();
  v66 = *(v70 - 8);
  __chkstk_darwin(v70);
  v65 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000050A8(&qword_10002C910, &unk_100021DB0);
  v68 = a1;
  v10 = *(a1 + 24);
  v11 = *(a1 + 16);
  v51 = v11;
  v50 = v10;
  type metadata accessor for PlaybackProgressView(255, v11, v10, v12);
  sub_1000050A8(&qword_10002C918, &qword_100022B10);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C920, &qword_100021DC0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C928, &qword_100021DC8);
  sub_1000050A8(&qword_10002C930, &qword_100021DD0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v63 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  type metadata accessor for _BlendModeEffect();
  v16 = type metadata accessor for ModifiedContent();
  v64 = *(v16 - 8);
  __chkstk_darwin(v16);
  v54 = &v50 - v17;
  WitnessTable = swift_getWitnessTable();
  v85 = WitnessTable;
  v86 = &protocol witness table for _BlendModeEffect;
  v18 = swift_getWitnessTable();
  v58 = v18;
  v57 = sub_1000098EC(&qword_10002C938, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v81 = v16;
  v82 = v4;
  v83 = v18;
  v84 = v57;
  v61 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  v20 = __chkstk_darwin(OpaqueTypeMetadata2);
  v52 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v50 - v22;
  v78 = v11;
  v79 = v10;
  v80 = v77;
  static HorizontalAlignment.center.getter();
  v23 = v15;
  VStack.init(alignment:spacing:content:)();
  v24 = v60;
  sub_1000053B8(v60);
  v25 = v67;
  v26 = v55;
  v27 = v69;
  (*(v67 + 104))(v55, enum case for ColorScheme.light(_:), v69);
  v28 = static ColorScheme.== infix(_:_:)();
  v29 = *(v25 + 8);
  v29(v26, v27);
  v29(v24, v27);
  v30 = v66;
  v31 = &enum case for BlendMode.plusDarker(_:);
  if ((v28 & 1) == 0)
  {
    v31 = &enum case for BlendMode.plusLighter(_:);
  }

  v32 = v65;
  v33 = v70;
  (*(v66 + 104))(v65, *v31, v70);
  v34 = v54;
  View.blendMode(_:)();
  (*(v30 + 8))(v32, v33);
  (*(v63 + 8))(v23, v13);
  v35 = v68;
  v36 = v77;
  v37 = v71;
  sub_100008658(v71);
  v39 = v72;
  v38 = v73;
  (*(v73 + 16))(v72, v36, v35);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v42 = v50;
  *(v41 + 16) = v51;
  *(v41 + 24) = v42;
  (*(v38 + 32))(v41 + v40, v39, v35);
  v43 = v52;
  v44 = v59;
  v45 = v58;
  v46 = v57;
  View.onChange<A>(of:initial:_:)();

  (*(v75 + 8))(v37, v44);
  (*(v64 + 8))(v34, v16);
  v81 = v16;
  v82 = v44;
  v83 = v45;
  v84 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v56;
  sub_1000178EC();
  v48 = *(v62 + 8);
  v48(v43, OpaqueTypeMetadata2);
  sub_1000178EC();
  return (v48)(v47, OpaqueTypeMetadata2);
}

uint64_t sub_1000060A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v50 = a3;
  v5 = a1;
  v46 = a1;
  v57 = a4;
  type metadata accessor for PlaybackProgressView(255, a2, a3, a5);
  sub_1000050A8(&qword_10002C918, &qword_100022B10);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C920, &qword_100021DC0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C928, &qword_100021DC8);
  sub_1000050A8(&qword_10002C930, &qword_100021DD0);
  swift_getTupleTypeMetadata3();
  v53 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for VStack();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v49 = &v46 - v8;
  v9 = type metadata accessor for ModifiedContent();
  v56 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v46 - v13;
  v14 = sub_100003344(&qword_10002C958, &qword_100021DF0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = sub_100003344(&qword_10002C910, &unk_100021DB0);
  v48 = v18;
  v19 = __chkstk_darwin(v18);
  v51 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v46 - v22;
  __chkstk_darwin(v21);
  v47 = &v46 - v24;
  *v17 = static HorizontalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v25 = sub_100003344(&qword_10002C960, &qword_100021DF8);
  v26 = v50;
  sub_1000067C4(v5, a2, v50, &v17[*(v25 + 44)]);
  LOBYTE(v5) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v27 = &v17[*(v15 + 44)];
  *v27 = v5;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100004EE4(v17, v23, &qword_10002C958, &qword_100021DF0);
  v32 = &v23[*(v18 + 36)];
  v33 = v70;
  *(v32 + 4) = v69;
  *(v32 + 5) = v33;
  *(v32 + 6) = v71;
  v34 = v66;
  *v32 = v65;
  *(v32 + 1) = v34;
  v35 = v68;
  *(v32 + 2) = v67;
  *(v32 + 3) = v35;
  v36 = v23;
  v37 = v47;
  sub_100004EE4(v36, v47, &qword_10002C910, &unk_100021DB0);
  v58 = a2;
  v59 = v26;
  v60 = v46;
  static HorizontalAlignment.center.getter();
  v38 = v49;
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  v45 = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v55 + 8))(v38, v7);
  v64[2] = v45;
  v64[3] = &protocol witness table for _FlexFrameLayout;
  v39 = swift_getWitnessTable();
  v40 = v54;
  sub_1000178EC();
  v41 = v56;
  v42 = *(v56 + 8);
  v42(v12, v9);
  v43 = v51;
  sub_100004F5C(v37, v51, &qword_10002C910, &unk_100021DB0);
  v64[0] = v43;
  (*(v41 + 16))(v12, v40, v9);
  v64[1] = v12;
  v63[0] = v48;
  v63[1] = v9;
  v61 = sub_100009110();
  v62 = v39;
  sub_10001290C(v64, 2uLL, v63);
  v42(v40, v9);
  sub_100003750(v37, &qword_10002C910, &unk_100021DB0);
  v42(v12, v9);
  return sub_100003750(v43, &qword_10002C910, &unk_100021DB0);
}

uint64_t sub_1000067C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a4;
  v7 = sub_100003344(&qword_10002CA08, &qword_100021EA8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - v16;
  __chkstk_darwin(v15);
  v19 = &v25 - v18;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  static MarqueeDefaults.spacing.getter();
  static MarqueeDefaults.rate.getter();
  static MarqueeDefaults.delay.getter();
  static MarqueeDefaults.isAnimating.getter();
  sub_100003344(&qword_10002CA10, &qword_100021EB0);
  sub_100009830();
  v35 = 1;
  Marquee.init(spacing:rate:delay:isAnimating:preferredFrameRateRange:content:)();
  v29 = v26;
  v30 = a3;
  v31 = v27;
  static MarqueeDefaults.spacing.getter();
  static MarqueeDefaults.rate.getter();
  static MarqueeDefaults.delay.getter();
  static MarqueeDefaults.isAnimating.getter();
  v35 = 1;
  Marquee.init(spacing:rate:delay:isAnimating:preferredFrameRateRange:content:)();
  v20 = *(v8 + 16);
  v20(v14, v19, v7);
  v20(v11, v17, v7);
  v21 = v28;
  v20(v28, v14, v7);
  v22 = sub_100003344(&qword_10002CA28, &qword_100021EB8);
  v20(&v21[*(v22 + 48)], v11, v7);
  v23 = *(v8 + 8);
  v23(v17, v7);
  v23(v19, v7);
  v23(v11, v7);
  return (v23)(v14, v7);
}

uint64_t sub_100006AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  type metadata accessor for PlayerControls(0, a2, a3, a4);
  (*(a3 + 16))(v5, a3);
  sub_100009940();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v5) = v9;
  static Font.title3.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_100009994(v6, v8, v5 & 1);

  static Font.Weight.semibold.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  LOBYTE(v5) = v18;
  sub_100009994(v10, v12, v14 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v19 = Text.foregroundStyle<A>(_:)();
  v21 = v20;
  LOBYTE(v12) = v22;
  sub_100009994(v15, v17, v5 & 1);

  View.accessibilityIdentifier(_:)();
  sub_100009994(v19, v21, v12 & 1);
}

uint64_t sub_100006CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  type metadata accessor for PlayerControls(0, a2, a3, a4);
  (*(a3 + 24))(v5, a3);
  sub_100009940();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v5) = v9;
  static Font.title3.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_100009994(v6, v8, v5 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v15 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  LOBYTE(v6) = v18;
  sub_100009994(v10, v12, v14 & 1);

  View.accessibilityIdentifier(_:)();
  sub_100009994(v15, v17, v6 & 1);
}

uint64_t sub_100006E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a4;
  v100 = a3;
  v102 = a1;
  v94 = sub_100003344(&qword_10002C988, &qword_100021E08) - 8;
  __chkstk_darwin(v94);
  v93 = (&v74 - v6);
  v97 = sub_100003344(&qword_10002C928, &qword_100021DC8);
  v7 = __chkstk_darwin(v97);
  v98 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v95 = &v74 - v10;
  __chkstk_darwin(v9);
  v96 = &v74 - v11;
  v85 = type metadata accessor for LayoutDirection();
  v92 = *(v85 - 8);
  __chkstk_darwin(v85);
  v90 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003344(&qword_10002C990, &qword_100021E10);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = (&v74 - v15);
  v17 = *(a2 - 8);
  __chkstk_darwin(v14);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PlaybackProgressView(0, a2, a3, v20);
  v80 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  sub_1000050A8(&qword_10002C918, &qword_100022B10);
  v24 = type metadata accessor for ModifiedContent();
  v82 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v74 - v25;
  v78 = type metadata accessor for ModifiedContent();
  v87 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v74 - v27;
  v91 = sub_1000050A8(&qword_10002C920, &qword_100021DC0);
  v83 = type metadata accessor for ModifiedContent();
  v88 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v74 - v28;
  v86 = type metadata accessor for ModifiedContent();
  v89 = *(v86 - 8);
  v29 = __chkstk_darwin(v86);
  v81 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v101 = &v74 - v31;
  v32 = v100;
  v34 = type metadata accessor for PlayerControls(0, a2, v100, v33);
  (*(v17 + 16))(v19, v102 + *(v34 + 40), a2);
  v84 = a2;
  sub_100018510(v16);
  sub_100018570(v19, 0, 0, 1, v16, a2, v23, v32);
  static Color.secondary.getter();
  WitnessTable = swift_getWitnessTable();
  View.tint(_:)();

  v80[1](v23, v21);
  static Alignment.center.getter();
  v75 = &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>;
  v36 = sub_100005264(&qword_10002C998, &qword_10002C918, &qword_100022B10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v108[9] = WitnessTable;
  v108[10] = v36;
  v74 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v37 = swift_getWitnessTable();
  v38 = v77;
  View.frame(width:height:alignment:)();
  (*(v82 + 8))(v26, v24);
  swift_getKeyPath();
  LODWORD(v82) = enum case for LayoutDirection.leftToRight(_:);
  v39 = v92;
  v40 = *(v92 + 104);
  v76 = v92 + 104;
  v80 = v40;
  v41 = v90;
  v42 = v85;
  (v40)(v90);
  v108[7] = v37;
  v108[8] = &protocol witness table for _FrameLayout;
  v43 = v78;
  v44 = swift_getWitnessTable();
  v45 = v79;
  View.environment<A>(_:_:)();

  v46 = *(v39 + 8);
  v47 = v42;
  v46(v41, v42);
  (*(v87 + 8))(v38, v43);
  v48 = sub_100005264(&qword_10002C9A0, &qword_10002C920, &qword_100021DC0, v75);
  v108[5] = v44;
  v108[6] = v48;
  v49 = v83;
  v50 = swift_getWitnessTable();
  v51 = v81;
  View.opacity(_:)();
  (*(v88 + 8))(v45, v49);
  v108[3] = v50;
  v108[4] = &protocol witness table for _OpacityEffect;
  v52 = v86;
  v90 = swift_getWitnessTable();
  sub_1000178EC();
  v53 = v89;
  v92 = *(v89 + 8);
  (v92)(v51, v52);
  v54 = static VerticalAlignment.center.getter();
  v55 = v93;
  *v93 = v54;
  *(v55 + 8) = 0x4050C00000000000;
  *(v55 + 16) = 0;
  v56 = sub_100003344(&qword_10002C9A8, &qword_100021E48);
  sub_1000079D4(v102, v84, v100, (v55 + *(v56 + 44)));
  KeyPath = swift_getKeyPath();
  v58 = (v55 + *(v94 + 44));
  (v80)(v58 + *(v91 + 28), v82, v47);
  *v58 = KeyPath;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v59 = v95;
  sub_100004EE4(v55, v95, &qword_10002C988, &qword_100021E08);
  v60 = v96;
  v61 = v97;
  v62 = (v59 + *(v97 + 36));
  v63 = v114;
  v62[4] = v113;
  v62[5] = v63;
  v62[6] = v115;
  v64 = v110;
  *v62 = v109;
  v62[1] = v64;
  v65 = v112;
  v62[2] = v111;
  v62[3] = v65;
  sub_100004EE4(v59, v60, &qword_10002C928, &qword_100021DC8);
  v66 = *(v53 + 16);
  v67 = v51;
  v68 = v51;
  v69 = v101;
  v66(v68, v101, v52);
  v108[0] = v67;
  v70 = v98;
  sub_100004F5C(v60, v98, &qword_10002C928, &qword_100021DC8);
  v107 = 0x3FE999999999999ALL;
  v108[1] = v70;
  v108[2] = &v107;
  v106[0] = v52;
  v106[1] = v61;
  v106[2] = sub_100003344(&qword_10002C930, &qword_100021DD0);
  v103 = v90;
  v104 = sub_1000092B8();
  v105 = sub_100009428();
  sub_10001290C(v108, 3uLL, v106);
  sub_100003750(v60, &qword_10002C928, &qword_100021DC8);
  v71 = v69;
  v72 = v92;
  (v92)(v71, v52);
  sub_100003750(v70, &qword_10002C928, &qword_100021DC8);
  return v72(v67, v52);
}

uint64_t sub_1000079D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v80 = a4;
  v7 = type metadata accessor for SymbolEffectOptions();
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin(v7);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ReplaceSymbolEffect();
  v76 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100003344(&qword_10002C9E0, &qword_100021E58) - 8;
  __chkstk_darwin(v68);
  v67 = &v58 - v10;
  v75 = sub_100003344(&qword_10002C9E8, &qword_100021E60) - 8;
  v11 = __chkstk_darwin(v75);
  v79 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v71 = &v58 - v14;
  __chkstk_darwin(v13);
  v73 = &v58 - v15;
  v17 = type metadata accessor for PlayerControls(0, a2, a3, v16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v58 - v20;
  v83 = *(v18 + 16);
  v84 = v18 + 16;
  v60 = &v58 - v20;
  v66 = a1;
  v83(&v58 - v20, a1, v17);
  v81 = *(v18 + 80);
  v22 = (v81 + 32) & ~v81;
  v65 = v19;
  v23 = swift_allocObject();
  v72 = v23;
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v82 = *(v18 + 32);
  v59 = v17;
  v82(v23 + v22, v21, v17);
  v24 = *(a3 + 48);
  v25 = v24(a2, a3);
  v26 = 2036427888;
  if (v25)
  {
    v26 = 0x6573756170;
  }

  v62 = v26;
  v27 = 0xE400000000000000;
  if (v25)
  {
    v27 = 0xE500000000000000;
  }

  v61 = v27;
  v28 = a2;
  v29 = a2;
  v63 = a2;
  v30 = a3;
  v64 = a3;
  if (v24(v28, a3))
  {
    v31 = 50.0;
  }

  else
  {
    v31 = 40.0;
  }

  v32 = v60;
  v33 = v59;
  v83(v60, a1, v59);
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  *(v34 + 24) = v30;
  v35 = v34 + v22;
  v36 = v22;
  v37 = v32;
  v38 = v33;
  v82(v35, v32, v33);
  v39 = v69;
  ReplaceSymbolEffect.init()();
  v40 = v70;
  static SymbolEffectOptions.speed(_:)();
  v41 = v67;
  v42 = &v67[*(v68 + 44)];
  sub_100003344(&qword_10002C9F0, &qword_100021E68);
  sub_1000098EC(&qword_10002C9F8, &type metadata accessor for ReplaceSymbolEffect, &protocol conformance descriptor for ReplaceSymbolEffect);
  v43 = v74;
  static ContentTransition.symbolEffect<A>(_:options:)();
  (*(v77 + 8))(v40, v78);
  (*(v76 + 8))(v39, v43);
  *v42 = swift_getKeyPath();
  v44 = v61;
  *v41 = v62;
  *(v41 + 8) = v44;
  *(v41 + 16) = sub_100009520;
  *(v41 + 24) = v34;
  *(v41 + 32) = v31;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v45 = v71;
  sub_100004EE4(v41, v71, &qword_10002C9E0, &qword_100021E58);
  v46 = (v45 + *(v75 + 44));
  v47 = v86;
  *v46 = v85;
  v46[1] = v47;
  v46[2] = v87;
  v48 = v73;
  sub_100004EE4(v45, v73, &qword_10002C9E8, &qword_100021E60);
  v83(v37, v66, v38);
  v49 = swift_allocObject();
  v50 = v64;
  *(v49 + 16) = v63;
  *(v49 + 24) = v50;
  v82(v49 + v36, v37, v38);
  v51 = v79;
  sub_100004F5C(v48, v79, &qword_10002C9E8, &qword_100021E60);
  v52 = v80;
  *v80 = 0x647261776B636162;
  v52[1] = 0xE800000000000000;
  v53 = v72;
  v52[2] = sub_100009508;
  v52[3] = v53;
  v52[4] = 0x403C000000000000;
  v54 = v52;
  v55 = sub_100003344(&qword_10002CA00, &qword_100021EA0);
  sub_100004F5C(v51, v54 + *(v55 + 48), &qword_10002C9E8, &qword_100021E60);
  v56 = (v54 + *(v55 + 64));
  *v56 = 0x64726177726F66;
  v56[1] = 0xE700000000000000;
  v56[2] = sub_100009774;
  v56[3] = v49;
  v56[4] = 0x403C000000000000;

  sub_100003750(v48, &qword_10002C9E8, &qword_100021E60);

  sub_100003750(v51, &qword_10002C9E8, &qword_100021E60);
}

uint64_t sub_10000819C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlayerControls(0, a2, a3, a4);
  sub_100003344(&qword_10002C940, &qword_100021DD8);
  State.wrappedValue.setter();
  return (*(a3 + 56))(a2, a3);
}

uint64_t sub_100008250(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void), uint64_t a4)
{
  type metadata accessor for PlayerControls(0, a2, a3, a4);
  sub_100003344(&qword_10002C940, &qword_100021DD8);
  State.wrappedValue.setter();
  if (a3[6](a2, a3))
  {
    return a3[10](a2, a3);
  }

  else
  {
    return a3[9](a2, a3);
  }
}

uint64_t sub_100008348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlayerControls(0, a2, a3, a4);
  sub_100003344(&qword_10002C940, &qword_100021DD8);
  State.wrappedValue.setter();
  return (*(a3 + 64))(a2, a3);
}

uint64_t sub_1000083FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ScenePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v11, enum case for ScenePhase.background(_:), v8);
  v12 = static ScenePhase.== infix(_:_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v15 = (a3 + *(type metadata accessor for PlayerControls(0, a4, a5, v14) + 44));
    v17 = *(v15 + 1);
    v21 = *v15;
    v16 = v21;
    v22 = v17;
    sub_100003344(&qword_10002C940, &qword_100021DD8);
    State.wrappedValue.getter();
    sub_100003344(&qword_10002C948, &unk_100021DE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100021CC0;
    *(inited + 32) = 0x7463617265746E69;
    *(inited + 40) = 0xEB000000006E6F69;
    *(inited + 48) = Bool._bridgeToObjectiveC()();
    v19 = sub_10000F13C(inited);
    swift_setDeallocating();
    sub_100003750(inited + 32, &qword_10002C950, &qword_1000222A0);
    sub_10000CAAC(0xD000000000000021, 0x8000000100025D50, v19);

    v21 = v16;
    v22 = v17;
    v20[63] = 0;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100008658@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003344(qword_10002C878, &qword_100021D38);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004F5C(v2, &v14 - v9, qword_10002C878, &qword_100021D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
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

void sub_1000088C4(uint64_t a1)
{
  sub_100008EA0(319, &qword_10002C788, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_100008EA0(319, &qword_10002C900, &type metadata accessor for ScenePhase);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_100008EF4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000089B4(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(type metadata accessor for ScenePhase() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v7 + v15 + 1;
  v17 = v9 + v13 + 1;
  v18 = *(v10 + 64) + 7;
  if (v14 < a2)
  {
    v19 = ((v18 + ((v17 + (v16 & ~v15)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v14 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (!v24)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (!v24)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v23)
      {
        goto LABEL_33;
      }

      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    v31 = v14 + (v27 | v26);
    return (v31 + 1);
  }

LABEL_33:
  v28 = (v17 + ((a1 + v16) & ~v15)) & ~v13;
  if (v11 < 0x7FFFFFFE)
  {
    v30 = *(((v18 + v28) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    v31 = v30 - 1;
    if (v31 < 0)
    {
      v31 = -1;
    }

    return (v31 + 1);
  }

  v29 = *(v10 + 48);

  return v29(v28);
}

void sub_100008C0C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for ScenePhase() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v13 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = v14 & 0xF8 | 7;
  v18 = v9 + v17 + 1;
  v19 = v11 + v15 + 1;
  v20 = *(v12 + 64) + 7;
  v21 = ((v20 + ((v19 + (v18 & ~v17)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v24 = 0;
    v25 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (((v20 + ((v19 + (v18 & ~v17)) & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v16 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_23:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
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
      v28 = (v19 + ((a1 + v18) & ~v17)) & ~v15;
      if (v13 < 0x7FFFFFFE)
      {
        v30 = ((v20 + v28) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v30 = (a2 - 0x7FFFFFFF);
          v30[1] = 0;
        }

        else
        {
          v30[1] = a2;
        }
      }

      else
      {
        v29 = *(v12 + 56);

        v29(v28, a2);
      }

      return;
    }
  }

  if (((v20 + ((v19 + (v18 & ~v17)) & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((v20 + ((v19 + (v18 & ~v17)) & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v27 = ~v16 + a2;
    bzero(a1, v21);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

void sub_100008EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100008EF4()
{
  if (!qword_10002C908)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10002C908);
    }
  }
}

uint64_t sub_100008F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for PlayerControls(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1000083FC(a1, a2, v10, v7, v8);
}

uint64_t sub_100009034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100009110()
{
  result = qword_10002C968;
  if (!qword_10002C968)
  {
    sub_1000050A8(&qword_10002C910, &unk_100021DB0);
    sub_10000919C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C968);
  }

  return result;
}

unint64_t sub_10000919C()
{
  result = qword_10002C970;
  if (!qword_10002C970)
  {
    sub_1000050A8(&qword_10002C958, &qword_100021DF0);
    sub_100005264(&qword_10002C978, &qword_10002C980, &qword_100021E00, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C970);
  }

  return result;
}

unint64_t sub_1000092B8()
{
  result = qword_10002C9B0;
  if (!qword_10002C9B0)
  {
    sub_1000050A8(&qword_10002C928, &qword_100021DC8);
    sub_100009344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9B0);
  }

  return result;
}

unint64_t sub_100009344()
{
  result = qword_10002C9B8;
  if (!qword_10002C9B8)
  {
    sub_1000050A8(&qword_10002C988, &qword_100021E08);
    sub_100005264(&qword_10002C9C0, &qword_10002C9C8, &qword_100021E50, &protocol conformance descriptor for HStack<A>);
    sub_100005264(&qword_10002C9A0, &qword_10002C920, &qword_100021DC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9B8);
  }

  return result;
}

unint64_t sub_100009428()
{
  result = qword_10002C9D0;
  if (!qword_10002C9D0)
  {
    sub_1000050A8(&qword_10002C930, &qword_100021DD0);
    sub_1000094B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9D0);
  }

  return result;
}

unint64_t sub_1000094B4()
{
  result = qword_10002C9D8;
  if (!qword_10002C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9D8);
  }

  return result;
}

uint64_t sub_10000959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PlayerControls(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = v4 + v8;
  sub_100003344(&qword_10002C7D0, &qword_100021C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v4 + v8, v11);
  }

  else
  {
  }

  v12 = *(v6 + 36);
  sub_100003344(qword_10002C878, &qword_100021D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v10 + *(v6 + 40), v5);

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_10000978C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for PlayerControls(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_100009830()
{
  result = qword_10002CA18;
  if (!qword_10002CA18)
  {
    sub_1000050A8(&qword_10002CA10, &qword_100021EB0);
    sub_1000098EC(&qword_10002CA20, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA18);
  }

  return result;
}

uint64_t sub_1000098EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100009940()
{
  result = qword_10002CA30;
  if (!qword_10002CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA30);
  }

  return result;
}

uint64_t sub_100009994(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000099D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1000050A8(&qword_10002C910, &unk_100021DB0);
  type metadata accessor for PlaybackProgressView(255, v1, v2, v3);
  sub_1000050A8(&qword_10002C918, &qword_100022B10);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C920, &qword_100021DC0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C928, &qword_100021DC8);
  sub_1000050A8(&qword_10002C930, &qword_100021DD0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for _BlendModeEffect();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ScenePhase();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000098EC(&qword_10002C938, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100009C68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100009C7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100009CC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009D38@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100003344(&qword_10002CA70, &qword_100022F10);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4;
  v6 = type metadata accessor for SymbolVariants();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15[1] = Image.init(systemName:)();
  static SymbolVariants.fill.getter();
  View.symbolVariant(_:)();
  (*(v7 + 8))(v9, v6);

  static Font.Weight.semibold.getter();
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  sub_10000A3E0(v5);
  KeyPath = swift_getKeyPath();
  result = sub_100003344(&qword_10002CA40, &qword_100021F58);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  return result;
}

uint64_t sub_100009F4C()
{
  v1 = type metadata accessor for PlainButtonStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100003344(&qword_10002CA38, &qword_100021F50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  v9 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v9;
  v17 = *(v0 + 32);
  v18 = v16[0];
  v10 = swift_allocObject();
  v11 = *(v0 + 16);
  *(v10 + 16) = *v0;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v0 + 32);
  v14 = v16;
  sub_10000A244(&v18, v15);

  sub_100003344(&qword_10002CA40, &qword_100021F58);
  sub_10000A2A0();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005264(&qword_10002CA60, &qword_10002CA38, &qword_100021F50, &protocol conformance descriptor for Button<A>);
  sub_10000A388();
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000A1D4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10000A2A0()
{
  result = qword_10002CA48;
  if (!qword_10002CA48)
  {
    sub_1000050A8(&qword_10002CA40, &qword_100021F58);
    swift_getOpaqueTypeConformance2();
    sub_100005264(&qword_10002CA50, &qword_10002CA58, &unk_100021F60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA48);
  }

  return result;
}

unint64_t sub_10000A388()
{
  result = qword_10002CA68;
  if (!qword_10002CA68)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA68);
  }

  return result;
}

uint64_t sub_10000A3E0(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002CA70, &qword_100022F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A450()
{
  sub_1000050A8(&qword_10002CA38, &qword_100021F50);
  type metadata accessor for PlainButtonStyle();
  sub_100005264(&qword_10002CA60, &qword_10002CA38, &qword_100021F50, &protocol conformance descriptor for Button<A>);
  sub_10000A388();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A52C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100003344(&qword_10002CA78, &qword_1000229E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  type metadata accessor for PlayerViewModel(0);
  v5 = swift_allocObject();
  type metadata accessor for Player();
  *(v5 + 16) = static Player.shared.getter();
  ObservationRegistrar.init()();
  v6 = type metadata accessor for Artwork();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for ArtworkViewModel(0);
  swift_allocObject();
  v7 = sub_10001EDEC(v4, 0, 0.0, 0.0);
  *a1 = v5;
  v8 = *(sub_100003344(&qword_10002CA80, &qword_100022010) + 40);
  *(a1 + v8) = swift_getKeyPath();
  sub_100003344(&qword_10002C7D0, &qword_100021C30);
  result = swift_storeEnumTagMultiPayload();
  a1[1] = v7;
  return result;
}

uint64_t sub_10000A6F0(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_10000A7C0()
{
  result = qword_10002CA88;
  if (!qword_10002CA88)
  {
    sub_1000050A8(&qword_10002CA80, &qword_100022010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA88);
  }

  return result;
}

uint64_t sub_10000A824(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for Player.PlaybackStatus();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v27 - v9;
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  type metadata accessor for ControlWidgetStateManager();
  static ControlWidgetStateManager.currentPlaybackStatus.getter();
  v13 = *(v4 + 16);
  v13(v10, a1, v3);
  static ControlWidgetStateManager.currentPlaybackStatus.setter();
  if (sub_10000BA84(v12, a1))
  {
    if (qword_10002C590 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005380(v14, qword_10002E470);
    v13(v7, a1, v3);
    v15 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v29))
    {
      v16 = swift_slowAlloc();
      v27 = v12;
      v17 = v16;
      v28 = swift_slowAlloc();
      v31 = v28;
      *v17 = 136315138;
      v13(v10, v7, v3);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      (*(v4 + 8))(v7, v3);
      v24 = sub_10000B100(v18, v20, &v31, v21, v22, v23);

      v25 = v17;
      v12 = v27;
      *(v25 + 1) = v24;
      _os_log_impl(&_mh_execute_header, v15, v29, "Updating Widget playback status to %s", v25, 0xCu);
      sub_10000C08C(v28);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    static ControlWidgetStateManager.reload()();
  }

  sub_10000C544(a1);
  return (*(v4 + 8))(v12, v3);
}

uint64_t sub_10000AC84()
{
  v0 = type metadata accessor for Player.PlaybackStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ControlWidgetStateManager();
  (*(v1 + 104))(v3, enum case for Player.PlaybackStatus.idle(_:), v0);
  static ControlWidgetStateManager.currentPlaybackStatus.setter();
  return static ControlWidgetStateManager.reload()();
}

uint64_t sub_10000AD60(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000AE58()
{
  v0 = sub_100003344(&qword_10002CAB0, &unk_100022100);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_10000C138();
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000C18C();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_10000AF80@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))(uint64_t a1)
{
  result = sub_10000B6A8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000AFE4();
  static App.main()();
  return 0;
}

unint64_t sub_10000AFE4()
{
  result = qword_10002CA90;
  if (!qword_10002CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA90);
  }

  return result;
}

__n128 sub_10000B038(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B04C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000B094(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10000B100(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v9 = sub_10000B1CC(v14, 0, 0, 1, a1, a2);
  v10 = v14[0];
  if (!v9)
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = v9;

  ObjectType = swift_getObjectType();
  v14[0] = v11;
  v12 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000C0D8(v14, v12);
    *a3 = v12 + 32;
  }

LABEL_4:
  sub_10000C08C(v14);
  return v10;
}

unint64_t sub_10000B1CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000B2D8(a5, a6);
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

char *sub_10000B2D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000B324(a1, a2);
  sub_10000B454(&off_100029728);
  return v3;
}

char *sub_10000B324(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000B540(v5, 0);
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
        v7 = sub_10000B540(v10, 0);
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

uint64_t sub_10000B454(uint64_t result)
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

  result = sub_10000B5B4(result, v11, 1, v3);
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

void *sub_10000B540(uint64_t a1, uint64_t a2)
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

  sub_100003344(&qword_10002CAA0, &qword_1000220F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B5B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003344(&qword_10002CAA0, &qword_1000220F0);
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

uint64_t (*sub_10000B6A8())(uint64_t a1)
{
  v0 = type metadata accessor for Player.PlaybackStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Analytics(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(v4 + v5, 1, 1, v6);
  v7(v4 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate, 1, 1, v6);
  v8 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  v9 = type metadata accessor for Mood.Playlist();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = (v4 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction);
  *v10 = sub_10000CAAC;
  v10[1] = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10000BA24;
  *(v11 + 24) = v4;
  swift_retain_n();
  withObservationTracking<A>(_:didSet:)();

  v12 = [objc_opt_self() defaultCenter];
  v13 = [objc_opt_self() mainQueue];
  aBlock[4] = sub_10000AC84;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AD60;
  aBlock[3] = &unk_100029C78;
  v14 = _Block_copy(aBlock);
  v15 = [v12 addObserverForName:UIApplicationWillTerminateNotification object:0 queue:v13 usingBlock:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();

  type metadata accessor for ControlWidgetStateManager();
  (*(v1 + 104))(v3, enum case for Player.PlaybackStatus.idle(_:), v0);
  static ControlWidgetStateManager.currentPlaybackStatus.setter();
  static ControlWidgetStateManager.reload()();
  return sub_10000BA24;
}

uint64_t sub_10000BA2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10000BA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10000BA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mood.Playlist();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = __chkstk_darwin(v4);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v52 - v7;
  v8 = type metadata accessor for Player.PlaybackStatus();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v52 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_100003344(&qword_10002CAA8, &qword_1000220F8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v18 = type metadata accessor for PlaybackInfo();
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = __chkstk_darwin(v18);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v53 = &v52 - v21;
  v22 = *(v15 + 56);
  v23 = v9[2];
  v23(v17, a1, v8);
  v23(&v17[v22], a2, v8);
  v24 = v9[11];
  v25 = v24(v17, v8);
  v26 = v25;
  v61 = v9;
  if (v25 != enum case for Player.PlaybackStatus.loading(_:))
  {
    if (v25 == enum case for Player.PlaybackStatus.paused(_:))
    {
      if (v24(&v17[v22], v8) == v25)
      {
        v48 = *(v61 + 8);
        v48(&v17[v22], v8);
        v48(v17, v8);
        v47 = 0;
        return v47 & 1;
      }

LABEL_12:
      sub_100003750(v17, &qword_10002CAA8, &qword_1000220F8);
      v47 = 1;
      return v47 & 1;
    }

    v49 = v61;
    if (v25 != enum case for Player.PlaybackStatus.playing(_:))
    {
      if (v25 == enum case for Player.PlaybackStatus.idle(_:) && v24(&v17[v22], v8) == v25)
      {
        (*(v49 + 8))(v17, v8);
        v47 = 0;
        return v47 & 1;
      }

      goto LABEL_12;
    }

    v28 = v52;
    v23(v52, v17, v8);
    v27 = *(v49 + 96);
    v27(v28, v8);
    if (v24(&v17[v22], v8) == v26)
    {
      goto LABEL_3;
    }

LABEL_11:
    (*(v59 + 8))(v28, v60);
    goto LABEL_12;
  }

  v23(v13, v17, v8);
  v27 = v9[12];
  v27(v13, v8);
  v28 = v13;
  if (v24(&v17[v22], v8) != v26)
  {
    goto LABEL_11;
  }

LABEL_3:
  v27(&v17[v22], v8);
  v29 = v59;
  v30 = *(v59 + 32);
  v31 = v53;
  v32 = v28;
  v33 = v60;
  v30(v53, v32, v60);
  v34 = &v17[v22];
  v35 = v54;
  v30(v54, v34, v33);
  (*(v61 + 8))(v17, v8);
  v36 = v55;
  PlaybackInfo.playlist.getter();
  v37 = *(v29 + 8);
  v37(v31, v33);
  v61 = Mood.Playlist.id.getter();
  v39 = v38;
  v40 = *(v57 + 8);
  v41 = v36;
  v42 = v58;
  v40(v41, v58);
  v43 = v56;
  PlaybackInfo.playlist.getter();
  v37(v35, v33);
  v44 = Mood.Playlist.id.getter();
  v46 = v45;
  v40(v43, v42);
  if (v61 == v44 && v39 == v46)
  {

    v47 = 0;
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v47 = v50 ^ 1;
  }

  return v47 & 1;
}

uint64_t sub_10000C08C(void *a1)
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

uint64_t sub_10000C0D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000C138()
{
  result = qword_10002CAB8;
  if (!qword_10002CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAB8);
  }

  return result;
}

unint64_t sub_10000C18C()
{
  result = qword_10002CAC0;
  if (!qword_10002CAC0)
  {
    sub_1000050A8(&qword_10002CAB0, &unk_100022100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAC0);
  }

  return result;
}

unint64_t sub_10000C208()
{
  result = qword_10002CAC8;
  if (!qword_10002CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAC8);
  }

  return result;
}

id sub_10000C25C()
{
  v0 = [objc_allocWithZone(AVRoutePickerView) init];
  v1 = [objc_opt_self() labelColor];
  [v0 setActiveTintColor:v1];

  return v0;
}

uint64_t sub_10000C334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C424();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000C398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C424();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000C3FC(uint64_t a1)
{
  sub_10000C424();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10000C424()
{
  result = qword_10002CAD0;
  if (!qword_10002CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAD0);
  }

  return result;
}

uint64_t sub_10000C478()
{
  sub_100003344(&qword_10002CAD8, &qword_100022258);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100021CC0;
  v1 = type metadata accessor for AdaptiveMusicAppIntentsPackage();
  v2 = sub_10000C4EC();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

unint64_t sub_10000C4EC()
{
  result = qword_10002CAE0;
  if (!qword_10002CAE0)
  {
    type metadata accessor for AdaptiveMusicAppIntentsPackage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAE0);
  }

  return result;
}

uint64_t sub_10000C544(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for Mood.Playlist();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = __chkstk_darwin(v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v27 = &v27 - v5;
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for PlaybackInfo();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v27 - v14;
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v18 = type metadata accessor for Player.PlaybackStatus();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v31, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for Player.PlaybackStatus.loading(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v9 + 32))(v17, v21, v8);
    PlaybackInfo.playlist.getter();
    sub_10000D1F4(v7);
LABEL_9:
    (*(v29 + 8))(v7, v30);
    return (*(v9 + 8))(v17, v8);
  }

  v23 = v32;
  if (v22 == enum case for Player.PlaybackStatus.paused(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v9 + 32))(v12, v21, v8);
    v24 = v28;
    PlaybackInfo.playlist.getter();
    sub_10000E4EC(v24);
    if (v23)
    {
      v7 = v24;
      v17 = v12;
      goto LABEL_9;
    }

    (*(v29 + 8))(v24, v30);
    return (*(v9 + 8))(v12, v8);
  }

  else if (v22 == enum case for Player.PlaybackStatus.playing(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v9 + 32))(v15, v21, v8);
    v25 = v27;
    PlaybackInfo.playlist.getter();
    sub_10000D558(v25);
    if (v23)
    {
      v7 = v25;
      v17 = v15;
      goto LABEL_9;
    }

    (*(v29 + 8))(v25, v30);
    return (*(v9 + 8))(v15, v8);
  }

  else if (v22 == enum case for Player.PlaybackStatus.idle(_:))
  {
    return sub_10000CDD4();
  }

  else
  {
    return (*(v19 + 8))(v21, v18);
  }
}

uint64_t sub_10000C9F0()
{
  v0 = type metadata accessor for Logger();
  sub_10000531C(v0, qword_10002CAE8);
  sub_100005380(v0, qword_10002CAE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000CA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;

  return v7;
}

void sub_10000CAAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_10002C598 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005380(v6, qword_10002CAE8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v9 = 136315395;
    *(v9 + 4) = sub_10000B100(a1, a2, v22, v10, v11, v12);
    *(v9 + 12) = 2081;
    sub_10000F5E0(0, &qword_10002CC38, NSObject_ptr);
    v13 = Dictionary.description.getter();
    v18 = sub_10000B100(v13, v14, v22, v15, v16, v17);

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Send analytics event: %s, payload: %{private}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v22[4] = sub_10000F5C0;
  v22[5] = v20;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10000CD38;
  v22[3] = &unk_100029D08;
  v21 = _Block_copy(v22);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

Class sub_10000CD38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10000F5E0(0, &qword_10002CC38, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_10000CDD4()
{
  v1 = sub_100003344(&qword_10002CBF8, &unk_100022290);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v27 = &v25 - v12;
  v13 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  swift_beginAccess();
  sub_100004F5C(v0 + v13, v6, &qword_10002CBF8, &unk_100022290);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
  }

  else
  {
    (*(v8 + 32))(v27, v6, v7);
    v16 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate;
    swift_beginAccess();
    sub_100004F5C(v0 + v16, v4, &qword_10002CBF8, &unk_100022290);
    if (v14(v4, 1, v7) == 1)
    {
      sub_100003750(v4, &qword_10002CBF8, &unk_100022290);
      v17 = *(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction);
      v25 = "_playingPlaylist";
      v26 = v17;
      sub_100003344(&qword_10002C948, &unk_100021DE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100022270;
      *(inited + 32) = 0x746C75736572;
      *(inited + 40) = 0xE600000000000000;
      sub_10000F5E0(0, &qword_10002CC00, NSNumber_ptr);

      *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(0);
      *(inited + 56) = 0x79636E6574616CLL;
      *(inited + 64) = 0xE700000000000000;
      Date.init()();
      v19 = v27;
      Date.timeIntervalSince(_:)();
      v21 = v20;
      v22 = *(v8 + 8);
      v22(v11, v7);
      *(inited + 72) = [objc_allocWithZone(NSNumber) initWithDouble:v21];
      v23 = sub_10000F13C(inited);
      swift_setDeallocating();
      sub_100003344(&qword_10002C950, &qword_1000222A0);
      swift_arrayDestroy();
      v26(0xD000000000000027, v25 | 0x8000000000000000, v23);

      return (v22)(v19, v7);
    }

    (*(v8 + 8))(v27, v7);
    v15 = v4;
  }

  return sub_100003750(v15, &qword_10002CBF8, &unk_100022290);
}

uint64_t sub_10000D1F4(uint64_t a1)
{
  v20[0] = a1;
  v2 = sub_100003344(&qword_10002CBF8, &unk_100022290);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = sub_100003344(&qword_10002CC10, &qword_1000222B0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = type metadata accessor for Mood.Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  swift_beginAccess();
  sub_100004F5C(v1 + v15, v10, &qword_10002CC10, &qword_1000222B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100003750(v10, &qword_10002CC10, &qword_1000222B0);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = v20[1];
    sub_10000E4EC(v14);
    if (v16)
    {
      return (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 8))(v14, v11);
  }

  Date.init()();
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  swift_beginAccess();
  sub_10000F240(v4, v1 + v19, &qword_10002CBF8, &unk_100022290);
  swift_endAccess();
  (*(v12 + 16))(v8, v20[0], v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_10000F240(v8, v1 + v15, &qword_10002CC10, &qword_1000222B0);
  return swift_endAccess();
}

uint64_t sub_10000D558(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  v115 = type metadata accessor for Mood.Playlist();
  v118 = *(v115 - 8);
  v3 = __chkstk_darwin(v115);
  v99 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v98 = v95 - v5;
  v102 = sub_100003344(&qword_10002CC18, &qword_1000222B8);
  __chkstk_darwin(v102);
  v104 = v95 - v6;
  v108 = sub_100003344(&qword_10002CC10, &qword_1000222B0);
  v7 = __chkstk_darwin(v108);
  v114 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v106 = v95 - v10;
  v11 = __chkstk_darwin(v9);
  v100 = v95 - v12;
  v13 = __chkstk_darwin(v11);
  v101 = v95 - v14;
  v15 = __chkstk_darwin(v13);
  v103 = v95 - v16;
  __chkstk_darwin(v15);
  v109 = (v95 - v17);
  v107 = sub_100003344(&qword_10002CBF8, &unk_100022290);
  v18 = __chkstk_darwin(v107);
  v113 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v112 = v95 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v95 - v23;
  __chkstk_darwin(v22);
  v26 = v95 - v25;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v95 - v32;
  v34 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  swift_beginAccess();
  v116 = v34;
  v35 = v2 + v34;
  v36 = v2;
  v37 = v27;
  sub_100004F5C(v35, v26, &qword_10002CBF8, &unk_100022290);
  v38 = *(v28 + 48);
  v120 = v28 + 48;
  v119 = v38;
  v39 = v38(v26, 1, v27);
  v121 = v27;
  v117 = v2;
  v105 = v28;
  if (v39 == 1)
  {
    sub_100003750(v26, &qword_10002CBF8, &unk_100022290);
  }

  else
  {
    (*(v28 + 32))(v33, v26, v27);
    v40 = *(v2 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction + 8);
    v97 = *(v36 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction);
    v95[1] = v40;
    v96 = "_playingPlaylist";
    sub_100003344(&qword_10002C948, &unk_100021DE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100022270;
    *(inited + 32) = 0x746C75736572;
    *(inited + 40) = 0xE600000000000000;
    sub_10000F5E0(0, &qword_10002CC00, NSNumber_ptr);

    *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
    *(inited + 56) = 0x79636E6574616CLL;
    *(inited + 64) = 0xE700000000000000;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v43 = v42;
    v44 = *(v28 + 8);
    v44(v31, v121);
    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithDouble:v43];
    v45 = sub_10000F13C(inited);
    swift_setDeallocating();
    sub_100003344(&qword_10002C950, &qword_1000222A0);
    swift_arrayDestroy();
    v97(0xD000000000000027, v96 | 0x8000000000000000, v45);

    v36 = v117;

    v44(v33, v121);
    v37 = v121;
  }

  v46 = v115;
  v47 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate;
  swift_beginAccess();
  v48 = v36;
  sub_100004F5C(v36 + v47, v24, &qword_10002CBF8, &unk_100022290);
  v49 = v119(v24, 1, v37);
  sub_100003750(v24, &qword_10002CBF8, &unk_100022290);
  v50 = v118;
  if (v49 != 1)
  {
    v64 = 0;
    goto LABEL_22;
  }

  v115 = v47;
  v51 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  swift_beginAccess();
  v52 = v109;
  sub_100004F5C(v36 + v51, v109, &qword_10002CC10, &qword_1000222B0);
  v53 = v50 + 48;
  v54 = *(v50 + 48);
  v55 = (v54)(v52, 1, v46);
  sub_100003750(v52, &qword_10002CC10, &qword_1000222B0);
  if (v55 != 1)
  {
    v64 = 0;
    v48 = v117;
    v47 = v115;
    goto LABEL_22;
  }

  v56 = v54;
  v57 = v103;
  (*(v50 + 16))(v103, v111, v46);
  (*(v50 + 56))(v57, 0, 1, v46);
  v58 = v46;
  v59 = *(v102 + 48);
  v60 = v104;
  sub_100004F5C(v117 + v51, v104, &qword_10002CC10, &qword_1000222B0);
  sub_100004F5C(v57, v60 + v59, &qword_10002CC10, &qword_1000222B0);
  v61 = v56(v60, 1, v46);
  v62 = v53;
  if (v61 == 1)
  {
    sub_100003750(v57, &qword_10002CC10, &qword_1000222B0);
    v63 = v56(v60 + v59, 1, v58);
    v47 = v115;
    if (v63 == 1)
    {
      sub_100003750(v60, &qword_10002CC10, &qword_1000222B0);
      v64 = 0;
      v48 = v117;
      v50 = v118;
      v46 = v58;
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v65 = v101;
  sub_100004F5C(v60, v101, &qword_10002CC10, &qword_1000222B0);
  if (v56(v60 + v59, 1, v58) == 1)
  {
    sub_100003750(v57, &qword_10002CC10, &qword_1000222B0);
    (*(v118 + 8))(v65, v58);
    v47 = v115;
LABEL_13:
    v109 = v56;
    v102 = v62;
    sub_100003750(v60, &qword_10002CC18, &qword_1000222B8);
    v46 = v58;
    goto LABEL_14;
  }

  v109 = v56;
  v102 = v53;
  v71 = v118;
  v72 = v57;
  v73 = v98;
  (*(v118 + 32))(v98, v60 + v59, v58);
  sub_10000F2FC(&qword_10002CC28, &protocol conformance descriptor for Mood.Playlist);
  v74 = dispatch thunk of static Equatable.== infix(_:_:)();
  v75 = *(v71 + 8);
  v75(v73, v58);
  sub_100003750(v72, &qword_10002CC10, &qword_1000222B0);
  v75(v101, v58);
  sub_100003750(v60, &qword_10002CC10, &qword_1000222B0);
  v46 = v58;
  v47 = v115;
  if (v74)
  {
    v64 = 0;
    v48 = v117;
    goto LABEL_20;
  }

LABEL_14:
  v66 = v117;
  v67 = v100;
  sub_100004F5C(v117 + v51, v100, &qword_10002CC10, &qword_1000222B0);
  if (v109(v67, 1, v46) == 1)
  {
    sub_100003750(v67, &qword_10002CC10, &qword_1000222B0);
    v64 = 1;
    v48 = v66;
LABEL_20:
    v50 = v118;
    goto LABEL_22;
  }

  v50 = v118;
  v68 = v99;
  (*(v118 + 32))(v99, v67, v46);
  v69 = v110;
  sub_10000E4EC(v68);
  if (v69)
  {
    return (*(v50 + 8))(v68, v46);
  }

  v48 = v66;
  v110 = 0;
  (*(v50 + 8))(v68, v46);
  v64 = 1;
LABEL_22:
  v76 = v112;
  sub_100004F5C(v48 + v116, v112, &qword_10002CBF8, &unk_100022290);
  v77 = v119(v76, 1, v121);
  sub_100003750(v76, &qword_10002CBF8, &unk_100022290);
  if (v77 == 1)
  {
    v78 = v113;
    if (!v64)
    {
LABEL_24:
      v122 = 0;
      v123 = 0xE000000000000000;
      _StringGuts.grow(_:)(86);
      v124 = v122;
      v125 = v123;
      v79._countAndFlagsBits = 0xD000000000000044;
      v79._object = 0x8000000100025EA0;
      String.append(_:)(v79);
      sub_100004F5C(v48 + v47, v78, &qword_10002CBF8, &unk_100022290);
      v80._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v80);

      v81._countAndFlagsBits = 0x616C7020646E6120;
      v81._object = 0xEE00207473696C79;
      String.append(_:)(v81);
      v82 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
      swift_beginAccess();
      sub_100004F5C(v48 + v82, v114, &qword_10002CC10, &qword_1000222B0);
      v83._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v83);

      v84 = v124;
      v85 = v125;
      sub_10000F2A8();
      swift_allocError();
      *v86 = v84;
      v86[1] = v85;
      return swift_willThrow();
    }
  }

  else
  {
    v87 = v46;
    v88 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
    swift_beginAccess();
    v89 = v48 + v88;
    v46 = v87;
    v90 = v106;
    sub_100004F5C(v89, v106, &qword_10002CC10, &qword_1000222B0);
    LODWORD(v87) = (*(v50 + 48))(v90, 1, v87);
    sub_100003750(v90, &qword_10002CC10, &qword_1000222B0);
    if (v87 == 1)
    {
      v91 = v64;
    }

    else
    {
      v91 = 1;
    }

    v78 = v113;
    if ((v91 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  Date.init()();
  (*(v105 + 56))(v78, 0, 1, v121);
  swift_beginAccess();
  sub_10000F240(v78, v48 + v47, &qword_10002CBF8, &unk_100022290);
  swift_endAccess();
  if (v64)
  {
    sub_100004F5C(v48 + v47, v78, &qword_10002CBF8, &unk_100022290);
    v92 = v116;
    swift_beginAccess();
    sub_10000F240(v78, v48 + v92, &qword_10002CBF8, &unk_100022290);
    swift_endAccess();
  }

  v93 = v114;
  (*(v50 + 16))(v114, v111, v46);
  (*(v50 + 56))(v93, 0, 1, v46);
  v94 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  swift_beginAccess();
  sub_10000F240(v93, v48 + v94, &qword_10002CC10, &qword_1000222B0);
  return swift_endAccess();
}

uint64_t sub_10000E4EC(uint64_t a1)
{
  v23 = a1;
  v2 = sub_100003344(&qword_10002CBF8, &unk_100022290);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - v6;
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate;
  swift_beginAccess();
  sub_100004F5C(v1 + v14, v9, &qword_10002CBF8, &unk_100022290);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    v7 = v9;
LABEL_5:
    sub_100003750(v7, &qword_10002CBF8, &unk_100022290);
    sub_10000F2A8();
    swift_allocError();
    *v17 = 0xD00000000000005DLL;
    v17[1] = 0x8000000100025EF0;
    return swift_willThrow();
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  swift_beginAccess();
  sub_100004F5C(v1 + v16, v7, &qword_10002CBF8, &unk_100022290);
  if (v15(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_5;
  }

  sub_100003750(v7, &qword_10002CBF8, &unk_100022290);
  v19 = v24;
  sub_10000E8A8(v23, v13);
  if (v19)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v11 + 8))(v13, v10);
  v20 = *(v11 + 56);
  v21 = v22;
  v20(v22, 1, 1, v10);
  swift_beginAccess();
  sub_10000F240(v21, v1 + v14, &qword_10002CBF8, &unk_100022290);
  swift_endAccess();
  v20(v21, 1, 1, v10);
  swift_beginAccess();
  sub_10000F240(v21, v1 + v16, &qword_10002CBF8, &unk_100022290);
  return swift_endAccess();
}

uint64_t sub_10000E8A8(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v29[1] = a2;
  v30 = type metadata accessor for Date();
  v29[0] = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003344(&qword_10002CC10, &qword_1000222B0);
  v6 = __chkstk_darwin(v5 - 8);
  v31 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v29 - v8;
  v10 = type metadata accessor for Mood.Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  swift_beginAccess();
  sub_100004F5C(v2 + v14, v9, &qword_10002CC10, &qword_1000222B0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100003750(v9, &qword_10002CC10, &qword_1000222B0);
    sub_10000F2A8();
    swift_allocError();
    *v15 = 0xD00000000000005ELL;
    v15[1] = 0x8000000100025F50;
    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (static Mood.Playlist.== infix(_:_:)())
    {
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v18 = v17;
      (*(v29[0] + 8))(v4, v30);
      v19 = sub_10000F340(v18);
      v20 = *(v2 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction);

      v20(0xD000000000000028, 0x8000000100026030, v19);

      (*(v11 + 8))(v13, v10);
      v21 = v31;
      (*(v11 + 56))(v31, 1, 1, v10);
      swift_beginAccess();
      sub_10000F240(v21, v2 + v14, &qword_10002CC10, &qword_1000222B0);
      return swift_endAccess();
    }

    else
    {
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(103);
      v22._countAndFlagsBits = 0xD000000000000042;
      v22._object = 0x8000000100025FB0;
      String.append(_:)(v22);
      sub_10000F2FC(&qword_10002CC30, &protocol conformance descriptor for Mood.Playlist);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24._object = 0x8000000100026000;
      v24._countAndFlagsBits = 0xD000000000000021;
      String.append(_:)(v24);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26 = v33;
      v27 = v34;
      sub_10000F2A8();
      swift_allocError();
      *v28 = v26;
      v28[1] = v27;
      swift_willThrow();
      return (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t sub_10000ED80()
{
  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate, &qword_10002CBF8, &unk_100022290);
  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate, &qword_10002CBF8, &unk_100022290);
  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist, &qword_10002CC10, &qword_1000222B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Analytics(uint64_t a1)
{
  result = qword_10002CB48;
  if (!qword_10002CB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000EEAC(uint64_t a1)
{
  sub_10000EFB8(319, &qword_10002CB58, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_10000EFB8(319, &unk_10002CB60, &type metadata accessor for Mood.Playlist);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000EFB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_10000F00C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000F084(a1, a2, v4);
}

unint64_t sub_10000F084(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000F13C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003344(&qword_10002CC08, &qword_1000222A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000F00C(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000F240(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003344(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000F2A8()
{
  result = qword_10002CC20;
  if (!qword_10002CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC20);
  }

  return result;
}

uint64_t sub_10000F2FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Mood.Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000F340(double a1)
{
  v2 = type metadata accessor for Mood.ID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003344(&qword_10002C948, &unk_100021DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100021B80;
  *(inited + 32) = 0x64695F646F6F6DLL;
  *(inited + 40) = 0xE700000000000000;
  Mood.Playlist.moodID.getter();
  Mood.ID.rawValue.getter();
  (*(v3 + 8))(v5, v2);
  v7 = String._bridgeToObjectiveC()();

  *(inited + 48) = v7;
  *(inited + 56) = 0x7473696C79616C70;
  *(inited + 64) = 0xEB0000000064695FLL;
  Mood.Playlist.analyticsID.getter();
  v8 = String._bridgeToObjectiveC()();

  *(inited + 72) = v8;
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  segname = stru_100000020.segname;
  v10 = 0.0;
  do
  {
    v11 = *(&off_100029750 + segname);
    v12 = vabdd_f64(v11, a1);
    v13 = vabdd_f64(v10, a1);
    v14 = v10 < v11;
    if (v12 != v13)
    {
      v14 = v12 < v13;
    }

    if (v14)
    {
      v10 = *(&off_100029750 + segname);
    }

    segname += 8;
  }

  while (segname != 312);
  *(inited + 96) = Double._bridgeToObjectiveC()();
  v15 = sub_10000F13C(inited);
  swift_setDeallocating();
  sub_100003344(&qword_10002C950, &qword_1000222A0);
  swift_arrayDestroy();
  return v15;
}

uint64_t sub_10000F588()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10000F5C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10000F5E0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000F628(uint64_t a1, int a2)
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

uint64_t sub_10000F670(uint64_t result, int a2, int a3)
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

__n128 sub_10000F6D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000F6E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000F72C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000F798()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10002CC40 = result;
  return result;
}

uint64_t sub_10000F880@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RoundedRectangle();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v12 = sub_100003344(&qword_10002CC48, &qword_100022460);
  sub_10000FB54(a1, a2, a3 & 1, (a4 + *(v12 + 44)));
  static Color.black.getter();
  v13 = Color.opacity(_:)();

  v14 = a4 + *(sub_100003344(&qword_10002CC50, &qword_100022468) + 36);
  *v14 = v13;
  *(v14 + 8) = xmmword_100022370;
  *(v14 + 24) = 0x4024000000000000;
  v15 = *(v9 + 28);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(&v11[v15], v16, v17);
  __asm { FMOV            V0.2D, #10.0 }

  *v11 = _Q0;
  if (qword_10002C5A0 != -1)
  {
    swift_once();
  }

  v23 = qword_10002CC40;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v24 = a4 + *(sub_100003344(&qword_10002CC58, &qword_100022470) + 36);
  sub_100011920(v11, v24, &type metadata accessor for RoundedRectangle);
  v25 = v24 + *(sub_100003344(&qword_10002CC60, &qword_100022478) + 36);
  v26 = v38;
  *v25 = *&v37[8];
  *(v25 + 16) = v26;
  *(v25 + 32) = v39;
  v27 = sub_100003344(&qword_10002CC68, &qword_100022480);
  *(v24 + *(v27 + 52)) = v23;
  *(v24 + *(v27 + 56)) = 256;

  v28 = static Alignment.center.getter();
  v30 = v29;
  sub_100011988(v11, &type metadata accessor for RoundedRectangle);
  v31 = (v24 + *(sub_100003344(&qword_10002CC70, &qword_100022488) + 36));
  *v31 = v28;
  v31[1] = v30;
  v32 = static Alignment.center.getter();
  v34 = v33;
  result = sub_100003344(&qword_10002CC78, &qword_100022490);
  v36 = (v24 + *(result + 36));
  *v36 = v32;
  v36[1] = v34;
  return result;
}

void sub_10000FB54(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v98 = a3;
  v87 = a2;
  v102 = a4;
  v95 = type metadata accessor for ArtworkView.Art(0);
  __chkstk_darwin(v95);
  v90 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_100003344(&qword_10002CC80, &qword_100022498);
  __chkstk_darwin(v99);
  v101 = (&v72 - v6);
  v91 = sub_100003344(&qword_10002CC88, &qword_1000224A0);
  __chkstk_darwin(v91);
  v93 = &v72 - v7;
  v100 = sub_100003344(&qword_10002CC90, &qword_1000224A8);
  __chkstk_darwin(v100);
  v94 = &v72 - v8;
  v92 = sub_100003344(&qword_10002CC98, &unk_1000224B0);
  __chkstk_darwin(v92);
  v78 = &v72 - v9;
  v85 = type metadata accessor for Artwork.ImageFormat();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Artwork.CropStyle();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for EnvironmentValues();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Artwork();
  v103 = *(v13 - 8);
  __chkstk_darwin(v13);
  v84 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003344(&qword_10002CA78, &qword_1000229E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v72 - v16;
  v18 = sub_100003344(&qword_10002CCA0, &qword_1000224C0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v72 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel___observationRegistrar;
  *&v104 = a1;
  v96 = sub_10001187C(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
  v97 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  v30 = a1 + v29;
  v31 = v103;
  sub_100004F5C(v30, v17, &qword_10002CA78, &qword_1000229E0);
  if (!(*(v31 + 48))(v17, 1, v13))
  {
    v74 = v23;
    v73 = v21;
    v33 = v85;
    v77 = v25;
    v76 = v24;
    v34 = v87;
    v35 = *(v31 + 16);
    v36 = v84;
    v75 = v13;
    v35(v84, v17, v13);
    sub_100003750(v17, &qword_10002CA78, &qword_1000229E0);
    v37 = sub_10001E3C4();
    v32 = a1;
    v72 = v27;
    *&v38 = v34;
    if (v98)
    {
      v39 = v34;
      v40 = v89;
      v41 = v88;
      v42 = v86;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v43 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v42 = v86;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000119E8(v38, 0);
      v41 = v88;
      v40 = v89;
      (*(v88 + 8))(v42, v89);
      v39 = *&v104;
    }

    v44 = v37 * v39;
    if (COERCE__INT64(fabs(v37 * v39)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -9.22337204e18)
    {
      if (v44 < 9.22337204e18)
      {
        v45 = v33;
        v46 = sub_10001E3C4();
        if (v98)
        {
          v47 = *&v38;
        }

        else
        {

          static os_log_type_t.fault.getter();
          v48 = v42;
          v49 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000119E8(v38, 0);
          (*(v41 + 8))(v48, v40);
          v47 = *&v104;
        }

        v50 = v83;
        v51 = v46 * v47;
        if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v51 > -9.22337204e18)
          {
            if (v51 < 9.22337204e18)
            {
              v52 = v36;
              v53 = v82;
              static Artwork.CropStyle.boundedBox.getter();
              v54 = v80;
              (*(v50 + 104))(v80, enum case for Artwork.ImageFormat.heic(_:), v45);
              v23 = v74;
              Artwork.url(width:height:cropStyle:format:)();
              (*(v50 + 8))(v54, v45);
              (*(v79 + 8))(v53, v81);
              (*(v103 + 8))(v52, v75);
              v55 = v77;
              v56 = v76;
              if ((*(v77 + 48))(v23, 1, v76) != 1)
              {
                v63 = v72;
                (*(v55 + 32))(v72, v23, v56);
                v64 = v32;
                v65 = v73;
                (*(v55 + 16))(v73, v63, v56);
                (*(v55 + 56))(v65, 0, 1, v56);
                static Animation.default.getter();
                Transaction.init(animation:)();
                v66 = swift_allocObject();
                *(v66 + 16) = v64;
                *(v66 + 24) = *&v38;
                v67 = v98 & 1;
                *(v66 + 32) = v98 & 1;
                sub_100011A44(v38, v67);

                sub_100003344(&qword_10002CCD8, &qword_100022558);
                sub_100011A50();
                v68 = v78;
                AsyncImage.init(url:scale:transaction:content:)();
                sub_10001E3C4();
                sub_10001E3C4();
                static Alignment.center.getter();
                _FrameLayout.init(width:height:alignment:)();
                v69 = (v68 + *(v92 + 36));
                v70 = v105;
                *v69 = v104;
                v69[1] = v70;
                v69[2] = v106;
                sub_100004F5C(v68, v93, &qword_10002CC98, &unk_1000224B0);
                swift_storeEnumTagMultiPayload();
                sub_1000117C4();
                sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art, &unk_1000225F8);
                v71 = v94;
                _ConditionalContent<>.init(storage:)();
                sub_100004F5C(v71, v101, &qword_10002CC90, &qword_1000224A8);
                swift_storeEnumTagMultiPayload();
                sub_100011708();
                sub_1000118C4();
                _ConditionalContent<>.init(storage:)();
                sub_100003750(v71, &qword_10002CC90, &qword_1000224A8);
                sub_100003750(v68, &qword_10002CC98, &unk_1000224B0);
                (*(v55 + 8))(v63, v56);
                return;
              }

              goto LABEL_16;
            }

LABEL_25:
            __break(1u);
            return;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_100003750(v17, &qword_10002CA78, &qword_1000229E0);
  (*(v25 + 56))(v23, 1, 1, v24);
  v32 = a1;
LABEL_16:
  sub_100003750(v23, &qword_10002CCA0, &qword_1000224C0);
  swift_getKeyPath();
  *&v104 = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v32 + 16);
  if (v57)
  {

    v58 = sub_10001E3C4();
    KeyPath = swift_getKeyPath();
    v60 = v90;
    *v90 = KeyPath;
    sub_100003344(&qword_10002C7D0, &qword_100021C30);
    swift_storeEnumTagMultiPayload();
    v61 = v95;
    *(v60 + *(v95 + 20)) = v58;
    *(v60 + *(v61 + 24)) = v57;
    sub_100011920(v60, v93, type metadata accessor for ArtworkView.Art);
    swift_storeEnumTagMultiPayload();
    sub_1000117C4();
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art, &unk_1000225F8);
    v62 = v94;
    _ConditionalContent<>.init(storage:)();
    sub_100004F5C(v62, v101, &qword_10002CC90, &qword_1000224A8);
    swift_storeEnumTagMultiPayload();
    sub_100011708();
    sub_1000118C4();
    _ConditionalContent<>.init(storage:)();
    sub_100003750(v62, &qword_10002CC90, &qword_1000224A8);
    sub_100011988(v60, type metadata accessor for ArtworkView.Art);
  }

  else
  {
    *v101 = sub_10001E3C4();
    swift_storeEnumTagMultiPayload();
    sub_100011708();
    sub_1000118C4();
    _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100010A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100003344(&qword_10002CCE8, &qword_100022560);
  __chkstk_darwin(v6);
  v8 = (v21 - v7);
  v9 = type metadata accessor for ArtworkView.Art(0);
  __chkstk_darwin(v9);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AsyncImagePhase();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v15, a1, v12);
  if ((*(v13 + 88))(v15, v12) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v13 + 96))(v15, v12);
    v16 = *v15;

    sub_10001E52C(v17);
    v18 = sub_10001E3C4();
    *v11 = swift_getKeyPath();
    sub_100003344(&qword_10002C7D0, &qword_100021C30);
    swift_storeEnumTagMultiPayload();
    *(v11 + *(v9 + 20)) = v18;
    *(v11 + *(v9 + 24)) = v16;
    sub_100011920(v11, v8, type metadata accessor for ArtworkView.Art);
    swift_storeEnumTagMultiPayload();
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art, &unk_1000225F8);
    sub_1000118C4();
    _ConditionalContent<>.init(storage:)();
    return sub_100011988(v11, type metadata accessor for ArtworkView.Art);
  }

  else
  {
    if (*(a2 + 16))
    {
      KeyPath = swift_getKeyPath();
      v21[1] = a3;
      v21[0] = v21;
      __chkstk_darwin(KeyPath);
      v21[-2] = a2;
      v21[-1] = 0;
      v21[3] = a2;
      sub_10001187C(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *v8 = sub_10001E3C4();
    swift_storeEnumTagMultiPayload();
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art, &unk_1000225F8);
    sub_1000118C4();
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_100010E88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003344(&qword_10002C7D0, &qword_100021C30);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004F5C(v2, &v14 - v9, &qword_10002C7D0, &qword_100021C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
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

double sub_100011088@<D0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for RoundedRectangle() + 20);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(&a1[v6], v7, v8);
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = _Q0;
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGBLinear(_:), v2);
  Color.init(_:white:opacity:)();
  v14 = sub_100003344(&qword_10002CDC8, &qword_100022660);
  v15 = &a1[*(v14 + 52)];
  sub_100003344(&qword_10002CDD0, &qword_100022668);
  static ShadowStyle.drop(color:radius:x:y:)();

  *v15 = 1045220557;
  *&a1[*(v14 + 56)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = &a1[*(sub_100003344(&qword_10002CDD8, &qword_100022670) + 36)];
  v17 = v19[1];
  *v16 = v19[0];
  *(v16 + 1) = v17;
  result = *&v20;
  *(v16 + 2) = v20;
  return result;
}

double sub_10001129C@<D0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = type metadata accessor for ColorScheme();
  v1 = *(v34 - 8);
  v2 = __chkstk_darwin(v34);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v32 - v4;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003344(&qword_10002CDB0, &qword_100022648);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  type metadata accessor for ArtworkView.Art(0);
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v14 = Image.resizable(capInsets:resizingMode:)();
  (*(v7 + 8))(v9, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = 1;
  *&v36[6] = v38;
  *&v36[22] = v39;
  *&v36[38] = v40;
  v15 = &v13[*(v11 + 44)];
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #10.0 }

  *v15 = _Q0;
  *&v15[*(sub_100003344(&qword_10002CDB8, &qword_100022650) + 36)] = 256;
  v24 = *&v36[16];
  *(v13 + 18) = *v36;
  *v13 = v14;
  *(v13 + 1) = 0;
  *(v13 + 8) = 1;
  *(v13 + 34) = v24;
  *(v13 + 50) = *&v36[32];
  *(v13 + 8) = *&v36[46];
  static Color.black.getter();
  sub_100010E88(v5);
  v26 = v33;
  v25 = v34;
  (*(v1 + 104))(v33, enum case for ColorScheme.light(_:), v34);
  static ColorScheme.== infix(_:_:)();
  v27 = *(v1 + 8);
  v27(v26, v25);
  v27(v5, v25);
  v28 = Color.opacity(_:)();

  v29 = v35;
  sub_100011F74(v13, v35);
  v30 = v29 + *(sub_100003344(&qword_10002CDC0, &qword_100022658) + 36);
  *v30 = v28;
  result = 25.0;
  *(v30 + 8) = xmmword_100022380;
  *(v30 + 24) = 0x4034000000000000;
  return result;
}

uint64_t type metadata accessor for ArtworkView.Art(uint64_t a1)
{
  result = qword_10002CD48;
  if (!qword_10002CD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100011708()
{
  result = qword_10002CCA8;
  if (!qword_10002CCA8)
  {
    sub_1000050A8(&qword_10002CC90, &qword_1000224A8);
    sub_1000117C4();
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art, &unk_1000225F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCA8);
  }

  return result;
}

unint64_t sub_1000117C4()
{
  result = qword_10002CCB0;
  if (!qword_10002CCB0)
  {
    sub_1000050A8(&qword_10002CC98, &unk_1000224B0);
    sub_100005264(&qword_10002CCB8, &qword_10002CCC0, &qword_100022518, &protocol conformance descriptor for AsyncImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB0);
  }

  return result;
}

uint64_t sub_10001187C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000118C4()
{
  result = qword_10002CCD0;
  if (!qword_10002CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD0);
  }

  return result;
}

uint64_t sub_100011920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000119E8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1000119F4()
{

  sub_1000119E8(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

double sub_100011A44(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100011A50()
{
  result = qword_10002CCE0;
  if (!qword_10002CCE0)
  {
    sub_1000050A8(&qword_10002CCD8, &qword_100022558);
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art, &unk_1000225F8);
    sub_1000118C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE0);
  }

  return result;
}

uint64_t sub_100011B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003344(&qword_10002C718, &unk_100021BB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100011C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003344(&qword_10002C718, &unk_100021BB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100011CEC(uint64_t a1)
{
  sub_100011D70(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100011D70(uint64_t a1)
{
  if (!qword_10002C788)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10002C788);
    }
  }
}

unint64_t sub_100011DCC()
{
  result = qword_10002CD88;
  if (!qword_10002CD88)
  {
    sub_1000050A8(&qword_10002CC58, &qword_100022470);
    sub_100011E84();
    sub_100005264(&qword_10002CDA8, &qword_10002CC78, &qword_100022490, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD88);
  }

  return result;
}

unint64_t sub_100011E84()
{
  result = qword_10002CD90;
  if (!qword_10002CD90)
  {
    sub_1000050A8(&qword_10002CC50, &qword_100022468);
    sub_100005264(&qword_10002CD98, &qword_10002CDA0, &qword_1000225A0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD90);
  }

  return result;
}

uint64_t sub_100011F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002CDB0, &qword_100022648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100011FE8()
{
  result = qword_10002CDE0;
  if (!qword_10002CDE0)
  {
    sub_1000050A8(&qword_10002CDC0, &qword_100022658);
    sub_100012074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDE0);
  }

  return result;
}

unint64_t sub_100012074()
{
  result = qword_10002CDE8;
  if (!qword_10002CDE8)
  {
    sub_1000050A8(&qword_10002CDB0, &qword_100022648);
    sub_10001212C();
    sub_100005264(&qword_10002CE00, &qword_10002CDB8, &qword_100022650, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDE8);
  }

  return result;
}

unint64_t sub_10001212C()
{
  result = qword_10002CDF0;
  if (!qword_10002CDF0)
  {
    sub_1000050A8(&qword_10002CDF8, &qword_100022678);
    sub_100005024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDF0);
  }

  return result;
}

unint64_t sub_1000121BC()
{
  result = qword_10002CE08;
  if (!qword_10002CE08)
  {
    sub_1000050A8(&qword_10002CDD8, &qword_100022670);
    sub_100005264(&qword_10002CE10, &qword_10002CDC8, &qword_100022660, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE08);
  }

  return result;
}

unint64_t sub_100012294()
{
  result = qword_10002CE18;
  if (!qword_10002CE18)
  {
    sub_1000050A8(&qword_10002CE20, &qword_1000226B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE18);
  }

  return result;
}

uint64_t sub_1000122F8(double a1, uint64_t a2, double *a3)
{
  v3 = type metadata accessor for RoundedCornerStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for RoundedCornerStyle.continuous(_:), v3);
  v8[0] = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  Path.addRoundedRect(in:cornerSize:style:transform:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_100012444(double a1, uint64_t a2, CGRect *a3)
{
  v5 = CGRectGetWidth(*a3) * 0.5;
  v6 = 1.0 - a1;
  v8 = CGRectInset(*a3, v6 * v5, 0.0);
  *a3 = v8;
  v9 = CGRectOffset(v8, -(v6 * v5), 0.0);
  *a3 = v9;
  v7.a = 1.0;
  v7.b = 0.0;
  v7.c = 0.0;
  v7.d = 1.0;
  v7.tx = 0.0;
  v7.ty = 0.0;
  Path.addRect(_:transform:)(v9, &v7);
}

double sub_1000124E0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v14 = CGRectInset(*&a2, *(v5 + 8), *(v5 + 8));
  CGRectGetHeight(v14);
  Path.init(_:)();
  Path.init(_:)();
  Path.intersection(_:eoFill:)();
  sub_100012828(v10);
  sub_100012828(v9);
  result = *&v11;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  *(a1 + 32) = v13;
  return result;
}

double sub_1000125E8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_1000125F4(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*sub_100012600(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_10001262C;
}

double sub_10001262C(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

uint64_t sub_100012640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001287C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000126A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001287C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100012708(uint64_t a1)
{
  v2 = sub_10001287C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_100012764()
{
  result = qword_10002CE28;
  if (!qword_10002CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE28);
  }

  return result;
}

unint64_t sub_1000127BC()
{
  result = qword_10002CE30;
  if (!qword_10002CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE30);
  }

  return result;
}

unint64_t sub_10001287C()
{
  result = qword_10002CE38;
  if (!qword_10002CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE38);
  }

  return result;
}

uint64_t sub_10001290C(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_100012ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  _GeometryActionModifier.init(value:action:)();
  type metadata accessor for _GeometryActionModifier();
  View.modifier<A>(_:)();
}

uint64_t sub_100012BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003344(&qword_10002C7D0, &qword_100021C30);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100004F5C(v2 + *(a1 + 40), &v15 - v10, &qword_10002C7D0, &qword_100021C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100012DBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v96 = sub_100003344(&qword_10002C710, &qword_1000229A0);
  __chkstk_darwin(v96);
  v90 = v66 - v3;
  v88 = type metadata accessor for Player.PlaybackStatus();
  v86 = *(v88 - 8);
  v4 = __chkstk_darwin(v88);
  v84 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a1;
  v6 = *(a1 - 8);
  a1 -= 8;
  v87 = v6;
  __chkstk_darwin(v4);
  v95 = v7;
  v85 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000050A8(&qword_10002D158, &qword_1000229A8);
  v8 = *(a1 + 32);
  v92 = *(a1 + 24);
  v97 = v8;
  type metadata accessor for PlayerControls(255, v92, v8, v9);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002D160, &qword_1000229B0);
  swift_getTupleTypeMetadata3();
  v66[1] = type metadata accessor for TupleView();
  v66[0] = swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v66 - v11;
  WitnessTable = swift_getWitnessTable();
  v101 = v10;
  v102 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v70 = v66 - v15;
  sub_1000050A8(&qword_10002D168, &qword_1000229B8);
  v74 = OpaqueTypeMetadata2;
  v16 = type metadata accessor for ModifiedContent();
  v81 = *(v16 - 8);
  __chkstk_darwin(v16);
  v80 = v66 - v17;
  sub_1000050A8(&qword_10002C870, &qword_1000229C0);
  v18 = type metadata accessor for ModifiedContent();
  v82 = *(v18 - 8);
  __chkstk_darwin(v18);
  v94 = v66 - v19;
  v101 = v10;
  v102 = WitnessTable;
  v68 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_100005264(&qword_10002D170, &qword_10002D168, &qword_1000229B8, &protocol conformance descriptor for _BackgroundModifier<A>);
  v66[2] = OpaqueTypeConformance2;
  v107 = OpaqueTypeConformance2;
  v108 = v21;
  v79 = v16;
  v22 = swift_getWitnessTable();
  v23 = sub_100005264(&qword_10002C868, &qword_10002C870, &qword_1000229C0, &protocol conformance descriptor for _GeometryActionModifier<A>);
  v67 = v22;
  v105 = v22;
  v106 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_100016AFC();
  v83 = v18;
  v101 = v18;
  v102 = v96;
  v75 = v24;
  v103 = v24;
  v104 = v25;
  v73 = v25;
  v78 = swift_getOpaqueTypeMetadata2();
  v77 = *(v78 - 8);
  v26 = __chkstk_darwin(v78);
  v72 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v76 = v66 - v28;
  v29 = v92;
  v98 = v92;
  v30 = v97;
  v99 = v97;
  v31 = v93;
  v100 = v93;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  sub_100003344(&qword_10002D188, &unk_1000229C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100022270;
  v33 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v33;
  v34 = static Axis.Set.vertical.getter();
  *(inited + 33) = v34;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v33)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v34)
  {
    Axis.Set.init(rawValue:)();
  }

  static Alignment.center.getter();
  v35 = v70;
  View.containerRelativeFrame(_:alignment:)();
  v36 = (*(v69 + 8))(v12, v10);
  __chkstk_darwin(v36);
  v66[-4] = v29;
  v66[-3] = v30;
  v37 = v29;
  v38 = v31;
  v65 = v31;
  static Alignment.center.getter();
  type metadata accessor for PlayerBackgroundView(0);
  sub_1000172FC(&qword_10002D190, type metadata accessor for PlayerBackgroundView, "qu");
  v39 = v80;
  v40 = v74;
  View.background<A>(alignment:content:)();
  (*(v71 + 8))(v35, v40);
  type metadata accessor for CGSize();
  v42 = v41;
  v43 = v87;
  v74 = *(v87 + 16);
  v44 = v85;
  v45 = v38;
  v46 = v89;
  v74(v85, v45, v89);
  v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v48 = swift_allocObject();
  v49 = v97;
  *(v48 + 16) = v37;
  *(v48 + 24) = v49;
  v87 = *(v43 + 32);
  (v87)(v48 + v47, v44, v46);
  v50 = sub_1000172FC(&qword_10002D198, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v51 = v79;
  sub_100012ADC(v42, sub_1000049D4, 0, sub_100016BCC, v48, v79, v42, v67, v50);

  (*(v81 + 8))(v39, v51);
  type metadata accessor for Player();
  static Player.shared.getter();
  v52 = v84;
  Player.playbackStatus.getter();

  v53 = v90;
  Player.PlaybackStatus.playbackItemInfo.getter(v90);
  (*(v86 + 8))(v52, v88);
  v74(v44, v93, v46);
  v54 = swift_allocObject();
  v55 = v97;
  *(v54 + 16) = v92;
  *(v54 + 24) = v55;
  (v87)(v54 + v47, v44, v46);
  v56 = v72;
  v57 = v83;
  v58 = v94;
  View.onChange<A>(of:initial:_:)();

  sub_100003750(v53, &qword_10002C710, &qword_1000229A0);
  (*(v82 + 8))(v58, v57);
  v59 = v77;
  v60 = *(v77 + 16);
  v61 = v76;
  v62 = v78;
  v60(v76, v56, v78);
  v63 = *(v59 + 8);
  v63(v56, v62);
  v60(v91, v61, v62);
  return (v63)(v61, v62);
}

uint64_t sub_100013A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v147 = a4;
  v7 = type metadata accessor for ColorScheme();
  v142 = *(v7 - 8);
  v143 = v7;
  v8 = __chkstk_darwin(v7);
  v139 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v138 = &v116 - v10;
  v11 = type metadata accessor for BlendMode();
  v140 = *(v11 - 8);
  v141 = v11;
  __chkstk_darwin(v11);
  v137 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100003344(&qword_10002D1B0, &qword_100022A68);
  __chkstk_darwin(v136);
  v14 = &v116 - v13;
  v145 = sub_100003344(&qword_10002D160, &qword_1000229B0);
  v15 = __chkstk_darwin(v145);
  v146 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v135 = &v116 - v18;
  v19 = __chkstk_darwin(v17);
  v144 = &v116 - v20;
  v121 = *(a2 - 8);
  __chkstk_darwin(v19);
  v120 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PlayerControls(0, a2, a3, v22);
  v124 = *(v23 - 8);
  __chkstk_darwin(v23);
  v122 = &v116 - v24;
  v127 = v25;
  v26 = type metadata accessor for ModifiedContent();
  v128 = *(v26 - 8);
  __chkstk_darwin(v26);
  v123 = &v116 - v27;
  v130 = v28;
  v29 = type metadata accessor for ModifiedContent();
  v129 = *(v29 - 8);
  __chkstk_darwin(v29);
  v125 = &v116 - v30;
  v131 = v31;
  v134 = type metadata accessor for ModifiedContent();
  v151 = *(v134 - 8);
  v32 = __chkstk_darwin(v134);
  v150 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v149 = &v116 - v34;
  v132 = sub_100003344(&qword_10002D158, &qword_1000229A8);
  v35 = __chkstk_darwin(v132);
  v133 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v148 = &v116 - v37;
  v126 = type metadata accessor for PlayerView(0, a2, a3, v38);
  v39 = *(a1 + *(v126 + 36));
  KeyPath = swift_getKeyPath();
  v118 = v39;
  v40 = *(a3 + 48);

  v41 = v40(a2, a3);
  static UnitPoint.center.getter();
  v43 = v42;
  v45 = v44;
  v46 = a1;
  v47 = a2;
  v48 = a2;
  v49 = a3;
  if (v40(v48, a3))
  {
    v50 = static Animation.spring(response:dampingFraction:blendDuration:)();
  }

  else
  {
    v50 = static Animation.default.getter();
  }

  v51 = v50;
  if (v41)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.73;
  }

  v119 = a1;
  v53 = v40(v47, v49);
  v171 = 0;
  v54 = v53 & 1;
  v55 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v172 = 0;
  v64 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v173 = 0;
  *&v157 = v118;
  *(&v157 + 1) = KeyPath;
  LOBYTE(v158) = 0;
  *(&v158 + 1) = v52;
  *&v159 = v52;
  *(&v159 + 1) = v43;
  *&v160 = v45;
  *(&v160 + 1) = v51;
  LOBYTE(v161) = v54;
  BYTE8(v161) = v55;
  *&v162 = v57;
  *(&v162 + 1) = v59;
  *&v163 = v61;
  *(&v163 + 1) = v63;
  LOBYTE(v164) = 0;
  BYTE8(v164) = v64;
  *&v165 = v65;
  *(&v165 + 1) = v66;
  *&v166 = v67;
  *(&v166 + 1) = v68;
  v167 = 0;
  sub_100003344(&qword_10002D1B8, &qword_100022AA0);
  sub_100016EE0();
  View.accessibilityIdentifier(_:)();
  v168[8] = v165;
  v168[9] = v166;
  v168[4] = v161;
  v168[5] = v162;
  v168[6] = v163;
  v168[7] = v164;
  v168[0] = v157;
  v168[1] = v158;
  v169 = v167;
  v168[2] = v159;
  v168[3] = v160;
  sub_100003750(v168, &qword_10002D1B8, &qword_100022AA0);
  v69 = v120;
  (*(v121 + 16))(v120, v46, v47);
  v70 = v122;
  sub_1000055B8(v69, v47, v49, v122);
  sub_10001E3C4();
  static Alignment.center.getter();
  v114 = v127;
  WitnessTable = swift_getWitnessTable();
  v71 = v123;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v124 + 8))(v70, v114);
  static Edge.Set.horizontal.getter();
  v156[7] = WitnessTable;
  v156[8] = &protocol witness table for _FlexFrameLayout;
  v72 = v130;
  v73 = swift_getWitnessTable();
  v74 = v125;
  View.padding(_:_:)();
  (*(v128 + 8))(v71, v72);
  static Edge.Set.top.getter();
  v156[5] = v73;
  v156[6] = &protocol witness table for _PaddingLayout;
  v75 = v131;
  v76 = swift_getWitnessTable();
  v77 = v150;
  View.padding(_:_:)();
  (*(v129 + 1))(v74, v75);
  v156[3] = v76;
  v156[4] = &protocol witness table for _PaddingLayout;
  v78 = v134;
  v79 = swift_getWitnessTable();
  v80 = v151;
  v81 = *(v151 + 16);
  v128 = v151 + 16;
  v129 = v81;
  v130 = v79;
  v81(v149, v77, v78);
  v82 = *(v80 + 8);
  v151 = v80 + 8;
  v131 = v82;
  v82(v77, v78);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v127 = v157;
  LOBYTE(v80) = BYTE8(v157);
  LODWORD(v118) = BYTE8(v157);
  v83 = BYTE8(v158);
  v124 = v159;
  v125 = v158;
  v123 = *(&v159 + 1);
  v122 = static Color.secondary.getter();
  v121 = swift_getKeyPath();
  LOBYTE(v155[0]) = v80;
  LOBYTE(v152) = v83;
  LODWORD(v120) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  LOBYTE(v156[0]) = 0;
  v92 = v138;
  sub_100012BB8(v126, v138);
  v94 = v142;
  v93 = v143;
  v95 = v139;
  (*(v142 + 104))(v139, enum case for ColorScheme.light(_:), v143);
  LOBYTE(v80) = static ColorScheme.== infix(_:_:)();
  v96 = *(v94 + 8);
  v96(v95, v93);
  v96(v92, v93);
  v97 = v140;
  v98 = &enum case for BlendMode.plusDarker(_:);
  if ((v80 & 1) == 0)
  {
    v98 = &enum case for BlendMode.plusLighter(_:);
  }

  v99 = v137;
  v100 = v141;
  (*(v140 + 104))(v137, *v98, v141);
  (*(v97 + 32))(&v14[*(v136 + 36)], v99, v100);
  *v14 = v127;
  v14[8] = v118;
  v101 = v124;
  *(v14 + 2) = v125;
  v14[24] = v83;
  v102 = v123;
  *(v14 + 4) = v101;
  *(v14 + 5) = v102;
  v103 = v122;
  *(v14 + 6) = v121;
  *(v14 + 7) = v103;
  v14[64] = v120;
  *(v14 + 65) = *v170;
  *(v14 + 17) = *&v170[3];
  *(v14 + 9) = v85;
  *(v14 + 10) = v87;
  *(v14 + 11) = v89;
  *(v14 + 12) = v91;
  v14[104] = 0;
  v104 = v135;
  sub_100004EE4(v14, v135, &qword_10002D1B0, &qword_100022A68);
  v106 = v144;
  v105 = v145;
  *(v104 + *(v145 + 36)) = 0x3FE999999999999ALL;
  sub_100004EE4(v104, v106, &qword_10002D160, &qword_1000229B0);
  v107 = v148;
  v108 = v133;
  sub_100004F5C(v148, v133, &qword_10002D158, &qword_1000229A8);
  v156[0] = v108;
  v110 = v149;
  v109 = v150;
  v129(v150, v149, v78);
  v156[1] = v109;
  v111 = v146;
  sub_100004F5C(v106, v146, &qword_10002D160, &qword_1000229B0);
  v156[2] = v111;
  v155[0] = v132;
  v155[1] = v78;
  v155[2] = v105;
  v152 = sub_100017240();
  v153 = v130;
  v154 = sub_100017344();
  sub_10001290C(v156, 3uLL, v155);
  sub_100003750(v106, &qword_10002D160, &qword_1000229B0);
  v112 = v131;
  v131(v110, v78);
  sub_100003750(v107, &qword_10002D158, &qword_1000229A8);
  sub_100003750(v111, &qword_10002D160, &qword_1000229B0);
  v112(v150, v78);
  return sub_100003750(v108, &qword_10002D158, &qword_1000229A8);
}

double sub_100014774@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a1 + *(type metadata accessor for PlayerView(0, a2, a3, a5) + 36));
  *a4 = swift_getKeyPath();
  sub_100003344(&qword_10002C7D0, &qword_100021C30);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for PlayerBackgroundView(0);
  v8 = v7[6];
  v9 = objc_opt_self();

  v10 = [v9 systemBackgroundColor];
  *(a4 + v8) = Color.init(_:)();
  v11 = a4 + v7[7];
  type metadata accessor for CGSize();
  State.init(wrappedValue:)();
  result = *&v13;
  *v11 = v13;
  *(v11 + 2) = v14;
  *(a4 + v7[5]) = v6;
  return result;
}

uint64_t sub_100014878(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v5 = a1[1];
  result = type metadata accessor for PlayerView(0, a3, a4, a4);
  v8 = *(a2 + *(result + 36));
  if (*(v8 + 24) == v6 && *(v8 + 32) == v5)
  {
    *(v8 + 24) = v6;
    *(v8 + 32) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000149B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Artwork();
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v49 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100003344(&qword_10002D1A0, &qword_1000229D8);
  __chkstk_darwin(v11);
  v13 = &v46[-v12];
  v14 = sub_100003344(&qword_10002C710, &qword_1000229A0);
  v15 = __chkstk_darwin(v14 - 8);
  v55 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v46[-v17];
  v19 = sub_100003344(&qword_10002CA78, &qword_1000229E0);
  v20 = __chkstk_darwin(v19 - 8);
  v54 = &v46[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v51 = &v46[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v46[-v25];
  __chkstk_darwin(v24);
  v28 = &v46[-v27];
  v30 = *(a3 + *(type metadata accessor for PlayerView(0, a4, a5, v29) + 36));
  swift_getKeyPath();
  v59 = v30;
  sub_1000172FC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  v53 = v30;
  sub_100004F5C(v30 + v31, v28, &qword_10002CA78, &qword_1000229E0);
  v56 = a2;
  sub_100004F5C(a2, v18, &qword_10002C710, &qword_1000229A0);
  v32 = type metadata accessor for PlaybackInfo.PlaybackItemInfo();
  v33 = *(v32 - 8);
  v52 = *(v33 + 48);
  v34 = v52(v18, 1, v32);
  v50 = v33;
  if (v34 == 1)
  {
    sub_100003750(v18, &qword_10002C710, &qword_1000229A0);
    v35 = v57;
    (*(v57 + 56))(v26, 1, 1, v58);
  }

  else
  {
    PlaybackInfo.PlaybackItemInfo.artwork.getter();
    (*(v33 + 8))(v18, v32);
    v35 = v57;
  }

  v36 = *(v11 + 48);
  sub_100004F5C(v28, v13, &qword_10002CA78, &qword_1000229E0);
  sub_100004F5C(v26, &v13[v36], &qword_10002CA78, &qword_1000229E0);
  v37 = *(v35 + 48);
  v38 = v58;
  if (v37(v13, 1, v58) == 1)
  {
    sub_100003750(v26, &qword_10002CA78, &qword_1000229E0);
    sub_100003750(v28, &qword_10002CA78, &qword_1000229E0);
    if (v37(&v13[v36], 1, v58) == 1)
    {
      return sub_100003750(v13, &qword_10002CA78, &qword_1000229E0);
    }
  }

  else
  {
    v48 = v32;
    v40 = v51;
    sub_100004F5C(v13, v51, &qword_10002CA78, &qword_1000229E0);
    if (v37(&v13[v36], 1, v38) != 1)
    {
      v43 = v57;
      v44 = v49;
      (*(v57 + 32))(v49, &v13[v36], v38);
      sub_1000172FC(&qword_10002D1A8, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v43 + 8);
      v45(v44, v38);
      sub_100003750(v26, &qword_10002CA78, &qword_1000229E0);
      sub_100003750(v28, &qword_10002CA78, &qword_1000229E0);
      v45(v40, v38);
      result = sub_100003750(v13, &qword_10002CA78, &qword_1000229E0);
      v32 = v48;
      if (v47)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_100003750(v26, &qword_10002CA78, &qword_1000229E0);
    sub_100003750(v28, &qword_10002CA78, &qword_1000229E0);
    (*(v57 + 8))(v40, v58);
    v32 = v48;
  }

  sub_100003750(v13, &qword_10002D1A0, &qword_1000229D8);
LABEL_10:
  v41 = v55;
  sub_100004F5C(v56, v55, &qword_10002C710, &qword_1000229A0);
  if (v52(v41, 1, v32) == 1)
  {
    sub_100003750(v41, &qword_10002C710, &qword_1000229A0);
    v42 = v54;
    (*(v57 + 56))(v54, 1, 1, v58);
  }

  else
  {
    v42 = v54;
    PlaybackInfo.PlaybackItemInfo.artwork.getter();
    (*(v50 + 8))(v41, v32);
  }

  return sub_10001E694(v42);
}

uint64_t sub_1000150BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10001521C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000153CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  result = static Duration.== infix(_:_:)();
  if (result)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000154EC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100015604()
{
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000156B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_100015760()
{
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100015810@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1000158E4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

__n128 sub_100015988@<Q0>(uint64_t *a1@<X0>, void *a3@<X4>, __n128 *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v6 + *a3);
  *a4 = result;
  return result;
}

uint64_t sub_100015A3C()
{
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying);
}

uint64_t sub_100015AE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying);
  return result;
}

uint64_t sub_100015B94()
{

  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__playbackStatus, qword_10002D0D0, &qword_100022928);
  v1 = OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TestModel(uint64_t a1)
{
  result = qword_10002CE90;
  if (!qword_10002CE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015CB4(uint64_t a1)
{
  sub_100016A54(319, &unk_10002CEA0, &type metadata accessor for Player.PlaybackStatus, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100015DCC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_100015E7C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_100015F54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v6 + *a4);
}

uint64_t sub_100015FFC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying);
}

uint64_t sub_1000160A4()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100016138, v2, v1);
}

uint64_t sub_100016138()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016198(uint64_t a1)
{
  result = sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel, &unk_100022818);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100016304(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v8 = *a1;
  v7 = a1[1];

  return a5(v8, v7);
}

__n128 sub_100016364()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__playbackDuration) = result;
  return result;
}

__n128 sub_10001637C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__playbackTime) = result;
  return result;
}

uint64_t sub_100016394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[2];
  v8 = v6[4];
  *(v7 + 32) = v6[3];
  *(v7 + 40) = v8;
}

uint64_t sub_1000163D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[2];
  v8 = v6[4];
  *(v7 + 16) = v6[3];
  *(v7 + 24) = v8;
}

void sub_100016414(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_100016A54(319, &qword_10002C788, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000164E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for ColorScheme() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 < 0x7FFFFFFF)
      {
        v20 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }

      else
      {
        v19 = *(v6 + 48);

        return v19(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_10001674C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for ColorScheme() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_49:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0x7FFFFFFF)
  {
    v23 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = (a2 - 1);
    }

    *v23 = v24;
  }

  else
  {
    v22 = *(v25 + 56);

    v22(a1, a2, v9, v7);
  }
}

void sub_100016A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100016AFC()
{
  result = qword_10002D178;
  if (!qword_10002D178)
  {
    sub_1000050A8(&qword_10002C710, &qword_1000229A0);
    sub_1000172FC(&qword_10002D180, &type metadata accessor for PlaybackInfo.PlaybackItemInfo, &protocol conformance descriptor for PlaybackInfo.PlaybackItemInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D178);
  }

  return result;
}

uint64_t sub_100016BCC(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PlayerView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100014878(a1, v9, v6, v7);
}

uint64_t sub_100016C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for PlayerView(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = *(*v6 + 64);
  v9 = (v7 + 32) & ~v7;
  (*(*(v5 - 8) + 8))(v4 + v9, v5);

  v10 = v6[12];
  sub_100003344(&qword_10002C7D0, &qword_100021C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v4 + v9 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v4, v9 + v8, v7 | 7);
}

uint64_t sub_100016DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for PlayerView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1000149B0(a1, a2, v10, v7, v8);
}

unint64_t sub_100016EE0()
{
  result = qword_10002D1C0;
  if (!qword_10002D1C0)
  {
    sub_1000050A8(&qword_10002D1B8, &qword_100022AA0);
    sub_100016F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1C0);
  }

  return result;
}

unint64_t sub_100016F6C()
{
  result = qword_10002D1C8;
  if (!qword_10002D1C8)
  {
    sub_1000050A8(&qword_10002D1D0, &qword_100022AA8);
    sub_100016FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1C8);
  }

  return result;
}

unint64_t sub_100016FF8()
{
  result = qword_10002D1D8;
  if (!qword_10002D1D8)
  {
    sub_1000050A8(&qword_10002D1E0, &qword_100022AB0);
    sub_1000170B0();
    sub_100005264(&qword_10002D200, &qword_10002D208, &qword_100022AC0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1D8);
  }

  return result;
}

unint64_t sub_1000170B0()
{
  result = qword_10002D1E8;
  if (!qword_10002D1E8)
  {
    sub_1000050A8(&qword_10002D1F0, &qword_100022AB8);
    sub_10001713C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1E8);
  }

  return result;
}

unint64_t sub_10001713C()
{
  result = qword_10002D1F8;
  if (!qword_10002D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1F8);
  }

  return result;
}

uint64_t sub_100017190@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000171BC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100017240()
{
  result = qword_10002D210;
  if (!qword_10002D210)
  {
    sub_1000050A8(&qword_10002D158, &qword_1000229A8);
    sub_100016EE0();
    sub_1000172FC(&qword_10002CA20, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D210);
  }

  return result;
}

uint64_t sub_1000172FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100017344()
{
  result = qword_10002D218;
  if (!qword_10002D218)
  {
    sub_1000050A8(&qword_10002D160, &qword_1000229B0);
    sub_1000173D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D218);
  }

  return result;
}

unint64_t sub_1000173D0()
{
  result = qword_10002D220;
  if (!qword_10002D220)
  {
    sub_1000050A8(&qword_10002D1B0, &qword_100022A68);
    sub_10001745C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D220);
  }

  return result;
}

unint64_t sub_10001745C()
{
  result = qword_10002D228;
  if (!qword_10002D228)
  {
    sub_1000050A8(&qword_10002D230, &qword_100022AF8);
    sub_1000174E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D228);
  }

  return result;
}

unint64_t sub_1000174E8()
{
  result = qword_10002D238;
  if (!qword_10002D238)
  {
    sub_1000050A8(&qword_10002D240, &qword_100022B00);
    sub_1000175A0();
    sub_100005264(&qword_10002C998, &qword_10002C918, &qword_100022B10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D238);
  }

  return result;
}

unint64_t sub_1000175A0()
{
  result = qword_10002D248;
  if (!qword_10002D248)
  {
    sub_1000050A8(&qword_10002D250, &qword_100022B08);
    sub_10000C208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D248);
  }

  return result;
}

uint64_t sub_10001762C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1000050A8(&qword_10002D158, &qword_1000229A8);
  type metadata accessor for PlayerControls(255, v1, v2, v3);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002D160, &qword_1000229B0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1000050A8(&qword_10002D168, &qword_1000229B8);
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C870, &qword_1000229C0);
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C710, &qword_1000229A0);
  swift_getOpaqueTypeConformance2();
  sub_100005264(&qword_10002D170, &qword_10002D168, &qword_1000229B8, &protocol conformance descriptor for _BackgroundModifier<A>);
  swift_getWitnessTable();
  sub_100005264(&qword_10002C868, &qword_10002C870, &qword_1000229C0, &protocol conformance descriptor for _GeometryActionModifier<A>);
  swift_getWitnessTable();
  sub_100016AFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000178F4()
{
  v0 = type metadata accessor for Player.PlaybackStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Player();
  static Player.shared.getter();
  Player.playbackStatus.getter();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000179D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003344(&qword_10002C708, &qword_100021B30);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = a3;
  sub_100017DB8(0, 0, v7, &unk_100022B20, v10);
}

uint64_t sub_100017AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Player.PlaybackStatus();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100017BEC, v8, v7);
}

uint64_t sub_100017BEC()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  type metadata accessor for Player();
  static Player.shared.getter();
  Player.playbackStatus.getter();

  v4(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100017CB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100017CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003568;

  return sub_100017AF8(a1, v4, v5, v7, v6);
}

uint64_t sub_100017DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003344(&qword_10002C708, &qword_100021B30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100003444(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100018078(v11);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100018078(a3);

      return v23;
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

  sub_100018078(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100018078(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002C708, &qword_100021B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000180E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000181D8;

  return v6(a1);
}

uint64_t sub_1000181D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000182D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018308(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000037B8;

  return sub_1000180E0(a1, v4);
}

uint64_t sub_1000183C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003568;

  return sub_1000180E0(a1, v4);
}

uint64_t sub_100018478(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000184C0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100018510@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003344(qword_10002D260, &unk_100022BD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100018570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t x6_0@<X6>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v17 = type metadata accessor for PlaybackProgressView(0, a6, x6_0, v16);
  v18 = a7 + v17[9];
  *v18 = sub_100018720(a2, a3, a4 & 1);
  *(v18 + 8) = v19;
  *(v18 + 16) = v20 & 1;
  *(v18 + 24) = v21;
  v22 = (a7 + v17[10]);
  State.init(wrappedValue:)();
  *v22 = v28;
  v22[1] = v29;
  v23 = a7 + v17[11];
  GestureState.init(wrappedValue:)();
  *v23 = v28;
  *(v23 + 8) = v29;
  *(v23 + 16) = v30;
  sub_100018918(a5, a7 + v17[12]);
  v24 = v17[13];
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  return (*(*(v26 - 8) + 104))(a7 + v24, v25, v26);
}

uint64_t sub_100018720(uint64_t a1, uint64_t a2, char a3)
{
  sub_100003344(&qword_10002D258, &qword_100022B98);
  State.init(wrappedValue:)();
  return v4;
}

uint64_t sub_100018778(uint64_t a1)
{
  sub_100003344(&qword_10002D368, &qword_100022C90);
  State.wrappedValue.getter();
  return v2;
}

double sub_100018858(uint64_t a1)
{
  sub_100003344(&qword_10002D3E0, &qword_100022CF8);
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_100018918(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002C990, &qword_100021E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100018998(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000191F8(319);
    if (v2 <= 0x3F)
    {
      sub_10001925C(319, &qword_10002D2F0, &type metadata for CGFloat, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10001925C(319, &qword_10002D2F8, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v4 <= 0x3F)
        {
          sub_1000192AC(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Capsule();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100018AC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for LayoutDirection() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = type metadata accessor for RoundedCornerStyle();
  v11 = *(v10 - 8);
  v12 = *(v6 + 64);
  v13 = *(v11 + 80);
  if (v7 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v8 + 80) & 0xF8;
  v17 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 + 39;
  v19 = v9 + v13 + 1;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v20 = ((v19 + ((v18 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v17)) & ~v13) + *(*(v10 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v15 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_34:
      if (v7 == v15)
      {
        v28 = *(v6 + 48);

        return v28(a1, v7, v5);
      }

      else
      {
        v29 = (((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        if ((v14 & 0x80000000) != 0)
        {
          v31 = *(v11 + 48);

          return v31((v19 + ((v18 + v29) & v17)) & ~v13);
        }

        else
        {
          v30 = *(v29 + 16);
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          return (v30 + 1);
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v15 + (v27 | v25) + 1;
}

void sub_100018E14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v32 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for LayoutDirection() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(type metadata accessor for RoundedCornerStyle() - 8);
  v13 = v12;
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (v9 <= *(v12 + 84))
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v10 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 39;
  v21 = v11 + v15 + 1;
  v22 = ((v21 + ((v20 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v19)) & ~v15) + *(v12 + 64);
  if (a3 <= v17)
  {
    v23 = 0;
  }

  else if (v22 <= 3)
  {
    v26 = ((a3 - v17 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (v17 < a2)
  {
    v24 = ~v17 + a2;
    if (v22 < 4)
    {
      v25 = (v24 >> (8 * v22)) + 1;
      if (v22)
      {
        v28 = v24 & ~(-1 << (8 * v22));
        bzero(a1, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *a1 = v28;
            if (v23 > 1)
            {
LABEL_55:
              if (v23 == 2)
              {
                *&a1[v22] = v25;
              }

              else
              {
                *&a1[v22] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v23 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v28;
        a1[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v23)
    {
      a1[v22] = v25;
    }

    return;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v22] = 0;
  }

  else if (v23)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 == v17)
  {
    v29 = *(v32 + 56);

    v29(a1, a2, v9, v7);
  }

  else
  {
    v30 = (((((&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v16 & 0x80000000) != 0)
    {
      v31 = *(v13 + 56);

      v31((v21 + ((v30 + v20) & v19)) & ~v15, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      v30[2] = 0;
      v30[3] = 0;
      *v30 = a2 & 0x7FFFFFFF;
      v30[1] = 0;
    }

    else
    {
      v30[2] = (a2 - 1);
    }
  }
}

void sub_1000191F8(uint64_t a1)
{
  if (!qword_10002D2E8)
  {
    sub_1000050A8(&qword_10002D258, &qword_100022B98);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10002D2E8);
    }
  }
}

void sub_10001925C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000192AC(uint64_t a1)
{
  if (!qword_10002D300)
  {
    type metadata accessor for LayoutDirection();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10002D300);
    }
  }
}

uint64_t sub_100019348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003344(qword_10002D260, &unk_100022BD0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100004F5C(v2 + *(a1 + 48), &v15 - v10, qword_10002D260, &unk_100022BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for LayoutDirection();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10001954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_100003344(&qword_10002D308, &qword_100022C58);
  return sub_1000195B0(v2, *(a1 + 16), *(a1 + 24), v6, a2 + *(v5 + 44));
}

uint64_t sub_1000195B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28[1] = a5;
  v8 = type metadata accessor for PlaybackProgressView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - v10;
  v12 = type metadata accessor for AnimationTimelineSchedule();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v28[0] = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v28 - v16;
  if ((*(a3 + 48))(a2, a3))
  {
    sub_100018778(v8);
  }

  AnimationTimelineSchedule.init(minimumInterval:paused:)();
  (*(v9 + 16))(v11, a1, v8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v9 + 32))(v19 + v18, v11, v8);
  (*(v13 + 16))(v28[0], v17, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10001CEF4;
  *(v20 + 24) = v19;
  sub_100003344(&qword_10002D310, &qword_100022C60);
  sub_10001DD80(&qword_10002D318, &type metadata accessor for AnimationTimelineSchedule, &protocol conformance descriptor for AnimationTimelineSchedule);
  v21 = sub_1000050A8(&qword_10002D320, &qword_100022C68);
  v22 = sub_1000050A8(&qword_10002D328, &qword_100022C70);
  v23 = sub_1000050A8(&qword_10002D330, &qword_100022C78);
  v24 = sub_10001D094();
  v29 = v23;
  v30 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_10001D144();
  v29 = v21;
  v30 = v22;
  v31 = OpaqueTypeConformance2;
  v32 = v26;
  swift_getOpaqueTypeConformance2();
  TimelineView<>.init(_:content:)();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_100019958@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23 = a4;
  v21 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003344(&qword_10002D330, &qword_100022C78);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v22 = sub_100003344(&qword_10002D320, &qword_100022C68);
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v20 - v14;
  v16 = a3;
  sub_100019BEC(a1, a2, a3, v12);
  static AccessibilityChildBehavior.combine.getter();
  v17 = sub_10001D094();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v21);
  sub_10001D22C(v12);
  v24 = a2;
  v25 = v16;
  v26 = a1;
  sub_100003344(&qword_10002D328, &qword_100022C70);
  v27 = v10;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10001D144();
  v18 = v22;
  View.accessibilityRepresentation<A>(representation:)();
  return (*(v13 + 8))(v15, v18);
}

uint64_t sub_100019BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v8 = sub_100003344(&qword_10002D3B0, &qword_100022CD0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v15 = type metadata accessor for PlaybackProgressView(0, a2, a3, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  (*(v16 + 16))(&v24 - v17, a1, v15);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  (*(v16 + 32))(v20 + v19, v18, v15);
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v21 = sub_100003344(&qword_10002D3B8, &qword_100022CD8);
  sub_10001B0EC(v25, a2, a3, &v13[*(v21 + 44)]);
  sub_100004F5C(v13, v11, &qword_10002D3B0, &qword_100022CD0);
  *a4 = sub_10001D974;
  *(a4 + 8) = v20;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  v22 = sub_100003344(&qword_10002D3C0, &qword_100022CE0);
  sub_100004F5C(v11, a4 + *(v22 + 64), &qword_10002D3B0, &qword_100022CD0);

  sub_100003750(v13, &qword_10002D3B0, &qword_100022CD0);
  sub_100003750(v11, &qword_10002D3B0, &qword_100022CD0);
}

__n128 sub_100019E70@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v101 = a3;
  v96 = a1;
  v92 = a5;
  v6 = type metadata accessor for PlaybackProgressView(0, a3, a4, a4);
  v100 = *(v6 - 8);
  v99 = *(v100 + 64);
  __chkstk_darwin(v6);
  v98 = &v72 - v7;
  v80 = type metadata accessor for GeometryProxy();
  v8 = *(v80 - 8);
  v95 = *(v8 + 64);
  __chkstk_darwin(v80);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v11);
  v12 = sub_100003344(&qword_10002D3E8, &qword_100022D00);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v83 = sub_100003344(&qword_10002D3F0, &qword_100022D08);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v72 - v15;
  v85 = sub_100003344(&qword_10002D3F8, &qword_100022D10);
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v72 - v16;
  v88 = sub_100003344(&qword_10002D400, &qword_100022D18);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v82 = &v72 - v17;
  v91 = sub_100003344(&qword_10002D408, &qword_100022D20);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v72 - v18;
  v19 = v6;
  sub_10001AA40(v6);
  v21 = v20;
  v22 = a2;
  v23 = sub_100018858(v6);
  LODWORD(a2) = static HierarchicalShapeStyle.secondary.getter();
  v24 = sub_100018858(v6);
  v25 = static Alignment.center.getter();
  *&v110 = v21;
  *(&v110 + 1) = v23;
  *&v111 = a2 | 0x3F66666600000000;
  WORD4(v111) = 256;
  *&v112 = 0x3FF0000000000000;
  *(&v112 + 1) = v24;
  v113.n128_u64[0] = 3;
  v113.n128_u16[4] = 256;
  *&v114 = v25;
  *(&v114 + 1) = v26;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v93 = v6;
  v27 = *(v6 + 44);
  v97 = v22;
  v28 = (v22 + v27);
  v78 = *v28;
  v77 = v28[1];
  v30 = v28[2];
  v29 = v28[3];
  v76 = v30;
  v75 = v29;
  v106 = v78;
  v107 = v77;
  v108 = v30;
  v109 = v29;
  v74 = sub_100003344(&qword_10002D410, &qword_100022D28);
  GestureState.projectedValue.getter();
  v31 = v104;
  v32 = v105;
  v72 = v12;
  v33 = *(v12 + 44);
  v73 = v14;
  v34 = &v14[v33];
  *v34 = v103;
  *(v34 + 1) = v31;
  *(v34 + 1) = v32;
  v35 = &v14[*(v12 + 48)];
  *v35 = sub_10001AB14;
  v35[1] = 0;
  v36 = v8;
  v37 = v10;
  v38 = v80;
  (*(v8 + 16))(v10, v96, v80);
  v39 = v100;
  v94 = *(v100 + 16);
  v96 = v100 + 16;
  v40 = v98;
  v94(v98, v22, v19);
  v41 = v36;
  v42 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v43 = *(v39 + 80);
  v44 = (v95 + v43 + v42) & ~v43;
  v95 = v43 | 7;
  v45 = swift_allocObject();
  v46 = v102;
  *(v45 + 16) = v101;
  *(v45 + 24) = v46;
  (*(v41 + 32))(v45 + v42, v37, v38);
  v47 = *(v39 + 32);
  v48 = v93;
  v47(v45 + v44, v40, v93);
  v100 = v39 + 32;
  sub_100005264(&qword_10002D418, &qword_10002D3E8, &qword_100022D00, &protocol conformance descriptor for GestureStateGesture<A, B>);
  sub_10001DD80(&qword_10002D420, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v49 = v79;
  v50 = v73;
  Gesture<>.onChanged(_:)();

  sub_100003750(v50, &qword_10002D3E8, &qword_100022D00);
  v94(v40, v97, v48);
  v51 = (v43 + 32) & ~v43;
  v52 = swift_allocObject();
  v53 = v102;
  *(v52 + 16) = v101;
  *(v52 + 24) = v53;
  v47(v52 + v51, v40, v48);
  sub_100005264(&qword_10002D428, &qword_10002D3F0, &qword_100022D08, &protocol conformance descriptor for _ChangedGesture<A>);
  v54 = v81;
  v55 = v83;
  Gesture.onEnded(_:)();

  (*(v84 + 8))(v49, v55);
  static GestureMask.all.getter();
  v56 = sub_100003344(&qword_10002D430, &qword_100022D30);
  v57 = sub_10001DE54();
  v58 = sub_100005264(&qword_10002D460, &qword_10002D3F8, &qword_100022D10, &protocol conformance descriptor for _EndedGesture<A>);
  v59 = v82;
  v60 = v85;
  View.gesture<A>(_:including:)();
  (*(v86 + 8))(v54, v60);
  LOBYTE(v110) = v78;
  *(&v110 + 1) = v77;
  *&v111 = v76;
  *(&v111 + 1) = v75;
  GestureState.wrappedValue.getter();
  v61 = v98;
  v62 = v93;
  v94(v98, v97, v93);
  v63 = swift_allocObject();
  v64 = v102;
  *(v63 + 16) = v101;
  *(v63 + 24) = v64;
  v47(v63 + v51, v61, v62);
  *&v110 = v56;
  *(&v110 + 1) = v60;
  *&v111 = v57;
  *(&v111 + 1) = v58;
  swift_getOpaqueTypeConformance2();
  v65 = v87;
  v66 = v88;
  View.onChange<A>(of:initial:_:)();

  (*(v89 + 8))(v59, v66);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v67 = v92;
  (*(v90 + 32))(v92, v65, v91);
  v68 = v67 + *(sub_100003344(&qword_10002D468, &qword_100022D48) + 36);
  v69 = v115;
  *(v68 + 64) = v114;
  *(v68 + 80) = v69;
  *(v68 + 96) = v116;
  v70 = v111;
  *v68 = v110;
  *(v68 + 16) = v70;
  result = v113;
  *(v68 + 32) = v112;
  *(v68 + 48) = result;
  return result;
}

uint64_t sub_10001AA40(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(v2 + 40);
  v4(v3, v2);
  static Duration.zero.getter();
  result = static Duration.< infix(_:_:)();
  if (result)
  {
    v6 = sub_10001AD84(a1);
    v8 = v7;
    v10 = (v4)(v3, v2);

    return static Duration./ infix(_:_:)(v6, v8, v10, v9);
  }

  return result;
}

void sub_10001AB14(uint64_t a1, BOOL *a2)
{
  DragGesture.Value.startLocation.getter();
  v4 = v3 != 0.0;
  if (v5 != 0.0)
  {
    v4 = 1;
  }

  *a2 = v4;
}

uint64_t sub_10001AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[1] = a1;
  v7 = type metadata accessor for LayoutDirection();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v20 - v12;
  GeometryProxy.size.getter();
  v15 = type metadata accessor for PlaybackProgressView(0, a4, a5, v14);
  sub_100019348(v15, v13);
  (*(v8 + 104))(v11, enum case for LayoutDirection.rightToLeft(_:), v7);
  static LayoutDirection.== infix(_:_:)();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  (*(a5 + 40))(a4, a5);
  DragGesture.Value.translation.getter();
  sub_100018858(v15);
  v17 = static Duration.* infix(_:_:)();
  return sub_1000187E4(v17, v18, 0, v15);
}

uint64_t sub_10001AD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PlaybackProgressView(0, a3, a4, a4);
  v5 = sub_10001AD84(v4);
  return sub_10001AE78(v5, v6, v4);
}

uint64_t sub_10001AD84(uint64_t a1)
{
  v2 = static Duration.zero.getter();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  (*(v3 + 32))(v4, v3);
  sub_100018778(a1);
  if (v5)
  {
    static Duration.zero.getter();
  }

  v6 = static Duration.+ infix(_:_:)();
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
    v2 = v6;
  }

  v7 = (*(v3 + 40))(v4, v3);
  if (static Duration.< infix(_:_:)())
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001AE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003344(&qword_10002C708, &qword_100021B30);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, v3, a3);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = *(a3 + 16);
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  (*(v7 + 32))(v16 + v15, v9, a3);
  sub_100017DB8(0, 0, v12, &unk_100022CC8, v16);
}

uint64_t sub_10001B074(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10001B0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80[1] = a1;
  v84 = a4;
  v86 = sub_100003344(&qword_10002D3C8, &qword_100022CE8) - 8;
  v6 = __chkstk_darwin(v86);
  v83 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v82 = v80 - v9;
  v10 = __chkstk_darwin(v8);
  v81 = v80 - v11;
  __chkstk_darwin(v10);
  v85 = v80 - v12;
  v14 = type metadata accessor for PlaybackProgressView(0, a2, a3, v13);
  v87 = sub_10001B6F0(v14);
  v88 = v15;
  v80[2] = sub_100009940();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.caption.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  LOBYTE(a3) = v24;

  sub_100009994(v16, v18, v20 & 1);

  static Font.Weight.semibold.getter();
  v25 = Text.fontWeight(_:)();
  v27 = v26;
  v29 = v28;
  sub_100009994(v21, v23, a3 & 1);

  v30 = Text.monospacedDigit()();
  v32 = v31;
  LOBYTE(v21) = v33;
  sub_100009994(v25, v27, v29 & 1);

  LODWORD(v87) = static HierarchicalShapeStyle.secondary.getter();
  v34 = Text.foregroundStyle<A>(_:)();
  v36 = v35;
  LOBYTE(v25) = v37;
  v39 = v38;
  sub_100009994(v30, v32, v21 & 1);

  v87 = v34;
  v88 = v36;
  v89 = v25 & 1;
  v90 = v39;
  v40 = v85;
  View.accessibilityIdentifier(_:)();
  sub_100009994(v34, v36, v25 & 1);

  v41 = sub_100018858(v14);
  v80[0] = v14;
  v42 = sub_100018858(v14);
  v43 = &v40[*(v86 + 44)];
  *v43 = v41;
  v43[1] = -v42;
  v87 = sub_10001B99C(v14);
  v88 = v44;
  v45 = Text.init<A>(_:)();
  v47 = v46;
  LOBYTE(v34) = v48;
  static Font.caption.getter();
  v49 = Text.font(_:)();
  v51 = v50;
  v53 = v52;

  sub_100009994(v45, v47, v34 & 1);

  static Font.Weight.semibold.getter();
  v54 = Text.fontWeight(_:)();
  v56 = v55;
  LOBYTE(v34) = v57;
  sub_100009994(v49, v51, v53 & 1);

  v58 = Text.monospacedDigit()();
  v60 = v59;
  LOBYTE(v51) = v61;
  sub_100009994(v54, v56, v34 & 1);

  LODWORD(v87) = static HierarchicalShapeStyle.secondary.getter();
  v62 = Text.foregroundStyle<A>(_:)();
  v64 = v63;
  LOBYTE(v56) = v65;
  v67 = v66;
  sub_100009994(v58, v60, v51 & 1);

  v87 = v62;
  v88 = v64;
  v89 = v56 & 1;
  v90 = v67;
  v68 = v81;
  View.accessibilityIdentifier(_:)();
  sub_100009994(v62, v64, v56 & 1);

  v69 = v80[0];
  v70 = -sub_100018858(v80[0]);
  v71 = sub_100018858(v69);
  v72 = v85;
  v73 = (v68 + *(v86 + 44));
  *v73 = v70;
  v73[1] = -v71;
  v74 = v82;
  sub_100004F5C(v72, v82, &qword_10002D3C8, &qword_100022CE8);
  v75 = v83;
  sub_100004F5C(v68, v83, &qword_10002D3C8, &qword_100022CE8);
  v76 = v84;
  sub_100004F5C(v74, v84, &qword_10002D3C8, &qword_100022CE8);
  v77 = sub_100003344(&qword_10002D3D0, &qword_100022CF0);
  v78 = v76 + *(v77 + 48);
  *v78 = 0;
  *(v78 + 8) = 1;
  sub_100004F5C(v75, v76 + *(v77 + 64), &qword_10002D3C8, &qword_100022CE8);
  sub_100003750(v68, &qword_10002D3C8, &qword_100022CE8);
  sub_100003750(v72, &qword_10002D3C8, &qword_100022CE8);
  sub_100003750(v75, &qword_10002D3C8, &qword_100022CE8);
  return sub_100003750(v74, &qword_10002D3C8, &qword_100022CE8);
}

uint64_t sub_10001B6F0(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration.TimeFormatStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AD84(a1);
  v16[1] = v14;
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v2);
  static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
  (*(v3 + 8))(v5, v2);
  static FormatStyle<>.time(pattern:)();
  (*(v7 + 8))(v9, v6);
  sub_10001DD80(&qword_10002D3D8, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  Duration.formatted<A>(_:)();
  (*(v11 + 8))(v13, v10);
  return v16[2];
}

uint64_t sub_10001B99C(uint64_t a1)
{
  v15 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Duration.TimeFormatStyle();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AD84(a1);
  (*(*(a1 + 24) + 40))(*(a1 + 16));
  static Duration.- infix(_:_:)();
  v11 = v15;
  (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v15);
  static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
  (*(v2 + 8))(v4, v11);
  static FormatStyle<>.time(pattern:)();
  (*(v5 + 8))(v7, v17);
  sub_10001DD80(&qword_10002D3D8, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  v12 = v16;
  Duration.formatted<A>(_:)();
  (*(v8 + 8))(v10, v12);
  return v18;
}

uint64_t sub_10001BC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100003344(&qword_10002D360, &qword_100022C88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v29 = sub_100003344(&qword_10002D328, &qword_100022C70);
  __chkstk_darwin(v29);
  v13 = &v28 - v12;
  v32 = 0;
  static Binding.constant(_:)();
  v32 = v35;
  v33 = v36;
  v34 = v37;
  v31 = xmmword_100022B80;
  sub_10001D2A0();
  Slider<>.init<A>(value:in:onEditingChanged:label:)();
  sub_10001C098(a1, a2, a3, v14);
  sub_100005264(&qword_10002D358, &qword_10002D360, &qword_100022C88, &protocol conformance descriptor for Slider<A, B>);
  View.accessibilityAdjustableAction(_:)();

  (*(v9 + 8))(v11, v8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  v17 = type metadata accessor for PlaybackProgressView(0, a2, a3, v16);
  v18._countAndFlagsBits = sub_10001C328(v17);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v18);

  v19._countAndFlagsBits = 543584032;
  v19._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = sub_10001C72C(v17);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v20);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  LocalizedStringKey.init(stringInterpolation:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  ModifiedContent<>.accessibilityValue(_:)();
  sub_100009994(v22, v24, v26 & 1);

  return sub_100003750(v13, &qword_10002D328, &qword_100022C70);
}

uint64_t sub_10001C018@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t (*sub_10001C098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PlaybackProgressView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  return sub_10001D614;
}

uint64_t sub_10001C1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityAdjustmentDirection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != enum case for AccessibilityAdjustmentDirection.increment(_:) && v8 != enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    return (*(v5 + 8))(v7, v4, -3.0);
  }

  v9 = static Duration.seconds(_:)();
  sub_1000187E4(v9, v10, 0, a2);
  v11 = sub_10001AD84(a2);
  return sub_10001AE78(v11, v12, a2);
}

uint64_t sub_10001C328(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Duration.UnitsFormatStyle();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001AD84(a1);
  v19[0] = v15;
  v19[1] = v14;
  sub_100003344(&qword_10002D388, &qword_100022CA8);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100022270;
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  sub_10001D2F4(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v24 + 8))(v4, v25);
  (*(v22 + 8))(v7, v23);
  (*(v8 + 8))(v10, v21);
  sub_10001DD80(&qword_10002D390, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
  v17 = v20;
  Duration.formatted<A>(_:)();
  (*(v11 + 8))(v13, v17);
  return v26;
}

uint64_t sub_10001C72C(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Duration.UnitsFormatStyle();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*(a1 + 24) + 40))(*(a1 + 16));
  v19[0] = v15;
  v19[1] = v14;
  sub_100003344(&qword_10002D388, &qword_100022CA8);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100022270;
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  sub_10001D2F4(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v24 + 8))(v4, v25);
  (*(v22 + 8))(v7, v23);
  (*(v8 + 8))(v10, v21);
  sub_10001DD80(&qword_10002D390, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
  v17 = v20;
  Duration.formatted<A>(_:)();
  (*(v11 + 8))(v13, v17);
  return v26;
}

uint64_t sub_10001CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[8] = v10;
  v8[9] = v9;

  return _swift_task_switch(sub_10001CBE0, v10, v9);
}

uint64_t sub_10001CBE0()
{
  v10 = v0[6];
  v1 = Duration.components.getter();
  Duration.components.getter();
  v9 = (*(v10 + 88) + **(v10 + 88));
  v3 = v2 / 1.0e18 + v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10001CD3C;
  v6 = v0[5];
  v5 = v0[6];
  v7.n128_f64[0] = v3;

  return v9(v6, v5, v7);
}

uint64_t sub_10001CD3C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10001CE5C, v3, v2);
}

uint64_t sub_10001CE5C()
{
  v1 = v0[6];
  v2 = v0[5];

  v4 = type metadata accessor for PlaybackProgressView(0, v2, v1, v3);
  sub_1000187E4(0, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10001CF0C(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100003344(&qword_10002D370, &qword_100022C98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_100003344(&qword_10002D378, &qword_100022CA0);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D054()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001D094()
{
  result = qword_10002D338;
  if (!qword_10002D338)
  {
    sub_1000050A8(&qword_10002D330, &qword_100022C78);
    sub_100005264(&qword_10002D340, &qword_10002D348, &qword_100022C80, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D338);
  }

  return result;
}

unint64_t sub_10001D144()
{
  result = qword_10002D350;
  if (!qword_10002D350)
  {
    sub_1000050A8(&qword_10002D328, &qword_100022C70);
    sub_100005264(&qword_10002D358, &qword_10002D360, &qword_100022C88, &protocol conformance descriptor for Slider<A, B>);
    sub_10001DD80(&qword_10002CA20, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D350);
  }

  return result;
}

uint64_t sub_10001D22C(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002D330, &qword_100022C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001D2A0()
{
  result = qword_10002D380;
  if (!qword_10002D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D380);
  }

  return result;
}

void *sub_10001D2F4(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003344(&qword_10002D398, &unk_100022CB0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10001DD80(&qword_10002D3A0, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10001DD80(&qword_10002D3A8, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10001D680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for PlaybackProgressView(0, v5, *(v4 + 40), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 64) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  swift_unknownObjectRelease();
  v10 = v4 + v8;
  (*(*(v5 - 8) + 8))(v4 + v8, v5);

  v11 = *(v6 + 48);
  sub_100003344(qword_10002D260, &unk_100022BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for LayoutDirection();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = *(v6 + 52);
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 8))(v10 + v13, v14);

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_10001D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[4];
  v7 = v4[5];
  v9 = *(type metadata accessor for PlaybackProgressView(0, v8, v7, a4) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[6];
  v14 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_100003568;

  return sub_10001CB40(a1, v11, v12, v13, v14, v4 + v10, v8, v7);
}

uint64_t sub_10001D98C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PlaybackProgressView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

uint64_t sub_10001DA3C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for GeometryProxy();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = v6 + *(v4 + 64);
  v9 = type metadata accessor for PlaybackProgressView(0, v2, v1, v8);
  v10 = *(*(v9 - 8) + 80);
  v11 = (v7 + v10) & ~v10;
  v12 = *(*(v9 - 8) + 64);
  (*(v4 + 8))(v0 + v6, v3);
  v13 = v0 + v11;
  (*(*(v2 - 8) + 8))(v0 + v11, v2);

  v14 = *(v9 + 48);
  sub_100003344(qword_10002D260, &unk_100022BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for LayoutDirection();
    (*(*(v15 - 8) + 8))(v13 + v14, v15);
  }

  else
  {
  }

  v16 = *(v9 + 52);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);

  return _swift_deallocObject(v0, v11 + v12, v5 | v10 | 7);
}

uint64_t sub_10001DC90(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v9 = *(type metadata accessor for PlaybackProgressView(0, v3, v4, v8) - 8);
  v10 = v1 + ((v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_10001AB50(a1, v1 + v6, v10, v3, v4);
}

uint64_t sub_10001DD80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PlaybackProgressView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_10001AD44(a1, v9, v6, v7);
}

unint64_t sub_10001DE54()
{
  result = qword_10002D438;
  if (!qword_10002D438)
  {
    sub_1000050A8(&qword_10002D430, &qword_100022D30);
    sub_100005264(&qword_10002D440, &qword_10002D448, &qword_100022D38, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_100005264(&qword_10002D450, &qword_10002D458, &qword_100022D40, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D438);
  }

  return result;
}

uint64_t sub_10001DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PlaybackProgressView(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  (*(*(v5 - 8) + 8))(v4 + v9, v5);

  v11 = *(v6 + 48);
  sub_100003344(qword_10002D260, &unk_100022BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for LayoutDirection();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = *(v6 + 52);
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 8))(v10 + v13, v14);

  return _swift_deallocObject(v4, v9 + v8, v7 | 7);
}

uint64_t sub_10001E104(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for PlaybackProgressView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_10001B074(a1, a2, v10, v7, v8);
}

uint64_t sub_10001E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 40))
  {
    v5 = -5.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = type metadata accessor for PlaybackProgressView(0, *(v4 + 16), *(v4 + 24), a4);
  return sub_1000188B8(v6, v5);
}

double sub_10001E258()
{
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_10001E2FC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  return sub_10001F28C(v5 + v3, a1);
}

double sub_10001E3C4()
{
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v0 + 32);
  v3 = *(v0 + 32);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3 >= v1)
  {
    v4 = 0.88;
    v2 = (v0 + 24);
  }

  else
  {
    v4 = 0.5;
  }

  return *v2 * v4;
}

uint64_t sub_10001E52C(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Image.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 16) = a1;
}

uint64_t sub_10001E694(uint64_t a1)
{
  v3 = sub_100003344(&qword_10002CA78, &qword_1000229E0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  sub_10001F28C(v1 + v6, v5);
  v7 = sub_10001F368(v5, a1);
  sub_100003750(v5, &qword_10002CA78, &qword_1000229E0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_10001F658(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_100003750(a1, &qword_10002CA78, &qword_1000229E0);
}

double sub_10001E878@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_10001E950(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

double sub_10001E98C()
{
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

__n128 sub_10001EA2C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_10001EAFC(double a1, double a2)
{
  if (*(v2 + 24) == a1 && *(v2 + 32) == a2)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10001EC1C(uint64_t result, double a2, double a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t sub_10001EC24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  return sub_10001F28C(v3 + v4, a2);
}

uint64_t sub_10001ECEC(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002CA78, &qword_1000229E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10001F28C(a1, &v6 - v3);
  return sub_10001E694(v4);
}

uint64_t sub_10001ED80(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  sub_10001F658(a2, a1 + v4);
  return swift_endAccess();
}

double *sub_10001EDEC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100003344(&qword_10002CA78, &qword_1000229E0);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  v4[2] = 0.0;
  v4[3] = 0.0;
  v4[4] = 0.0;
  v13 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  v14 = type metadata accessor for Artwork();
  (*(*(v14 - 8) + 56))(v5 + v13, 1, 1, v14);
  ObservationRegistrar.init()();
  if (v5[3] == a3 && v5[4] == a4)
  {
    v5[3] = a3;
    v5[4] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v18[-4] = v5;
    *&v18[-3] = a3;
    *&v18[-2] = a4;
    v18[1] = v5;
    sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel, &unk_100022DB8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_10001F28C(a1, v12);
  sub_10001E694(v12);
  sub_10001E52C(a2);
  sub_100003750(a1, &qword_10002CA78, &qword_1000229E0);
  return v5;
}

uint64_t sub_10001F000()
{

  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork, &qword_10002CA78, &qword_1000229E0);
  v1 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArtworkViewModel(uint64_t a1)
{
  result = qword_10002D4B8;
  if (!qword_10002D4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001F118(uint64_t a1)
{
  sub_10001F1F8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001F1F8(uint64_t a1)
{
  if (!qword_10002D4C8)
  {
    type metadata accessor for Artwork();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10002D4C8);
    }
  }
}

__n128 sub_10001F27C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

uint64_t sub_10001F28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002CA78, &qword_1000229E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F32C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_10001F368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003344(&qword_10002CA78, &qword_1000229E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100003344(&qword_10002D1A0, &qword_1000229D8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10001F28C(a1, &v21 - v13);
  sub_10001F28C(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10001F28C(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10001F6EC(&qword_10002D1A8, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100003750(v14, &qword_10002CA78, &qword_1000229E0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100003750(v14, &qword_10002D1A0, &qword_1000229D8);
    v17 = 1;
    return v17 & 1;
  }

  sub_100003750(v14, &qword_10002CA78, &qword_1000229E0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10001F658(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002CA78, &qword_1000229E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F6EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10001F778()
{
  v0 = [objc_allocWithZone(MPVolumeView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  if (!v0)
  {
    v0 = [objc_allocWithZone(MPVolumeView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v1 = v0;
  [v0 setAlpha:0.9];
  return v1;
}

uint64_t sub_10001F804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002031C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001F868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002031C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001F8CC(uint64_t a1)
{
  sub_10002031C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10001F8F4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_100003344(&qword_10002D578, &qword_100022F08);
  v2 = __chkstk_darwin(v1 - 8);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v40 = &v40 - v4;
  v5 = sub_100003344(&qword_10002CA70, &qword_100022F10);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for SymbolVariants();
  v43 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003344(&qword_10002D580, &qword_100022F18);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v45 = &v40 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v40 - v19;
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v49 = Image.init(systemName:)();
  static SymbolVariants.fill.getter();
  View.symbolVariant(_:)();
  v23 = *(v9 + 8);
  v42 = v9 + 8;
  v44 = v23;
  v23(v11, v8);

  v24 = static HierarchicalShapeStyle.secondary.getter();
  v41 = sub_100003344(&qword_10002D588, &qword_100022F20);
  *&v22[*(v41 + 36)] = v24;
  static Font.Weight.semibold.getter();
  v25 = type metadata accessor for Font.Design();
  v26 = *(*(v25 - 8) + 56);
  v26(v7, 1, 1, v25);
  v27 = static Font.system(size:weight:design:)();
  sub_100003750(v7, &qword_10002CA70, &qword_100022F10);
  KeyPath = swift_getKeyPath();
  v29 = &v22[*(v13 + 44)];
  *v29 = KeyPath;
  v29[1] = v27;
  sub_10001FFF8();
  View.accessibilityIdentifier(_:)();
  v49 = Image.init(systemName:)();
  static SymbolVariants.fill.getter();
  View.symbolVariant(_:)();
  v44(v11, v43);

  *&v20[*(v41 + 36)] = static HierarchicalShapeStyle.secondary.getter();
  static Font.Weight.semibold.getter();
  v26(v7, 1, 1, v25);
  v30 = static Font.system(size:weight:design:)();
  sub_100003750(v7, &qword_10002CA70, &qword_100022F10);
  v31 = swift_getKeyPath();
  v32 = &v20[*(v13 + 44)];
  *v32 = v31;
  v32[1] = v30;
  v33 = v45;
  sub_10002004C(v22, v45);
  v34 = v40;
  v35 = v47;
  sub_1000200BC(v40, v47);
  v36 = v46;
  sub_10002004C(v20, v46);
  v37 = v48;
  sub_10002004C(v33, v48);
  v38 = sub_100003344(&qword_10002D598, &qword_100022F58);
  sub_1000200BC(v35, v37 + *(v38 + 48));
  sub_10002004C(v36, v37 + *(v38 + 64));
  sub_10002012C(v20);
  sub_100003750(v34, &qword_10002D578, &qword_100022F08);
  sub_10002012C(v22);
  sub_10002012C(v36);
  sub_100003750(v35, &qword_10002D578, &qword_100022F08);
  return sub_10002012C(v33);
}

uint64_t sub_10001FE58@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v3 = sub_100003344(&qword_10002D560, &qword_100022EC0);
  sub_10001F8F4(a2 + *(v3 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a2 + *(sub_100003344(&qword_10002D568, &qword_100022EC8) + 36));
  *v4 = v9;
  v4[1] = v10;
  v4[2] = v11;
  v5 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100003344(&qword_10002D570, &qword_100022F00);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_10001FF48@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001FF74@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10001FFF8()
{
  result = qword_10002D590;
  if (!qword_10002D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D590);
  }

  return result;
}

uint64_t sub_10002004C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002D580, &qword_100022F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000200BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002D578, &qword_100022F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002012C(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002D580, &qword_100022F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000201A8()
{
  result = qword_10002D5A0;
  if (!qword_10002D5A0)
  {
    sub_1000050A8(&qword_10002D570, &qword_100022F00);
    sub_100020260();
    sub_100005264(&qword_10002C998, &qword_10002C918, &qword_100022B10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D5A0);
  }

  return result;
}

unint64_t sub_100020260()
{
  result = qword_10002D5A8;
  if (!qword_10002D5A8)
  {
    sub_1000050A8(&qword_10002D568, &qword_100022EC8);
    sub_100005264(&qword_10002D5B0, &qword_10002D5B8, "( ", &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D5A8);
  }

  return result;
}

unint64_t sub_10002031C()
{
  result = qword_10002D5C0;
  if (!qword_10002D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D5C0);
  }

  return result;
}