_BYTE *sub_100065310@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_10006537C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

unint64_t sub_100065474()
{
  result = qword_1006CA6F8;
  if (!qword_1006CA6F8)
  {
    type metadata accessor for TransactionType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA6F8);
  }

  return result;
}

unint64_t sub_1000654CC()
{
  result = qword_1006CA700;
  if (!qword_1006CA700)
  {
    sub_1000591B0(255, &qword_1006CA340, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA700);
  }

  return result;
}

void sub_10006565C()
{
  v3 = v0 + v1[5];
  *v3 = 0;
  *(v3 + 8) = v2;
  v4 = v0 + v1[6];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = v2;
  *(v0 + v1[7]) = 0;
  v5 = v0 + v1[8];
  *v5 = 0;
  *(v5 + 8) = v2;
}

Swift::Int sub_10006576C()
{

  return sub_100063944(v0, 0);
}

uint64_t sub_100065804()
{
  *(v0 + 16) = v1;
  v6 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;

  return sub_100062954(v2, v6);
}

uint64_t sub_1000658CC()
{
}

void sub_100065904(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v14;
  v17 = v13;

  String.append(_:)(*&v16);
}

uint64_t sub_100065948()
{

  return swift_task_alloc();
}

uint64_t sub_100065978()
{

  return swift_allocObject();
}

uint64_t sub_1000659B0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000659C8(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1000659E4()
{
  v1 = 0x6625203D3E20;
  v2 = 0xE600000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100065A08()
{
  v2 = *(v0 + 168);

  return sub_10006174C(v2);
}

uint64_t sub_100065AD8()
{
  v3 = *(v0 + 144);

  return sub_1000617A8(v1, v3);
}

BOOL sub_100065AF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v11);
}

uint64_t sub_100065B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
}

uint64_t ASMotionHelper.ActivitiesDurationResult.unknownDuration.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_unknownDuration;
  sub_1000682F8(a1);
  return *(v1 + v2);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.unknownDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_unknownDuration;
  result = sub_1000682D8(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.stationaryDuration.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_stationaryDuration;
  sub_1000682F8(a1);
  return *(v1 + v2);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.stationaryDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_stationaryDuration;
  result = sub_1000682D8(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.walkingDuration.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_walkingDuration;
  sub_1000682F8(a1);
  return *(v1 + v2);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.walkingDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_walkingDuration;
  result = sub_1000682D8(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.runningDuration.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_runningDuration;
  sub_1000682F8(a1);
  return *(v1 + v2);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.runningDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_runningDuration;
  result = sub_1000682D8(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.automotiveDuration.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_automotiveDuration;
  sub_1000682F8(a1);
  return *(v1 + v2);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.automotiveDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_automotiveDuration;
  result = sub_1000682D8(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.cyclingDuration.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_cyclingDuration;
  sub_1000682F8(a1);
  return *(v1 + v2);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.cyclingDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_cyclingDuration;
  result = sub_1000682D8(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.indeterminateDuration.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_indeterminateDuration;
  sub_1000682F8(a1);
  return *(v1 + v2);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.indeterminateDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_indeterminateDuration;
  result = sub_1000682D8(a1);
  *(v1 + v3) = a1;
  return result;
}

id ASMotionHelper.ActivitiesDurationResult.init()()
{
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_unknownDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_stationaryDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_walkingDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_runningDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_automotiveDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_cyclingDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_indeterminateDuration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASMotionHelper.ActivitiesDurationResult();
  return objc_msgSendSuper2(&v2, "init");
}

id ASMotionHelper.init(manager:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3asd14ASMotionHelper_queue;
  *&v1[v3] = [objc_allocWithZone(NSOperationQueue) init];
  *&v1[OBJC_IVAR____TtC3asd14ASMotionHelper_manager] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ASMotionHelper();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t ASMotionHelper.durationOfActivities(startDateOffset:and:)()
{
  sub_1000657D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Date();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100066538, 0, 0);
}

uint64_t sub_100066538()
{
  sub_1000657D4();
  Date.init(timeIntervalSinceNow:)();
  Date.init(timeIntervalSinceNow:)();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1000665F0;
  v2 = v0[7];
  v3 = v0[8];

  return sub_100066B6C(v3, v2);
}

uint64_t sub_1000665F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_1000655F4();
  *v6 = v5;
  *(v4 + 80) = v1;

  if (v1)
  {
    v7 = sub_1000667D8;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_100066710;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100066710()
{
  sub_100068324();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  sub_10006714C(v0[11]);
  v6 = v5;

  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_1000667D8()
{
  sub_100068324();
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[6] + 8);
  v3(v0[7], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100066914(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1000669D8;

  return ASMotionHelper.durationOfActivities(startDateOffset:and:)();
}

uint64_t sub_1000669D8()
{
  sub_100068324();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 16);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;

  v9 = *(v5 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, v4, 0);
    _Block_release(v9);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_100066B6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_100066B90, 0, 0);
}

uint64_t sub_100066B90()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_1000443DC(&qword_1006CA7B0);
  *v4 = v0;
  v4[1] = sub_100066C98;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000014, 0x80000001005A4380, sub_100067FB8, v2, v5);
}

uint64_t sub_100066C98()
{
  sub_1000657D4();
  v5 = *v1;
  sub_1000655F4();
  *v2 = v5;
  *(v5 + 64) = v0;

  if (v0)
  {
    v3 = sub_100066DC4;
  }

  else
  {

    v3 = sub_100066DA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100066DC4()
{
  sub_1000657D4();

  v1 = *(v0 + 8);

  return v1();
}

void sub_100066E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CA7B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7, v8);
  v9 = *(a2 + OBJC_IVAR____TtC3asd14ASMotionHelper_manager);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = Date._bridgeToObjectiveC()().super.isa;
  v12 = *(a2 + OBJC_IVAR____TtC3asd14ASMotionHelper_queue);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_100068050;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000670B8;
  aBlock[3] = &unk_100692C58;
  v15 = _Block_copy(aBlock);

  [v9 queryActivityStartingFromDate:isa toDate:v11 toQueue:v12 withHandler:v15];
  _Block_release(v15);
}

uint64_t sub_10006701C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_1000443DC(&qword_1006CA7B8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      swift_errorRetain();
    }

    else
    {
      sub_100068130();
      swift_allocError();
    }

    sub_1000443DC(&qword_1006CA7B8);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1000670B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000680EC();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_10006714C(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ASMotionHelper.ActivitiesDurationResult()) init];
  v3 = sub_1000591F0(a1);
  v4 = v2;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v6;
    sub_100067238(v9, &v8, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_100067238(uint64_t a1, void **a2, char *a3)
{
  v128 = type metadata accessor for Date();
  v5 = *(v128 - 8);
  v8 = __chkstk_darwin(v128, v6, v7);
  v122 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v10, v11);
  v123 = &v122 - v13;
  v16 = __chkstk_darwin(v12, v14, v15);
  v124 = &v122 - v17;
  v20 = __chkstk_darwin(v16, v18, v19);
  v125 = &v122 - v21;
  v24 = __chkstk_darwin(v20, v22, v23);
  v126 = &v122 - v25;
  v28 = __chkstk_darwin(v24, v26, v27);
  v30 = &v122 - v29;
  v33 = __chkstk_darwin(v28, v31, v32);
  v35 = &v122 - v34;
  __chkstk_darwin(v33, v36, v37);
  v39 = &v122 - v38;
  v40 = *a2;
  v41 = [v40 unknown];
  v42 = &unk_1005CB000;
  v127 = v5;
  if (!v41)
  {
    goto LABEL_8;
  }

  result = [v40 endDate];
  if (!result)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v44 = result;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = [v40 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v47 = v46;
  v48 = v46;
  v49 = *(v5 + 8);
  v50 = v128;
  v49(v35, v128);
  result = (v49)(v39, v50);
  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_57;
  }

  v42 = &unk_1005CB000;
  if (v47 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v51 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_unknownDuration;
  result = swift_beginAccess();
  v52 = *&a3[v51];
  v53 = __OFADD__(v52, v47);
  v54 = v52 + v47;
  if (v53)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *&a3[v51] = v54;
  v5 = v127;
LABEL_8:
  if (![v40 stationary])
  {
    goto LABEL_15;
  }

  result = [v40 endDate];
  if (!result)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v55 = result;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = [v40 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v58 = v57;
  v59 = v57;
  v60 = *(v5 + 8);
  v61 = v128;
  v60(v35, v128);
  result = (v60)(v30, v61);
  if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  if (v58 <= v42[454])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v62 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_stationaryDuration;
  result = swift_beginAccess();
  v63 = *&a3[v62];
  v53 = __OFADD__(v63, v58);
  v64 = v63 + v58;
  if (v53)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *&a3[v62] = v64;
  v5 = v127;
LABEL_15:
  if (![v40 walking])
  {
    goto LABEL_22;
  }

  result = [v40 endDate];
  if (!result)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v65 = result;
  v66 = v126;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v67 = [v40 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v69 = v68;
  v70 = v68;
  v71 = *(v5 + 8);
  v72 = v128;
  v71(v35, v128);
  result = (v71)(v66, v72);
  if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v69 <= v42[454])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v69 >= 9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v73 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_walkingDuration;
  result = swift_beginAccess();
  v74 = *&a3[v73];
  v53 = __OFADD__(v74, v69);
  v75 = v74 + v69;
  if (v53)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  *&a3[v73] = v75;
  v5 = v127;
LABEL_22:
  if (![v40 running])
  {
    goto LABEL_29;
  }

  v126 = a3;
  v76 = v5;
  result = [v40 endDate];
  if (!result)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v77 = result;
  v78 = v125;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = [v40 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v81 = v80;
  v82 = v80;
  v83 = *(v76 + 8);
  v84 = v128;
  v83(v35, v128);
  result = (v83)(v78, v84);
  if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_66;
  }

  if (v81 <= v42[454])
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v81 >= 9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v85 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_runningDuration;
  v86 = v126;
  result = swift_beginAccess();
  v87 = *&v86[v85];
  v53 = __OFADD__(v87, v81);
  v88 = v87 + v81;
  if (v53)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  *&v86[v85] = v88;
  v5 = v76;
  a3 = v86;
LABEL_29:
  if (![v40 automotive])
  {
    goto LABEL_36;
  }

  result = [v40 endDate];
  if (!result)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v89 = result;
  v90 = v124;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v91 = [v40 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v93 = v92;
  v94 = v92;
  v95 = *(v5 + 8);
  v96 = v128;
  v95(v35, v128);
  result = (v95)(v90, v96);
  if ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_70;
  }

  if (v93 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v93 >= 9.22337204e18)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v97 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_automotiveDuration;
  result = swift_beginAccess();
  v98 = *&a3[v97];
  v53 = __OFADD__(v98, v93);
  v99 = v98 + v93;
  if (v53)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  *&a3[v97] = v99;
LABEL_36:
  if ([v40 cycling])
  {
    result = [v40 endDate];
    if (!result)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v100 = result;
    v101 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = [v40 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v104 = v103;
    v105 = v103;
    v106 = *(v5 + 8);
    v107 = v128;
    v106(v35, v128);
    result = (v106)(v101, v107);
    if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v104 > -9.22337204e18)
      {
        if (v104 < 9.22337204e18)
        {
          v108 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_cyclingDuration;
          result = swift_beginAccess();
          v109 = *&a3[v108];
          v53 = __OFADD__(v109, v104);
          v110 = v109 + v104;
          if (!v53)
          {
            *&a3[v108] = v110;
            v5 = v127;
            goto LABEL_43;
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    goto LABEL_74;
  }

LABEL_43:
  result = [v40 unknown];
  if ((result & 1) == 0)
  {
    result = [v40 stationary];
    if ((result & 1) == 0)
    {
      result = [v40 walking];
      if ((result & 1) == 0)
      {
        result = [v40 running];
        if ((result & 1) == 0)
        {
          result = [v40 automotive];
          if ((result & 1) == 0)
          {
            result = [v40 cycling];
            if ((result & 1) == 0)
            {
              result = [v40 endDate];
              if (!result)
              {
LABEL_90:
                __break(1u);
                return result;
              }

              v111 = result;
              v112 = v122;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v113 = [v40 startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              Date.timeIntervalSince(_:)();
              v115 = v114;
              v116 = v114;
              v117 = *(v5 + 8);
              v118 = v128;
              v117(v35, v128);
              result = (v117)(v112, v118);
              if ((*&v116 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v115 > -9.22337204e18)
                {
                  if (v115 < 9.22337204e18)
                  {
                    v119 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_indeterminateDuration;
                    result = swift_beginAccess();
                    v120 = *&a3[v119];
                    v53 = __OFADD__(v120, v115);
                    v121 = v120 + v115;
                    if (!v53)
                    {
                      *&a3[v119] = v121;
                      return result;
                    }

                    goto LABEL_83;
                  }

LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

LABEL_80:
              __break(1u);
              goto LABEL_81;
            }
          }
        }
      }
    }
  }

  return result;
}

id sub_100067D50(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100067DD4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100067E14()
{
  sub_100068324();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100067ED0;

  return sub_100066914(v2, v3, v5, v4);
}

uint64_t sub_100067ED0()
{
  sub_1000657D4();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100067FC4()
{
  v1 = sub_1000443DC(&qword_1006CA7B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100068050(uint64_t a1, uint64_t a2)
{
  sub_1000443DC(&qword_1006CA7B8);

  return sub_10006701C(a1, a2);
}

uint64_t sub_1000680D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000680EC()
{
  result = qword_1006CA7C0;
  if (!qword_1006CA7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CA7C0);
  }

  return result;
}

unint64_t sub_100068130()
{
  result = qword_1006CA7C8;
  if (!qword_1006CA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA7C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ASMotionHelper.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100068220);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10006825C()
{
  result = qword_1006CA7D0;
  if (!qword_1006CA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA7D0);
  }

  return result;
}

uint64_t sub_1000682B8()
{

  return swift_beginAccess();
}

uint64_t sub_1000682D8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1000682F8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t ASScreenContinuityServicesHelper.ScreenMirroringStatus.Status.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100068344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ASScreenContinuityServicesHelper.ScreenMirroringStatus.Status.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *ASScreenContinuityServicesHelper.ScreenMirroringStatus.sessionStart.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC3asd32ASScreenContinuityServicesHelper21ScreenMirroringStatus_sessionStart);
  v2 = v1;
  return v1;
}

id ASScreenContinuityServicesHelper.ScreenMirroringStatus.init(status:sessionStart:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCC3asd32ASScreenContinuityServicesHelper21ScreenMirroringStatus_status] = a1;
  *&v2[OBJC_IVAR____TtCC3asd32ASScreenContinuityServicesHelper21ScreenMirroringStatus_sessionStart] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t ASScreenContinuityServicesHelper.loadScreenMirroringStatus()()
{
  sub_1000657D4();
  v1[3] = v0;
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  sub_1000474C0(v2);
  v1[5] = v3;
  v1[6] = sub_100065948();
  sub_1000443DC(&qword_1006CA2B0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  sub_1000443DC(&qword_1006CA7E8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for CompanionDevice();
  v1[13] = v4;
  sub_1000474C0(v4);
  v1[14] = v5;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v6 = type metadata accessor for CompanionDeviceManager.Options();
  v1[18] = v6;
  sub_1000474C0(v6);
  v1[19] = v7;
  v1[20] = sub_100065948();
  v1[21] = sub_1000443DC(&qword_1006CA7F0);
  v1[22] = sub_100065948();
  v8 = sub_1000443DC(&qword_1006CA7F8);
  v1[23] = v8;
  sub_1000474C0(v8);
  v1[24] = v9;
  v1[25] = sub_100065948();

  return _swift_task_switch(sub_1000687C0, 0, 0);
}

uint64_t sub_1000687C0()
{
  sub_1000657D4();
  *(v0 + 208) = *(*(v0 + 24) + OBJC_IVAR____TtC3asd32ASScreenContinuityServicesHelper_manager);
  static CompanionDeviceManager.Options.sessionInfo.getter();
  type metadata accessor for CompanionDeviceManager();
  sub_100069168();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006885C, v2, v1);
}

uint64_t sub_10006885C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  dispatch thunk of CompanionDeviceManager.devices(with:)();
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000688F4, 0, 0);
}

uint64_t sub_1000688F4(uint64_t a1)
{
  swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v1 + 216) = v3;
  *v3 = v1;
  v3[1] = sub_100068A08;
  v4 = *(v1 + 184);

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 16, v4, AssociatedConformanceWitness);
}

uint64_t sub_100068A08()
{
  sub_1000657D4();
  v2 = *v1;
  sub_1000655F4();
  *v3 = v2;
  *(v4 + 224) = v0;

  if (v0)
  {
    v5 = sub_100069040;
  }

  else
  {
    v5 = sub_100068B10;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100068B10(uint64_t result)
{
  v2 = v1[2];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {

LABEL_12:
    isa = 0;
    v19 = 1;
    goto LABEL_23;
  }

  v4 = 0;
  v5 = v1[14];
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v50 = v1[2];
  v7 = (v5 + 8);
  v49 = v5;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = v1[12];
    (*(v5 + 16))(v1[15], v6 + *(v5 + 72) * v4, v1[13]);
    CompanionDevice.latestSessionInfo.getter();
    v9 = type metadata accessor for CompanionDevice.SessionInfo();
    v10 = sub_100046EA4(v8, 1, v9);
    sub_100053BE8(v8, &qword_1006CA7E8);
    if (v10 != 1)
    {
      break;
    }

LABEL_9:
    ++v4;
    (*v7)(v1[15], v1[13]);
    if (v3 == v4)
    {

      isa = 0;
      v19 = 2;
      goto LABEL_23;
    }
  }

  v11 = v3;
  v12 = v6;
  v13 = v1[11];
  CompanionDevice.latestSessionInfo.getter();
  v14 = sub_100046EA4(v13, 1, v9);
  v15 = v1[11];
  v16 = v1[8];
  v17 = v1[4];
  if (v14 == 1)
  {
    v51 = v9;

    sub_100053BE8(v15, &qword_1006CA7E8);
    sub_1000485F8(v16, 1, 1, v17);
    goto LABEL_15;
  }

  CompanionDevice.SessionInfo.end.getter();
  sub_100053F48();
  (*(v18 + 8))(v15, v9);
  if (sub_100046EA4(v16, 1, v17) != 1)
  {
    sub_100053BE8(v1[8], &qword_1006CA2B0);
    v6 = v12;
    v3 = v11;
    v5 = v49;
    v2 = v50;
    goto LABEL_9;
  }

  v51 = v9;

LABEL_15:
  v21 = v1[16];
  v20 = v1[17];
  v23 = v1[14];
  v22 = v1[15];
  v24 = v1[13];
  v25 = v1[10];
  sub_100053BE8(v1[8], &qword_1006CA2B0);
  v26 = *(v23 + 32);
  v26(v21, v22, v24);
  v26(v20, v21, v24);
  CompanionDevice.latestSessionInfo.getter();
  v27 = sub_100046EA4(v25, 1, v51);
  v28 = v1[10];
  v29 = v1[7];
  v30 = v1[4];
  if (v27 == 1)
  {
    sub_100053BE8(v1[10], &qword_1006CA7E8);
    sub_1000485F8(v29, 1, 1, v30);
    goto LABEL_18;
  }

  CompanionDevice.SessionInfo.end.getter();
  sub_100053F48();
  (*(v31 + 8))(v28, v51);
  v32 = 1;
  if (sub_100046EA4(v29, 1, v30) == 1)
  {
LABEL_18:
    v32 = 3;
  }

  v33 = v1[9];
  sub_100053BE8(v1[7], &qword_1006CA2B0);
  CompanionDevice.latestSessionInfo.getter();
  v34 = sub_100046EA4(v33, 1, v51);
  v35 = v1[17];
  v36 = v1[13];
  v37 = v1[9];
  if (v34 == 1)
  {
    (*v7)(v1[17], v1[13]);
    sub_100053BE8(v37, &qword_1006CA7E8);
    isa = 0;
  }

  else
  {
    v38 = v1[5];
    v39 = v1[6];
    v40 = v1[4];
    CompanionDevice.SessionInfo.start.getter();
    (*v7)(v35, v36);
    sub_100053F48();
    (*(v41 + 8))(v37, v51);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v39, v40);
  }

  v19 = v32;
LABEL_23:
  v42 = v1[24];
  v43 = v1[25];
  v44 = v1[23];
  v45 = objc_allocWithZone(type metadata accessor for ASScreenContinuityServicesHelper.ScreenMirroringStatus());
  v46 = ASScreenContinuityServicesHelper.ScreenMirroringStatus.init(status:sessionStart:)(v19, isa);
  (*(v42 + 8))(v43, v44);

  v47 = v1[1];

  v47(v46);
}

uint64_t sub_100069040()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_100069168()
{
  result = qword_1006CA808;
  if (!qword_1006CA808)
  {
    type metadata accessor for CompanionDeviceManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA808);
  }

  return result;
}

uint64_t sub_100069260(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100069308;

  return ASScreenContinuityServicesHelper.loadScreenMirroringStatus()();
}

uint64_t sub_100069308(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;
  sub_1000655F4();
  *v8 = v7;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v7 + 8);

  return v11();
}

id ASScreenContinuityServicesHelper.init()()
{
  v1 = OBJC_IVAR____TtC3asd32ASScreenContinuityServicesHelper_manager;
  type metadata accessor for CompanionDeviceManager();
  *&v0[v1] = CompanionDeviceManager.__allocating_init()();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASScreenContinuityServicesHelper();
  return objc_msgSendSuper2(&v3, "init");
}

id ASScreenContinuityServicesHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASScreenContinuityServicesHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100069584()
{
  result = qword_1006CA810;
  if (!qword_1006CA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA810);
  }

  return result;
}

uint64_t sub_1000695F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069638()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067ED0;

  return sub_100069260(v2, v3);
}

id S1ji7lMPfNbOh31Q.init(supportedKeys:queueForExecutingCompletions:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_lock;
  *&v2[v5] = [objc_allocWithZone(NSLock) init];
  *&v2[OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_evaluated] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_completions] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_expectedKeys] = a1;
  *&v2[OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_queueForExecutingCompletions] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for S1ji7lMPfNbOh31Q();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1000698BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = static Hasher._hash(seed:_:)();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

void sub_100069948()
{
  sub_1000541C0();
  v2 = v1;
  v3 = type metadata accessor for ProfileContext();
  sub_10004EAE0();
  v5 = v4;
  __chkstk_darwin(v6, v7, v8);
  sub_10006BE10();
  if (*(v2 + 16))
  {
    sub_10006BE48();
    sub_10006BA6C(v9, v10, &protocol conformance descriptor for ProfileContext);
    v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v12 = v2 + 56;
    v17 = v2;
    v13 = ~(-1 << *(v2 + 32));
    do
    {
      v14 = v11 & v13;
      if (((1 << (v11 & v13)) & *(v12 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v5 + 16))(v0, *(v17 + 48) + *(v5 + 72) * v14, v3);
      sub_10006BE48();
      sub_10006BA6C(&qword_1006CA900, v15, &protocol conformance descriptor for ProfileContext);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v5 + 8))(v0, v3);
      v11 = v14 + 1;
    }

    while ((v16 & 1) == 0);
  }

  sub_100054088();
}

Swift::Void __swiftcall S1ji7lMPfNbOh31Q.set(_:at:)(NSObject _, Swift::Int at)
{
  v4 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10004EAE0();
  v46 = v7;
  *&v47 = v8;
  __chkstk_darwin(v7, v9, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  sub_10004EAE0();
  v41 = v14;
  __chkstk_darwin(v15, v16, v17);
  sub_10006BE10();
  v18 = *(v4 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_lock);
  [v18 lock];
  v19 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_evaluated;
  sub_10006BED4(v4 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_evaluated, aBlock);
  v20 = _.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = *(v4 + v19);
  v45 = v20;
  sub_10006ABA0(v20, at, isUniquelyReferenced_nonNull_native);
  *(v4 + v19) = v51[0];
  swift_endAccess();
  v22 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_completions;
  swift_beginAccess();
  v23 = sub_1000553F4(at, *(v4 + v22));
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  sub_10006BED4(v4 + v22, aBlock);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v4 + v22);
  sub_10006AA84(_swiftEmptyArrayStorage, at, v25);
  *(v4 + v22) = v50;
  swift_endAccess();
  [v18 unlock];
  v40 = v24;
  v26 = v24[2];
  if (v26)
  {
    v44 = *(v4 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_queueForExecutingCompletions);
    v27 = (v40 + 4);
    v42 = (v47 + 8);
    v43 = v49;
    ++v41;
    do
    {
      sub_10006BF14();
      v28 = swift_allocObject();
      v29 = *v27++;
      v47 = v29;
      *(v28 + 16) = v29;
      v30 = swift_allocObject();
      v30[2] = sub_10006ACF0;
      v30[3] = v28;
      v31 = v45;
      v30[4] = v45;
      v49[2] = sub_10006AD68;
      v49[3] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v49[0] = sub_100069F68;
      v49[1] = &unk_100692DA8;
      v32 = _Block_copy(aBlock);
      v33 = v31;

      static DispatchQoS.unspecified.getter();
      v50 = _swiftEmptyArrayStorage;
      sub_10006BA6C(&qword_1006CA890, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000443DC(&qword_1006CA898);
      sub_10006ADB0();
      v34 = v13;
      v35 = v12;
      v36 = v46;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      v37 = v35;
      v38 = v36;
      v12 = v35;
      v13 = v34;
      (*v42)(v37, v38);
      (*v41)(v3, v34);

      --v26;
    }

    while (v26);
  }
}

uint64_t sub_100069F68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10006A01C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_lock);
  _Block_copy(a3);
  [v7 lock];
  v8 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_evaluated;
  swift_beginAccess();
  v9 = sub_100055444(a1, *(a2 + v8));
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11 = sub_1000696E4(v26);
      v13 = sub_10006A65C(v25, a1);
      if (*v12)
      {
        v14 = v12;
        v15 = swift_allocObject();
        *(v15 + 16) = sub_10006B980;
        *(v15 + 24) = v6;

        sub_10006A8A4(sub_100062A84);
        v16 = *(*v14 + 16);
        sub_10006A930(v16, sub_100062A84);
        v17 = *v14;
        *(v17 + 16) = v16 + 1;
        v18 = v17 + 16 * v16;
        *(v18 + 32) = sub_10006BDF8;
        *(v18 + 40) = v15;
      }

      (v13)(v25, 0);
      (v11)(v26, 0);
      [v7 unlock];
    }

    else
    {
      [v7 unlock];
      (a3)[2](a3, v10);
    }
  }

  else
  {
    v19 = [objc_allocWithZone(NSNull) init];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *(a2 + v8);
    sub_10006ABA0(v19, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + v8) = v25[0];
    swift_endAccess();
    sub_1000443DC(&qword_1006CA6D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1005CB870;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10006B980;
    *(v22 + 24) = v6;
    *(v21 + 32) = sub_10006BDF8;
    *(v21 + 40) = v22;
    v23 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_completions;
    swift_beginAccess();

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *(a2 + v23);
    sub_10006AA84(v21, a1, v24);
    *(a2 + v23) = v25[0];
    swift_endAccess();
    [v7 unlock];
  }

  _Block_release(a3);
}

void S1ji7lMPfNbOh31Q.get(at:completion:)(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_lock);
  [v7 lock];
  v8 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_evaluated;
  swift_beginAccess();
  v9 = sub_100055444(a1, *(v3 + v8));
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11 = sub_1000696E4(v29);
      v13 = sub_10006A65C(v28, a1);
      if (*v12)
      {
        v14 = v12;
        sub_10006BF14();
        v15 = swift_allocObject();
        *(v15 + 16) = a2;
        *(v15 + 24) = a3;

        sub_10006A8A4(sub_100062A84);
        v16 = *(*v14 + 16);
        sub_10006A930(v16, sub_100062A84);
        v17 = *v14;
        *(v17 + 16) = v16 + 1;
        v18 = v17 + 16 * v16;
        *(v18 + 32) = sub_10006AE0C;
        *(v18 + 40) = v15;
      }

      (v13)(v28, 0);
      (v11)(v29, 0);
      [v7 unlock];
    }

    else
    {
      [v7 unlock];
      a2(v10);
    }
  }

  else
  {
    [objc_allocWithZone(NSNull) init];
    sub_10006BED4(v3 + v8, v29);
    swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_10006BF00();
    sub_10006ABA0(v19, v20, v21);
    *(v3 + v8) = v28[0];
    swift_endAccess();
    sub_1000443DC(&qword_1006CA6D0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1005CB870;
    sub_10006BF14();
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v22 + 32) = sub_10006BDF8;
    *(v22 + 40) = v23;
    v24 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_completions;
    sub_10006BED4(v3 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_completions, v29);

    swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_10006BF00();
    sub_10006AA84(v25, v26, v27);
    *(v3 + v24) = v28[0];
    swift_endAccess();
    [v7 unlock];
  }
}

uint64_t (*sub_10006A65C(uint64_t *a1, uint64_t a2))()
{
  v4 = sub_10006BAB4(0x28uLL);
  *a1 = v4;
  v4[4] = sub_10006BAE8(v4, a2);
  return sub_10006A6C0;
}

void sub_10006A6C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id S1ji7lMPfNbOh31Q.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for S1ji7lMPfNbOh31Q();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006A8A4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_10006A930(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

_OWORD *sub_10006A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10006BE70(a1, a2);
  sub_1000BFB60(v7, v8);
  sub_10006BDFC();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1000443DC(&qword_1006CA3D0);
  if (sub_10006BE28())
  {
    sub_1000BFB60(a2, a3);
    sub_10006BE60();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v3;
  if (v13)
  {
    sub_100044850((*(v16 + 56) + 32 * v12));
    sub_10006BF48();

    return sub_1000534C8(v17, v18);
  }

  else
  {
    sub_10006B534(v12, a2, a3, a1, v16);
    sub_10006BF48();
  }
}

unint64_t sub_10006AA84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000BFC20(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_1000443DC(&qword_1006CA908);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_1000BFC20(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {

    return sub_10006B578(v14, a2, a1, v18);
  }
}

void sub_10006ABA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000BFC20(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_1000443DC(&qword_1006CA918);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_1000BFC20(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = a1;
  }

  else
  {

    sub_10006B578(v14, a2, a1, v18);
  }
}

uint64_t sub_10006ACBC()
{

  sub_10006BF14();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10006ACF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10006AD28()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006AD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10006ADB0()
{
  result = qword_1006CA8A0;
  if (!qword_1006CA8A0)
  {
    sub_1000471A4(&qword_1006CA898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA8A0);
  }

  return result;
}

uint64_t sub_10006AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000541C0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_10006BE70(v21, v19);
  sub_1000BFC64(v23, v24, v25);
  sub_10006BDFC();
  if (v28)
  {
    __break(1u);
    goto LABEL_13;
  }

  v29 = v26;
  v30 = v27;
  sub_1000443DC(&unk_1006CABC0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v14 & 1, v12))
  {
    goto LABEL_5;
  }

  v31 = sub_1000BFC64(v20, v18, v16);
  if ((v30 & 1) != (v32 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v29 = v31;
LABEL_5:
  if (v30)
  {
    type metadata accessor for Date();
    sub_100054088();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }

  else
  {
    sub_10006B5BC(v29, v20, v18, v16, v22, *v12);
    sub_100054088();
  }
}

uint64_t sub_10006AF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10006BE70(a1, a2);
  sub_1000BFB60(v7, v8);
  sub_10006BDFC();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1000443DC(&qword_1006CA8E8);
  if (sub_10006BE28())
  {
    sub_1000BFB60(a2, a3);
    sub_10006BE60();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  if (v13)
  {
    *(*(*v3 + 56) + 8 * v12) = a1;
    sub_10006BF48();
  }

  else
  {
    v18 = sub_10006BF20();
    sub_10006B674(v18, v19, v20, v21, v22);
    sub_10006BF48();
  }
}

void sub_10006B088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10006BE70(a1, a2);
  sub_1000BFB60(v7, v8);
  sub_10006BDFC();
  if (v11)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_1000443DC(&qword_1006CA8D0);
  if (sub_10006BE28())
  {
    sub_1000BFB60(a2, a3);
    sub_10006BE60();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  if (v13)
  {
    *(*(*v3 + 56) + 8 * v12) = a1;
    sub_10006BF48();
  }

  else
  {
    v18 = sub_10006BF20();
    sub_10006B6A4(v18, v19, v20, v21, v22);
    sub_10006BF48();
  }
}

void sub_10006B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000541C0();
  sub_10006BEB0();
  sub_10004EAE0();
  __chkstk_darwin(v13, v14, v15);
  sub_10006BE10();
  sub_1000BFCF8(v12);
  sub_10006BDFC();
  if (v17)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v16;
  sub_1000443DC(&qword_1006CA8D8);
  if (sub_10006BE28())
  {
    sub_1000BFCF8(v12);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v18)
  {
    type metadata accessor for ServerJSONFetchRetryState(0);
    sub_100054088();

    sub_10006B7C8(v20, v21);
  }

  else
  {
    v23 = sub_10006BEEC();
    v24(v23);
    v25 = sub_10006BF34();
    sub_10006B6EC(v25, v26, v27, v28);
    sub_100054088();
  }
}

void sub_10006B2D4()
{
  sub_1000541C0();
  sub_10006BEB0();
  sub_10004EAE0();
  __chkstk_darwin(v3, v4, v5);
  sub_10006BE10();
  sub_1000BFCF8(v1);
  sub_10006BDFC();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  sub_1000443DC(&qword_1006CA8E0);
  if (!sub_10006BE28())
  {
    goto LABEL_5;
  }

  v11 = sub_1000BFCF8(v1);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  if (v10)
  {
    *(*(*v2 + 56) + 8 * v9) = v0;
    sub_100054088();
  }

  else
  {
    v14 = sub_10006BEEC();
    v15(v14);
    v16 = sub_10006BF34();
    sub_10006B890(v16, v17, v18, v19);
    sub_100054088();
  }
}

_OWORD *sub_10006B410(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  sub_1000BFB1C(a2);
  sub_10006BDFC();
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1000443DC(&qword_1006CA8F0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    sub_1000BFB1C(a2);
    sub_10006BE60();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  v16 = *v4;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    sub_100044850(v17);

    return sub_1000534C8(a1, v17);
  }

  else
  {
    sub_10006B994(a2, v19);
    return sub_10006B9F0(v12, v19, a1, v16);
  }
}

_OWORD *sub_10006B534(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10006BE80(a1, a2, a3, a4, a5);
  result = sub_1000534C8(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_10006B578(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_10006B5BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a6[6] + 24 * a1);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = a6[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a5, v11);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

unint64_t sub_10006B674(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_10006BE80(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

unint64_t sub_10006B6A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10006B6EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ServerJSONFetchRetryState(0);
  result = sub_10006B82C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_10006B7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerJSONFetchRetryState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerJSONFetchRetryState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B890(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10006B948()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_10006B9F0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000534C8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_10006BA6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10006BAB4(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void (*sub_10006BAE8(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = sub_10006BAB4(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_10006BDB4(v4);
  v4[9] = sub_10006BBD8(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10006BB78;
}

void sub_10006BB78(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10006BBD8(void *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = sub_10006BAB4(0x28uLL);
  *a1 = v8;
  v8[1] = a2;
  v8[2] = v3;
  v9 = *v3;
  v10 = sub_1000BFC20(a2);
  *(v8 + 32) = v11 & 1;
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  sub_1000443DC(&qword_1006CA908);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v14))
  {
    v17 = sub_1000BFC20(a2);
    if ((v16 & 1) == (v18 & 1))
    {
      v15 = v17;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[3] = v15;
  if (v16)
  {
    v19 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v19 = 0;
  }

  *v8 = v19;
  return sub_10006BCF8;
}

void sub_10006BCF8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_10006B578(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_1000443DC(&qword_1006CA910);
    _NativeDictionary._delete(at:)();
  }

  free(v1);
}

uint64_t (*sub_10006BDB4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10006BDDC;
}

BOOL sub_10006BE28()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

unint64_t sub_10006BE80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_10006BEB0()
{

  return type metadata accessor for UUID();
}

uint64_t sub_10006BED4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_10006BF5C(uint64_t a1, unint64_t a2)
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

uint64_t sub_10006BFA4(uint64_t a1)
{
  result = sub_10006E664(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10006E6A4(result, v3, 0, a1);
  }
}

uint64_t sub_10006C00C()
{
  sub_1000657D4();
  v1[4] = v0;
  v2 = type metadata accessor for Locale();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = sub_100065948();
  sub_1000443DC(&unk_1006CA940);
  v1[8] = sub_100065948();
  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10006C0E0()
{
  sub_10006ECA0();
  v1 = *(v0[4] + 8);
  if (v1 && *(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[6];
    static Locale.current.getter();
    Locale.region.getter();
    v5 = v4 + 8;
    v6 = sub_100047510();
    v7(v6);
    v8 = type metadata accessor for Locale.Region();
    sub_10006ECE0(v8);
    if (!v9)
    {
      Locale.Region.identifier.getter();
      sub_10006EC28();
      v12 = sub_100047510();
      v13(v12);
      v0[2] = v3;
      v0[3] = v5;
      *(swift_task_alloc() + 16) = v0 + 2;
      v14 = sub_100098534();

      v15 = !v14;
      goto LABEL_7;
    }

    sub_10004D2E8(v2, &unk_1006CA940);
  }

  v15 = 1;
LABEL_7:

  sub_10006EBEC();

  return v10(v15 & 1);
}

uint64_t sub_10006C240()
{
  *(v1 + 152) = v0;
  v2 = sub_100065864();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10006C268()
{
  sub_10006ECCC();
  sub_100068324();
  if (*(v0[19] + 17))
  {
    v1 = [objc_allocWithZone(ACAccountStore) init];
    v0[20] = v1;
    sub_1000443DC(&qword_1006CA620);
    sub_10006EBD0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1005CB870;
    *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 40) = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[21] = isa;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10006C42C;
    v5 = swift_continuation_init();
    v0[17] = sub_1000443DC(&qword_1006CA930);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10006C6EC;
    v0[13] = &unk_100693168;
    v0[14] = v5;
    [v1 accountsWithAccountTypeIdentifiers:isa completion:v0 + 10];
    sub_10006ECB8();

    return _swift_continuation_await(v6);
  }

  else
  {
    sub_10006EBEC();
    sub_10006ECB8();

    return v10(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_10006C42C()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 176) = v2;
  if (v2)
  {
    v3 = sub_10006C668;
  }

  else
  {
    v3 = sub_10006C534;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10006C534()
{
  sub_10006ECA0();
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = sub_1000591F0(v1);
    v3 = 0;
    while (1)
    {
      if (v2 == v3)
      {
LABEL_12:

        goto LABEL_13;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v6 = [v4 isActive];

      ++v3;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {

LABEL_13:
    sub_10006EBEC();

    v7();
  }
}

uint64_t sub_10006C668()
{
  sub_100068324();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  swift_willThrow();

  sub_10006EBEC();

  return v3(0);
}

uint64_t sub_10006C6EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1000C4464();
  }

  else
  {
    if (a2)
    {
      sub_1000591B0(0, &qword_1006CA938, ACAccount_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = 0;
    }

    return sub_1000C1AF4(v5, v8);
  }
}

char *sub_10006C7A0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = &_ss11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF_ptr;
  v4 = &DB_R105387691__properties;
  v5 = &DB_R105387691__properties;
  if (v2 && *(v2 + 16))
  {
    v6 = objc_allocWithZone(PKPassLibrary);

    v7 = [v6 init];
    v8 = [v7 passes];

    sub_1000591B0(0, &qword_1006CA928, PKPass_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = sub_1000591F0(v9);
    if (v10)
    {
      v11 = v10;
      result = sub_10006EC40(v10);
      if (v11 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v13 = 0;
      v14 = v48;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v9 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = [v15 passTypeIdentifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v48 = v14;
        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          sub_10006EC7C(v21);
        }

        ++v13;
        v14[2] = v22 + 1;
        v23 = &v14[2 * v22];
        v23[4] = v18;
        v23[5] = v20;
      }

      while (v11 != v13);

      v1 = v47;
      v5 = &DB_R105387691__properties;
      v4 = &DB_R105387691__properties;
      v3 = &_ss11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF_ptr;
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
    }

    sub_10009D890(v2);
    v24 = sub_100047510();
    v27 = sub_10006CB28(v24, v25, v26);

    if ((v27 & 1) == 0)
    {
      v29 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!v1 || !*(v1 + 16))
  {
    v29 = 1;
LABEL_34:

    return (v29 & 1);
  }

  if (v14)
  {

    v28 = v14;
LABEL_33:
    v46 = sub_10009D890(v1);
    v29 = sub_10009CE8C(v28, v46);

    goto LABEL_34;
  }

  v30 = objc_allocWithZone(v3[305]);

  v31 = [v30 *&v4[504]];
  v32 = [v31 *&v5[104]];

  sub_1000591B0(0, &qword_1006CA928, PKPass_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = sub_1000591F0(v33);
  if (!v34)
  {

    v28 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v35 = v34;
  result = sub_10006EC40(v34);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v28 = v48;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v33 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = [v37 passTypeIdentifier];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v44 = v48[2];
      v43 = v48[3];
      if (v44 >= v43 >> 1)
      {
        sub_10006EC7C(v43);
      }

      ++v36;
      v48[2] = v44 + 1;
      v45 = &v48[2 * v44];
      v45[4] = v40;
      v45[5] = v42;
    }

    while (v35 != v36);

    v1 = v47;
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10006CB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    result = sub_10006BFA4(a2);
    if (v6)
    {
      __chkstk_darwin(result, v6, v7);
      v4 = sub_100098534();

      return v4;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      return 1;
    }

    return sub_10006E298(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10006CC0C()
{
  sub_1000657D4();
  v0[33] = v1;
  v0[34] = v2;
  v0[32] = v3;
  v4 = sub_1000443DC(&qword_1006CA920);
  v0[35] = v4;
  v0[36] = *(v4 - 8);
  v0[37] = sub_100065948();
  sub_1000443DC(&qword_1006C9E20);
  v0[38] = sub_100065948();
  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10006CCE8()
{
  sub_10006ECA0();
  v3 = v0[33];
  v4 = v0[34];
  type metadata accessor for TaskPriority();
  sub_10006EB6C();
  sub_10006EBF8();
  v5 = swift_allocObject();
  sub_10006EB48(v5);
  sub_10006EBD0();
  v6 = swift_allocObject();
  v7 = sub_10006EC1C(v6);
  *(v7 + 32) = &unk_1005CCA10;
  *(v7 + 40) = v5;
  sub_10006EBD0();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_1005CCA20;
  v8[5] = v1;
  sub_10006DA34(v4, (v0 + 2));
  v9 = sub_10006EC10();
  sub_10006D860(v9, v10, v8);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v11 = swift_allocObject();
  sub_10006EB48(v11);
  sub_10006EBD0();
  v12 = swift_allocObject();
  v13 = sub_10006ECAC(v12);
  *(v13 + 32) = &unk_1005CCA40;
  *(v13 + 40) = v11;
  sub_10006EBD0();
  v14 = swift_allocObject();
  v15 = sub_10006EC1C(v14);
  *(v15 + 32) = &unk_1005CCA48;
  *(v15 + 40) = v2;
  sub_10006DA34(v4, (v0 + 7));
  v16 = sub_10006EC10();
  sub_10006D860(v16, v17, v11);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v18 = swift_allocObject();
  sub_10006EB48(v18);
  sub_10006EBD0();
  v19 = swift_allocObject();
  v20 = sub_10006ECAC(v19);
  *(v20 + 32) = &unk_1005CCA60;
  *(v20 + 40) = v18;
  sub_10006EBD0();
  v21 = swift_allocObject();
  v22 = sub_10006EC1C(v21);
  *(v22 + 32) = &unk_1005CCA68;
  *(v22 + 40) = v2;
  sub_10006DA34(v4, (v0 + 12));
  v23 = sub_10006EC10();
  sub_10006D860(v23, v24, v18);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v25 = swift_allocObject();
  sub_10006EB48(v25);
  sub_10006EBD0();
  v26 = swift_allocObject();
  v27 = sub_10006ECAC(v26);
  *(v27 + 32) = &unk_1005CCA80;
  *(v27 + 40) = v25;
  sub_10006EBD0();
  v28 = swift_allocObject();
  v29 = sub_10006EC1C(v28);
  *(v29 + 32) = &unk_1005CCA88;
  *(v29 + 40) = v2;
  sub_10006DA34(v4, (v0 + 17));
  v30 = sub_10006EC10();
  sub_10006D860(v30, v31, v25);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v32 = swift_allocObject();
  sub_10006EB48(v32);
  sub_10006EBD0();
  v33 = swift_allocObject();
  v34 = sub_10006ECAC(v33);
  *(v34 + 32) = sub_10006E0E8;
  *(v34 + 40) = v32;
  sub_10006EBD0();
  v35 = swift_allocObject();
  v36 = sub_10006EC1C(v35);
  *(v36 + 32) = &unk_1005CCAA0;
  *(v36 + 40) = v2;
  sub_10006DA34(v4, (v0 + 22));
  v37 = sub_10006EC10();
  sub_10006D860(v37, v38, v32);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v39 = swift_allocObject();
  sub_10006EB48(v39);
  sub_10006EBD0();
  v40 = swift_allocObject();
  v41 = sub_10006EC1C(v40);
  *(v41 + 32) = sub_10006E234;
  *(v41 + 40) = v39;
  sub_10006EBD0();
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = &unk_1005CCAB0;
  v42[5] = v32;
  sub_10006DA34(v4, (v0 + 27));
  v43 = sub_10006EC10();
  sub_10006D860(v43, v44, v42);
  sub_10006EC64();
  v0[39] = *v3;
  TaskGroup.makeAsyncIterator()();
  v45 = swift_task_alloc();
  v0[40] = v45;
  *v45 = v0;
  v46 = sub_10006EB8C(v45);

  return TaskGroup.Iterator.next(isolation:)(v46);
}

uint64_t sub_10006D140()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10006D224()
{
  v1 = *(v0 + 328);
  if (v1 == 2)
  {
    v2 = 1;
LABEL_8:
    v5 = *(v0 + 256);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    *v5 = v2;

    sub_10006574C();

    return v6();
  }

  if ((v1 & 1) == 0)
  {
    TaskGroup.cancelAll()();
    v2 = 0;
    goto LABEL_8;
  }

  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  *v3 = v0;
  v4 = sub_10006EB8C(v3);

  return TaskGroup.Iterator.next(isolation:)(v4);
}

uint64_t sub_10006D354()
{
  sub_1000657D4();
  if (*(*(v0 + 16) + 16))
  {
    v1 = [objc_allocWithZone(ACAccountStore) init];
    v2 = [v1 aa_isUsingiCloud];
  }

  else
  {
    v2 = 1;
  }

  sub_10006EBEC();

  return v3(v2);
}

uint64_t sub_10006D3F0()
{
  sub_1000657D4();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_10006EBDC(v1);

  return sub_10006D334(v3);
}

uint64_t sub_10006D470(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10006EAE8;

  return v6();
}

uint64_t sub_10006D558()
{
  sub_10006ED20();
  sub_100068324();
  sub_10006EC04();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  sub_10006EB14(v1);
  sub_10006ED0C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10006D5E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_10006D6D4;

  return v7();
}

uint64_t sub_10006D6D4()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;

  *v4 = v2;
  sub_10006574C();

  return v7();
}

uint64_t sub_10006D7D0(uint64_t a1)
{
  sub_10006ECCC();
  sub_100068324();
  sub_10006EB5C();
  v1 = swift_task_alloc();
  v2 = sub_10006EB38(v1);
  *v2 = v3;
  sub_10006EAEC(v2);
  sub_10006ECB8();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10006D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v8 - 8, v9, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006E754(a1, v12);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100046EA4(v12, 1, v13) == 1)
  {
    sub_10004D2E8(v12, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v14;
    v22[3] = v16;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v17;
  swift_task_create();
}

uint64_t sub_10006DA6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006DAFC;

  return sub_10006C00C();
}

uint64_t sub_10006DAFC()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  sub_10006EBEC();

  return v5(v2);
}

uint64_t sub_10006DBE4()
{
  sub_1000657D4();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_10006EBDC(v1);

  return sub_10006DA6C();
}

uint64_t sub_10006DC68(uint64_t a1)
{
  sub_10006ECCC();
  sub_100068324();
  sub_10006EB5C();
  v1 = swift_task_alloc();
  v2 = sub_10006EB38(v1);
  *v2 = v3;
  sub_10006EAEC(v2);
  sub_10006ECB8();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10006DCF8(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Locale();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_1000443DC(&unk_1006CA940);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006DDE8, 0, 0);
}

uint64_t sub_10006DDE8()
{
  sub_10006ECA0();
  v1 = **(v0 + 32);
  if (v1 && *(v1 + 16))
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    static Locale.current.getter();
    Locale.region.getter();
    v5 = v4 + 8;
    v6 = sub_100047510();
    v7(v6);
    v8 = type metadata accessor for Locale.Region();
    sub_10006ECE0(v8);
    if (!v9)
    {
      Locale.Region.identifier.getter();
      sub_10006EC28();
      v12 = sub_100047510();
      v13(v12);
      *(v0 + 16) = v3;
      *(v0 + 24) = v5;
      *(swift_task_alloc() + 16) = v0 + 16;
      v14 = sub_100098534();

      goto LABEL_7;
    }

    sub_10004D2E8(v2, &unk_1006CA940);
  }

  v14 = 1;
LABEL_7:

  sub_10006EBEC();

  return v10(v14);
}

uint64_t sub_10006DF44()
{
  sub_1000657D4();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_10006EBDC(v1);

  return sub_10006DCF8(v3);
}

uint64_t sub_10006DFC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006EAE8;

  return sub_10006C240();
}

uint64_t sub_10006E054()
{
  sub_1000657D4();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_10006EBDC(v1);

  return sub_10006DFC4();
}

uint64_t sub_10006E0F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a3(a1, a2);
  v5 = *(v3 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_10006E158()
{
  sub_10006ED20();
  sub_100068324();
  sub_10006EC04();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  sub_10006EB14(v1);
  sub_10006ED0C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10006E1E8()
{

  sub_10006EBF8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10006E25C()
{
  swift_unknownObjectRelease();

  sub_10006EBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10006E298(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3)
{
  v4 = isStackAllocationSafe;
  v12[0] = isStackAllocationSafe;
  v5 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v6 = ((1 << v5) + 63) >> 6;
  if (v5 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    __chkstk_darwin(isStackAllocationSafe, a2, a3);
    v7 = &v12[-1] - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_10009F228(0, v6, v7);
    v8 = sub_10006E424(v7, v6, v4, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_10006E5B0(v10, v6, sub_10006E720);
  }

  return v8 & 1;
}

uint64_t sub_10006E424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v6 = a4 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v7 = v5;
      if (v5 == v24)
      {
        return v7 != v24;
      }

      if (v5 >= v24)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v25 = v5 + 1;
      v8 = (v23 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();
      v12 = ~(-1 << *(a4 + 32));
      do
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = 1 << (v11 & v12);
        if ((v15 & *(v6 + 8 * v14)) == 0)
        {

          v5 = v25;
          goto LABEL_2;
        }

        v16 = (*(a4 + 48) + 16 * v13);
        if (*v16 == v10 && v16[1] == v9)
        {
          break;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v11 = v13 + 1;
      }

      while ((v18 & 1) == 0);

      v19 = *(v22 + 8 * v14);
      *(v22 + 8 * v14) = v19 | v15;
      v5 = v25;
      if ((v19 & v15) != 0)
      {
        continue;
      }

      break;
    }

    v20 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      ++v21;
      if (v20 != *(a4 + 16))
      {
        continue;
      }

      return v7 != v24;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_10006E5B0(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_10006E630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_10006E424(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_10006E6A4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10006E754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006C9E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006E7BC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10006E8B0;

  return v5(v2 + 32);
}

uint64_t sub_10006E8B0()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  *v3 = *(v2 + 32);
  sub_10006574C();

  return v6();
}

uint64_t sub_10006E9B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006E9E8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v5 = sub_10006EB38(v4);
  *v5 = v6;
  v5[1] = sub_1000640AC;

  return sub_10006E7BC(a1, v3);
}

__n128 sub_10006EB48(uint64_t a1)
{
  v2 = *(v1 + 32);
  result = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_10006EB6C()
{

  return sub_1000485F8(v0, 1, 1, v1);
}

uint64_t sub_10006EC1C(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

char *sub_10006EC40(uint64_t a1)
{

  return sub_1000BDEA4(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_10006EC64()
{

  return sub_10004D2E8(v0, v1);
}

char *sub_10006EC7C@<X0>(unint64_t a1@<X8>)
{

  return sub_1000BDEA4((a1 > 1), v1, 1);
}

uint64_t sub_10006ECAC(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_10006ED34()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1000443DC(&qword_1006CABD8);
      sub_100077194();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_1000448B0(v8, v9);

      return *&v12[0];
    }
  }

  else
  {
    sub_100076FB8(v12, &qword_1006CA130);
  }

  if (qword_1006C9740 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100046E6C(v3, qword_1006C9BE0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    sub_100053F78();
    v6 = sub_100053E48();
    *&v12[0] = v6;
    *v1 = 136315138;
    *(v1 + 1) = sub_100052F7C(0xD00000000000001ELL);
    _os_log_impl(&_mh_execute_header, v4, v5, "Invalid Array in defaults for key: %s", v1, 0xCu);
    sub_100044850(v6);

    sub_100053E64();
  }

  if (qword_1006C9768 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006EFF4(uint64_t a1, void *a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000443DC(&qword_1006CABD8);
  sub_1000767F8();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  [a2 setObject:isa forKey:v7];

  return sub_1000448B0(v3, v5);
}

uint64_t sub_10006F27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000443DC(&qword_1006C9E20);
  v10 = sub_100077674(v9);
  __chkstk_darwin(v10, v11, v12);
  sub_10004EAF4();
  v15 = v14 - v13;
  sub_10007713C(a3, v14 - v13, &qword_1006C9E20);
  v16 = type metadata accessor for TaskPriority();
  v17 = sub_100046EA4(v15, 1, v16);

  if (v17 == 1)
  {
    sub_100076FB8(v15, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100076FB8(a3, &qword_1006C9E20);
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;

  v21 = swift_task_create();

  sub_100076FB8(a3, &qword_1006C9E20);

  return v21;
}

uint64_t sub_10006F530(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  v5 = v4;
  v10 = sub_1000443DC(&qword_1006CA2B0);
  __chkstk_darwin(v10 - 8, v11, v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17, v18);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100046EA4(a1, 1, v15) == 1)
  {
    sub_100076FB8(a1, &qword_1006CA2B0);
    sub_100096250(a2, v14, a3, a4);

    return sub_100076FB8(v14, &qword_1006CA2B0);
  }

  else
  {
    (*(v16 + 32))(v20, a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10006AE38(v20, a2, a3, a4, isUniquelyReferenced_nonNull_native, v23, v24, v25, v26[0], *v5, v26[2], v26[3]);

    *v5 = v26[1];
  }

  return result;
}

uint64_t sub_10006F6FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000534C8(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_10006B410(v7, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v6;
    return sub_100076E50(a2);
  }

  else
  {
    sub_100076FB8(a1, &qword_1006CA130);
    sub_100096694(a2, v7);
    sub_100076E50(a2);
    return sub_100076FB8(v7, &qword_1006CA130);
  }
}

uint64_t sub_10006F7AC(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount) = 0;
  *(v1 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_10006ED34();

  *(v2 + v4) = v6;
  *(v2 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState__bindingStore) = 0;
  v7 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_logger;
  type metadata accessor for Logger();
  sub_1000774D8();
  (*(v8 + 32))(v2 + v7, a1);
  return v2;
}

void sub_10006F898()
{
  v1 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount;
  v2 = *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0;
    *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount) = v4;

    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = sub_100053F78();
      *v7 = 134217984;
      *(v7 + 4) = *(v5 + v1);

      _os_log_impl(&_mh_execute_header, oslog, v6, "PrecomputationState.pause() called - count now %ld", v7, 0xCu);
      sub_100053E64();
    }

    else
    {
    }
  }
}

void sub_10006F9A8()
{
  v1 = v0;
  v2 = sub_1000443DC(&qword_1006CAC00);
  sub_10004EAE0();
  v4 = v3;
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount;
  v12 = *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount) = v14;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (sub_100077680(v16))
    {
      v17 = sub_100053F78();
      *v17 = 134217984;
      *(v17 + 4) = *(v1 + v11);

      sub_100077658(&_mh_execute_header, v18, v16, "PrecomputationState.resume() called - count now %ld");
      sub_100077500();
    }

    else
    {
    }

    if (!*(v1 + v11))
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (sub_100077680(v20))
      {
        v21 = sub_100053F78();
        *v21 = 134217984;
        *(v21 + 4) = *(*(v1 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations) + 16);

        sub_100077658(&_mh_execute_header, v22, v20, "PrecomputationState.resume resuming %ld precomputations");
        sub_100077500();
      }

      else
      {
      }

      v23 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations;
      v24 = *(v1 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations);
      v25 = *(v24 + 16);
      if (v25)
      {
        v31 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations;
        v28 = *(v4 + 16);
        v26 = v4 + 16;
        v27 = v28;
        v29 = v24 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
        v30 = *(v26 + 56);

        do
        {
          v27(v10, v29, v2);
          CheckedContinuation.resume(returning:)();
          (*(v26 - 8))(v10, v2);
          v29 += v30;
          --v25;
        }

        while (v25);

        v23 = v31;
      }

      *(v1 + v23) = _swiftEmptyArrayStorage;
    }
  }
}

uint64_t sub_10006FC34()
{
  sub_1000657EC();
  if (*(v1[2] + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount) < 1)
  {
    sub_10006574C();

    return v9();
  }

  else
  {
    v1[3] = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_logger;
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = sub_1000541D8();
      sub_100077908(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Precomputation pausing due to live computations", v0, 2u);
      sub_100053E64();
    }

    v5 = v1[2];

    v6 = sub_100076900(&qword_1006CAC10, type metadata accessor for PrecomputationManager.PrecomputationState, &unk_1005CCC78);
    v7 = swift_task_alloc();
    v1[4] = v7;
    *v7 = v1;
    v7[1] = sub_10006FDFC;
    v8 = v1[2];

    return withCheckedContinuation<A>(isolation:function:_:)(v7, v5, v6, 0x52726F4674696177, 0xEF2928656D757365, sub_100077068, v8, &type metadata for () + 8);
  }
}

uint64_t sub_10006FDFC()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_1000773A4();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10006FEF4()
{
  sub_1000657EC();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (sub_100077680(v1))
  {
    v2 = sub_1000541D8();
    sub_100077908(v2);
    sub_100077394();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    sub_100053E64();
  }

  sub_10006574C();

  return v8();
}

uint64_t sub_10006FF98(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations;
  sub_10006A874();
  v5 = *(*(a2 + v4) + 16);
  sub_10006A900(v5);
  v6 = *(a2 + v4);
  *(v6 + 16) = v5 + 1;
  v7 = sub_1000443DC(&qword_1006CAC00);
  result = (*(*(v7 - 8) + 16))(v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v5, a1, v7);
  *(a2 + v4) = v6;
  return result;
}

void sub_100070054()
{
  sub_1000778B0();
  v4 = sub_1000443DC(&qword_1006CA2B0);
  v5 = sub_100077674(v4);
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  v10 = v9 - v8;

  static Date.now.getter();
  v11 = type metadata accessor for Date();
  sub_1000485F8(v10, 0, 1, v11);
  v12 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  sub_10006F530(v10, v3, v2, v1);
  swift_endAccess();
  objc_opt_self();
  sub_100036C50();

  v13 = [v0 + v12 standardUserDefaults];
  v14 = sub_100047504();
  sub_10006EFF4(v14, v15);
}

void sub_100070180()
{
  sub_1000778B0();
  v4 = sub_1000443DC(&qword_1006CA2B0);
  v5 = sub_100077674(v4);
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  sub_100096250(v3, v10, v2, v1);
  sub_100076FB8(v10, &qword_1006CA2B0);
  swift_endAccess();
  objc_opt_self();
  sub_100036C50();

  v12 = [v0 + v11 standardUserDefaults];
  v13 = sub_100047504();
  sub_10006EFF4(v13, v14);
}

void sub_100070290()
{
  type metadata accessor for Date();
  sub_1000471EC();
  v1 = Dictionary.init(dictionaryLiteral:)();
  v2 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  *(v0 + v2) = v1;

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_100047504();
  sub_10006EFF4(v4, v5);
}

uint64_t sub_100070358()
{
  v1 = v0;
  v2 = sub_1000443DC(&qword_1006CA2B0);
  v3 = sub_100077674(v2);
  __chkstk_darwin(v3, v4, v5);
  sub_10004EAF4();
  v93 = v7 - v6;
  v8 = sub_1000443DC(&qword_1006CABB0);
  v9 = sub_100077674(v8);
  __chkstk_darwin(v9, v10, v11);
  sub_100047544();
  v96 = v12;
  sub_1000474F8();
  __chkstk_darwin(v13, v14, v15);
  v108 = (&v92 - v16);
  v17 = type metadata accessor for Date();
  sub_10004EAE0();
  v19 = v18;
  __chkstk_darwin(v20, v21, v22);
  sub_100047544();
  v109 = v23;
  sub_1000474F8();
  __chkstk_darwin(v24, v25, v26);
  v100 = &v92 - v27;
  sub_1000474F8();
  v31 = __chkstk_darwin(v28, v29, v30);
  v33 = &v92 - v32;
  __chkstk_darwin(v31, v34, v35);
  v37 = &v92 - v36;
  Date.init(timeIntervalSinceNow:)();
  v38 = *(v19 + 16);
  v105 = v37;
  v98 = v38;
  v99 = v19 + 16;
  v38(v33, v37, v17);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v41 = os_log_type_enabled(v39, v40);
  v110 = v17;
  if (v41)
  {
    v42 = sub_100053F78();
    v43 = sub_100053F60();
    v113 = v43;
    *v42 = 136315138;
    sub_100076900(&qword_1006CABD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = *(v19 + 8);
    v104 = v19 + 8;
    v103(v33, v110);
    v45 = sub_100052F7C(v44);
    v17 = v110;

    *(v42 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "PrecomputationState.cleanupWorkflowCompletions removing completions before %s", v42, 0xCu);
    sub_100044850(v43);
    sub_100077500();
  }

  else
  {

    v103 = *(v19 + 8);
    v104 = v19 + 8;
    v103(v33, v17);
  }

  v46 = v19;
  v47 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  v95 = v1;
  v94 = v47;
  v48 = *(v1 + v47);
  v49 = v48 + 64;
  v50 = 1 << *(v48 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v48 + 64);
  v53 = (v50 + 63) >> 6;
  v106 = v46;
  v111 = (v46 + 32);
  v101 = v48;

  v55 = 0;
  v56 = v96;
  v57 = v108;
  v97 = v49;
  v102 = v53;
  while (v52)
  {
    v58 = v17;
    v59 = v55;
LABEL_13:
    v60 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v61 = v60 | (v59 << 6);
    v62 = v100;
    v63 = (*(v101 + 48) + 24 * v61);
    v64 = *v63;
    v65 = v63[1];
    v66 = v63[2];
    v67 = v106;
    v98(v100, *(v101 + 56) + *(v106 + 72) * v61, v58);
    v68 = sub_1000443DC(&qword_1006CABB8);
    v69 = *(v68 + 48);
    *v56 = v64;
    *(v56 + 1) = v65;
    *(v56 + 2) = v66;
    (*(v67 + 32))(&v56[v69], v62, v58);
    sub_1000485F8(v56, 0, 1, v68);

    v57 = v108;
    v49 = v97;
LABEL_14:
    sub_100076790(v56, v57);
    v70 = sub_1000443DC(&qword_1006CABB8);
    if (sub_100046EA4(v57, 1, v70) == 1)
    {

      objc_opt_self();
      sub_100036C50();

      v89 = [v57 standardUserDefaults];
      v90 = sub_100047504();
      sub_10006EFF4(v90, v91);

      return (v103)(v105, v110);
    }

    v71 = *v57;
    v72 = v57[1];
    v73 = v57[2];
    v17 = v110;
    v74 = v57 + *(v70 + 48);
    v75 = v109;
    v107 = *v111;
    v107(v109, v74, v110);
    if (static Date.< infix(_:_:)())
    {
      v76 = v95;
      v77 = v94;
      swift_beginAccess();
      v78 = sub_1000BFC64(v71, v72, v73);
      if (v79)
      {
        v80 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = *(v76 + v77);
        v82 = v112;
        *(v76 + v77) = 0x8000000000000000;
        v83 = *(v82 + 24);
        sub_1000443DC(&unk_1006CABC0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v83);
        v84 = v112;

        v85 = v93;
        v86 = v110;
        v107(v93, (*(v84 + 56) + *(v106 + 72) * v80), v110);
        sub_1000471EC();
        _NativeDictionary._delete(at:)();
        *(v76 + v77) = v84;

        v87 = 0;
      }

      else
      {
        v87 = 1;
        v86 = v110;
        v85 = v93;
      }

      v53 = v102;
      sub_1000485F8(v85, v87, 1, v86);
      sub_100076FB8(v85, &qword_1006CA2B0);
      swift_endAccess();

      result = (v103)(v109, v86);
      v17 = v86;
      v56 = v96;
      v57 = v108;
    }

    else
    {
      v103(v75, v17);

      v53 = v102;
    }
  }

  while (1)
  {
    v59 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v59 >= v53)
    {
      v88 = sub_1000443DC(&qword_1006CABB8);
      sub_1000485F8(v56, 1, 1, v88);
      v52 = 0;
      goto LABEL_14;
    }

    v52 = *(v49 + 8 * v59);
    ++v55;
    if (v52)
    {
      v58 = v17;
      v55 = v59;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100070ADC()
{
  sub_1000657EC();
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState__bindingStore;
  *(v0 + 64) = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState__bindingStore;
  v3 = *(v1 + v2);
  *(v0 + 72) = v3;
  if (v3)
  {
    sub_10006EBEC();
    v8 = v4;

    return v8(v5);
  }

  else
  {
    type metadata accessor for BindingsStore(0);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    swift_allocObject();
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    sub_100077560(v7);

    return sub_100081A94(v0 + 16);
  }
}

uint64_t sub_100070BF0()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = sub_1000773A4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100070CEC()
{
  sub_1000657EC();
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v2 + v1);
  if (v3)
  {
  }

  else
  {
    *(v2 + v1) = v0[11];

    v3 = v0[11];
  }

  sub_10006EBEC();
  v6 = v4;

  return v6(v3);
}

uint64_t sub_100070D8C()
{
  v1 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_logger;
  type metadata accessor for Logger();
  sub_1000774D8();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100070E1C()
{
  sub_100070D8C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100070E70()
{
  qword_1006DF768 = [objc_allocWithZone(type metadata accessor for PrecomputationManager(0)) init];
  v1 = qword_1006DF768;
  sub_100036C50();
  result = swift_unknownObjectRelease();
  static PrecomputationManager.shared = v0;
  return result;
}

uint64_t *PrecomputationManager.shared.unsafeMutableAddressor()
{
  if (qword_1006C97B0 != -1)
  {
    sub_1000775D8(&qword_1006C97B0);
  }

  return &static PrecomputationManager.shared;
}

id static PrecomputationManager.shared.getter()
{
  if (qword_1006C97B0 != -1)
  {
    sub_1000775D8(&qword_1006C97B0);
  }

  v1 = static PrecomputationManager.shared;

  return v1;
}

uint64_t sub_100070F7C()
{
  sub_100044728((v0 + OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager), *(v0 + OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager + 24));
  sub_1000B05E4(v3);
  if (v4 == 1)
  {
    return 0;
  }

  v1 = v5;
  sub_100076F78(v5, v6);
  sub_100076FB8(v3, &qword_1006CAC08);
  return v1;
}

id PrecomputationManager.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  sub_10004EAE0();
  v5 = v4;
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = &v1[OBJC_IVAR____TtC3asd21PrecomputationManager_analyticsManager];
  v13 = type metadata accessor for ASAnalyticsManager();
  v14 = swift_allocObject();
  v12[3] = v13;
  v12[4] = &off_1006935C8;
  *v12 = v14;
  Logger.init(subsystem:category:)();
  v15 = OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  (*(v5 + 32))(&v1[OBJC_IVAR____TtC3asd21PrecomputationManager_logger], v11, v3);
  (*(v5 + 16))(v11, &v1[v15], v3);
  type metadata accessor for PrecomputationManager.PrecomputationState(0);
  v16 = swift_allocObject();
  sub_10006F7AC(v11);
  *&v1[OBJC_IVAR____TtC3asd21PrecomputationManager_state] = v16;
  if (qword_1006C9818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static ASDConfigurationManager.shared;
  v18 = &v1[OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager];
  *(v18 + 3) = type metadata accessor for ASDConfigurationManager();
  *(v18 + 4) = &off_1006943C0;
  *v18 = v17;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  v19 = v17;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_100071274(uint64_t a1)
{
  v2[117] = v1;
  v2[111] = a1;
  v2[123] = swift_getObjectType();

  return _swift_task_switch(sub_1000712E8, 0, 0);
}

uint64_t sub_1000712E8()
{
  sub_1000657D4();
  v1 = v0[117];
  v2 = swift_allocObject();
  v0[124] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  swift_asyncLet_begin();
  v4 = OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager;
  v0[125] = OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager;
  sub_100044728(&v3[v4], *&v3[v4 + 24]);
  v5 = swift_task_alloc();
  v0[126] = v5;
  *v5 = v0;
  sub_100077560(v5);

  return sub_1000B6BDC();
}

uint64_t sub_1000713E4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v3 = v2;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  *(v6 + 1016) = v0;

  if (v0)
  {
    v7 = sub_10007166C;
  }

  else
  {
    v7 = sub_1000714E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000714E4()
{
  sub_1000657EC();
  v1 = (*(v0 + 936) + *(v0 + 1000));
  sub_100044728(v1, v1[3]);
  sub_1000B05E4((v0 + 696));
  if (*(v0 + 736) != 1)
  {
    *(v0 + 856) = *(v0 + 744);
    sub_10007713C(v0 + 856, v0 + 872, &qword_1006CAC18);
    sub_100076FB8(v0 + 696, &qword_1006CAC08);
    if (*(v0 + 856))
    {
      v2 = sub_100048BAC(*(v0 + 856));
      *(v0 + 1024) = v2;

      if (v2[2])
      {
        v3 = sub_1000778C4();

        return _swift_asyncLet_get(v3);
      }
    }
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (sub_100077680(v5))
  {
    v6 = sub_1000541D8();
    sub_100077908(v6);
    sub_100077394();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    sub_100053E64();
  }

  v12 = sub_1000778C4();

  return _swift_asyncLet_finish(v12);
}

uint64_t sub_10007166C()
{
  sub_1000657EC();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (sub_100077680(v1))
  {
    v2 = sub_1000541D8();
    sub_100077908(v2);
    sub_100077394();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    sub_100053E64();
  }

  v8 = sub_1000778C4();

  return _swift_asyncLet_finish(v8);
}

uint64_t sub_100071740()
{
  v1 = *(*(v0 + 936) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 1032) = v1;
  return sub_1000772D0(sub_100071768, v1);
}

uint64_t sub_100071768()
{
  sub_1000657D4();
  v1 = *(v0 + 1032);
  v2 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  *(v0 + 1040) = *(v1 + v2);

  return _swift_task_switch(sub_1000717F4, 0, 0);
}

uint64_t sub_1000717F4()
{
  sub_1000657D4();
  v0[131] = sub_100071A18(v0[128], v0[111], v0[130]);

  v1 = sub_1000778C4();

  return _swift_asyncLet_finish(v1);
}

uint64_t sub_10007188C()
{
  sub_1000657D4();
  v1 = *(v0 + 1048);

  sub_10006EBEC();

  return v2(v1);
}

uint64_t sub_100071900()
{
  sub_1000657D4();

  sub_10006EBEC();

  return v0(_swiftEmptyArrayStorage);
}

uint64_t sub_100071994()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 24) = v1;
  return sub_1000772D0(sub_1000719BC, v1);
}

uint64_t sub_1000719BC()
{
  sub_1000657D4();
  sub_100070358();
  sub_10006574C();

  return v0();
}

void *sub_100071A18(uint64_t a1, Swift::UInt a2, uint64_t a3)
{
  v40 = a2;
  v5 = type metadata accessor for Date();
  sub_10004EAE0();
  v7 = v6;
  __chkstk_darwin(v8, v9, v10);
  sub_100047544();
  v39 = v11;
  sub_1000474F8();
  result = __chkstk_darwin(v12, v13, v14);
  v17 = &v33 - v16;
  v18 = 0;
  v19 = *(a1 + 16);
  v38 = v7 + 16;
  v37 = v7 + 32;
  v36 = v7 + 8;
  v34 = a1 + 32;
  v35 = _swiftEmptyArrayStorage;
LABEL_2:
  for (i = (v34 + 104 * v18); ; i += 104)
  {
    if (v19 == v18)
    {
      __dst[0] = v35;
      sub_1000D8AA0();
      return __dst[0];
    }

    if (v18 >= v19)
    {
      break;
    }

    result = memcpy(__dst, i, sizeof(__dst));
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_18;
    }

    if (!*(a3 + 16))
    {
      sub_10007606C(__dst, v41);
LABEL_11:
      v29 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000BDF24(0, v29[2] + 1, 1);
        v29 = v43;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        sub_1000BDF24(v31 > 1, v32 + 1, 1);
        v29 = v43;
      }

      v29[2] = v32 + 1;
      v35 = v29;
      result = memcpy(&v29[13 * v32 + 4], __dst, 0x68uLL);
      v18 = v21;
      goto LABEL_2;
    }

    v22 = __dst[0];
    v23 = __dst[1];
    sub_10007606C(__dst, v41);
    v24 = sub_1000BFC64(v22, v23, v40);
    if ((v25 & 1) == 0)
    {
      goto LABEL_11;
    }

    v26 = v39;
    (*(v7 + 16))(v39, *(a3 + 56) + *(v7 + 72) * v24, v5);
    (*(v7 + 32))(v17, v26, v5);
    Date.timeIntervalSinceNow.getter();
    v28 = v27;
    (*(v7 + 8))(v17, v5);
    if (__dst[2] < -v28)
    {
      goto LABEL_11;
    }

    result = sub_1000760C8(__dst);
    ++v18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100071D14(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = type metadata accessor for ASAnalyticsEvent(0);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100071DAC, 0, 0);
}

uint64_t sub_100071DAC()
{
  sub_100077930();
  sub_10006ECA0();
  v1 = v0[11];
  v0[16] = os_transaction_create();
  v2 = *v1;
  v0[17] = *v1;
  v3 = v1[1];
  v4 = OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  v0[18] = v3;
  v0[19] = v4;
  swift_bridgeObjectRetain_n();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100053F78();
    sub_100053F60();
    sub_10007764C();
    *v7 = 136315138;
    *(v7 + 4) = sub_100052F7C(v2);
    sub_100077658(&_mh_execute_header, v8, v6, "Starting precomputation flow %s");
    sub_100077360();
    sub_100077500();
  }

  v9 = v0[15];
  v10 = v0[13];
  *v9 = v2;
  v9[1] = v3;
  swift_storeEnumTagMultiPayload();

  sub_1000C4148(v9);
  sub_10007700C(v9);
  v0[20] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v11 = *(v10 + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  v0[21] = v11;
  v0[5] = type metadata accessor for PrecomputationManager.PrecomputationState(0);
  v0[6] = &off_100693288;
  v0[2] = v11;

  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_100071F78;
  sub_100077698();

  return sub_1000C45C4();
}

uint64_t sub_100071F78()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    v7 = sub_100072290;
  }

  else
  {
    sub_100044850((v3 + 16));
    v7 = sub_100072080;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100072080()
{
  sub_1000657D4();
  *(v0 + 192) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v1 = sub_1000773A4();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000720E4()
{
  sub_1000657D4();
  sub_100070054();
  v0 = sub_100065864();

  return _swift_task_switch(v0, v1, v2);
}

void sub_100072148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100077930();
  sub_10006ECA0();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (sub_1000777E8())
  {
    v13 = v10[17];
    v14 = sub_100053F78();
    sub_100053F60();
    sub_10007764C();
    *v14 = 136446210;
    *(v14 + 4) = sub_100052F7C(v13);
    sub_100077658(&_mh_execute_header, v15, v12, "Completed precomputation flow %{public}s");
    sub_100077360();
    sub_100077500();
  }

  v16 = v10[24];
  v17 = v10[20];
  v18 = v16 >= v17;
  v19 = v16 - v17;
  if (v18)
  {
    v20 = v10[18];
    v21 = v10[15];
    *v21 = v10[17];
    v21[1] = v20;
    v21[2] = v19 / 0xF4240;
    swift_storeEnumTagMultiPayload();
    sub_1000C4148(v21);
    swift_unknownObjectRelease();
    sub_10007700C(v10[15]);

    sub_10006574C();
    sub_100077698();

    v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100072290()
{
  sub_10006ECA0();
  sub_100044850(v0 + 2);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (sub_1000777E8())
  {
    v3 = v0[17];
    v4 = sub_100053F78();
    sub_100053F60();
    *v4 = 136315138;
    *(v4 + 4) = sub_100052F7C(v3);
    sub_100077658(&_mh_execute_header, v5, v2, "Error from workflow %s - not marking as complete");
    sub_100077360();
    sub_100077500();
  }

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  swift_getErrorValue();
  v9 = Error.localizedDescription.getter();
  *v8 = v7;
  v8[1] = v6;
  v8[2] = v9;
  v8[3] = v10;
  swift_storeEnumTagMultiPayload();
  sub_1000C4148(v8);
  swift_unknownObjectRelease();

  sub_10007700C(v0[15]);

  sub_10006574C();

  return v11();
}

uint64_t sub_100072400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[60] = a2;
  v3[61] = a3;
  v3[59] = a1;
  v5 = swift_task_alloc();
  v3[62] = v5;
  *v5 = v3;
  v5[1] = sub_1000724A0;

  return sub_100071274(a1);
}

uint64_t sub_1000724A0()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 504) = v3;

  v4 = sub_100065864();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10007258C()
{
  sub_1000657EC();
  v1 = v0[63];
  v2 = v0[61];
  v3 = *(v1 + 16);
  v0[64] = v3;
  v0[65] = OBJC_IVAR____TtC3asd21PrecomputationManager_state;
  v0[66] = OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  v0[67] = 0;
  if (!v3)
  {

    v4 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = sub_1000773E0(v11);
    v7 = v0[61];
    if (v12)
    {
      v13 = sub_1000541D8();
      sub_100077640(v13);
      sub_1000773B4(&_mh_execute_header, v14, v15, "Due precomputations complete");
      sub_10007756C();
    }

    goto LABEL_9;
  }

  if (!*(v1 + 16))
  {
    __break(1u);
    return;
  }

  sub_1000773FC(v1);
  sub_100077748();
  if ((*(v2 + 16))(v2) == 1)
  {
    sub_1000775A8();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = sub_1000773E0(v5);
    v7 = v0[61];
    if (v6)
    {
      v8 = sub_1000541D8();
      sub_100077640(v8);
      sub_1000773B4(&_mh_execute_header, v9, v10, "Due precomputations stopping as requested to defer");
      sub_10007756C();
    }

LABEL_9:

    _Block_release(v7);
    sub_10006EBEC();

    v16();
    return;
  }

  sub_100077790();
  v17 = swift_task_alloc();
  v18 = sub_1000778F0(v17);
  *v18 = v19;
  sub_1000772D8(v18);

  sub_10006FC18();
}

uint64_t sub_10007273C()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100072820()
{
  sub_10006ECA0();
  if ((*(v1[61] + 16))() == 1)
  {
    sub_1000775A8();

    goto LABEL_3;
  }

  v12 = v1[10];
  v1[69] = v12;
  v13 = v1[3];
  v1[70] = v1[2];
  v1[71] = v13;
  if (v12 != 1)
  {
    v21 = v1[13];
    v1[72] = v1[14];
    v1[73] = v21;
    v23 = v1[11];
    v22 = v1[12];
    v1[74] = v22;
    v1[75] = v23;
    sub_1000776B0(v12, v22);

    v24 = swift_task_alloc();
    v1[76] = v24;
    *(v24 + 16) = v1 + 54;
    swift_task_alloc();
    sub_10007743C();
    v1[77] = v25;
    *v25 = v26;
    v25[1] = sub_100072BC8;
    sub_10007772C();
    sub_100077698();

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v27);
  }

  sub_100077620();
  if (!v14)
  {
    swift_task_alloc();
    sub_10007743C();
    v1[78] = v15;
    *v15 = v16;
    sub_100077534(v15);
    sub_100077800();

    return sub_100071D14(v17, v18);
  }

  v29 = sub_100077780();
  sub_10007606C(v29, (v1 + 28));
  v30 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100077864();
  if (sub_1000777E8())
  {
    sub_100077700();
    sub_100053E48();
    sub_10007764C();
    sub_10007787C(4.8149e-34);
    sub_1000760C8((v1 + 2));
    sub_1000775F8();
    sub_10007784C();
    *(v0 + 4) = v2;
    sub_100077394();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_100077360();
    sub_100053E64();
  }

  else
  {

    sub_1000760C8((v1 + 2));
  }

  sub_10007751C();
  if (v14)
  {
    sub_100077894();
    v3 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = sub_1000773E0(v36);
    v6 = v1[61];
    if (v37)
    {
      v38 = sub_1000541D8();
      sub_100077640(v38);
      sub_1000773B4(&_mh_execute_header, v39, v40, "Due precomputations complete");
      sub_10007756C();
    }

LABEL_5:

    _Block_release(v6);
    sub_10006EBEC();
    sub_100077800();

    __asm { BRAA            X2, X16 }
  }

  sub_100077720();
  if (v41)
  {
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v27);
  }

  sub_100077320(v42);
  sub_100077748();
  v43 = sub_1000775C8();
  if (v44(v43) == 1)
  {
    sub_1000760C8((v1 + 2));

LABEL_3:
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = sub_1000773E0(v4);
    v6 = v1[61];
    if (v5)
    {
      v7 = sub_1000541D8();
      sub_100077640(v7);
      sub_1000773B4(&_mh_execute_header, v8, v9, "Due precomputations stopping as requested to defer");
      sub_10007756C();
    }

    goto LABEL_5;
  }

  v45 = swift_task_alloc();
  v46 = sub_1000778F0(v45);
  *v46 = v47;
  sub_1000772D8(v46);
  sub_100077800();

  return sub_10006FC18();
}

uint64_t sub_100072BC8()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

void sub_100072CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100077930();
  sub_10006ECA0();
  sub_10007638C(*(v11 + 552), *(v11 + 600), *(v11 + 592), *(v11 + 584), *(v11 + 576));
  if (*(v11 + 632))
  {
    sub_100077620();
    if (!v13)
    {
      swift_task_alloc();
      sub_10007743C();
      *(v11 + 624) = v14;
      *v14 = v15;
      sub_100077534(v14);
      sub_100077698();

      sub_100071D14(v16, v17);
      return;
    }

    v21 = sub_100077780();
    sub_10007606C(v21, v11 + 224);
    v20 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100077864();
    if (sub_1000777E8())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = sub_100077780();
    sub_10007606C(v19, v11 + 328);
    v20 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100077864();
    if (sub_1000777E8())
    {
LABEL_9:
      sub_100077700();
      sub_100053E48();
      sub_10007764C();
      sub_10007787C(4.8149e-34);
      sub_1000760C8(v11 + 16);
      sub_1000775F8();
      sub_10007784C();
      *(v10 + 4) = v12;
      sub_100077394();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      sub_100077360();
      sub_100053E64();

      goto LABEL_11;
    }
  }

  sub_1000760C8(v11 + 16);
LABEL_11:
  sub_10007751C();
  if (v13)
  {
    sub_100077894();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = sub_1000773E0(v28);
    v30 = *(v11 + 488);
    if (v29)
    {
      v31 = sub_1000541D8();
      sub_100077640(v31);
      sub_1000773B4(&_mh_execute_header, v32, v33, "Due precomputations complete");
      sub_10007756C();
    }

    goto LABEL_20;
  }

  sub_100077720();
  if (v34)
  {
    __break(1u);
    return;
  }

  sub_100077320(v35);
  sub_100077748();
  v36 = sub_1000775C8();
  if (v37(v36) == 1)
  {
    sub_1000775A8();

    v27 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = sub_1000773E0(v38);
    v30 = *(v11 + 488);
    if (v39)
    {
      v40 = sub_1000541D8();
      sub_100077640(v40);
      sub_1000773B4(&_mh_execute_header, v41, v42, "Due precomputations stopping as requested to defer");
      sub_10007756C();
    }

LABEL_20:

    _Block_release(v30);
    sub_10006EBEC();
    sub_100077698();

    v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10);
    return;
  }

  sub_100077790();
  v51 = swift_task_alloc();
  v52 = sub_1000778F0(v51);
  *v52 = v53;
  sub_1000772D8(v52);
  sub_100077698();

  sub_10006FC18();
}

uint64_t sub_100072FB4()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  sub_1000760C8(v2 + 16);
  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

void sub_10007309C()
{
  sub_1000657EC();
  sub_10007751C();
  if (v1)
  {
    sub_100077894();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = sub_1000773E0(v3);
    v5 = *(v0 + 488);
    if (v4)
    {
      v6 = sub_1000541D8();
      sub_100077640(v6);
      sub_1000773B4(&_mh_execute_header, v7, v8, "Due precomputations complete");
      sub_10007756C();
    }

    goto LABEL_10;
  }

  sub_100077720();
  if (v9)
  {
    __break(1u);
    return;
  }

  sub_100077320(v10);
  sub_100077748();
  v11 = sub_1000775C8();
  if (v12(v11) == 1)
  {
    sub_1000775A8();

    v2 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = sub_1000773E0(v13);
    v5 = *(v0 + 488);
    if (v14)
    {
      v15 = sub_1000541D8();
      sub_100077640(v15);
      sub_1000773B4(&_mh_execute_header, v16, v17, "Due precomputations stopping as requested to defer");
      sub_10007756C();
    }

LABEL_10:

    _Block_release(v5);
    sub_10006EBEC();

    v18();
    return;
  }

  sub_100077790();
  v19 = swift_task_alloc();
  v20 = sub_1000778F0(v19);
  *v20 = v21;
  sub_1000772D8(v20);

  sub_10006FC18();
}

uint64_t PrecomputationManager.triggerDuePrecomputations(dataProtectionClass:shouldDefer:)()
{
  sub_1000657D4();
  v3 = v2;
  v1[61] = v4;
  v1[62] = v0;
  v1[59] = v2;
  v1[60] = v5;
  v6 = swift_task_alloc();
  v1[63] = v6;
  *v6 = v1;
  sub_100077560(v6);

  return sub_100071274(v3);
}

uint64_t sub_1000732B4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 512) = v3;

  v4 = sub_100065864();

  return _swift_task_switch(v4, v5, v6);
}

void sub_1000733A0()
{
  sub_100068324();
  v1 = v0[64];
  v2 = *(v1 + 16);
  v0[65] = v2;
  v0[66] = OBJC_IVAR____TtC3asd21PrecomputationManager_state;
  v0[67] = OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  v0[68] = 0;
  if (!v2)
  {

    v5 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!sub_1000773E0(v7))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v3 = v0[60];
    sub_1000773FC(v1);
    v4 = sub_100077748();
    if (v3(v4) == 1)
    {
      sub_100077588();

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (!sub_1000773E0(v6))
      {
        goto LABEL_8;
      }

LABEL_7:
      v8 = sub_1000541D8();
      sub_1000778D0(v8);
      sub_100077418(&_mh_execute_header);
      sub_100077500();
LABEL_8:

      sub_10006EBEC();
      sub_10006ED0C();

      __asm { BRAA            X2, X16 }
    }

    sub_100077770();
    v11 = swift_task_alloc();
    v12 = sub_1000778FC(v11);
    *v12 = v13;
    sub_1000772FC(v12);
    sub_10006ED0C();

    sub_10006FC18();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100073520()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100073604()
{
  sub_10006ECA0();
  if ((*(v1 + 480))() == 1)
  {
    sub_100077588();

    goto LABEL_3;
  }

  v8 = *(v1 + 80);
  *(v1 + 560) = v8;
  v9 = *(v1 + 24);
  *(v1 + 568) = *(v1 + 16);
  *(v1 + 576) = v9;
  if (v8 != 1)
  {
    v17 = *(v1 + 104);
    *(v1 + 584) = *(v1 + 112);
    *(v1 + 592) = v17;
    v19 = *(v1 + 88);
    v18 = *(v1 + 96);
    *(v1 + 600) = v18;
    *(v1 + 608) = v19;
    sub_1000776B0(v8, v18);

    v20 = swift_task_alloc();
    *(v1 + 616) = v20;
    *(v20 + 16) = v1 + 432;
    swift_task_alloc();
    sub_10007743C();
    *(v1 + 624) = v21;
    *v21 = v22;
    v21[1] = sub_100073978;
    sub_10007772C();
    sub_100077698();

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v23);
  }

  sub_100077620();
  if (!v10)
  {
    swift_task_alloc();
    sub_10007743C();
    *(v1 + 632) = v11;
    *v11 = v12;
    sub_1000774A8(v11);
    sub_100077800();

    return sub_100071D14(v13, v14);
  }

  v25 = sub_100077760();
  sub_10007606C(v25, v1 + 224);
  v26 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100077864();
  if (sub_1000777E8())
  {
    sub_1000776E0();
    sub_100053E48();
    sub_10007764C();
    sub_10007787C(4.8149e-34);
    sub_1000760C8(v1 + 16);
    sub_1000775F8();
    sub_10007784C();
    *(v0 + 4) = v2;
    sub_100077394();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    sub_100077360();
    sub_100053E64();
  }

  else
  {

    sub_1000760C8(v1 + 16);
  }

  sub_1000774E8();
  if (v10)
  {
    sub_100077830();
    v3 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!sub_1000773E0(v32))
    {
LABEL_5:

      sub_10006EBEC();
      sub_100077800();

      __asm { BRAA            X2, X16 }
    }

LABEL_4:
    v5 = sub_1000541D8();
    sub_1000778D0(v5);
    sub_100077418(&_mh_execute_header);
    sub_100077500();
    goto LABEL_5;
  }

  sub_100077720();
  if (v33)
  {
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v23);
  }

  v35 = *(v1 + 480);
  sub_100077320(v34);
  v36 = sub_100077748();
  if (v35(v36) == 1)
  {
    sub_1000760C8(v1 + 16);

LABEL_3:
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!sub_1000773E0(v4))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v37 = swift_task_alloc();
  v38 = sub_1000778FC(v37);
  *v38 = v39;
  sub_1000772FC(v38);
  sub_100077800();

  return sub_10006FC18();
}

uint64_t sub_100073978()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

void sub_100073A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100077930();
  sub_10006ECA0();
  sub_10007638C(*(v11 + 560), *(v11 + 608), *(v11 + 600), *(v11 + 592), *(v11 + 584));
  if (*(v11 + 640))
  {
    sub_100077620();
    if (!v13)
    {
      swift_task_alloc();
      sub_10007743C();
      *(v11 + 632) = v14;
      *v14 = v15;
      sub_1000774A8(v14);
      sub_100077698();

      sub_100071D14(v16, v17);
      return;
    }

    v21 = sub_100077760();
    sub_10007606C(v21, v11 + 224);
    v20 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100077864();
    if (sub_1000777E8())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = sub_100077760();
    sub_10007606C(v19, v11 + 328);
    v20 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100077864();
    if (sub_1000777E8())
    {
LABEL_9:
      sub_1000776E0();
      sub_100053E48();
      sub_10007764C();
      sub_10007787C(4.8149e-34);
      sub_1000760C8(v11 + 16);
      sub_1000775F8();
      sub_10007784C();
      *(v10 + 4) = v12;
      sub_100077394();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      sub_100077360();
      sub_100053E64();

      goto LABEL_11;
    }
  }

  sub_1000760C8(v11 + 16);
LABEL_11:
  sub_1000774E8();
  if (v13)
  {
    sub_100077830();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (sub_1000773E0(v28))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  sub_100077720();
  if (v29)
  {
    __break(1u);
    return;
  }

  v31 = *(v11 + 480);
  sub_100077320(v30);
  v32 = sub_100077748();
  if (v31(v32) == 1)
  {
    sub_100077588();

    v27 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (sub_1000773E0(v33))
    {
LABEL_18:
      v34 = sub_1000541D8();
      sub_1000778D0(v34);
      sub_100077418(&_mh_execute_header);
      sub_100077500();
    }

LABEL_19:

    sub_10006EBEC();
    sub_100077698();

    v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
    return;
  }

  sub_100077770();
  v43 = swift_task_alloc();
  v44 = sub_1000778FC(v43);
  *v44 = v45;
  sub_1000772FC(v44);
  sub_100077698();

  sub_10006FC18();
}

uint64_t sub_100073D34()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  sub_1000760C8(v2 + 16);
  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

void sub_100073E1C()
{
  sub_100068324();
  sub_1000774E8();
  if (v1)
  {
    sub_100077830();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!sub_1000773E0(v3))
    {
      goto LABEL_9;
    }

LABEL_8:
    v9 = sub_1000541D8();
    sub_1000778D0(v9);
    sub_100077418(&_mh_execute_header);
    sub_100077500();
LABEL_9:

    sub_10006EBEC();
    sub_10006ED0C();

    __asm { BRAA            X2, X16 }
  }

  sub_100077720();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 480);
    sub_100077320(v5);
    v7 = sub_100077748();
    if (v6(v7) == 1)
    {
      sub_100077588();

      v2 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!sub_1000773E0(v8))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_100077770();
    v12 = swift_task_alloc();
    v13 = sub_1000778FC(v12);
    *v13 = v14;
    sub_1000772FC(v13);
    sub_10006ED0C();

    sub_10006FC18();
  }
}

uint64_t sub_100074010(uint64_t a1, void *aBlock, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = _Block_copy(aBlock);
  v4[3] = v8;
  v4[4] = _Block_copy(a3);
  _Block_copy(v8);
  v9 = a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100074108;

  return sub_100072400(a1, v9, v8);
}

uint64_t sub_100074108()
{
  sub_1000657EC();
  sub_1000657F8();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;

  _Block_release(v3);

  v7 = sub_100047504();
  v8(v7);
  _Block_release(v2);
  sub_10006574C();

  return v9();
}

uint64_t sub_10007426C()
{
  v1 = sub_100070F7C();
  if (!v1)
  {
LABEL_19:
    sub_10006574C();
    sub_100077914();

    __asm { BRAA            X1, X16 }
  }

  v2 = sub_100048BAC(v1);

  v6 = 0;
  v7 = v2[2];
LABEL_3:
  *(v0 + 440) = _swiftEmptyArrayStorage;
  v8 = 104 * v6 + 32;
  while (v7 != v6)
  {
    if (v6 >= v2[2])
    {
      __break(1u);
      return _swift_task_switch(v3, v4, v5);
    }

    v3 = memcpy((v0 + 120), v2 + v8, 0x68uLL);
    if ((*(v0 + 176) & 1) == 0)
    {
      sub_10007606C(v0 + 120, v0 + 224);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BDF24(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1000BDF24(v9 > 1, v10 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v10 + 1;
      v3 = memcpy(&_swiftEmptyArrayStorage[13 * v10 + 4], (v0 + 120), 0x68uLL);
      goto LABEL_3;
    }

    v8 += 104;
    ++v6;
  }

  v11 = _swiftEmptyArrayStorage[2];
  *(v0 + 448) = v11;
  if (!v11)
  {

    goto LABEL_19;
  }

  v12 = type metadata accessor for ODIDeviceInfo();
  v13 = OBJC_IVAR____TtC3asd21PrecomputationManager_state;
  *(v0 + 456) = v12;
  *(v0 + 464) = v13;
  *(v0 + 472) = 0;
  sub_1000773FC(*(v0 + 440));
  sub_10007606C(v0 + 16, v0 + 328);
  if (static ODIDeviceInfo.isDeviceLocked()())
  {
    sub_1000777C0();
    sub_1000760C8(v0 + 16);
    sub_1000773A4();
    sub_100077914();

    return _swift_task_switch(v3, v4, v5);
  }

  else
  {
    swift_task_alloc();
    sub_10007743C();
    *(v0 + 504) = v17;
    *v17 = v18;
    sub_100077448(v17);
    sub_100077914();

    return sub_100071D14(v19, v20);
  }
}

uint64_t sub_1000744C4()
{
  sub_1000657D4();
  sub_100070180();

  v0 = sub_100065864();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100074534()
{
  sub_1000657D4();
  v1 = v0[59] + 1;
  if (v1 == v0[56])
  {

    sub_10006574C();

    return v2();
  }

  else
  {
    v0[59] = v1;
    sub_100077320(v1);
    sub_10007606C((v0 + 2), (v0 + 41));
    if (static ODIDeviceInfo.isDeviceLocked()())
    {
      sub_1000777C0();
      sub_1000760C8((v0 + 2));
      v4 = sub_1000773A4();

      return _swift_task_switch(v4, v5, v6);
    }

    else
    {
      swift_task_alloc();
      sub_10007743C();
      v0[63] = v7;
      *v7 = v8;
      v9 = sub_100077448(v7);

      return sub_100071D14(v9, v10);
    }
  }
}

uint64_t sub_100074648()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  sub_1000760C8(v2 + 16);
  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100074748()
{
  sub_1000657EC();
  v1 = sub_100070F7C();
  if (v1)
  {
    v2 = sub_100048BAC(v1);
    v0[29] = v2;

    v3 = v2[2];
    v0[30] = v3;
    if (v3)
    {
      v0[31] = 0;
      sub_1000773FC(v0[29]);
      sub_100077748();
      swift_task_alloc();
      sub_10007743C();
      v0[32] = v4;
      *v4 = v5;
      v6 = sub_100077478(v4);

      return sub_100071D14(v6, v7);
    }
  }

  sub_10006574C();

  return v9();
}

uint64_t sub_100074840()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  sub_1000760C8(v2 + 16);
  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100074928()
{
  sub_1000657D4();
  v1 = v0[31] + 1;
  if (v1 == v0[30])
  {

    sub_10006574C();

    return v2();
  }

  else
  {
    v0[31] = v1;
    sub_100077320(v1);
    sub_100077748();
    swift_task_alloc();
    sub_10007743C();
    v0[32] = v4;
    *v4 = v5;
    v6 = sub_100077478(v4);

    return sub_100071D14(v6, v7);
  }
}

uint64_t sub_100074A08(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007729C;

  return PrecomputationManager.triggerAllPrecomputations()();
}

uint64_t PrecomputationManager.triggerPrecomputation(workflowID:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return sub_1000772C4(sub_100074ACC);
}

uint64_t sub_100074ACC()
{
  sub_1000657EC();
  v1 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 4;
  *(v0 + 72) = 1;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v3 = sub_1000778DC(v2);

  return sub_100071D14(v3, 4);
}

uint64_t sub_100074BA0()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  sub_1000760C8(v2 + 16);
  sub_10006574C();

  return v6();
}

uint64_t sub_100074CA8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100074D7C;

  return PrecomputationManager.triggerPrecomputation(workflowID:)(v5, v7);
}

uint64_t sub_100074D7C()
{
  sub_100068324();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t PrecomputationManager.triggerPregeneration(workflowID:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return sub_1000772C4(sub_100074F2C);
}

uint64_t sub_100074F2C()
{
  sub_1000657EC();
  v1 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = xmmword_1005CCB50;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v3 = sub_1000778DC(v2);

  return sub_100071D14(v3, 1);
}

void sub_100075024(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSString *a9, unint64_t a10, void *a11, unint64_t a12, unint64_t a13, void *a14)
{
  v16 = _Block_copy(aBlock);
  sub_1000777B0();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = v16;
  v17[4] = a1;
  v18 = a3;
  v19 = a1;
  v20 = sub_100047504();

  sub_1000CAD58(v20, v21);
}

uint64_t sub_10007509C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000772A0;

  return PrecomputationManager.triggerPregeneration(workflowID:)(v5, v7);
}

uint64_t sub_100075188()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 24) = v1;
  return sub_1000772D0(sub_1000751B0, v1);
}

uint64_t sub_1000751B0()
{
  sub_1000657D4();
  sub_100070290();
  sub_10006574C();

  return v0();
}

uint64_t sub_100075228(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007729C;

  return PrecomputationManager.notifyCachesWereRemoved()();
}

uint64_t sub_1000752E8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 24) = v1;
  return sub_1000772D0(sub_100075310, v1);
}

uint64_t sub_100075310()
{
  sub_1000657D4();
  sub_10006F898();
  sub_10006574C();

  return v0();
}

uint64_t sub_100075388(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100075430;

  return PrecomputationManager.pausePrecomputations()();
}

uint64_t sub_100075430()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  v6 = sub_1000775C8();
  v7(v6);
  _Block_release(v2);
  sub_10006574C();

  return v8();
}

uint64_t sub_100075564()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 24) = v1;
  return sub_1000772D0(sub_10007558C, v1);
}

uint64_t sub_10007558C()
{
  sub_1000657D4();
  sub_10006F9A8();
  sub_10006574C();

  return v0();
}

void sub_100075604(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSString *a9, unint64_t a10, void *a11, unint64_t a12, unint64_t a13, void *a14)
{
  v15 = _Block_copy(aBlock);
  sub_1000777A0();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  v17 = a1;
  v18 = sub_100047504();

  sub_1000CAD58(v18, v19);
}

uint64_t sub_100075668(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007729C;

  return PrecomputationManager.resumePrecomputations()();
}

uint64_t sub_100075728()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  sub_100077560(v1);

  return sub_100070AC0();
}

uint64_t sub_1000757BC()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  sub_1000773D4();
  *v4 = v3;
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;
  *(v7 + 32) = v2;

  v8 = sub_1000773A4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000758A4()
{
  sub_1000657D4();
  sub_100083A44();

  sub_10006574C();

  return v0();
}

Swift::Void __swiftcall PrecomputationManager.clearAllBindings()()
{
  v1 = sub_1000443DC(&qword_1006C9E20);
  v2 = sub_100077674(v1);
  __chkstk_darwin(v2, v3, v4);
  sub_10004EAF4();
  v7 = v6 - v5;
  v8 = type metadata accessor for TaskPriority();
  sub_1000485F8(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;
  v10 = v0;
  sub_10006F27C(0, 0, v7, &unk_1005CCBD0, v9);
}

uint64_t sub_1000759D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000640AC;

  return PrecomputationManager.clearAllBindings()();
}

uint64_t sub_100075AAC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1000772C4(sub_100075AC4);
}

uint64_t sub_100075AC4()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  sub_100077560(v1);

  return sub_100070AC0();
}

uint64_t sub_100075B58()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  sub_1000773D4();
  *v4 = v3;
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;
  *(v7 + 40) = v2;

  v8 = sub_1000773A4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100075C40()
{
  sub_1000657D4();
  sub_100082700();

  sub_10006574C();

  return v0();
}

Swift::Void __swiftcall PrecomputationManager.capture(withBindings:)(Swift::OpaquePointer withBindings)
{
  v3 = sub_1000443DC(&qword_1006C9E20);
  v4 = sub_100077674(v3);
  __chkstk_darwin(v4, v5, v6);
  sub_10004EAF4();
  v9 = v8 - v7;
  v10 = type metadata accessor for TaskPriority();
  sub_1000485F8(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2]._rawValue = 0;
  v11[3]._rawValue = 0;
  v11[4]._rawValue = withBindings._rawValue;
  v11[5]._rawValue = v1;

  v12 = v1;
  sub_10006F27C(0, 0, v9, &unk_1005CCBE0, v11);
}

uint64_t sub_100075D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100075DA0, 0, 0);
}

uint64_t sub_100075DA0()
{
  sub_1000657D4();
  v1 = sub_100077D54(v0[2]);
  v0[4] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_100075E6C;
    v3 = sub_100077614();

    return sub_100075AAC(v3);
  }

  else
  {
    sub_10006574C();

    return v5();
  }
}

uint64_t sub_100075E6C()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

uint64_t sub_10007611C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100076214;

  return v6(a1);
}

uint64_t sub_100076214()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

uint64_t sub_1000762F8()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_100077818(v1);

  return sub_10006CC0C();
}

uint64_t sub_10007638C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000763F0()
{
  swift_unknownObjectRelease();

  v1 = sub_1000777B0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100076428()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v1[1] = sub_100065570;
  sub_100077630();

  return sub_1000759D4();
}

uint64_t sub_1000764C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100076510()
{
  sub_100068324();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v1[1] = sub_100065570;
  sub_100077630();
  sub_10006ED0C();

  return sub_100075D80(v3, v4, v5, v6, v7);
}

uint64_t sub_1000765E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100076618(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000766CC(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100076790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CABB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000767F8()
{
  result = qword_1006CABE0;
  if (!qword_1006CABE0)
  {
    sub_1000471A4(&qword_1006CABD8);
    sub_1000768AC();
    sub_100076900(&unk_1006CABF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CABE0);
  }

  return result;
}

unint64_t sub_1000768AC()
{
  result = qword_1006CABE8;
  if (!qword_1006CABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CABE8);
  }

  return result;
}

uint64_t sub_100076900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007694C()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_100077344(v1);

  return v4(v3);
}

uint64_t sub_1000769DC()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_100077344(v1);

  return v4(v3);
}

uint64_t sub_100076A6C()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_100077344(v1);

  return v4(v3);
}

uint64_t sub_100076B00()
{
  sub_1000657EC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_10006EBC4(v3);
  *v4 = v5;
  v4[1] = sub_100065570;
  v6 = sub_100077614();

  return v7(v6, v1, v2);
}

uint64_t sub_100076BA8()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1000777B0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100076BE8()
{
  sub_1000657EC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_10006EBC4(v3);
  *v4 = v5;
  v4[1] = sub_1000640AC;
  v6 = sub_100077614();

  return v7(v6, v1, v2);
}

uint64_t sub_100076C90()
{
  _Block_release(*(v0 + 16));

  v1 = sub_1000777A0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100076CC8()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_100077344(v1);

  return v4(v3);
}

uint64_t sub_100076D58()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100076DA0()
{
  sub_100068324();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v1[1] = sub_100065570;
  sub_100077614();
  sub_10006ED0C();

  __asm { BR              X4 }
}

uint64_t sub_100076EA4()
{

  v0 = sub_1000777A0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100076ED4()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v1[1] = sub_100065570;
  v3 = sub_100077630();

  return v4(v3);
}

uint64_t sub_100076F78(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100076FB8(uint64_t a1, uint64_t *a2)
{
  sub_1000443DC(a2);
  sub_1000774D8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10007700C(uint64_t a1)
{
  v2 = type metadata accessor for ASAnalyticsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100077070()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000770A8()
{
  sub_1000657D4();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_10006EB38(v4);
  *v5 = v6;
  v5[1] = sub_1000640AC;

  return sub_100071974(v2, v3);
}

uint64_t sub_10007713C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000443DC(a3);
  sub_1000774D8();
  v4 = sub_100047504();
  v5(v4);
  return a2;
}

unint64_t sub_100077194()
{
  result = qword_1006CAC20;
  if (!qword_1006CAC20)
  {
    sub_1000471A4(&qword_1006CABD8);
    sub_100077248();
    sub_100076900(&unk_1006CAC30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAC20);
  }

  return result;
}

unint64_t sub_100077248()
{
  result = qword_1006CAC28;
  if (!qword_1006CAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAC28);
  }

  return result;
}

void *sub_100077320@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 + 16), (v1 + 104 * a1 + 32), 0x68uLL);
}

uint64_t sub_100077360()
{
  sub_100044850(v0);
}

void sub_1000773B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_1000773E0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_1000773FC@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 16), (a1 + 32), 0x68uLL);
}

void sub_100077418(void *a1)
{

  _os_log_impl(a1, v1, v2, v3, v4, 2u);
}

uint64_t sub_100077500()
{
}

uint64_t sub_10007756C()
{
}

uint64_t sub_100077588()
{

  return sub_1000760C8(v0 + 16);
}

uint64_t sub_1000775A8()
{

  return sub_1000760C8(v0 + 16);
}

uint64_t sub_1000775D8(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1000775F8()
{

  return sub_100052F7C(v0);
}

void sub_100077658(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

BOOL sub_100077680(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000776B0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(v5 + 432) = a1;
  *(v5 + 440) = v4;
  *(v5 + 448) = a2 & 1;
  *(v5 + 449) = BYTE1(a2) & 1;
  *(v5 + 450) = BYTE2(a2) & 1;
  *(v5 + 456) = v2;
  *(v5 + 464) = v3;
}

uint64_t sub_1000776E0()
{

  return swift_slowAlloc();
}

uint64_t sub_100077700()
{

  return swift_slowAlloc();
}

uint64_t sub_100077748()
{

  return sub_10007606C(v0 + 16, v0 + 120);
}

uint64_t sub_1000777C0()
{
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[3];
  v0[60] = v0[2];
  v0[61] = v4;
  v0[62] = *(v3 + v2);
}

BOOL sub_1000777E8()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_100077830()
{
}

uint64_t sub_10007784C()
{
}

uint64_t sub_100077864()
{

  return sub_1000760C8(v0 + 16);
}

uint64_t sub_10007787C(float a1)
{
  *v1 = a1;
}

uint64_t sub_100077894()
{
}

uint64_t sub_10007795C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for ODIBindingsDict();
      v10 = *(a3 + 56);
    }

    return sub_100046EA4(a1 + v10, a2, v9);
  }
}

uint64_t sub_100077A3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for ODIBindingsDict();
      v10 = *(a4 + 56);
    }

    return sub_1000485F8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for AssessmentPayload(uint64_t a1)
{
  result = qword_1006CAC98;
  if (!qword_1006CAC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100077B50(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ODIBindingsDict();
    if (v2 <= 0x3F)
    {
      sub_100077CA4(319, &qword_1006CACA8, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100077CA4(319, &qword_1006CACB0, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100077CF8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100077CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100077CF8()
{
  result = qword_1006CACB8;
  if (!qword_1006CACB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1006CACB8);
  }

  return result;
}

unint64_t sub_100077D54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000443DC(&qword_1006CADA8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_10005346C(*(a1 + 56) + 32 * v10, v32);
    *&v31 = v12;
    *(&v31 + 1) = v13;
    *&v29[5] = v31;
    v30[0] = v32[0];
    v30[1] = v32[1];
    v14 = v31;
    sub_1000534C8(v30, &v24);

    sub_1000443DC(&qword_1006CAD30);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100046D90(v22, v25);
    sub_100046D90(v25, v26);
    v27 = v14;
    sub_100046D90(v26, v28);
    v15 = v27;
    sub_100046D90(v28, v29);
    sub_100046D90(v29, &v27);
    result = sub_1000BFB60(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      *(v2[6] + 16 * result) = v15;

      v18 = (v2[7] + 40 * v16);
      sub_100044850(v18);
      result = sub_100046D90(&v27, v18);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_100046D90(&v27, v2[7] + 40 * result);
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_100053BE8(v22, &qword_1006CAD98);

  return 0;
}

unint64_t sub_10007801C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000443DC(&qword_1006CADA8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_10006B994(*(a1 + 48) + 40 * v10, __src);
    sub_10005346C(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_10006B994(__dst, v22);
    if (!swift_dynamicCast())
    {
      sub_100053BE8(__dst, &qword_1006CADB0);

      goto LABEL_22;
    }

    v11 = v19[0];
    sub_10005346C(&__dst[40], v21);
    sub_100053BE8(__dst, &qword_1006CADB0);
    sub_1000443DC(&qword_1006CAD30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100046D90(v19, v22);
    sub_100046D90(v22, v23);
    v24 = v11;
    sub_100046D90(v23, v25);
    v12 = v24;
    sub_100046D90(v25, v26);
    sub_100046D90(v26, &v24);
    result = sub_1000BFB60(v12, *(&v12 + 1));
    v13 = result;
    if (v14)
    {
      *(v2[6] + 16 * result) = v12;

      v15 = (v2[7] + 40 * v13);
      sub_100044850(v15);
      result = sub_100046D90(&v24, v15);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v12;
      result = sub_100046D90(&v24, v2[7] + 40 * result);
      v16 = v2[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_26;
      }

      v2[2] = v18;
      v8 = v9;
    }
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_100053BE8(v19, &qword_1006CAD98);
LABEL_22:

  return 0;
}

uint64_t sub_100078348()
{
  sub_1000443DC(&qword_1006CA138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CCD60;
  *(inited + 32) = 0x776F6C666B726F77;
  *(inited + 40) = 0xEA00000000004449;
  v2 = v0[1];
  *(inited + 48) = *v0;
  *(inited + 56) = v2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x4164657461657263;
  *(inited + 88) = 0xE900000000000074;
  v3 = type metadata accessor for AssessmentPayload(0);
  *(inited + 120) = type metadata accessor for Date();
  sub_10005351C((inited + 96));
  sub_100053F48();
  (*(v4 + 16))();
  *(inited + 128) = 0x656D737365737361;
  *(inited + 136) = 0xEA0000000000746ELL;
  v5 = (v0 + v3[6]);
  v45 = v5[1];
  *(inited + 144) = *v5;
  *(inited + 152) = v45;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "trainingData");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  v6 = (v0 + v3[7]);
  v7 = v6[1];
  *(inited + 192) = *v6;
  *(inited + 200) = v7;
  *(inited + 216) = &type metadata for String;
  strcpy((inited + 224), "assessmentGUID");
  *(inited + 239) = -18;
  v8 = (v0 + v3[8]);
  v9 = v8[1];
  *(inited + 240) = *v8;
  *(inited + 248) = v9;
  sub_10007B488();
  *(inited + 264) = v10;
  *(inited + 272) = 0xD000000000000013;
  *(inited + 280) = v11;
  v12 = (v0 + v3[9]);
  v13 = v12[1];
  *(inited + 288) = *v12;
  *(inited + 296) = v13;
  *(inited + 312) = v10;
  *(inited + 320) = v14;
  *(inited + 328) = 0xEC00000044495547;
  v15 = (v0 + v3[10]);
  v16 = v15[1];
  *(inited + 336) = *v15;
  *(inited + 344) = v16;
  sub_10007B488();
  *(inited + 360) = v17;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = v18;
  v19 = (v0 + v3[11]);
  v20 = v19[1];
  *(inited + 384) = *v19;
  *(inited + 392) = v20;
  sub_10007B488();
  *(inited + 408) = v21;
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = v22;
  v23 = (v0 + v3[12]);
  v24 = v23[1];
  *(inited + 432) = *v23;
  *(inited + 440) = v24;
  *(inited + 456) = v21;
  *(inited + 464) = 0x6E49747365676964;
  *(inited + 472) = 0xEB00000000786564;

  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  v26 = sub_10007AF78();
  *(inited + 480) = isa;
  *(inited + 504) = v26;
  *(inited + 512) = 0x73676E69646E6962;
  *(inited + 520) = 0xE800000000000000;
  *(inited + 552) = type metadata accessor for ODIBindingsDict();
  sub_10005351C((inited + 528));
  sub_100053F48();
  (*(v27 + 16))();
  sub_10007B488();
  *(inited + 560) = 0xD000000000000011;
  *(inited + 568) = v28;
  v29 = *(v0 + v3[15]);
  *(inited + 600) = sub_1000443DC(&qword_1006CA018);
  *(inited + 576) = v29;
  *(inited + 608) = 0x5468736572666572;
  *(inited + 616) = 0xEA00000000006C74;

  v30.super.super.isa = Int32._bridgeToObjectiveC()().super.super.isa;
  *(inited + 648) = v26;
  *(inited + 624) = v30;
  strcpy((inited + 656), "encryptedTSID");
  *(inited + 670) = -4864;
  v31 = (v0 + v3[17]);
  v32 = *v31;
  v33 = v31[1];
  *(inited + 696) = &type metadata for String;
  *(inited + 672) = v32;
  *(inited + 680) = v33;
  strcpy((inited + 704), "encryptedAGUID");
  *(inited + 719) = -18;
  v34 = (v0 + v3[18]);
  v35 = *v34;
  v36 = v34[1];
  *(inited + 744) = &type metadata for String;
  *(inited + 720) = v35;
  *(inited + 728) = v36;
  strcpy((inited + 752), "shouldSendOTD");
  *(inited + 766) = -4864;
  LOBYTE(v34) = *(v0 + v3[19]);
  *(inited + 792) = &type metadata for Bool;
  *(inited + 768) = v34;
  *(inited + 800) = 0x49656C69666F7270;
  *(inited + 808) = 0xE900000000000044;
  v37 = (v0 + v3[21]);
  v38 = v37[3];
  sub_100044728(v37, v38);
  *(inited + 840) = v38;
  sub_10005351C((inited + 816));
  sub_100053F48();
  (*(v39 + 16))();

  v40 = Dictionary.init(dictionaryLiteral:)();
  v41 = (v0 + v3[20]);
  v42 = v41[1];
  if (v42)
  {
    v43 = *v41;
    v48 = &type metadata for String;
    *&v47 = v43;
    *(&v47 + 1) = v42;
    sub_1000534C8(&v47, v46);

    swift_isUniquelyReferenced_nonNull_native();
    sub_10006A978(v46, 0xD000000000000012, 0x80000001005A3400);
  }

  return v40;
}

void sub_1000788B8(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ODIBindingsDict();
  sub_10004EAE0();
  v6 = v5;
  __chkstk_darwin(v7, v8, v9);
  sub_10004EAF4();
  v12 = v11 - v10;
  v13 = [a1 workflowID];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *a2 = v14;
  *(a2 + 1) = v16;
  v17 = [a1 createdAt];
  v18 = type metadata accessor for AssessmentPayload(0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = [a1 assessment];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[6]);
  v20 = [a1 trainingData];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[7]);
  v21 = [a1 assessmentGUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[8]);
  v22 = [a1 assessmentGUIDSeeds];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[9]);
  v23 = [a1 trainingGUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[10]);
  v24 = [a1 trainingGUIDSeeds];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[11]);
  v25 = [a1 trainingSignalID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[12]);
  v26 = [a1 digestIndex];
  v27 = [v26 integerValue];

  if (v27 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v27 <= 0x7FFFFFFF)
  {
    *&a2[v18[13]] = v27;
    v28 = [a1 bindingsRecords];
    v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = sub_10007801C(v29);

    if (!v30)
    {
      sub_1000443DC(&qword_1006CAD30);
      Dictionary.init(dictionaryLiteral:)();
    }

    ODIBindingsDict.init(contents:)();
    (*(v6 + 32))(&a2[v18[14]], v12, v4);
    v31 = [a1 bindingsToCompare];
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = sub_100078F80(v32);

    v34 = &off_100691308;
    if (v33)
    {
      v34 = v33;
    }

    *&a2[v18[15]] = v34;
    v35 = [a1 refreshTTL];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 intValue];
    }

    else
    {
      v37 = 0;
    }

    *&a2[v18[16]] = v37;
    v38 = [a1 encryptedTSID];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = &a2[v18[17]];
    *v42 = v39;
    v42[1] = v41;
    v43 = [a1 encryptedAGUID];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = &a2[v18[18]];
    *v47 = v44;
    v47[1] = v46;
    a2[v18[19]] = [a1 shouldSendOTD];
    v48 = sub_100058D4C(a1, &selRef_otdDestinationHost);
    v49 = &a2[v18[20]];
    *v49 = v48;
    v49[1] = v50;
    sub_100058D4C(a1, &selRef_profileID);
    if (!v51)
    {
      sub_100058D4C(a1, &selRef_profileSetId);
      if (v52)
      {
        sub_100058D4C(a1, &selRef_orderedProfileBagId);
        if (v53)
        {
          sub_100058D4C(a1, &selRef_profileBagSetId);
          if (v54)
          {
            sub_100058D4C(a1, &selRef_assessmentConfigId);
            if (v55)
            {
              sub_100058D4C(a1, &selRef_profileSetBagName);
              if (v56)
              {
                v57 = &a2[v18[21]];
                v57[3] = type metadata accessor for ProfileSetIdentifiers();
                sub_10007B314();
                v57[4] = sub_10007AFBC(v58, v59, &protocol conformance descriptor for ProfileSetIdentifiers);
                sub_10005351C(v57);
                ProfileSetIdentifiers.init(profileSetId:profileBagSetId:orderedProfileBagId:assessmentConfigId:bagName:)();
LABEL_24:

                return;
              }
            }
          }
        }
      }
    }

    v60 = &a2[v18[21]];
    v60[3] = type metadata accessor for LegacyAugmentedProfileIdentifiers();
    sub_10007B29C();
    v60[4] = sub_10007AFBC(v61, v62, &protocol conformance descriptor for LegacyAugmentedProfileIdentifiers);
    sub_10005351C(v60);
    LegacyAugmentedProfileIdentifiers.init(profileId:)();
    goto LABEL_24;
  }

  __break(1u);
}

void *sub_100078F80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1000BDEA4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_10005346C(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000BDEA4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_100079094(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000790EC(char a1)
{
  result = 0x776F6C666B726F77;
  switch(a1)
  {
    case 1:
      result = 0x4164657461657263;
      break;
    case 2:
      result = 0x656D737365737361;
      break;
    case 3:
      result = 0x676E696E69617274;
      break;
    case 4:
      result = 0x656D737365737361;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x676E696E69617274;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6E49747365676964;
      break;
    case 10:
      result = 0x73676E69646E6962;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x5468736572666572;
      break;
    case 13:
    case 14:
      result = 0x6574707972636E65;
      break;
    case 15:
      result = 0x4F646E6553657375;
      break;
    case 16:
    case 17:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100079378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100079094(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000793A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000790EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000793DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000790E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100079410(uint64_t a1)
{
  v2 = sub_10007ACF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007944C(uint64_t a1)
{
  v2 = sub_10007ACF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100079488@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v3 = sub_1000443DC(&qword_1006CAD58);
  __chkstk_darwin(v3 - 8, v4, v5);
  sub_10004EAF4();
  v141 = v7 - v6;
  v142 = type metadata accessor for LegacyAugmentedProfileIdentifiers();
  sub_10004EAE0();
  v138 = v8;
  __chkstk_darwin(v9, v10, v11);
  sub_10004EAF4();
  v137 = v13 - v12;
  v14 = sub_1000443DC(&qword_1006CAD60);
  v17 = __chkstk_darwin(v14 - 8, v15, v16);
  v19 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20, v21);
  v23 = &v134 - v22;
  v24 = type metadata accessor for Date();
  sub_10004EAE0();
  v140 = v25;
  __chkstk_darwin(v26, v27, v28);
  sub_10004EAF4();
  v31 = v30 - v29;
  v32 = sub_1000443DC(&qword_1006CAD68);
  sub_10004EAE0();
  v144 = v33;
  __chkstk_darwin(v34, v35, v36);
  sub_10004EAF4();
  v39 = v38 - v37;
  v148 = type metadata accessor for AssessmentPayload(0);
  sub_100053F48();
  __chkstk_darwin(v40, v41, v42);
  sub_10004EAF4();
  v146 = a1;
  v147 = (v44 - v43);
  isa = a1[3];
  v46 = sub_10007B3BC();
  sub_100044728(v46, v47);
  sub_10007ACF4();
  v48 = v149;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v139 = v24;
  if (v48)
  {
    v149 = v48;
    v50 = 0;
    LODWORD(v24) = 0;
    LODWORD(v31) = 0;
    v51 = 0;
    LODWORD(v52) = 0;
    sub_10007B2CC();
    goto LABEL_4;
  }

  v135 = v19;
  v136 = v23;
  v51 = v144;
  LOBYTE(v153) = 0;
  LODWORD(v52) = v39;
  v49 = KeyedDecodingContainer.decode(_:forKey:)();
  LODWORD(isa) = v32;
  v59 = v147;
  *v147 = v49;
  v59[1] = v60;
  LOBYTE(v153) = 1;
  sub_10007B3A4();
  sub_10007AFBC(v61, v62, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v63 = v148;
  (*(v140 + 32))(v59 + v148[5], v31, v24);
  sub_10007B378(2);
  v64 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v64, v65, v63[6]);
  sub_10007B378(3);
  LODWORD(v19) = v51;
  v66 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v66, v67, v63[7]);
  sub_10007B378(4);
  v68 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v68, v69, v63[8]);
  sub_10007B378(5);
  v70 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v70, v71, v63[9]);
  sub_10007B378(6);
  v72 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v72, v73, v63[10]);
  sub_10007B378(7);
  v74 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v74, v75, v63[11]);
  sub_10007B378(8);
  v76 = KeyedDecodingContainer.decode(_:forKey:)();
  v149 = 0;
  sub_10007B3F4(v76, v77, v63[12]);
  LOBYTE(v153) = 9;
  v78 = v52;
  v79 = v149;
  v80 = KeyedDecodingContainer.decode(_:forKey:)();
  v149 = v79;
  if (!v79)
  {
    *(v147 + v148[13]) = v80;
    LOBYTE(v150) = 10;
    sub_10007AD9C();
    v81 = v149;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v149 = v81;
    if (!v81)
    {
      v86 = v153;
      v85 = DWORD2(v153);
      v87 = objc_opt_self();
      LODWORD(v19) = v86;
      LODWORD(v31) = v85;
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v153 = 0;
      v88 = [v87 JSONObjectWithData:isa options:0 error:&v153];

      v89 = v153;
      if (!v88)
      {
        v24 = v89;
        v52 = _convertNSErrorToError(_:)();

        v149 = v52;
        swift_willThrow();
        sub_10007B450();
        goto LABEL_35;
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10007A2C8(v156, v147 + v148[14]);
      LODWORD(isa) = sub_1000443DC(&qword_1006CA018);
      LOBYTE(v150) = 11;
      sub_10007ADF0(&qword_1006CA020, &qword_1006CA018, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      LODWORD(v52) = v78;
      v90 = v149;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v145 = v90 == 0;
      v149 = v90;
      if (v90)
      {
        sub_10007B450();
        sub_100044850(v156);
        v93 = sub_10007B388();
        v94(v93);
        sub_10007B474();
        sub_100044850(v146);
        sub_10007B2E4();
        sub_10007B3D4();
        LODWORD(v144) = v95;
        v56 = 1;
        v53 = v147;
        v54 = v148;
LABEL_6:

        if (v24)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      *(v147 + v148[15]) = v153;
      sub_10007B2FC(12);
      v91 = KeyedDecodingContainer.decode(_:forKey:)();
      v149 = 0;
      *(v147 + v148[16]) = v91;
      sub_10007B2FC(13);
      v92 = KeyedDecodingContainer.decode(_:forKey:)();
      v149 = 0;
      v96 = (v147 + v148[17]);
      *v96 = v92;
      v96[1] = v97;
      sub_10007B2FC(14);
      v98 = KeyedDecodingContainer.decode(_:forKey:)();
      v149 = 0;
      v99 = (v147 + v148[18]);
      *v99 = v98;
      v99[1] = v100;
      sub_10007B2FC(15);
      v101 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v149 = 0;
      *(v147 + v148[19]) = (v101 == 2) | v101 & 1;
      sub_10007B2FC(16);
      v102 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v149 = 0;
      v104 = (v147 + v148[20]);
      *v104 = v102;
      v104[1] = v103;
      v105 = type metadata accessor for ProfileSetIdentifiers();
      LOBYTE(v153) = 17;
      sub_10007B314();
      sub_10007AFBC(v106, v107, &protocol conformance descriptor for ProfileSetIdentifiers);
      v108 = v149;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v109 = v108;
      if (v108)
      {

        v110 = sub_10007B468();
        sub_1000485F8(v110, 1, 1, v105);
        v109 = 0;
      }

      v111 = sub_10007B468();
      v112 = v135;
      sub_10007AE50(v111, v135);
      if (sub_100046EA4(v112, 1, v105) != 1)
      {
        v154 = v105;
        sub_10007B314();
        v155 = sub_10007AFBC(v115, v116, &protocol conformance descriptor for ProfileSetIdentifiers);
        sub_10005351C(&v153);
        sub_100053F48();
        (*(v117 + 32))();
        sub_10007B450();
        v118 = sub_10007B468();
        sub_100053BE8(v118, v119);
        sub_100044850(v156);
        v120 = sub_10007B388();
        v121(v120);
LABEL_50:
        v128 = v147;
        sub_100046D90(&v153, v147 + v148[21]);
        sub_10007AEB8(v128, v143);
        sub_100044850(v146);
        return sub_10007AF1C(v128);
      }

      sub_100053BE8(v135, &qword_1006CAD60);
      LOBYTE(v153) = 17;
      sub_10007B29C();
      sub_10007AFBC(v113, v114, &protocol conformance descriptor for LegacyAugmentedProfileIdentifiers);
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if (v109)
      {

        sub_1000485F8(v141, 1, 1, v142);
      }

      else if (sub_100046EA4(v141, 1, v142) != 1)
      {
        v129 = *(v138 + 32);
        v130 = v142;
        v129(v137, v141, v142);
        v151 = v130;
        sub_10007B29C();
        v152 = sub_10007AFBC(v131, v132, &protocol conformance descriptor for LegacyAugmentedProfileIdentifiers);
        v133 = sub_10005351C(&v150);
        v129(v133, v137, v130);
        goto LABEL_49;
      }

      sub_100053BE8(v141, &qword_1006CAD58);
      v151 = v142;
      sub_10007B29C();
      v152 = sub_10007AFBC(v122, v123, &protocol conformance descriptor for LegacyAugmentedProfileIdentifiers);
      sub_10005351C(&v150);
      LegacyAugmentedProfileIdentifiers.init(profileId:)();
LABEL_49:
      sub_10007B450();
      v124 = sub_10007B468();
      sub_100053BE8(v124, v125);
      sub_100044850(v156);
      v126 = sub_10007B388();
      v127(v126);
      sub_100046D90(&v150, &v153);
      goto LABEL_50;
    }
  }

LABEL_35:
  v82 = sub_10007B388();
  v83(v82);
  v50 = 1;
  sub_10007B2E4();
  sub_10007B3D4();
  LODWORD(v144) = v84;
LABEL_4:
  v53 = v147;
  v54 = v148;
  result = sub_100044850(v146);
  if (v50)
  {
    v56 = 0;
    v145 = 0;
    sub_10007B474();
    goto LABEL_6;
  }

  LODWORD(v143) = 0;
  LODWORD(v142) = 0;
  v145 = 0;
  v56 = 0;
  if (v24)
  {
LABEL_7:
    result = (*(v140 + 8))(v53 + v54[5], v139);
    if ((v31 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v31)
  {
LABEL_8:
    if (v51)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = sub_10007B410();
  if (v51)
  {
LABEL_9:
    result = sub_10007B410();
    if ((v52 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (!v52)
  {
LABEL_10:
    if (isa)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = sub_10007B410();
  if (isa)
  {
LABEL_11:
    result = sub_10007B410();
    if ((v19 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v19)
  {
LABEL_12:
    if (v141)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_10007B410();
  if (v141)
  {
LABEL_13:
    result = sub_10007B410();
    if ((v144 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v144)
  {
LABEL_14:
    if (v56)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_10007B410();
  if (v56)
  {
LABEL_15:
    v57 = v54[14];
    type metadata accessor for ODIBindingsDict();
    sub_100053F48();
    result = (*(v58 + 8))(v53 + v57);
    if (!v145)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v145)
  {
LABEL_16:
    if (v142)
    {
      goto LABEL_17;
    }

LABEL_30:
    if (!v143)
    {
      return result;
    }

    return sub_10007B410();
  }

LABEL_29:

  if ((v142 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  result = sub_10007B410();
  if ((v143 & 1) == 0)
  {
    return result;
  }

  return sub_10007B410();
}

uint64_t sub_10007A2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ODIBindingsDict();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005346C(a1, &v40);
  sub_1000443DC(&qword_1006CA3C0);
  if (!swift_dynamicCast())
  {
    return ODIBindingsDict.init(dictionaryLiteral:)();
  }

  v27 = v5;
  v28 = v4;
  v29 = a2;
  v10 = v37;
  result = ODIBindingsDict.init(dictionaryLiteral:)();
  v12 = 0;
  v14 = v10 + 64;
  v13 = *(v10 + 64);
  v30 = v10;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v12;
LABEL_11:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = v20 | (v19 << 6);
    v22 = (*(v30 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    sub_10005346C(*(v30 + 56) + 32 * v21, &v33);
    *&v37 = v24;
    *(&v37 + 1) = v23;
    sub_1000534C8(&v33, &v38);

LABEL_12:
    v40 = v37;
    v41[0] = v38;
    v41[1] = v39;
    if (!*(&v37 + 1))
    {

      return (*(v27 + 32))(v29, v9, v28);
    }

    sub_1000534C8(v41, v36);
    sub_10005346C(v36, v32);
    v25 = sub_10007AF78();
    if (swift_dynamicCast())
    {
      v26 = v31;
      *(&v34 + 1) = v25;
      v35 = sub_10007AFBC(&qword_1006CADA0, sub_10007AF78, &protocol conformance descriptor for NSObject);
      *&v33 = v26;
    }

    else if (swift_dynamicCast())
    {
      *(&v34 + 1) = &type metadata for String;
      v35 = &protocol witness table for String;
      v33 = v31;
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v35 = 0;
    }

    sub_100044850(v32);
    if (*(&v34 + 1))
    {
      sub_100046D90(&v33, &v37);
      sub_1000446C4(&v37, &v33);
      ODIBindingsDict.subscript.setter();
      sub_100044850(&v37);
      result = sub_100044850(v36);
    }

    else
    {
      sub_100044850(v36);

      result = sub_100053BE8(&v33, &qword_1006CAD98);
    }
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v18)
    {
      v17 = 0;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      goto LABEL_12;
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007A6AC(void *a1)
{
  v3 = v1;
  sub_1000443DC(&qword_1006CAD28);
  sub_10004EAE0();
  v29 = v6;
  v30 = v5;
  __chkstk_darwin(v5, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = objc_opt_self();
  v13 = type metadata accessor for AssessmentPayload(0);
  ODIBindingsDict.contents.getter();
  sub_1000443DC(&qword_1006CAD30);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = 0;
  v15 = [v12 dataWithJSONObject:isa options:0 error:&v31];

  v16 = v31;
  if (v15)
  {
    v28 = v13;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    sub_100044728(a1, a1[3]);
    sub_10007ACF4();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    LOBYTE(v31) = 0;
    sub_10007B398();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      (*(v29 + 8))(v11, v30);
      v20 = v17;
    }

    else
    {
      v23 = v17;
      LOBYTE(v31) = 1;
      type metadata accessor for Date();
      sub_10007B3A4();
      sub_10007AFBC(v24, v25, &protocol conformance descriptor for Date);
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10007B3C8(v28[6]);
      LOBYTE(v31) = 2;
      sub_10007B398();
      KeyedEncodingContainer.encode(_:forKey:)();
      sub_10007B3C8(v28[7]);
      sub_10007B32C(3);
      sub_10007B3C8(v28[8]);
      sub_10007B32C(4);
      sub_10007B3C8(v28[9]);
      sub_10007B32C(5);
      sub_10007B3C8(v28[10]);
      sub_10007B32C(6);
      sub_10007B3C8(v28[11]);
      sub_10007B32C(7);
      sub_10007B3C8(v28[12]);
      sub_10007B32C(8);
      LOBYTE(v31) = 9;
      sub_10007B398();
      KeyedEncodingContainer.encode(_:forKey:)();
      v31 = v17;
      v32 = v19;
      sub_10007AD48();
      sub_10007B400();
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v31 = *(v3 + v28[15]);

      sub_1000443DC(&qword_1006CA018);
      sub_10007ADF0(&qword_1006CA030, &qword_1006CA018, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      sub_10007B400();
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      LOBYTE(v31) = 12;
      sub_10007B398();
      KeyedEncodingContainer.encode(_:forKey:)();
      sub_10007B3C8(v28[17]);
      sub_10007B32C(13);
      sub_10007B3C8(v28[18]);
      sub_10007B32C(14);
      LOBYTE(v31) = 15;
      sub_10007B398();
      KeyedEncodingContainer.encode(_:forKey:)();
      v26 = v3 + v28[20];
      v27 = *(v26 + 8);
      v31 = *v26;
      v32 = v27;

      sub_1000443DC(&qword_1006CAD48);
      sub_10007ADF0(&qword_1006CAD50, &qword_1006CAD48, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
      sub_10007B400();
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      sub_100044728((v3 + v28[21]), *(v3 + v28[21] + 24));
      LOBYTE(v31) = 17;
      sub_10007B398();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v29 + 8))(v11, v30);
      v20 = v23;
    }

    return sub_1000448B0(v20, v19);
  }

  else
  {
    v21 = v16;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

unint64_t sub_10007ACF4()
{
  result = qword_1006CAD38;
  if (!qword_1006CAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAD38);
  }

  return result;
}

unint64_t sub_10007AD48()
{
  result = qword_1006CAD40;
  if (!qword_1006CAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAD40);
  }

  return result;
}

unint64_t sub_10007AD9C()
{
  result = qword_1006CAD70;
  if (!qword_1006CAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAD70);
  }

  return result;
}

uint64_t sub_10007ADF0(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007AE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CAD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AF1C(uint64_t a1)
{
  v2 = type metadata accessor for AssessmentPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007AF78()
{
  result = qword_1006CA338;
  if (!qword_1006CA338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CA338);
  }

  return result;
}

uint64_t sub_10007AFBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AssessmentPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssessmentPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10007B158);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10007B194()
{
  result = qword_1006CADB8;
  if (!qword_1006CADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CADB8);
  }

  return result;
}

unint64_t sub_10007B1EC()
{
  result = qword_1006CADC0;
  if (!qword_1006CADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CADC0);
  }

  return result;
}

unint64_t sub_10007B244()
{
  result = qword_1006CADC8;
  if (!qword_1006CADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CADC8);
  }

  return result;
}

uint64_t sub_10007B32C@<X0>(char a2@<W8>)
{
  *(v2 - 104) = a2;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

void sub_10007B3E8(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_10007B3F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_10007B410()
{
}

void sub_10007B438()
{
}

uint64_t sub_10007B450()
{

  return sub_1000448B0(v0, v1);
}

uint64_t sub_10007B4A8()
{
  v1 = *(v0 + 48);
  v2 = v1[5];
  v3 = v1[6];
  sub_100044728(v1 + 2, v2);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  sub_100077560(v4);

  return dispatch thunk of ODIAccountManagerProtocol.primaryAppleAccount()(v2, v3);
}

uint64_t sub_10007B55C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    v5 = sub_10007B7C4;
  }

  else
  {
    v5 = sub_10007B660;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007B660(uint64_t a1)
{
  v2 = *(v1 + 64);
  if (v2)
  {
    sub_100058D4C(*(v1 + 64), &selRef_aa_personID);
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = sub_100077680(v6);
    if (v4)
    {
      if (v7)
      {
        v8 = sub_1000541D8();
        *v8 = 0;
        sub_10007CB34(&_mh_execute_header, v9, v10, "returning iCloud dsid");
        sub_1000488AC(v8);
      }
    }

    else if (v7)
    {
      v14 = sub_1000541D8();
      sub_100077908(v14);
      sub_10007CAF0(&_mh_execute_header, v15, v6, "unable to get person ID");
      sub_100053E64();
    }
  }

  else
  {
    v5 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (sub_100077680(v11))
    {
      v12 = sub_1000541D8();
      sub_100077908(v12);
      sub_10007CAF0(&_mh_execute_header, v13, v11, "user is not logged into iTunes");
      sub_100053E64();
    }
  }

  v16 = sub_10007CB20();

  return v17(v16);
}

uint64_t sub_10007B7C4()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v3 = 136315138;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v5 = sub_100052F7C(v4);

    *(v3 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error getting DSID %s", v3, 0xCu);
    sub_100044850(v8);
    sub_1000488AC(v8);
    sub_1000488AC(v3);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6(0, 0);
}

uint64_t sub_10007B95C()
{
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  sub_100044728(v1 + 2, v2);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v0[3] = v5;
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  sub_100077560(v7);

  return dispatch thunk of ODIAccountManagerProtocol.getAccount(with:)(v4, v6, v2, v3);
}

uint64_t sub_10007BA3C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 40) = v5;

  v7 = sub_100065864();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10007BB3C(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    sub_100058D4C(*(v1 + 40), &selRef_normalizedDSID);
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = sub_100077680(v6);
    if (v4)
    {
      if (v7)
      {
        v8 = sub_1000541D8();
        *v8 = 0;
        sub_10007CB34(&_mh_execute_header, v9, v10, "returning iTunes dsid");
        sub_1000488AC(v8);
      }
    }

    else if (v7)
    {
      v14 = sub_1000541D8();
      sub_100077908(v14);
      sub_10007CAF0(&_mh_execute_header, v15, v6, "unable to get person ID");
      sub_100053E64();
    }
  }

  else
  {
    v5 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (sub_100077680(v11))
    {
      v12 = sub_1000541D8();
      sub_100077908(v12);
      sub_10007CAF0(&_mh_execute_header, v13, v11, "user is not logged into iTunes");
      sub_100053E64();
    }
  }

  v16 = sub_10007CB20();

  return v17(v16);
}

uint64_t sub_10007BCA0()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100077560(v1);

  return sub_10007B494();
}

uint64_t sub_10007BD24()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 24) = v5;

  v7 = sub_100065864();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10007BE04()
{
  sub_1000657D4();
  v1 = *(v0 + 24);
  if (v1)
  {
  }

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}