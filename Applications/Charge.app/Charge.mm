id sub_1000018D4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ChargeAppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ChargeAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

__n128 sub_1000019C4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000019D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000019F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_100001A30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001A3C(uint64_t a1, int a2)
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

uint64_t sub_100001A5C(uint64_t result, int a2, int a3)
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

uint64_t sub_100001AA0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001B18(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001B98@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100001BDC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100001C18(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001C6C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100001CE0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001D0C(void *a1, uint64_t *a2)
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

uint64_t sub_100001D94@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100001DDC(uint64_t a1)
{
  v2 = sub_100001F3C(&qword_1000260B0, &unk_100019620);
  v3 = sub_100001F3C(&qword_1000260B8, &unk_100019574);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_100001E88(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100001F3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001FB8(uint64_t a1, int a2)
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

uint64_t sub_100002000(uint64_t result, int a2, int a3)
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

__n128 sub_100002068@<Q0>(uint64_t a1@<X1>, __n128 *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC6Charge11ChargeModel__carObservable;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = dispatch thunk of CAFCarObservable.highVoltageBattery.getter();

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v5 batteryLevel];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v3 + 8);
  v8 = dispatch thunk of CAFCarObservable.charging.getter();

  v9 = [v8 targetChargingLevel];
  if (!v9)
  {
    v9 = v6;
LABEL_8:

LABEL_9:
    type metadata accessor for LayoutConfiguration(0);
    sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    v36 = 1;
    v31.n128_u64[0] = EnvironmentObject.init()();
    v31.n128_u64[1] = v22;
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v35 = 1;
    sub_1000025C0();
    sub_100002614();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_10;
  }

  v10 = *(v3 + 8);
  v11 = dispatch thunk of CAFCarObservable.charging.getter();

  v12 = [v11 chargingTime];
  if (!v12)
  {

    goto LABEL_8;
  }

  sub_100005F24(0, &qword_100026138, CAFBatteryLevel_ptr);
  sub_100002668(&qword_100026140, &qword_100026138, CAFBatteryLevel_ptr, &protocol conformance descriptor for CAFBatteryLevel);
  CAFObserved<>.observable.getter();
  sub_100005F24(0, &qword_100026148, CAFTargetChargingLevel_ptr);
  sub_100002668(&qword_100026150, &qword_100026148, CAFTargetChargingLevel_ptr, &protocol conformance descriptor for CAFTargetChargingLevel);
  CAFObserved<>.observable.getter();
  sub_100005F24(0, &qword_100026158, CAFChargingTime_ptr);
  v26 = v9;
  sub_100002668(&qword_100026160, &qword_100026158, CAFChargingTime_ptr, &protocol conformance descriptor for CAFChargingTime);
  CAFObserved<>.observable.getter();
  type metadata accessor for LayoutConfiguration(0);
  sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
  v25 = EnvironmentObject.init()();
  v14 = v13;
  type metadata accessor for CAFBatteryLevelObservable();
  sub_1000026AC(&qword_100026168, &type metadata accessor for CAFBatteryLevelObservable, &protocol conformance descriptor for CAFBatteryLevelObservable);
  v15 = ObservedObject.init(wrappedValue:)();
  v17 = v16;
  type metadata accessor for CAFTargetChargingLevelObservable();
  sub_1000026AC(&qword_100026170, &type metadata accessor for CAFTargetChargingLevelObservable, &protocol conformance descriptor for CAFTargetChargingLevelObservable);
  v18 = ObservedObject.init(wrappedValue:)();
  v20 = v19;
  type metadata accessor for CAFChargingTimeObservable();
  sub_1000026AC(&qword_100026178, &type metadata accessor for CAFChargingTimeObservable, &protocol conformance descriptor for CAFChargingTimeObservable);
  v27.n128_u64[0] = v15;
  v27.n128_u64[1] = v17;
  v28.n128_u64[0] = v18;
  v28.n128_u64[1] = v20;
  v29.n128_u64[0] = ObservedObject.init(wrappedValue:)();
  v29.n128_u64[1] = v21;
  v30.n128_u64[0] = v25;
  v30.n128_u64[1] = v14;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v36 = 0;
  v41 = 0;
  sub_1000026F4(&v27, &v31);
  sub_1000026F4(&v27, &v31);
  sub_1000025C0();
  sub_100002614();
  _ConditionalContent<>.init(storage:)();

  sub_10000272C(&v27);
  sub_10000272C(&v27);
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v37 = v31;
  v38 = v32;
LABEL_10:
  v23 = v40;
  a2[2] = v39;
  a2[3] = v23;
  a2[4].n128_u8[0] = v41;
  result = v38;
  *a2 = v37;
  a2[1] = result;
  return result;
}

unint64_t sub_1000025C0()
{
  result = qword_100026128;
  if (!qword_100026128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026128);
  }

  return result;
}

unint64_t sub_100002614()
{
  result = qword_100026130;
  if (!qword_100026130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026130);
  }

  return result;
}

uint64_t sub_100002668(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005F24(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000026AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10000275C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100002770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000027B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000281C()
{
  result = qword_100026180;
  if (!qword_100026180)
  {
    sub_1000028A8(&qword_100026188, &qword_100019760);
    sub_1000025C0();
    sub_100002614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026180);
  }

  return result;
}

uint64_t sub_1000028A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000290C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v83 = a2;
  v3 = sub_100005790(&qword_100026198, &qword_1000197C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v79 - v4;
  v6 = sub_100005790(&qword_1000261A0, &qword_1000197C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v79 - v8;
  v10 = sub_100005790(&qword_1000261A8, &qword_1000197D0);
  v11 = *(v10 - 8);
  v81 = v10;
  v82 = v11;
  __chkstk_darwin(v10);
  v13 = &v79 - v12;
  v80 = sub_100005790(&qword_1000261B0, &qword_1000197D8) - 8;
  __chkstk_darwin(v80);
  v84 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v79 - v16);
  v85 = a1;
  sub_100005790(&qword_1000261B8, &qword_1000197E0);
  sub_1000057E0();
  Chart.init(content:)();
  *(&v114[7] + 8) = xmmword_100019670;
  v18 = type metadata accessor for ScaleType();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = sub_100005790(&qword_1000261D8, &qword_1000197F8);
  v20 = sub_100006174(&qword_1000261E0, &qword_1000261A0, &qword_1000197C8, &protocol conformance descriptor for Chart<A>);
  v21 = sub_10000597C();
  View.chartYScale<A>(domain:type:)();
  sub_100005EC4(v5, &qword_100026198, &qword_1000197C0);
  (*(v7 + 8))(v9, v6);
  sub_100005790(&qword_1000261F0, &qword_100019800);
  v91 = v6;
  v92 = v19;
  v93 = v20;
  v94 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100006174(&qword_1000261F8, &qword_1000261F0, &qword_100019800, &protocol conformance descriptor for AxisMarks<A>);
  v22 = v81;
  View.chartYAxis<A>(content:)();
  v82[1](v13, v22);
  LOBYTE(v9) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v23 = *(v80 + 44);
  v82 = v17;
  v24 = v17 + v23;
  *v24 = v9;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = v79;
  v30 = sub_10000318C();
  v31 = [v30 string];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v91 = v32;
  v92 = v34;
  sub_1000059F8();
  v35 = Text.init<A>(_:)();
  v38 = *(v29 + 48);
  if (v38)
  {
    v39 = v35;
    v40 = v36;
    v41 = v37;
    v42 = *(v38 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    if (v42)
    {
      if (v42 == 1)
      {
        v43 = sub_100006344();
        v44 = type metadata accessor for ClusterMetrics();
        v45 = v44;
        v46 = &off_100021580;
      }

      else
      {
        v43 = sub_100006378();
        v44 = type metadata accessor for WidgetMetrics();
        v45 = v44;
        v46 = &off_100021520;
      }
    }

    else
    {
      v43 = sub_100006310();
      v44 = type metadata accessor for ConsoleMetrics();
      v45 = v44;
      v46 = &off_1000215E0;
    }

    v109[3] = v44;
    v109[4] = v46;

    v109[0] = v43;
    sub_100005A4C(v109, v45);
    (v46[3])();
    v47 = Text.font(_:)();
    v49 = v48;
    v51 = v50;
    v81 = v52;
    sub_100005A90(v39, v40, v41 & 1);

    sub_100005AA0(v109);
    v53 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v113 = v51 & 1;
    v62 = v51 & 1;
    LODWORD(v80) = v51 & 1;
    v110 = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v114[3] + 7) = *(&v114[11] + 8);
    *(&v114[4] + 7) = *(&v114[12] + 8);
    *(&v114[5] + 7) = *(&v114[13] + 8);
    *(&v114[6] + 7) = *(&v114[14] + 8);
    *(v114 + 7) = *(&v114[8] + 8);
    *(&v114[1] + 7) = *(&v114[9] + 8);
    *(&v114[2] + 7) = *(&v114[10] + 8);
    v63 = v82;
    v64 = v84;
    sub_100005AEC(v82, v84);
    v65 = v83;
    sub_100005AEC(v64, v83);
    v66 = (v65 + *(sub_100005790(&qword_100026208, &qword_100019808) + 48));
    *&v86 = v47;
    *(&v86 + 1) = v49;
    v67 = v49;
    LOBYTE(v87) = v62;
    *(&v87 + 1) = *v112;
    DWORD1(v87) = *&v112[3];
    v68 = v81;
    *(&v87 + 1) = v81;
    LOBYTE(v88) = v53;
    *(&v88 + 1) = *v111;
    DWORD1(v88) = *&v111[3];
    *(&v88 + 1) = v55;
    *&v89 = v57;
    *(&v89 + 1) = v59;
    *&v90[0] = v61;
    BYTE8(v90[0]) = 0;
    *(v90 + 9) = v114[0];
    *(&v90[3] + 9) = v114[3];
    *(&v90[2] + 9) = v114[2];
    *(&v90[1] + 9) = v114[1];
    *(&v90[7] + 1) = *(&v114[6] + 15);
    *(&v90[6] + 9) = v114[6];
    *(&v90[5] + 9) = v114[5];
    *(&v90[4] + 9) = v114[4];
    v69 = v86;
    v70 = v87;
    v71 = v89;
    v66[2] = v88;
    v66[3] = v71;
    *v66 = v69;
    v66[1] = v70;
    v72 = v90[0];
    v73 = v90[1];
    v74 = v90[3];
    v66[6] = v90[2];
    v66[7] = v74;
    v66[4] = v72;
    v66[5] = v73;
    v75 = v90[4];
    v76 = v90[5];
    v77 = v90[7];
    v66[10] = v90[6];
    v66[11] = v77;
    v66[8] = v75;
    v66[9] = v76;
    sub_100005B5C(&v86, &v91);
    sub_100005BCC(v63);
    v91 = v47;
    v92 = v67;
    LOBYTE(v93) = v80;
    *(&v93 + 1) = *v112;
    HIDWORD(v93) = *&v112[3];
    v94 = v68;
    v95 = v53;
    *v96 = *v111;
    *&v96[3] = *&v111[3];
    v97 = v55;
    v98 = v57;
    v99 = v59;
    v100 = v61;
    v101 = 0;
    v106 = v114[4];
    v107 = v114[5];
    *v108 = v114[6];
    *&v108[15] = *(&v114[6] + 15);
    v102 = v114[0];
    v103 = v114[1];
    v104 = v114[2];
    v105 = v114[3];
    sub_100005EC4(&v91, &qword_100026210, &qword_100019810);
    return sub_100005BCC(v64);
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_10000318C()
{
  v1 = sub_100005790(&unk_100027330, &qword_100019818);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v63 - v3;
  v72 = sub_100005790(&qword_100026218, &qword_100019D30);
  v5 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = (&v63 - v6);
  v7 = [objc_allocWithZone(NSMutableAttributedString) init];
  sub_100005790(&qword_100026220, &qword_100019820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100019680;
  v9 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v10 = inited + 32;
  v70 = v0;
  v11 = *(v0 + 48);
  if (v11)
  {
    v12 = inited;
    v13 = *(v11 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v14 = NSFontAttributeName;

    v67 = v1;
    v68 = v5;
    v65 = v4;
    v66 = v2;
    if (v13)
    {
      if (v13 == 1)
      {
        v15 = sub_100006344();
        v16 = type metadata accessor for ClusterMetrics();
        v17 = v16;
        v18 = &off_100021580;
      }

      else
      {
        v15 = sub_100006378();
        v16 = type metadata accessor for WidgetMetrics();
        v17 = v16;
        v18 = &off_100021520;
      }
    }

    else
    {
      v15 = sub_100006310();
      v16 = type metadata accessor for ConsoleMetrics();
      v17 = v16;
      v18 = &off_1000215E0;
    }

    v73[3] = v16;
    v73[4] = v18;

    v73[0] = v15;
    sub_100005A4C(v73, v17);
    *(v12 + 40) = (v18[3])();
    sub_100005AA0(v73);
    v19 = sub_100005DCC(v12);
    swift_setDeallocating();
    sub_100005EC4(v10, &qword_100026228, &qword_100019828);
    v9 = v71;
    dispatch thunk of CAFChargingTimeObservable.remainingTime.getter();
    v69 = objc_opt_self();
    v20 = [v69 mainBundle];
    v74._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x4D45525F454D4954;
    v21._object = 0xEE00474E494E4941;
    v22.value._countAndFlagsBits = 0x656772616843;
    v22.value._object = 0xE600000000000000;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v74._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v74);

    String.init(format:_:)();

    sub_100005480(v19);
    v24 = objc_allocWithZone(NSAttributedString);
    v25 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    v27 = v26;
    sub_1000026AC(&qword_1000260B0, type metadata accessor for Key, &unk_100019620);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = [v24 initWithString:v25 attributes:isa];

    [v7 appendAttributedString:v29];
    v30 = objc_allocWithZone(NSAttributedString);
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 initWithString:v31];

    [v7 appendAttributedString:v32];
    v33 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v33 setUnitsStyle:1];
    Measurement.value.getter();
    v64 = v33;
    v34 = [v33 stringFromTimeInterval:?];
    if (v34)
    {
      v35 = v34;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100005480(v19);
      v36 = objc_allocWithZone(NSAttributedString);
      v37 = String._bridgeToObjectiveC()();

      v38 = Dictionary._bridgeToObjectiveC()().super.isa;

      v39 = [v36 initWithString:v37 attributes:v38];

      [v7 appendAttributedString:v39];
      v40 = objc_allocWithZone(NSAttributedString);
      v41 = String._bridgeToObjectiveC()();
      v42 = [v40 initWithString:v41];

      [v7 appendAttributedString:v42];
      v43 = [v69 mainBundle];
      v75._object = 0xE000000000000000;
      v44._countAndFlagsBits = 0x5F59524554544142;
      v44._object = 0xED00004C4556454CLL;
      v45.value._countAndFlagsBits = 0x656772616843;
      v45.value._object = 0xE600000000000000;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v75._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v75);

      String.init(format:_:)();

      sub_100005480(v19);
      v9 = objc_allocWithZone(NSAttributedString);
      v47 = String._bridgeToObjectiveC()();

      v69 = v27;
      v48 = Dictionary._bridgeToObjectiveC()().super.isa;

      v49 = [(NSString *)v9 initWithString:v47 attributes:v48];

      [v7 appendAttributedString:v49];
      v50 = objc_allocWithZone(NSAttributedString);
      v51 = String._bridgeToObjectiveC()();
      v52 = [v50 initWithString:v51];

      [v7 appendAttributedString:v52];
      v53 = [objc_allocWithZone(NSMeasurementFormatter) init];
      v54 = [v53 numberFormatter];
      if (v54)
      {
        v55 = v54;
        [v54 setMaximumFractionDigits:1];

        [v53 setUnitOptions:1];
        v56 = v65;
        dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
        sub_100005F24(0, &qword_100026230, CAFUnitPercent_ptr);
        NSMeasurementFormatter.string<A>(from:)();

        (*(v66 + 8))(v56, v67);
        sub_100005480(v19);

        v57 = objc_allocWithZone(NSAttributedString);
        v58 = String._bridgeToObjectiveC()();

        v59 = Dictionary._bridgeToObjectiveC()().super.isa;

        v60 = [v57 initWithString:v58 attributes:v59];

        [v7 appendAttributedString:v60];
        (*(v68 + 8))(v71, v72);
        return v7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  type metadata accessor for LayoutConfiguration(0);
  sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
  v62 = v9;
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100003AEC@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v87 = sub_100005790(&qword_100026278, &qword_100019860);
  __chkstk_darwin(v87);
  v86 = &v65 - v3;
  v85 = type metadata accessor for AnnotationPosition();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for RuleMark();
  v71 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100005790(&qword_1000261D0, &qword_1000197F0);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v65 - v6;
  v79 = sub_100005790(&qword_1000261C8, &qword_1000197E8);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v65 - v7;
  v82 = sub_100005790(&qword_100026280, &qword_100019868);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v92 = &v65 - v10;
  v11 = sub_100005790(&unk_100027330, &qword_100019818);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  v18 = sub_100005790(&qword_100026288, &qword_100019870);
  __chkstk_darwin(v18 - 8);
  v67 = type metadata accessor for BarMark();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100005790(&qword_100026290, &qword_100019878);
  v70 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v94 = &v65 - v23;
  v24 = [objc_opt_self() mainBundle];
  v100._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0x5F59524554544142;
  v25._object = 0xED00004C4556454CLL;
  v26.value._countAndFlagsBits = 0x656772616843;
  v26.value._object = 0xE600000000000000;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v100._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v100);

  v28 = String.init(format:_:)();
  v30 = v29;

  v99[0] = v28;
  v99[1] = v30;
  v93 = a1;
  dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
  Measurement.value.getter();
  v32 = v31;
  v33 = *(v12 + 8);
  v91 = v17;
  v33(v17, v11);
  v95 = v32;
  sub_1000059F8();
  static PlottableValue.value<A>(_:_:)();

  BarMark.init<A>(xStart:xEnd:y:height:stacking:)();
  dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
  Measurement.value.getter();
  v35 = v34;
  v77 = v12 + 8;
  v68 = v33;
  v33(v14, v11);
  if (v35 < 0.0 || v35 >= 25.0)
  {
    if (v35 < 25.0 || v35 >= 75.0)
    {
      v36 = static Color.green.getter();
    }

    else
    {
      v36 = static Color.yellow.getter();
    }
  }

  else
  {
    v36 = static Color.red.getter();
  }

  v99[0] = v36;
  v37 = v67;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v66 + 8))(v20, v37);
  dispatch thunk of CAFTargetChargingLevelObservable.chargingLevel.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v65 = v11;
  Measurement.value.getter();
  v99[0] = v38;
  static PlottableValue.value(_:_:)();

  v39 = v69;
  RuleMark.init<A>(xStart:xEnd:y:)();
  v99[0] = sub_100004760();
  v40 = v72;
  v41 = v74;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v71 + 8))(v39, v41);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v95 = v41;
  v96 = &type metadata for Color;
  v97 = &protocol witness table for RuleMark;
  v98 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v76;
  v44 = v75;
  ChartContent.lineStyle(_:)();
  sub_100006080(v99);
  (*(v73 + 8))(v40, v44);
  v45 = v83;
  static AnnotationPosition.top.getter();
  v46 = static Alignment.center.getter();
  __chkstk_darwin(v46);
  v95 = v44;
  v96 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v47 = v92;
  v48 = v79;
  ChartContent.annotation<A>(position:alignment:spacing:content:)();
  (*(v84 + 8))(v45, v85);
  (*(v78 + 8))(v43, v48);
  v49 = v70;
  v93 = *(v70 + 16);
  v51 = v89;
  v50 = v90;
  v93(v89, v94, v90);
  v52 = v81;
  v53 = *(v81 + 16);
  v54 = v80;
  v55 = v47;
  v56 = v82;
  v53(v80, v55, v82);
  v57 = v86;
  v93(v86, v51, v50);
  v58 = v87;
  v59 = *(v87 + 48);
  v53(&v57[v59], v54, v56);
  v60 = v88;
  v61 = v90;
  (*(v49 + 32))(v88, v57, v90);
  (*(v52 + 32))(v60 + *(v58 + 48), &v57[v59], v56);
  v62 = *(v52 + 8);
  v62(v92, v56);
  v68(v91, v65);
  v63 = *(v49 + 8);
  v63(v94, v61);
  v62(v54, v56);
  return (v63)(v89, v61);
}

uint64_t sub_100004760()
{
  v0 = sub_100005790(&unk_100027330, &qword_100019818);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  dispatch thunk of CAFTargetChargingLevelObservable.chargingLevel.getter();
  Measurement.value.getter();
  v8 = v7 + 10.0;
  dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
  Measurement.value.getter();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v3, v0);
  if (v10 >= v8)
  {
    v13 = [objc_opt_self() systemBackgroundColor];
    v12 = Color.init(_:)();
  }

  else
  {
    v12 = static Color.primary.getter();
  }

  v14 = v12;
  v11(v6, v0);
  return v14;
}

uint64_t sub_1000048E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005790(&unk_100027330, &qword_100019818);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v50 - v6 + 8;
  sub_100005790(&qword_100026298, &qword_100019880);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100019680;
  v9 = [objc_allocWithZone(NSMeasurementFormatter) init];
  v10 = [v9 numberFormatter];
  if (!v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  [v10 setMaximumFractionDigits:1];

  [v9 setUnitOptions:1];
  dispatch thunk of CAFTargetChargingLevelObservable.chargingLevel.getter();
  sub_100005F24(0, &qword_100026230, CAFUnitPercent_ptr);
  v12 = NSMeasurementFormatter.string<A>(from:)();
  v49 = a1;
  v13 = v12;
  v15 = v14;

  (*(v5 + 8))(v7, v4);
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000060DC();
  *(v8 + 32) = v13;
  *(v8 + 40) = v15;
  v16 = v49;
  v17 = [objc_opt_self() mainBundle];
  v51._object = 0x80000001000173D0;
  v18._countAndFlagsBits = 0x4C5F454752414843;
  v18._object = 0xEF40255F54494D49;
  v19.value._countAndFlagsBits = 0x656772616843;
  v19.value._object = 0xE600000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0xD000000000000046;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v51);

  v21 = String.init(format:_:)();
  v23 = v22;

  v50[0] = v21;
  v50[1] = v23;
  sub_1000059F8();
  v24 = Text.init<A>(_:)();
  v27 = *(v16 + 48);
  if (!v27)
  {
LABEL_10:
    type metadata accessor for LayoutConfiguration(0);
    sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = *(v27 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

  if (v31)
  {
    if (v31 == 1)
    {
      v32 = sub_100006344();
      v33 = type metadata accessor for ClusterMetrics();
      v34 = v33;
      v35 = &off_100021580;
    }

    else
    {
      v32 = sub_100006378();
      v33 = type metadata accessor for WidgetMetrics();
      v34 = v33;
      v35 = &off_100021520;
    }
  }

  else
  {
    v32 = sub_100006310();
    v33 = type metadata accessor for ConsoleMetrics();
    v34 = v33;
    v35 = &off_1000215E0;
  }

  v50[3] = v33;
  v50[4] = v35;

  v50[0] = v32;
  sub_100005A4C(v50, v34);
  (v35[4])();
  v36 = Text.font(_:)();
  v38 = v37;
  v40 = v39;
  sub_100005A90(v28, v29, v30 & 1);

  sub_100005AA0(v50);
  v50[0] = sub_100004760();
  v41 = Text.foregroundStyle<A>(_:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_100005A90(v36, v38, v40 & 1);

  *a2 = v41;
  *(a2 + 8) = v43;
  *(a2 + 16) = v45 & 1;
  *(a2 + 24) = v47;
  return result;
}

uint64_t sub_100004D7C()
{
  v0 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v2 - 8);
  static AxisMarkValues.automatic.getter();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100005790(&qword_100026248, &qword_100019840);
  sub_100005F7C();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_100004EE4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v47 = sub_100005790(&qword_100026268, &qword_100019850) - 8;
  __chkstk_darwin(v47);
  v46 = &v37 - v1;
  v2 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v2 - 8);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v4 - 8);
  v45 = sub_100005790(&qword_100026260, &qword_100019848);
  v39 = *(v45 - 8);
  v5 = v39;
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v37 - v8;
  v9 = type metadata accessor for AxisGridLine();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100005790(&qword_100026270, &qword_100019858);
  v38 = *(v43 - 8);
  v13 = v38;
  __chkstk_darwin(v43);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v54 = v51;
  v55 = v52;
  v56 = v53;
  AxisGridLine.init(centered:stroke:)();
  v50 = Color.init(_:bundle:)();
  v41 = v18;
  AxisMark.foregroundStyle<A>(_:)();

  (*(v10 + 8))(v12, v9);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v19 = v49;
  AxisValueLabel.init<>(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  v20 = *(v13 + 16);
  v21 = v15;
  v40 = v15;
  v22 = v43;
  v20(v15, v18, v43);
  v23 = *(v5 + 16);
  v24 = v44;
  v25 = v45;
  v23(v44, v19, v45);
  v26 = v46;
  v27 = v21;
  v28 = v22;
  v20(v46, v27, v22);
  sub_100006174(&qword_100026258, &qword_100026260, &qword_100019848, &protocol conformance descriptor for AxisValueLabel<A>);
  v29 = v47;
  v30 = *(v47 + 56);
  v23(&v26[v30], v24, v25);
  v31 = v38;
  v32 = v48;
  (*(v38 + 32))(v48, v26, v22);
  v33 = v39;
  (*(v39 + 32))(v32 + *(v29 + 56), &v26[v30], v25);
  v34 = *(v33 + 8);
  v34(v49, v25);
  v35 = *(v31 + 8);
  v35(v41, v28);
  v34(v24, v25);
  return (v35)(v40, v28);
}

_BYTE *sub_100005480(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005790(&qword_100026238, &qword_100019830);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;

    swift_dynamicCast();
    sub_100005F6C(&v25[8], v23);
    sub_100005F6C(v23, v25);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << v1[32];
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v6[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v6[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v6[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v13;
    result = sub_100005F6C(v25, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100005724@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[1];
  v15[0] = *v9;
  v15[1] = v11;
  v12 = v9[3];
  v15[2] = v9[2];
  v15[3] = v12;
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v13 = sub_100005790(&qword_100026190, &qword_1000197B8);
  return sub_10000290C(v15, a9 + *(v13 + 44));
}

uint64_t sub_100005790(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000057E0()
{
  result = qword_1000261C0;
  if (!qword_1000261C0)
  {
    sub_1000028A8(&qword_1000261B8, &qword_1000197E0);
    type metadata accessor for BarMark();
    swift_getOpaqueTypeConformance2();
    sub_1000028A8(&qword_1000261C8, &qword_1000197E8);
    sub_1000028A8(&qword_1000261D0, &qword_1000197F0);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261C0);
  }

  return result;
}

unint64_t sub_10000597C()
{
  result = qword_1000261E8;
  if (!qword_1000261E8)
  {
    sub_1000028A8(&qword_1000261D8, &qword_1000197F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261E8);
  }

  return result;
}

unint64_t sub_1000059F8()
{
  result = qword_100026200;
  if (!qword_100026200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026200);
  }

  return result;
}

void *sub_100005A4C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005A90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100005AA0(void *a1)
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

uint64_t sub_100005AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005790(&qword_1000261B0, &qword_1000197D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005790(&qword_100026210, &qword_100019810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005BCC(uint64_t a1)
{
  v2 = sub_100005790(&qword_1000261B0, &qword_1000197D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100005C34(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100005CC8(a1, v2);
}

unint64_t sub_100005CC8(uint64_t a1, uint64_t a2)
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

unint64_t sub_100005DCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005790(&qword_100026240, &qword_100019838);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_100005C34(v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100005EC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005790(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005F24(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_100005F6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100005F7C()
{
  result = qword_100026250;
  if (!qword_100026250)
  {
    sub_1000028A8(&qword_100026248, &qword_100019840);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    sub_100006174(&qword_100026258, &qword_100026260, &qword_100019848, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026250);
  }

  return result;
}

unint64_t sub_1000060DC()
{
  result = qword_1000262A0;
  if (!qword_1000262A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000262A0);
  }

  return result;
}

uint64_t sub_100006174(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000028A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1000061C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::Int sub_100006254()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000062CC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000063AC(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    a2();
    swift_allocObject();
    v6 = a3();
    *(v8 + v4) = v6;
  }

  return v6;
}

uint64_t sub_100006430()
{
  v1 = OBJC_IVAR____TtC6Charge19LayoutConfiguration__size;
  v2 = sub_100005790(&qword_100026438, &unk_1000199E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for LayoutConfiguration(uint64_t a1)
{
  result = qword_100026300;
  if (!qword_100026300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000655C(uint64_t a1)
{
  sub_100006604(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100006604(uint64_t a1)
{
  if (!qword_100026310)
  {
    type metadata accessor for CGSize(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100026310);
    }
  }
}

uint64_t getEnumTagSinglePayload for ChargePresentationMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChargePresentationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000067C0()
{
  result = qword_100026430;
  if (!qword_100026430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026430);
  }

  return result;
}

uint64_t sub_100006820@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LayoutConfiguration(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double sub_100006860@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000068E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t getEnumTagSinglePayload for ChargeTemplateType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChargeTemplateType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006AC8()
{
  result = qword_100026440;
  if (!qword_100026440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026440);
  }

  return result;
}

void sub_100006BC8(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 _FBSScene];
    v7 = [v6 settings];

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();

    v9 = &OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_consoleWindowManager;
    if (v8)
    {
      v9 = &OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_clusterWindowManager;
    }

    v10 = *v9;
    v11 = *(v1 + v10);
    *(v1 + v10) = 0;
  }
}

id sub_100006DF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargeSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006E9C(void *a1, void *a2)
{
  v3 = v2;
  CAFSignpostEmit_Scene();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_8:

    return sub_100007718(0xD000000000000024, 0x8000000100017590, 0xD00000000000001FLL, 0x80000001000175C0, 22);
  }

  v7 = v6;
  v8 = a1;
  v9 = [a2 role];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  v17 = [v7 _FBSScene];
  v18 = [v17 settings];

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();

  objc_allocWithZone(type metadata accessor for ChargeWindowManager());
  if (v19)
  {
    v20 = sub_10000EFB0(v7, 1);
    v21 = OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_clusterWindowManager;
  }

  else
  {
    v20 = sub_10000EFB0(v7, 0);
    v21 = OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_consoleWindowManager;
  }

  *(v3 + v21) = v20;

  return _objc_release_x1();
}

uint64_t sub_1000070B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100007790();
  result = OS_os_log.init(subsystem:category:)();
  qword_100028278 = result;
  return result;
}

unint64_t sub_100007170(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000723C(v11, 0, 0, 1, a1, a2);
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
    sub_100007730(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005AA0(v11);
  return v7;
}

unint64_t sub_10000723C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007348(a5, a6);
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

char *sub_100007348(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007394(a1, a2);
  sub_1000074C4(&off_100020FF8);
  return v3;
}

char *sub_100007394(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000075B0(v5, 0);
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
        v7 = sub_1000075B0(v10, 0);
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

uint64_t sub_1000074C4(uint64_t result)
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

  result = sub_100007624(result, v11, 1, v3);
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

void *sub_1000075B0(uint64_t a1, uint64_t a2)
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

  sub_100005790(&qword_100026550, &qword_100019A90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007624(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005790(&qword_100026550, &qword_100019A90);
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

uint64_t sub_100007730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100007790()
{
  result = qword_100026558;
  if (!qword_100026558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026558);
  }

  return result;
}

uint64_t sub_1000077F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = a6();
  if (qword_100025FE0 != -1)
  {
    swift_once();
  }

  v12 = qword_100028278;
  result = os_log_type_enabled(qword_100028278, v11);
  if (result)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100007170(a3, a4, &v15);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a5;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_100007170(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v12, v11, "%s: %ld  %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_100007994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v3 = sub_100005790(&qword_100026568, &qword_100019B08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = sub_100005790(&qword_100026570, &qword_100019B10);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v12[*(sub_100005790(&qword_100026578, &qword_100019B18) + 44)];
  v14 = *(v4 + 16);
  v14(v6, v19, v3);
  v14(v13, v6, v3);
  v15 = &v13[*(sub_100005790(&qword_100026580, &qword_100019B20) + 48)];
  *v15 = 0;
  v15[8] = 1;
  (*(v4 + 8))(v6, v3);
  sub_100007C38(v12, v9);
  sub_100007C38(v9, a2);
  v16 = a2 + *(sub_100005790(&qword_100026588, &qword_100019B28) + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_100007CA8(v12);
  return sub_100007CA8(v9);
}

uint64_t sub_100007BE0@<X0>(uint64_t a1@<X0>, uint64_t a9@<X8>)
{
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v11 = sub_100005790(&qword_100026560, &qword_100019B00);
  return sub_100007994(a1, a9 + *(v11 + 44));
}

uint64_t sub_100007C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005790(&qword_100026570, &qword_100019B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007CA8(uint64_t a1)
{
  v2 = sub_100005790(&qword_100026570, &qword_100019B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100007D14()
{
  result = qword_100026590;
  if (!qword_100026590)
  {
    sub_1000028A8(&qword_100026598, &unk_100019B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026590);
  }

  return result;
}

__n128 sub_100007D78(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007D8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100007DD4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_100007E40@<Q0>(char *a1@<X1>, unsigned __int8 a2@<W2>, __n128 *a3@<X8>)
{
  v6 = &a1[OBJC_IVAR____TtC6Charge11ChargeModel__carObservable];
  swift_beginAccess();
  v7 = *(v6 + 1);
  v8 = a1;
  v9 = v7;
  v10 = dispatch thunk of CAFCarObservable.highVoltageBattery.getter();

  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [v10 batteryLevel];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *(v6 + 1);
  v13 = dispatch thunk of CAFCarObservable.charging.getter();

  v14 = [v13 chargingTime];
  if (!v14)
  {

LABEL_6:
    type metadata accessor for LayoutConfiguration(0);
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    v40 = 1;
    v35.n128_u64[0] = EnvironmentObject.init()();
    v35.n128_u64[1] = v24;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    LOBYTE(v39) = v33.n128_u8[0];
    HIBYTE(v39) = 1;
    sub_1000082E0();
    sub_100002614();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_7;
  }

  sub_100005F24(0, &qword_100026138, CAFBatteryLevel_ptr);
  v29 = a2;
  sub_100002668(&qword_100026140, &qword_100026138, CAFBatteryLevel_ptr, &protocol conformance descriptor for CAFBatteryLevel);
  CAFObserved<>.observable.getter();
  sub_100005F24(0, &qword_100026158, CAFChargingTime_ptr);
  sub_100002668(&qword_100026160, &qword_100026158, CAFChargingTime_ptr, &protocol conformance descriptor for CAFChargingTime);
  CAFObserved<>.observable.getter();
  type metadata accessor for LayoutConfiguration(0);
  sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
  v15 = EnvironmentObject.init()();
  v27 = v16;
  v28 = v15;
  type metadata accessor for CAFBatteryLevelObservable();
  sub_100008334(&qword_100026168, &type metadata accessor for CAFBatteryLevelObservable, &protocol conformance descriptor for CAFBatteryLevelObservable);
  v17 = ObservedObject.init(wrappedValue:)();
  v19 = v18;
  type metadata accessor for CAFChargingTimeObservable();
  sub_100008334(&qword_100026178, &type metadata accessor for CAFChargingTimeObservable, &protocol conformance descriptor for CAFChargingTimeObservable);
  v20 = ObservedObject.init(wrappedValue:)();
  v22 = v21;
  type metadata accessor for ChargeModel(0);
  sub_100008334(&qword_1000265A8, type metadata accessor for ChargeModel, &unk_10001A770);
  v30.n128_u64[0] = v17;
  v30.n128_u64[1] = v19;
  v31.n128_u64[0] = v20;
  v31.n128_u64[1] = v22;
  v32.n128_u64[0] = ObservedObject.init(wrappedValue:)();
  v32.n128_u64[1] = v23;
  v33.n128_u64[0] = v28;
  v33.n128_u64[1] = v27;
  v34 = v29;
  v43 = v32;
  v44 = v33;
  v45 = v29;
  v41 = v30;
  v42 = v31;
  v40 = 0;
  sub_10000837C(&v30, &v35);
  sub_10000837C(&v30, &v35);
  sub_1000082E0();
  sub_100002614();
  _ConditionalContent<>.init(storage:)();

  sub_1000083B4(&v30);
  sub_1000083B4(&v30);
  v43 = v37;
  v44 = v38;
  v45 = v39;
  v41 = v35;
  v42 = v36;
LABEL_7:
  v25 = v44;
  a3[2] = v43;
  a3[3] = v25;
  a3[4].n128_u16[0] = v45;
  result = v42;
  *a3 = v41;
  a3[1] = result;
  return result;
}

unint64_t sub_1000082E0()
{
  result = qword_1000265A0;
  if (!qword_1000265A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000265A0);
  }

  return result;
}

uint64_t sub_100008334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1000083E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100008408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100008450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000084B8()
{
  result = qword_1000265B0;
  if (!qword_1000265B0)
  {
    sub_1000028A8(&qword_1000265B8, &qword_100019C48);
    sub_1000082E0();
    sub_100002614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000265B0);
  }

  return result;
}

uint64_t sub_100008560@<X0>(void *a1@<X8>)
{
  v97 = a1;
  v2 = sub_100005790(&qword_1000265C0, &qword_100019CA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v80 - v3;
  v80 = sub_100005790(&qword_1000265C8, &qword_100019CA8);
  __chkstk_darwin(v80);
  v82 = &v80 - v5;
  v87 = sub_100005790(&qword_1000265D0, &qword_100019CB0);
  __chkstk_darwin(v87);
  v81 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v80 - v8;
  v84 = sub_100005790(&qword_1000265D8, &qword_100019CB8);
  __chkstk_darwin(v84);
  v86 = &v80 - v9;
  v85 = sub_100005790(&qword_1000265E0, &qword_100019CC0);
  __chkstk_darwin(v85);
  v11 = &v80 - v10;
  v92 = sub_100005790(&qword_1000265E8, &qword_100019CC8);
  __chkstk_darwin(v92);
  v88 = &v80 - v12;
  v89 = sub_100005790(&qword_1000265F0, &qword_100019CD0);
  __chkstk_darwin(v89);
  v91 = &v80 - v13;
  v96 = sub_100005790(&qword_1000265F8, &qword_100019CD8);
  __chkstk_darwin(v96);
  v93 = &v80 - v14;
  v90 = sub_100005790(&qword_100026600, &qword_100019CE0);
  __chkstk_darwin(v90);
  v16 = &v80 - v15;
  v17 = sub_100005790(&qword_100026608, &qword_100019CE8);
  __chkstk_darwin(v17);
  v19 = &v80 - v18;
  v94 = sub_100005790(&qword_100026610, &qword_100019CF0);
  __chkstk_darwin(v94);
  v21 = &v80 - v20;
  v22 = sub_100005790(&qword_100026618, &qword_100019CF8);
  __chkstk_darwin(v22);
  v24 = &v80 - v23;
  v95 = sub_100005790(&qword_100026620, &qword_100019D00);
  __chkstk_darwin(v95);
  v26 = &v80 - v25;
  if (*(v1 + 64) <= 1u)
  {
    if (*(v1 + 64))
    {
      *v19 = static HorizontalAlignment.center.getter();
      *(v19 + 1) = 0;
      v19[16] = 1;
      v34 = sub_100005790(&qword_1000266A0, &qword_100019D28);
      sub_10000951C(v1, &v19[*(v34 + 44)]);
      v27 = &qword_100026608;
      v28 = &qword_100019CE8;
      sub_10000DE80(v19, v24, &qword_100026608, &qword_100019CE8);
      swift_storeEnumTagMultiPayload();
      sub_100006174(&qword_100026688, &qword_100026608, &qword_100019CE8, &protocol conformance descriptor for VStack<A>);
      _ConditionalContent<>.init(storage:)();
      sub_10000DE80(v26, v21, &qword_100026620, &qword_100019D00);
      swift_storeEnumTagMultiPayload();
      sub_10000DD10();
      sub_10000DDC8();
      _ConditionalContent<>.init(storage:)();
      sub_100005EC4(v26, &qword_100026620, &qword_100019D00);
      v29 = v19;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100006174(&qword_100026688, &qword_100026608, &qword_100019CE8, &protocol conformance descriptor for VStack<A>);
      _ConditionalContent<>.init(storage:)();
      v27 = &qword_100026620;
      v28 = &qword_100019D00;
      sub_10000DE80(v26, v21, &qword_100026620, &qword_100019D00);
      swift_storeEnumTagMultiPayload();
      sub_10000DD10();
      sub_10000DDC8();
      _ConditionalContent<>.init(storage:)();
      v29 = v26;
    }

    v35 = v27;
    v36 = v28;
    return sub_100005EC4(v29, v35, v36);
  }

  if (*(v1 + 64) == 2)
  {
    *v16 = static HorizontalAlignment.center.getter();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v30 = sub_100005790(&qword_100026698, &qword_100019D20);
    sub_10000A674(v1, &v16[*(v30 + 44)]);
    v31 = &qword_100026600;
    v32 = &qword_100019CE0;
    sub_10000DE80(v16, v91, &qword_100026600, &qword_100019CE0);
    swift_storeEnumTagMultiPayload();
    sub_100006174(&qword_100026670, &qword_100026600, &qword_100019CE0, &protocol conformance descriptor for VStack<A>);
    sub_10000DC58();
    v33 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_10000DE80(v33, v21, &qword_1000265F8, &qword_100019CD8);
    swift_storeEnumTagMultiPayload();
    sub_10000DD10();
    sub_10000DDC8();
    _ConditionalContent<>.init(storage:)();
    sub_100005EC4(v33, &qword_1000265F8, &qword_100019CD8);
    v29 = v16;
LABEL_17:
    v35 = v31;
    v36 = v32;
    return sub_100005EC4(v29, v35, v36);
  }

  v37 = *(v1 + 48);
  if (v37)
  {
    v38 = *(v37 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v39 = static HorizontalAlignment.leading.getter();
    if (v38)
    {
      *v4 = v39;
      *(v4 + 1) = 0;
      v4[16] = 1;
      v40 = sub_100005790(&qword_100026628, &qword_100019D08);
      sub_10000B3A0(v1, &v4[*(v40 + 44)]);
      sub_100005790(&qword_100026630, &qword_100019D10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100019B40;
      v42 = static Edge.Set.leading.getter();
      *(inited + 32) = v42;
      v43 = static Edge.Set.top.getter();
      *(inited + 33) = v43;
      v44 = Edge.Set.init(rawValue:)();
      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v42)
      {
        v44 = Edge.Set.init(rawValue:)();
      }

      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v43)
      {
        v44 = Edge.Set.init(rawValue:)();
      }

      EdgeInsets.init(_all:)();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = v82;
      sub_10000D9FC(v4, v82, &qword_1000265C0, &qword_100019CA0);
      v54 = v53 + *(v80 + 36);
      *v54 = v44;
      *(v54 + 8) = v46;
      *(v54 + 16) = v48;
      *(v54 + 24) = v50;
      *(v54 + 32) = v52;
      *(v54 + 40) = 0;
      v55 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v64 = v81;
      sub_10000D9FC(v53, v81, &qword_1000265C8, &qword_100019CA8);
      v65 = v64 + *(v87 + 36);
      *v65 = v55;
      *(v65 + 8) = v57;
      *(v65 + 16) = v59;
      *(v65 + 24) = v61;
      *(v65 + 32) = v63;
      *(v65 + 40) = 0;
      v66 = &qword_1000265D0;
      v67 = &qword_100019CB0;
      v68 = v83;
      sub_10000D9FC(v64, v83, &qword_1000265D0, &qword_100019CB0);
      sub_10000DE80(v68, v86, &qword_1000265D0, &qword_100019CB0);
      swift_storeEnumTagMultiPayload();
      sub_10000DA64();
      sub_10000DFE4(&qword_100026650, &qword_1000265D0, &qword_100019CB0, sub_10000DB1C);
      v69 = v88;
      _ConditionalContent<>.init(storage:)();
      v70 = v68;
    }

    else
    {
      *v11 = v39;
      *(v11 + 1) = 0;
      v11[16] = 1;
      v71 = sub_100005790(&qword_100026628, &qword_100019D08);
      sub_10000B3A0(v1, &v11[*(v71 + 44)]);
      v72 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v73 = &v11[*(v85 + 36)];
      *v73 = v72;
      *(v73 + 1) = v74;
      *(v73 + 2) = v75;
      *(v73 + 3) = v76;
      *(v73 + 4) = v77;
      v73[40] = 0;
      v66 = &qword_1000265E0;
      v67 = &qword_100019CC0;
      sub_10000DE80(v11, v86, &qword_1000265E0, &qword_100019CC0);
      swift_storeEnumTagMultiPayload();
      sub_10000DA64();
      sub_10000DFE4(&qword_100026650, &qword_1000265D0, &qword_100019CB0, sub_10000DB1C);
      v69 = v88;
      _ConditionalContent<>.init(storage:)();
      v70 = v11;
    }

    sub_100005EC4(v70, v66, v67);
    v31 = &qword_1000265E8;
    v32 = &qword_100019CC8;
    sub_10000DE80(v69, v91, &qword_1000265E8, &qword_100019CC8);
    swift_storeEnumTagMultiPayload();
    sub_100006174(&qword_100026670, &qword_100026600, &qword_100019CE0, &protocol conformance descriptor for VStack<A>);
    sub_10000DC58();
    v78 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_10000DE80(v78, v21, &qword_1000265F8, &qword_100019CD8);
    swift_storeEnumTagMultiPayload();
    sub_10000DD10();
    sub_10000DDC8();
    _ConditionalContent<>.init(storage:)();
    sub_100005EC4(v78, &qword_1000265F8, &qword_100019CD8);
    v29 = v69;
    goto LABEL_17;
  }

  type metadata accessor for LayoutConfiguration(0);
  sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100009244()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = *(v1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    if (*(v1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (v2 == 1)
      {
        v3 = sub_100006344();
        v4 = type metadata accessor for ClusterMetrics();
        v5 = v4;
        v6 = &off_100021580;
      }

      else
      {
        v3 = sub_100006378();
        v4 = type metadata accessor for WidgetMetrics();
        v5 = v4;
        v6 = &off_100021520;
      }
    }

    else
    {
      v3 = sub_100006310();
      v4 = type metadata accessor for ConsoleMetrics();
      v5 = v4;
      v6 = &off_1000215E0;
    }

    v13 = v4;
    v14 = v6;

    v12 = v3;
    sub_100005A4C(&v12, v5);
    (v6[9])();
    sub_100005AA0(&v12);
    if (v2)
    {
      if (v2 == 1)
      {
        v7 = sub_100006344();
        v8 = type metadata accessor for ClusterMetrics();
        v9 = v8;
        v10 = &off_100021580;
      }

      else
      {
        v7 = sub_100006378();
        v8 = type metadata accessor for WidgetMetrics();
        v9 = v8;
        v10 = &off_100021520;
      }
    }

    else
    {
      v7 = sub_100006310();
      v8 = type metadata accessor for ConsoleMetrics();
      v9 = v8;
      v10 = &off_1000215E0;
    }

    v13 = v8;
    v14 = v10;

    v12 = v7;
    sub_100005A4C(&v12, v9);
    (v10[9])();
    return sub_100005AA0(&v12);
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000951C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v102 = a2;
  v3 = sub_100005790(&qword_100026218, &qword_100019D30);
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin(v3);
  v92 = &v92 - v4;
  v5 = type metadata accessor for AccessoryCircularCapacityGaugeStyle();
  v97 = *(v5 - 8);
  v98 = v5;
  __chkstk_darwin(v5);
  v96 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100005790(&qword_1000266A8, &qword_100019D38);
  __chkstk_darwin(v95);
  v8 = &v92 - v7;
  v9 = sub_100005790(&qword_1000266B0, &qword_100019D40);
  v100 = *(v9 - 8);
  __chkstk_darwin(v9);
  v107 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v108 = &v92 - v12;
  v13 = [objc_opt_self() mainBundle];
  v156._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x474E494752414843;
  v15.value._countAndFlagsBits = 0x656772616843;
  v14._object = 0xE800000000000000;
  v15.value._object = 0xE600000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v156._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v156);

  v17 = String.init(format:_:)();
  v19 = v18;

  *&v142 = v17;
  *(&v142 + 1) = v19;
  sub_1000059F8();
  v20 = Text.init<A>(_:)();
  v99 = a1;
  v23 = *(a1 + 48);
  if (v23)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = *(v23 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    v101 = v9;
    if (v27)
    {
      if (v27 == 1)
      {
        v28 = sub_100006344();
        v29 = type metadata accessor for ClusterMetrics();
        v30 = v29;
        v31 = &off_100021580;
      }

      else
      {
        v28 = sub_100006378();
        v29 = type metadata accessor for WidgetMetrics();
        v30 = v29;
        v31 = &off_100021520;
      }
    }

    else
    {
      v28 = sub_100006310();
      v29 = type metadata accessor for ConsoleMetrics();
      v30 = v29;
      v31 = &off_1000215E0;
    }

    v151[3] = v29;
    v151[4] = v31;

    v151[0] = v28;
    sub_100005A4C(v151, v30);
    (v31[5])();
    v32 = Text.font(_:)();
    v105 = v33;
    v106 = v34;
    v36 = v35;
    sub_100005A90(v24, v25, v26 & 1);

    sub_100005AA0(v151);
    v103 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v104 = v36 & 1;
    v155 = v36 & 1;
    v152 = 0;
    v45 = v99;
    sub_100009F68(v8);
    v46 = v96;
    AccessoryCircularCapacityGaugeStyle.init()();
    sub_10000DEE8();
    sub_100008334(&qword_100026710, &type metadata accessor for AccessoryCircularCapacityGaugeStyle, &protocol conformance descriptor for AccessoryCircularCapacityGaugeStyle);
    v47 = v98;
    View.gaugeStyle<A>(_:)();
    (*(v97 + 8))(v46, v47);
    sub_100005EC4(v8, &qword_1000266A8, &qword_100019D38);
    v48 = CAFChargingTimeObservable.observed.getter();
    LODWORD(v46) = [v48 remainingTimeInvalid];

    if (v46)
    {
      *&v142 = 2108717;
      *(&v142 + 1) = 0xE300000000000000;
      v49 = [objc_opt_self() minutes];
      v50 = [v49 symbol];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54._countAndFlagsBits = v51;
      v54._object = v53;
      String.append(_:)(v54);

      v55 = *(&v142 + 1);
      v56 = v142;
      v57 = v101;
    }

    else
    {
      v58 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v58 setUnitsStyle:1];
      [v58 setAllowedUnits:96];
      [v58 setZeroFormattingBehavior:1];
      v59 = v92;
      dispatch thunk of CAFChargingTimeObservable.remainingTime.getter();
      v60 = v94;
      Measurement.value.getter();
      v62 = v61;
      (*(v93 + 8))(v59, v60);
      v63 = [v58 stringFromTimeInterval:v62];
      v57 = v101;
      if (!v63)
      {

        sub_10000E17C(&v142);
        v73 = v102;
        goto LABEL_12;
      }

      v64 = v63;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v65;
    }

    v66 = static HorizontalAlignment.center.getter();
    LOBYTE(v142) = 1;
    sub_10000BD28(v56, v55, v45, v109);

    *(v110 + 7) = v109[0];
    *(&v110[1] + 7) = v109[1];
    *(&v110[2] + 7) = v109[2];
    *(&v110[3] + 7) = v109[3];
    v67 = v142;
    v68 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    *(&v127[1] + 1) = v110[1];
    *(&v127[2] + 1) = v110[2];
    *(&v127[3] + 1) = v110[3];
    v126 = v66;
    LOBYTE(v127[0]) = v67;
    *&v127[4] = *(&v110[3] + 15);
    *(v127 + 1) = v110[0];
    BYTE8(v127[4]) = v68;
    *&v128 = v69;
    *(&v128 + 1) = v70;
    *&v129 = v71;
    *(&v129 + 1) = v72;
    v130 = 0;
    ConfigurationIntentResponseCode.rawValue.getter();
    v148 = v128;
    v149 = v129;
    v150 = v130;
    v144 = v127[1];
    v145 = v127[2];
    v146 = v127[3];
    v147 = v127[4];
    v142 = v126;
    v143 = v127[0];
    v73 = v102;
LABEL_12:
    v74 = v100;
    v75 = *(v100 + 16);
    v76 = v107;
    v75(v107, v108, v57);
    v117 = v148;
    v118 = v149;
    v119 = v150;
    v113 = v144;
    v114 = v145;
    v115 = v146;
    v116 = v147;
    v111 = v142;
    v112 = v143;
    *&v120 = v32;
    *(&v120 + 1) = v105;
    LOBYTE(v121) = v104;
    v102 = v32;
    *(&v121 + 1) = *v154;
    DWORD1(v121) = *&v154[3];
    *(&v121 + 1) = v106;
    LOBYTE(v122) = v103;
    *(&v122 + 1) = *v153;
    DWORD1(v122) = *&v153[3];
    *(&v122 + 1) = v38;
    *&v123[0] = v40;
    *(&v123[0] + 1) = v42;
    *&v123[1] = v44;
    BYTE8(v123[1]) = 0;
    v77 = v120;
    v78 = v121;
    *(v73 + 57) = *(v123 + 9);
    v79 = v123[0];
    v73[2] = v122;
    v73[3] = v79;
    *v73 = v77;
    v73[1] = v78;
    v80 = sub_100005790(&qword_100026718, &unk_100019D70);
    v75(v73 + *(v80 + 48), v76, v57);
    v81 = *(v80 + 64);
    v82 = v118;
    v124[6] = v117;
    v124[7] = v118;
    v84 = v115;
    v83 = v116;
    v124[4] = v115;
    v124[5] = v116;
    v85 = v113;
    v86 = v114;
    v124[2] = v113;
    v124[3] = v114;
    v88 = v111;
    v87 = v112;
    v124[0] = v111;
    v124[1] = v112;
    v89 = v73 + v81;
    *(v89 + 6) = v117;
    *(v89 + 7) = v82;
    *(v89 + 2) = v85;
    *(v89 + 3) = v86;
    *(v89 + 4) = v84;
    *(v89 + 5) = v83;
    v125 = v119;
    v89[128] = v119;
    *v89 = v88;
    *(v89 + 1) = v87;
    sub_10000DE80(&v120, &v126, &qword_100026720, &qword_10001A690);
    sub_10000DE80(v124, &v126, &qword_100026728, &unk_100019D80);
    v90 = *(v74 + 8);
    v90(v108, v57);
    v128 = v117;
    v129 = v118;
    v130 = v119;
    v127[1] = v113;
    v127[2] = v114;
    v127[3] = v115;
    v127[4] = v116;
    v126 = v111;
    v127[0] = v112;
    sub_100005EC4(&v126, &qword_100026728, &unk_100019D80);
    v90(v107, v57);
    v131[0] = v102;
    v131[1] = v105;
    v132 = v104;
    *v133 = *v154;
    *&v133[3] = *&v154[3];
    v134 = v106;
    v135 = v103;
    *v136 = *v153;
    *&v136[3] = *&v153[3];
    v137 = v38;
    v138 = v40;
    v139 = v42;
    v140 = v44;
    v141 = 0;
    return sub_100005EC4(v131, &qword_100026720, &qword_10001A690);
  }

  type metadata accessor for LayoutConfiguration(0);
  sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100009F68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_100005790(&unk_100027330, &qword_100019818);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v62 - v5;
  v7 = sub_100005790(&qword_1000266E8, &qword_100019D58);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v62 - v9;
  v62 = sub_100005790(&qword_1000266D8, &qword_100019D50);
  __chkstk_darwin(v62);
  v12 = &v62 - v11;
  v63 = sub_100005790(&qword_1000266C0, &qword_100019D48);
  __chkstk_darwin(v63);
  v14 = &v62 - v13;
  v15 = sub_100005790(&qword_100026730, &qword_100019D90);
  v65 = *(v15 - 8);
  v66 = v15;
  __chkstk_darwin(v15);
  v64 = &v62 - v16;
  dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
  Measurement.value.getter();
  v18 = v17;
  (*(v4 + 8))(v6, v3);
  v69 = v18;
  v70 = xmmword_100019B50;
  v68 = v1;
  sub_100005790(&qword_100026738, &qword_100019D98);
  sub_10000E1B0();
  sub_10000E320();
  Gauge.init<A>(value:in:label:)();
  sub_100005790(&qword_100026780, &qword_100019DB8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100019680;
  *(v19 + 32) = static Color.green.getter();
  v20 = Gradient.init(colors:)();
  KeyPath = swift_getKeyPath();
  *&v70 = v20;
  v22 = AnyShapeStyle.init<A>(_:)();
  v23 = &v10[*(v8 + 44)];
  *v23 = KeyPath;
  v23[1] = v22;
  v24 = static Edge.Set.top.getter();
  v25 = *(v2 + 48);
  if (v25)
  {
    v26 = v24;
    v27 = *(v25 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    if (v27)
    {
      if (v27 == 1)
      {
        v28 = sub_100006344();
        v29 = type metadata accessor for ClusterMetrics();
        v30 = v29;
        v31 = &off_100021580;
      }

      else
      {
        v28 = sub_100006378();
        v29 = type metadata accessor for WidgetMetrics();
        v30 = v29;
        v31 = &off_100021520;
      }
    }

    else
    {
      v28 = sub_100006310();
      v29 = type metadata accessor for ConsoleMetrics();
      v30 = v29;
      v31 = &off_1000215E0;
    }

    *(&v71 + 1) = v29;
    *&v72 = v31;
    *&v70 = v28;
    sub_100005A4C(&v70, v30);
    (v31[10])();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_10000D9FC(v10, v12, &qword_1000266E8, &qword_100019D58);
    v40 = &v12[*(v62 + 36)];
    *v40 = v26;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    sub_100005AA0(&v70);
    v41 = static Edge.Set.bottom.getter();
    if (*(v25 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      v43 = v66;
      v42 = v67;
      if (*(v25 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v44 = sub_100006344();
        v45 = type metadata accessor for ClusterMetrics();
        v46 = v45;
        v47 = &off_100021580;
      }

      else
      {
        v44 = sub_100006378();
        v45 = type metadata accessor for WidgetMetrics();
        v46 = v45;
        v47 = &off_100021520;
      }

      *(&v71 + 1) = v45;
      *&v72 = v47;

      *&v70 = v44;
    }

    else
    {
      v48 = sub_100006310();
      v46 = type metadata accessor for ConsoleMetrics();
      v47 = &off_1000215E0;
      *(&v71 + 1) = v46;
      *&v72 = &off_1000215E0;

      *&v70 = v48;
      v43 = v66;
      v42 = v67;
    }

    sub_100005A4C(&v70, v46);
    (v47[10])();
    EdgeInsets.init(_all:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_10000D9FC(v12, v14, &qword_1000266D8, &qword_100019D50);
    v57 = &v14[*(v63 + 36)];
    *v57 = v41;
    *(v57 + 1) = v50;
    *(v57 + 2) = v52;
    *(v57 + 3) = v54;
    *(v57 + 4) = v56;
    v57[40] = 0;
    sub_100005AA0(&v70);
    sub_10000DFE4(&qword_1000266C8, &qword_1000266C0, &qword_100019D48, sub_10000E068);
    v58 = v64;
    View.allowsGaugeResizing(_:)();
    sub_100005EC4(v14, &qword_1000266C0, &qword_100019D48);
    sub_100009244();
    sub_100009244();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    (*(v65 + 32))(v42, v58, v43);
    result = sub_100005790(&qword_1000266A8, &qword_100019D38);
    v60 = (v42 + *(result + 36));
    v61 = v71;
    *v60 = v70;
    v60[1] = v61;
    v60[2] = v72;
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A674@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v108 = a2;
  v3 = sub_100005790(&qword_100026218, &qword_100019D30);
  v98 = *(v3 - 8);
  v99 = v3;
  __chkstk_darwin(v3);
  v97 = &v96 - v4;
  v5 = type metadata accessor for AccessoryCircularCapacityGaugeStyle();
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin(v5);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100005790(&qword_1000266A8, &qword_100019D38);
  __chkstk_darwin(v100);
  v9 = &v96 - v8;
  v10 = sub_100005790(&qword_1000266B0, &qword_100019D40);
  v106 = *(v10 - 8);
  __chkstk_darwin(v10);
  v105 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v114 = &v96 - v13;
  v14 = [objc_opt_self() mainBundle];
  v140._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x474E494752414843;
  v16.value._countAndFlagsBits = 0x656772616843;
  v15._object = 0xE800000000000000;
  v16.value._object = 0xE600000000000000;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v140._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v140);

  v18 = String.init(format:_:)();
  v20 = v19;

  v134[0] = v18;
  v134[1] = v20;
  sub_1000059F8();
  v23 = Text.init<A>(_:)();
  v104 = a1;
  v24 = *(a1 + 48);
  if (v24)
  {
    v25 = v21;
    v26 = v22;
    v27 = *(v24 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    v107 = v10;
    v103 = v28;
    if (v27)
    {
      if (v27 == 1)
      {
        v29 = sub_100006344();
        v30 = type metadata accessor for ClusterMetrics();
        v31 = v30;
        v32 = &off_100021580;
      }

      else
      {
        v29 = sub_100006378();
        v30 = type metadata accessor for WidgetMetrics();
        v31 = v30;
        v32 = &off_100021520;
      }
    }

    else
    {
      v29 = sub_100006310();
      v30 = type metadata accessor for ConsoleMetrics();
      v31 = v30;
      v32 = &off_1000215E0;
    }

    v135[3] = v30;
    v135[4] = v32;
    v135[0] = v29;
    sub_100005A4C(v135, v31);
    (v32[5])();
    v109 = Text.font(_:)();
    v112 = v33;
    v113 = v34;
    v36 = v35;
    sub_100005A90(v23, v25, v26 & 1);

    sub_100005AA0(v135);
    v111 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v110 = v36 & 1;
    v139 = v36 & 1;
    v136 = 0;
    v45 = v104;
    sub_100009F68(v9);
    AccessoryCircularCapacityGaugeStyle.init()();
    sub_10000DEE8();
    sub_100008334(&qword_100026710, &type metadata accessor for AccessoryCircularCapacityGaugeStyle, &protocol conformance descriptor for AccessoryCircularCapacityGaugeStyle);
    v46 = v102;
    View.gaugeStyle<A>(_:)();
    (*(v101 + 8))(v7, v46);
    sub_100005EC4(v9, &qword_1000266A8, &qword_100019D38);
    v47 = CAFChargingTimeObservable.observed.getter();
    v48 = [v47 remainingTimeInvalid];

    if (v48)
    {
      v102 = v44;
      v49 = v42;
      v50 = v40;
      v51 = v38;
      v134[0] = 2108717;
      v134[1] = 0xE300000000000000;
      v52 = [objc_opt_self() minutes];
      v53 = [v52 symbol];

      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57._countAndFlagsBits = v54;
      v57._object = v56;
      String.append(_:)(v57);

      v58 = v134[0];
      v59 = v134[1];
      v60 = v108;
    }

    else
    {
      v61 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v61 setUnitsStyle:1];
      [v61 setAllowedUnits:96];
      [v61 setZeroFormattingBehavior:1];
      v62 = v97;
      dispatch thunk of CAFChargingTimeObservable.remainingTime.getter();
      v63 = v99;
      Measurement.value.getter();
      v65 = v64;
      (*(v98 + 8))(v62, v63);
      v66 = [v61 stringFromTimeInterval:v65];
      v60 = v108;
      if (!v66)
      {

        goto LABEL_15;
      }

      v102 = v44;
      v49 = v42;
      v50 = v40;
      v51 = v38;
      v67 = v66;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v68;
    }

    v69 = sub_10000B184();
    if (v70)
    {
      v71 = v69;
      v72 = v70;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v73 = *&v134[1] * 0.5 * 0.3;
      v74 = static VerticalAlignment.center.getter();
      LOBYTE(v123[0]) = 0;
      sub_10000C254(v71, v72, v45, v58, v59, v134);
      memcpy(v116, v134, 0x130uLL);
      memcpy(v121, v134, 0x130uLL);
      sub_10000DE80(v116, v122, &qword_100026798, &qword_100019EA8);
      sub_100005EC4(v121, &qword_100026798, &qword_100019EA8);

      memcpy(&v115[7], v116, 0x130uLL);
      v75 = v123[0];
      LOBYTE(v72) = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v122[0] = v74;
      *&v122[1] = v73;
      LOBYTE(v122[2]) = v75;
      memcpy(&v122[2] + 1, v115, 0x137uLL);
      LOBYTE(v122[41]) = v72;
      v122[42] = v77;
      v122[43] = v79;
      v122[44] = v81;
      v122[45] = v83;
      LOBYTE(v122[46]) = 0;
      ConfigurationIntentResponseCode.rawValue.getter();
      memcpy(v134, v122, 0x171uLL);
      v38 = v51;
      v40 = v50;
      v42 = v49;
      v44 = v102;
LABEL_16:
      v86 = v105;
      v85 = v106;
      v87 = *(v106 + 16);
      v88 = v107;
      v87(v105, v114, v107, v84);
      memcpy(v116, v134, 0x171uLL);
      *&v117 = v109;
      *(&v117 + 1) = v112;
      LOBYTE(v118) = v110;
      *(&v118 + 1) = *v138;
      DWORD1(v118) = *&v138[3];
      *(&v118 + 1) = v113;
      LOBYTE(v119) = v111;
      *(&v119 + 1) = *v137;
      DWORD1(v119) = *&v137[3];
      *(&v119 + 1) = v38;
      *&v120[0] = v40;
      *(&v120[0] + 1) = v42;
      *&v120[1] = v44;
      BYTE8(v120[1]) = 0;
      v89 = v117;
      v90 = v118;
      *(v60 + 57) = *(v120 + 9);
      v91 = v120[0];
      v60[2] = v119;
      v60[3] = v91;
      *v60 = v89;
      v60[1] = v90;
      v92 = sub_100005790(&qword_100026788, &qword_100019E98);
      (v87)(v60 + *(v92 + 48), v86, v88);
      v93 = *(v92 + 64);
      memcpy(v121, v116, 0x171uLL);
      memcpy(v60 + v93, v116, 0x171uLL);
      sub_10000DE80(&v117, v122, &qword_100026720, &qword_10001A690);
      sub_10000DE80(v121, v122, &qword_100026790, &qword_100019EA0);
      v94 = *(v85 + 8);
      v94(v114, v88);
      memcpy(v122, v116, 0x171uLL);
      sub_100005EC4(v122, &qword_100026790, &qword_100019EA0);
      v94(v86, v88);
      v123[0] = v109;
      v123[1] = v112;
      v124 = v110;
      *v125 = *v138;
      *&v125[3] = *&v138[3];
      v126 = v113;
      v127 = v111;
      *v128 = *v137;
      *&v128[3] = *&v137[3];
      v129 = v38;
      v130 = v40;
      v131 = v42;
      v132 = v44;
      v133 = 0;
      return sub_100005EC4(v123, &qword_100026720, &qword_10001A690);
    }

    v38 = v51;
    v40 = v50;
    v42 = v49;
    v44 = v102;
LABEL_15:
    v84.n128_f64[0] = sub_10000E3E4(v134);
    goto LABEL_16;
  }

  type metadata accessor for LayoutConfiguration(0);
  sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

id sub_10000B184()
{
  v0 = sub_100005790(&unk_100027330, &qword_100019818);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - v2;
  v4 = CAFBatteryLevelObservable.observed.getter();
  v5 = [v4 batteryLevelInvalid];

  if (v5)
  {
    v16[0] = 2108717;
    v16[1] = 0xE300000000000000;
    v6 = [objc_opt_self() percent];
    v7 = [v6 symbol];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    String.append(_:)(v11);

    return v16[0];
  }

  else
  {
    v13 = [objc_allocWithZone(NSMeasurementFormatter) init];
    result = [v13 numberFormatter];
    if (result)
    {
      v14 = result;
      [result setMaximumFractionDigits:2];

      [v13 setUnitOptions:1];
      dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
      sub_100005F24(0, &qword_100026230, CAFUnitPercent_ptr);
      v15 = NSMeasurementFormatter.string<A>(from:)();

      (*(v1 + 8))(v3, v0);
      return v15;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000B3A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v3 = sub_100005790(&qword_100026218, &qword_100019D30);
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v67 = &v66 - v4;
  v5 = type metadata accessor for AccessoryCircularCapacityGaugeStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005790(&qword_1000266A8, &qword_100019D38);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_100005790(&qword_1000266B0, &qword_100019D40);
  v73 = *(v12 - 8);
  v74 = v12;
  __chkstk_darwin(v12);
  v72 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  sub_100009F68(v11);
  AccessoryCircularCapacityGaugeStyle.init()();
  sub_10000DEE8();
  sub_100008334(&qword_100026710, &type metadata accessor for AccessoryCircularCapacityGaugeStyle, &protocol conformance descriptor for AccessoryCircularCapacityGaugeStyle);
  v70 = v16;
  v17 = a1;
  View.gaugeStyle<A>(_:)();
  (*(v6 + 8))(v8, v5);
  sub_100005EC4(v11, &qword_1000266A8, &qword_100019D38);
  v18 = CAFChargingTimeObservable.observed.getter();
  LODWORD(v6) = [v18 remainingTimeInvalid];

  if (v6)
  {
    *&v104 = 2108717;
    *(&v104 + 1) = 0xE300000000000000;
    v19 = [objc_opt_self() minutes];
    v20 = [v19 symbol];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25 = *(&v104 + 1);
    v26 = v104;
  }

  else
  {
    v27 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v27 setUnitsStyle:1];
    [v27 setAllowedUnits:96];
    [v27 setZeroFormattingBehavior:1];
    v28 = v67;
    dispatch thunk of CAFChargingTimeObservable.remainingTime.getter();
    v29 = v69;
    Measurement.value.getter();
    v31 = v30;
    (*(v68 + 8))(v28, v29);
    v32 = [v27 stringFromTimeInterval:v31];
    if (!v32)
    {

      goto LABEL_9;
    }

    v33 = v32;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v34;
  }

  v35 = sub_10000B184();
  if (!v36)
  {

LABEL_9:
    v45.n128_f64[0] = sub_10000E420(&v104);
    goto LABEL_10;
  }

  v37 = v35;
  v38 = v36;
  v39 = static HorizontalAlignment.leading.getter();
  v76 = 0;
  sub_10000D248(v26, v25, v17, v37, v38, &v104);
  v80 = v107;
  v81 = v108;
  v82 = v109;
  v77 = v104;
  v78 = v105;
  v79 = v106;
  v90 = v106;
  v91 = v107;
  v92 = v108;
  v93 = v109;
  v88 = v104;
  v89 = v105;
  sub_10000DE80(&v77, &v99, &qword_1000267C8, &qword_100019ED8);
  sub_100005EC4(&v88, &qword_1000267C8, &qword_100019ED8);

  *&v75[39] = v79;
  *&v75[55] = v80;
  *&v75[71] = v81;
  *&v75[87] = v82;
  *&v75[7] = v77;
  *&v75[23] = v78;
  v40 = v76;
  LOBYTE(v38) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(&v100[3] + 1) = *&v75[48];
  *(&v100[4] + 1) = *&v75[64];
  *(&v100[5] + 1) = *&v75[80];
  *(v100 + 1) = *v75;
  *(&v100[1] + 1) = *&v75[16];
  *&v99 = v39;
  *(&v99 + 1) = 0x3FF0000000000000;
  LOBYTE(v100[0]) = v40;
  *&v100[6] = *&v75[95];
  *(&v100[2] + 1) = *&v75[32];
  BYTE8(v100[6]) = v38;
  *&v101 = v41;
  *(&v101 + 1) = v42;
  *&v102 = v43;
  *(&v102 + 1) = v44;
  v103 = 0;
  ConfigurationIntentResponseCode.rawValue.getter();
  v112 = v101;
  v113 = v102;
  v114 = v103;
  v108 = v100[3];
  v109 = v100[4];
  v110 = v100[5];
  v111 = v100[6];
  v104 = v99;
  v105 = v100[0];
  v45 = v100[2];
  v106 = v100[1];
  v107 = v100[2];
LABEL_10:
  v47 = v72;
  v46 = v73;
  v48 = *(v73 + 16);
  v49 = v70;
  v50 = v74;
  v48(v72, v70, v74, v45);
  v84 = v111;
  v85 = v112;
  v86 = v113;
  v80 = v107;
  v81 = v108;
  v82 = v109;
  v83 = v110;
  v77 = v104;
  v87 = v114;
  v78 = v105;
  v79 = v106;
  v51 = v71;
  (v48)(v71, v47, v50);
  v52 = sub_100005790(&qword_1000267B8, &qword_100019EC8);
  v53 = &v51[*(v52 + 48)];
  *v53 = 0;
  v53[8] = 1;
  v54 = &v51[*(v52 + 64)];
  v55 = v77;
  v88 = v77;
  v89 = v78;
  v56 = v78;
  v57 = v79;
  v58 = v81;
  v90 = v79;
  v91 = v80;
  v59 = v84;
  v96 = v85;
  v97 = v86;
  v60 = v80;
  v61 = v83;
  v92 = v81;
  v93 = v82;
  v62 = v82;
  v94 = v83;
  v95 = v84;
  v63 = v86;
  *(v54 + 8) = v85;
  *(v54 + 9) = v63;
  *(v54 + 4) = v58;
  *(v54 + 5) = v62;
  *(v54 + 6) = v61;
  *(v54 + 7) = v59;
  *v54 = v55;
  *(v54 + 1) = v56;
  v98 = v87;
  v54[160] = v87;
  *(v54 + 2) = v57;
  *(v54 + 3) = v60;
  sub_10000DE80(&v88, &v99, &qword_1000267C0, &qword_100019ED0);
  v64 = *(v46 + 8);
  v64(v49, v50);
  v101 = v85;
  v102 = v86;
  v100[3] = v81;
  v100[4] = v82;
  v100[5] = v83;
  v100[6] = v84;
  v99 = v77;
  v100[0] = v78;
  v103 = v87;
  v100[1] = v79;
  v100[2] = v80;
  sub_100005EC4(&v99, &qword_1000267C0, &qword_100019ED0);
  return (v64)(v47, v50);
}

uint64_t sub_10000BB50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = Image.init(systemName:)();
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = v4;
    v7 = *(v5 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    if (v7)
    {
      if (v7 == 1)
      {
        v8 = sub_100006344();
        v9 = type metadata accessor for ClusterMetrics();
        v10 = v9;
        v11 = &off_100021580;
      }

      else
      {
        v8 = sub_100006378();
        v9 = type metadata accessor for WidgetMetrics();
        v10 = v9;
        v11 = &off_100021520;
      }
    }

    else
    {
      v8 = sub_100006310();
      v9 = type metadata accessor for ConsoleMetrics();
      v10 = v9;
      v11 = &off_1000215E0;
    }

    v17[3] = v9;
    v17[4] = v11;

    v17[0] = v8;
    sub_100005A4C(v17, v10);
    sub_100009244();
    v13 = (v11[11])(v12 * 0.4);
    KeyPath = swift_getKeyPath();
    sub_100005AA0(v17);
    v15 = static Color.green.getter();
    result = swift_getKeyPath();
    *a2 = v6;
    a2[1] = KeyPath;
    a2[2] = v13;
    a2[3] = result;
    a2[4] = v15;
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000BD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1;
  v63 = a2;
  sub_1000059F8();

  v6 = Text.init<A>(_:)();
  v9 = *(a3 + 48);
  if (v9)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    v61 = a4;
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = sub_100006344();
        v15 = type metadata accessor for ClusterMetrics();
        v16 = v15;
        v17 = &off_100021580;
      }

      else
      {
        v14 = sub_100006378();
        v15 = type metadata accessor for WidgetMetrics();
        v16 = v15;
        v17 = &off_100021520;
      }
    }

    else
    {
      v14 = sub_100006310();
      v15 = type metadata accessor for ConsoleMetrics();
      v16 = v15;
      v17 = &off_1000215E0;
    }

    v64 = v15;
    v65 = v17;
    v62 = v14;
    sub_100005A4C(&v62, v16);
    (v17[6])();
    v18 = Text.font(_:)();
    v20 = v19;
    v22 = v21;
    sub_100005A90(v10, v11, v12 & 1);

    sub_100005AA0(&v62);
    v23 = CAFChargingTimeObservable.observed.getter();
    v24 = [v23 remainingTimeInvalid];

    if (v24)
    {
      static Color.secondary.getter();
    }

    else
    {
      static Color.primary.getter();
    }

    v60 = Text.foregroundColor(_:)();
    v26 = v25;
    v59 = v27;
    v29 = v28;

    sub_100005A90(v18, v20, v22 & 1);

    v30 = [objc_opt_self() mainBundle];
    v66._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0x4D45525F454D4954;
    v31._object = 0xEE00474E494E4941;
    v32.value._countAndFlagsBits = 0x656772616843;
    v32.value._object = 0xE600000000000000;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v66._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v66);

    v34 = String.init(format:_:)();
    v36 = v35;

    v62 = v34;
    v63 = v36;
    v37 = Text.init<A>(_:)();
    v39 = v38;
    v41 = v40;
    if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v42 = sub_100006344();
        v43 = type metadata accessor for ClusterMetrics();
        v44 = v43;
        v45 = &off_100021580;
      }

      else
      {
        v42 = sub_100006378();
        v43 = type metadata accessor for WidgetMetrics();
        v44 = v43;
        v45 = &off_100021520;
      }
    }

    else
    {
      v42 = sub_100006310();
      v43 = type metadata accessor for ConsoleMetrics();
      v44 = v43;
      v45 = &off_1000215E0;
    }

    v64 = v43;
    v65 = v45;

    v62 = v42;
    sub_100005A4C(&v62, v44);
    (v45[7])();
    v46 = Text.font(_:)();
    v48 = v47;
    v50 = v49;
    sub_100005A90(v37, v39, v41 & 1);

    sub_100005AA0(&v62);
    static Color.secondary.getter();
    v51 = Text.foregroundColor(_:)();
    v53 = v52;
    v55 = v54;
    v57 = v56;

    sub_100005A90(v46, v48, v50 & 1);

    *v61 = v60;
    *(v61 + 8) = v26;
    *(v61 + 16) = v59 & 1;
    *(v61 + 24) = v29;
    *(v61 + 32) = v51;
    *(v61 + 40) = v53;
    *(v61 + 48) = v55 & 1;
    *(v61 + 56) = v57;
    sub_10000E198(v60, v26, v59 & 1);

    sub_10000E198(v51, v53, v55 & 1);

    sub_100005A90(v51, v53, v55 & 1);

    sub_100005A90(v60, v26, v59 & 1);
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v15 = static HorizontalAlignment.center.getter();
  LOBYTE(v40[0]) = 1;
  sub_10000C648(a1, a2, a3, &v52);
  v24 = *&v53[48];
  v25 = *&v53[64];
  v26 = *&v53[80];
  v27 = *&v53[96];
  v20 = v52;
  v21 = *v53;
  v22 = *&v53[16];
  v23 = *&v53[32];
  v28[0] = v52;
  v28[1] = *v53;
  v28[2] = *&v53[16];
  v28[3] = *&v53[32];
  v28[4] = *&v53[48];
  v28[5] = *&v53[64];
  v28[6] = *&v53[80];
  v28[7] = *&v53[96];
  sub_10000DE80(&v20, v42, &qword_1000267A0, &qword_100019EB0);
  sub_100005EC4(v28, &qword_1000267A0, &qword_100019EB0);
  *&v19[71] = v24;
  *&v19[87] = v25;
  *&v19[103] = v26;
  *&v19[119] = v27;
  *&v19[7] = v20;
  *&v19[23] = v21;
  *&v19[39] = v22;
  *&v19[55] = v23;
  v10 = v40[0];
  v14 = static HorizontalAlignment.center.getter();
  LOBYTE(v40[0]) = 1;
  sub_10000CC40(a4, a5, a3, &v52);
  v33 = *&v53[48];
  v34 = *&v53[64];
  v35 = *&v53[80];
  v36 = *&v53[96];
  v29 = v52;
  v30 = *v53;
  v31 = *&v53[16];
  v32 = *&v53[32];
  v37[0] = v52;
  v37[1] = *v53;
  v37[2] = *&v53[16];
  v37[3] = *&v53[32];
  v37[4] = *&v53[48];
  v37[5] = *&v53[64];
  v37[6] = *&v53[80];
  v37[7] = *&v53[96];
  sub_10000DE80(&v29, v42, &qword_1000267A0, &qword_100019EB0);
  sub_100005EC4(v37, &qword_1000267A0, &qword_100019EB0);
  *&v18[71] = v33;
  *&v18[87] = v34;
  *&v18[103] = v35;
  *&v18[119] = v36;
  *&v18[7] = v29;
  *&v18[23] = v30;
  *&v18[39] = v31;
  *&v18[55] = v32;
  v38 = v15;
  v39[0] = v10;
  *&v39[65] = *&v19[64];
  *&v39[49] = *&v19[48];
  *&v39[33] = *&v19[32];
  *&v39[17] = *&v19[16];
  *&v39[128] = *&v19[127];
  *&v39[113] = *&v19[112];
  *&v39[97] = *&v19[96];
  *&v39[81] = *&v19[80];
  *&v39[1] = *v19;
  __src[6] = *&v39[80];
  __src[7] = *&v39[96];
  __src[8] = *&v39[112];
  __src[2] = *&v39[16];
  __src[3] = *&v39[32];
  __src[4] = *&v39[48];
  __src[5] = *&v39[64];
  __src[0] = v15;
  __src[1] = *v39;
  *&v41[97] = *&v18[96];
  *&v41[81] = *&v18[80];
  *&v41[33] = *&v18[32];
  *&v41[17] = *&v18[16];
  *&v41[113] = *&v18[112];
  LOBYTE(a3) = v40[0];
  v40[0] = v14;
  v40[1] = 0;
  v41[0] = a3;
  *&v41[49] = *&v18[48];
  *&v41[65] = *&v18[64];
  *&v41[1] = *v18;
  *(&__src[16] + 8) = *&v41[96];
  *(&__src[17] + 8) = *&v41[112];
  *(&__src[15] + 8) = *&v41[80];
  *(&__src[11] + 8) = *&v41[16];
  *(&__src[12] + 8) = *&v41[32];
  *(&__src[13] + 8) = *&v41[48];
  *(&__src[14] + 8) = *&v41[64];
  *(&__src[9] + 8) = v14;
  *&v41[128] = *(&v36 + 1);
  *&__src[9] = *&v39[128];
  *(&__src[18] + 1) = *(&v36 + 1);
  *(&__src[10] + 8) = *v41;
  memcpy(a6, __src, 0x130uLL);
  v49 = *&v18[80];
  v50 = *&v18[96];
  *v51 = *&v18[112];
  v45 = *&v18[16];
  v46 = *&v18[32];
  v47 = *&v18[48];
  v48 = *&v18[64];
  v42[0] = v14;
  v42[1] = 0;
  v43 = a3;
  *&v51[15] = *&v18[127];
  v44 = *v18;
  sub_10000DE80(&v38, &v52, &qword_1000267A8, &qword_100019EB8);
  sub_10000DE80(v40, &v52, &qword_1000267A8, &qword_100019EB8);
  sub_100005EC4(v42, &qword_1000267A8, &qword_100019EB8);
  *&v53[81] = *&v19[80];
  *&v53[97] = *&v19[96];
  *v54 = *&v19[112];
  *&v53[17] = *&v19[16];
  *&v53[33] = *&v19[32];
  *&v53[49] = *&v19[48];
  *&v53[65] = *&v19[64];
  v52 = v15;
  v53[0] = v10;
  *&v54[15] = *&v19[127];
  *&v53[1] = *v19;
  return sub_100005EC4(&v52, &qword_1000267A8, &qword_100019EB8);
}

uint64_t sub_10000C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a1;
  v82 = a2;
  sub_1000059F8();

  v6 = Text.init<A>(_:)();
  v9 = *(a3 + 48);
  if (v9)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    v73 = a4;
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = sub_100006344();
        v15 = type metadata accessor for ClusterMetrics();
        v16 = v15;
        v17 = &off_100021580;
      }

      else
      {
        v14 = sub_100006378();
        v15 = type metadata accessor for WidgetMetrics();
        v16 = v15;
        v17 = &off_100021520;
      }
    }

    else
    {
      v14 = sub_100006310();
      v15 = type metadata accessor for ConsoleMetrics();
      v16 = v15;
      v17 = &off_1000215E0;
    }

    v96[3] = v15;
    v96[4] = v17;
    v96[0] = v14;
    sub_100005A4C(v96, v16);
    (v17[6])();
    v71 = Text.font(_:)();
    v72 = v18;
    v74 = v19;
    v21 = v20;
    sub_100005A90(v10, v11, v12 & 1);

    sub_100005AA0(v96);
    v22 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = v21 & 1;
    v100 = v31;
    v97 = 0;
    v32 = CAFBatteryLevelObservable.observed.getter();
    v33 = [v32 batteryLevelInvalid];

    if (v33)
    {
      v34 = static Color.secondary.getter();
    }

    else
    {
      v34 = static Color.primary.getter();
    }

    v35 = v34;
    KeyPath = swift_getKeyPath();
    v37 = [objc_opt_self() mainBundle];
    v102._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0x454752414843;
    v39.value._countAndFlagsBits = 0x656772616843;
    v38._object = 0xE600000000000000;
    v39.value._object = 0xE600000000000000;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v102._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v102);

    v41 = String.init(format:_:)();
    v43 = v42;

    v81 = v41;
    v82 = v43;
    v44 = Text.init<A>(_:)();
    v46 = v45;
    v48 = v47;
    v70 = v22;
    *&v69 = KeyPath;
    *(&v69 + 1) = v35;
    if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v49 = sub_100006344();
        v50 = type metadata accessor for ClusterMetrics();
        v51 = v50;
        v52 = &off_100021580;
      }

      else
      {
        v49 = sub_100006378();
        v50 = type metadata accessor for WidgetMetrics();
        v51 = v50;
        v52 = &off_100021520;
      }
    }

    else
    {
      v49 = sub_100006310();
      v50 = type metadata accessor for ConsoleMetrics();
      v51 = v50;
      v52 = &off_1000215E0;
    }

    v95[3] = v50;
    v95[4] = v52;

    v95[0] = v49;
    sub_100005A4C(v95, v51);
    (v52[7])();
    v53 = Text.font(_:)();
    v55 = v54;
    v57 = v56;
    sub_100005A90(v44, v46, v48 & 1);

    sub_100005AA0(v95);
    static Color.secondary.getter();
    v58 = Text.foregroundColor(_:)();
    v60 = v59;
    v68 = v61;
    v63 = v62;

    sub_100005A90(v53, v55, v57 & 1);

    *&v75 = v71;
    *(&v75 + 1) = v74;
    LOBYTE(v76) = v31;
    *(&v76 + 1) = *v99;
    DWORD1(v76) = *&v99[3];
    *(&v76 + 1) = v72;
    LOBYTE(v77) = v70;
    *(&v77 + 1) = *v98;
    DWORD1(v77) = *&v98[3];
    *(&v77 + 1) = v24;
    *&v78 = v26;
    *(&v78 + 1) = v28;
    *&v79 = v30;
    BYTE8(v79) = 0;
    HIDWORD(v79) = *(v101 + 3);
    *(&v79 + 9) = v101[0];
    v80 = v69;
    v64 = v77;
    v65 = v78;
    *(v73 + 64) = v79;
    *(v73 + 80) = v69;
    *(v73 + 32) = v64;
    *(v73 + 48) = v65;
    v66 = v76;
    *v73 = v75;
    *(v73 + 16) = v66;
    *(v73 + 96) = v58;
    *(v73 + 104) = v60;
    *(v73 + 112) = v68 & 1;
    *(v73 + 120) = v63;
    sub_10000DE80(&v75, &v81, &qword_1000267B0, &qword_100019EC0);
    sub_10000E198(v58, v60, v68 & 1);

    sub_100005A90(v58, v60, v68 & 1);

    v81 = v71;
    v82 = v74;
    v83 = v31;
    *v84 = *v99;
    *&v84[3] = *&v99[3];
    v85 = v72;
    v86 = v70;
    *v87 = *v98;
    *&v87[3] = *&v98[3];
    v88 = v24;
    v89 = v26;
    v90 = v28;
    v91 = v30;
    v92 = 0;
    *&v93[3] = *(v101 + 3);
    *v93 = v101[0];
    v94 = v69;
    return sub_100005EC4(&v81, &qword_1000267B0, &qword_100019EC0);
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000CC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a1;
  v82 = a2;
  sub_1000059F8();

  v6 = Text.init<A>(_:)();
  v9 = *(a3 + 48);
  if (v9)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    v73 = a4;
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = sub_100006344();
        v15 = type metadata accessor for ClusterMetrics();
        v16 = v15;
        v17 = &off_100021580;
      }

      else
      {
        v14 = sub_100006378();
        v15 = type metadata accessor for WidgetMetrics();
        v16 = v15;
        v17 = &off_100021520;
      }
    }

    else
    {
      v14 = sub_100006310();
      v15 = type metadata accessor for ConsoleMetrics();
      v16 = v15;
      v17 = &off_1000215E0;
    }

    v96[3] = v15;
    v96[4] = v17;
    v96[0] = v14;
    sub_100005A4C(v96, v16);
    (v17[6])();
    v71 = Text.font(_:)();
    v72 = v18;
    v74 = v19;
    v21 = v20;
    sub_100005A90(v10, v11, v12 & 1);

    sub_100005AA0(v96);
    v22 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = v21 & 1;
    v100 = v31;
    v97 = 0;
    v32 = CAFChargingTimeObservable.observed.getter();
    v33 = [v32 remainingTimeInvalid];

    if (v33)
    {
      v34 = static Color.secondary.getter();
    }

    else
    {
      v34 = static Color.primary.getter();
    }

    v35 = v34;
    KeyPath = swift_getKeyPath();
    v37 = [objc_opt_self() mainBundle];
    v102._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0x4D45525F454D4954;
    v38._object = 0xEE00474E494E4941;
    v39.value._countAndFlagsBits = 0x656772616843;
    v39.value._object = 0xE600000000000000;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v102._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v102);

    v41 = String.init(format:_:)();
    v43 = v42;

    v81 = v41;
    v82 = v43;
    v44 = Text.init<A>(_:)();
    v46 = v45;
    v48 = v47;
    v70 = v22;
    *&v69 = KeyPath;
    *(&v69 + 1) = v35;
    if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v49 = sub_100006344();
        v50 = type metadata accessor for ClusterMetrics();
        v51 = v50;
        v52 = &off_100021580;
      }

      else
      {
        v49 = sub_100006378();
        v50 = type metadata accessor for WidgetMetrics();
        v51 = v50;
        v52 = &off_100021520;
      }
    }

    else
    {
      v49 = sub_100006310();
      v50 = type metadata accessor for ConsoleMetrics();
      v51 = v50;
      v52 = &off_1000215E0;
    }

    v95[3] = v50;
    v95[4] = v52;

    v95[0] = v49;
    sub_100005A4C(v95, v51);
    (v52[7])();
    v53 = Text.font(_:)();
    v55 = v54;
    v57 = v56;
    sub_100005A90(v44, v46, v48 & 1);

    sub_100005AA0(v95);
    static Color.secondary.getter();
    v58 = Text.foregroundColor(_:)();
    v60 = v59;
    v68 = v61;
    v63 = v62;

    sub_100005A90(v53, v55, v57 & 1);

    *&v75 = v71;
    *(&v75 + 1) = v74;
    LOBYTE(v76) = v31;
    *(&v76 + 1) = *v99;
    DWORD1(v76) = *&v99[3];
    *(&v76 + 1) = v72;
    LOBYTE(v77) = v70;
    *(&v77 + 1) = *v98;
    DWORD1(v77) = *&v98[3];
    *(&v77 + 1) = v24;
    *&v78 = v26;
    *(&v78 + 1) = v28;
    *&v79 = v30;
    BYTE8(v79) = 0;
    HIDWORD(v79) = *(v101 + 3);
    *(&v79 + 9) = v101[0];
    v80 = v69;
    v64 = v77;
    v65 = v78;
    *(v73 + 64) = v79;
    *(v73 + 80) = v69;
    *(v73 + 32) = v64;
    *(v73 + 48) = v65;
    v66 = v76;
    *v73 = v75;
    *(v73 + 16) = v66;
    *(v73 + 96) = v58;
    *(v73 + 104) = v60;
    *(v73 + 112) = v68 & 1;
    *(v73 + 120) = v63;
    sub_10000DE80(&v75, &v81, &qword_1000267B0, &qword_100019EC0);
    sub_10000E198(v58, v60, v68 & 1);

    sub_100005A90(v58, v60, v68 & 1);

    v81 = v71;
    v82 = v74;
    v83 = v31;
    *v84 = *v99;
    *&v84[3] = *&v99[3];
    v85 = v72;
    v86 = v70;
    *v87 = *v98;
    *&v87[3] = *&v98[3];
    v88 = v24;
    v89 = v26;
    v90 = v28;
    v91 = v30;
    v92 = 0;
    *&v93[3] = *(v101 + 3);
    *v93 = v101[0];
    v94 = v69;
    return sub_100005EC4(&v81, &qword_1000267B0, &qword_100019EC0);
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D248@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a1;
  v91 = a2;
  sub_1000059F8();

  v9 = Text.init<A>(_:)();
  v12 = *(a3 + 48);
  if (v12)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = *(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    swift_retain_n();
    v87 = a6;
    v83 = a5;
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = sub_100006344();
        v18 = type metadata accessor for ClusterMetrics();
        v19 = v18;
        v20 = &off_100021580;
      }

      else
      {
        v17 = sub_100006378();
        v18 = type metadata accessor for WidgetMetrics();
        v19 = v18;
        v20 = &off_100021520;
      }
    }

    else
    {
      v17 = sub_100006310();
      v18 = type metadata accessor for ConsoleMetrics();
      v19 = v18;
      v20 = &off_1000215E0;
    }

    v92 = v18;
    v93 = v20;
    v90 = v17;
    sub_100005A4C(&v90, v19);
    (v20[6])();
    v21 = Text.font(_:)();
    v23 = v22;
    v25 = v24;
    sub_100005A90(v13, v14, v15 & 1);

    sub_100005AA0(&v90);
    static Color.secondary.getter();
    v26 = Text.foregroundColor(_:)();
    v88 = v27;
    v85 = v28;
    v30 = v29;

    sub_100005A90(v21, v23, v25 & 1);

    v90 = a4;
    v91 = v83;

    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    v86 = v30;
    v89 = v26;
    v80 = *(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    if (*(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v36 = sub_100006344();
        v37 = type metadata accessor for ClusterMetrics();
        v38 = v37;
        v39 = &off_100021580;
      }

      else
      {
        v36 = sub_100006378();
        v37 = type metadata accessor for WidgetMetrics();
        v38 = v37;
        v39 = &off_100021520;
      }
    }

    else
    {
      v36 = sub_100006310();
      v37 = type metadata accessor for ConsoleMetrics();
      v38 = v37;
      v39 = &off_1000215E0;
    }

    v92 = v37;
    v93 = v39;

    v90 = v36;
    sub_100005A4C(&v90, v38);
    (v39[8])();
    v40 = Text.font(_:)();
    v42 = v41;
    v44 = v43;
    sub_100005A90(v31, v33, v35 & 1);

    sub_100005AA0(&v90);
    v45 = CAFBatteryLevelObservable.observed.getter();
    v46 = [v45 batteryLevelInvalid];

    if (v46)
    {
      static Color.secondary.getter();
    }

    else
    {
      static Color.primary.getter();
    }

    v47 = Text.foregroundColor(_:)();
    v81 = v48;
    v50 = v49;
    v84 = v51;

    sub_100005A90(v40, v42, v44 & 1);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v53 = v90;
    v52 = v91;

    v54 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v54 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v55 = Text.init<A>(_:)();
      v57 = v56;
      v59 = v58;
      v79 = v50;
      if (v80)
      {
        if (v80 == 1)
        {
          v60 = sub_100006344();
          v61 = type metadata accessor for ClusterMetrics();
          v62 = v61;
          v63 = &off_100021580;
        }

        else
        {
          v60 = sub_100006378();
          v61 = type metadata accessor for WidgetMetrics();
          v62 = v61;
          v63 = &off_100021520;
        }
      }

      else
      {
        v60 = sub_100006310();
        v61 = type metadata accessor for ConsoleMetrics();
        v62 = v61;
        v63 = &off_1000215E0;
      }

      v92 = v61;
      v93 = v63;

      v90 = v60;
      sub_100005A4C(&v90, v62);
      (v63[7])();
      v69 = Text.font(_:)();
      v71 = v70;
      v73 = v72;
      sub_100005A90(v55, v57, v59 & 1);

      sub_100005AA0(&v90);
      static Color.secondary.getter();
      v64 = Text.foregroundColor(_:)();
      v65 = v74;
      v76 = v75;
      v67 = v77;

      sub_100005A90(v69, v71, v73 & 1);

      v66 = v76 & 1;
      sub_10000E198(v64, v65, v76 & 1);

      v68 = v84;
      v50 = v79;
    }

    else
    {

      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = v84;
    }

    LOBYTE(v90) = v85 & 1;
    sub_10000E198(v89, v88, v85 & 1);

    sub_10000E198(v47, v81, v50 & 1);

    sub_10000E448(v64, v65, v66, v67);
    sub_10000E48C(v64, v65, v66, v67);
    *v87 = v89;
    *(v87 + 8) = v88;
    *(v87 + 16) = v85 & 1;
    *(v87 + 24) = v86;
    *(v87 + 32) = v47;
    *(v87 + 40) = v81;
    *(v87 + 48) = v50 & 1;
    *(v87 + 56) = v68;
    *(v87 + 64) = v64;
    *(v87 + 72) = v65;
    *(v87 + 80) = v66;
    *(v87 + 88) = v67;
    sub_10000E48C(v64, v65, v66, v67);
    sub_100005A90(v47, v81, v50 & 1);

    sub_100005A90(v89, v88, v90);
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005790(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000DA64()
{
  result = qword_100026638;
  if (!qword_100026638)
  {
    sub_1000028A8(&qword_1000265E0, &qword_100019CC0);
    sub_100006174(&qword_100026640, &qword_100026648, &qword_100019D18, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026638);
  }

  return result;
}

unint64_t sub_10000DB4C()
{
  result = qword_100026660;
  if (!qword_100026660)
  {
    sub_1000028A8(&qword_1000265C0, &qword_100019CA0);
    sub_100006174(&qword_100026640, &qword_100026648, &qword_100019D18, &protocol conformance descriptor for VStack<A>);
    sub_10000DC04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026660);
  }

  return result;
}

unint64_t sub_10000DC04()
{
  result = qword_100026668;
  if (!qword_100026668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026668);
  }

  return result;
}

unint64_t sub_10000DC58()
{
  result = qword_100026678;
  if (!qword_100026678)
  {
    sub_1000028A8(&qword_1000265E8, &qword_100019CC8);
    sub_10000DA64();
    sub_10000DFE4(&qword_100026650, &qword_1000265D0, &qword_100019CB0, sub_10000DB1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026678);
  }

  return result;
}

unint64_t sub_10000DD10()
{
  result = qword_100026680;
  if (!qword_100026680)
  {
    sub_1000028A8(&qword_100026620, &qword_100019D00);
    sub_100006174(&qword_100026688, &qword_100026608, &qword_100019CE8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026680);
  }

  return result;
}

unint64_t sub_10000DDC8()
{
  result = qword_100026690;
  if (!qword_100026690)
  {
    sub_1000028A8(&qword_1000265F8, &qword_100019CD8);
    sub_100006174(&qword_100026670, &qword_100026600, &qword_100019CE0, &protocol conformance descriptor for VStack<A>);
    sub_10000DC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026690);
  }

  return result;
}

uint64_t sub_10000DE80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005790(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000DEE8()
{
  result = qword_1000266B8;
  if (!qword_1000266B8)
  {
    sub_1000028A8(&qword_1000266A8, &qword_100019D38);
    sub_1000028A8(&qword_1000266C0, &qword_100019D48);
    sub_10000DFE4(&qword_1000266C8, &qword_1000266C0, &qword_100019D48, sub_10000E068);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000266B8);
  }

  return result;
}

uint64_t sub_10000DFE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000028A8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000E098()
{
  result = qword_1000266E0;
  if (!qword_1000266E0)
  {
    sub_1000028A8(&qword_1000266E8, &qword_100019D58);
    sub_100006174(&qword_1000266F0, &qword_1000266F8, &qword_100019D60, &protocol conformance descriptor for Gauge<A, B, C, D>);
    sub_100006174(&qword_100026700, &qword_100026708, &qword_100019D68, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000266E0);
  }

  return result;
}

double sub_10000E17C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000E198(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000E1B0()
{
  result = qword_100026740;
  if (!qword_100026740)
  {
    sub_1000028A8(&qword_100026738, &qword_100019D98);
    sub_10000E268();
    sub_100006174(&qword_100026768, &qword_100026770, &qword_100019DB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026740);
  }

  return result;
}

unint64_t sub_10000E268()
{
  result = qword_100026748;
  if (!qword_100026748)
  {
    sub_1000028A8(&qword_100026750, &qword_100019DA0);
    sub_100006174(&qword_100026758, &qword_100026760, &qword_100019DA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026748);
  }

  return result;
}

unint64_t sub_10000E320()
{
  result = qword_100026778;
  if (!qword_100026778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026778);
  }

  return result;
}

uint64_t sub_10000E374@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

double sub_10000E3E4(uint64_t a1)
{
  *(a1 + 368) = 0;
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_10000E420(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000E448(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000E198(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000E48C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100005A90(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10000E4D4()
{
  result = qword_1000267D0;
  if (!qword_1000267D0)
  {
    sub_1000028A8(&qword_1000267D8, qword_100019F28);
    sub_10000DD10();
    sub_10000DDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000267D0);
  }

  return result;
}

uint64_t sub_10000E560()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_10000E5D4()
{
  result = [objc_allocWithZone(CAFCarManager) init];
  qword_1000267E0 = result;
  return result;
}

void sub_10000E608()
{
  if (qword_100025FE8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000267E0;
  sub_100005F24(0, &qword_100026930, CAFCarManager_ptr);
  sub_100002668(&qword_100026938, &qword_100026930, CAFCarManager_ptr, &protocol conformance descriptor for CAFCarManager);
  v1 = v0;
  v2 = CAFObserved<>.observable.getter();

  type metadata accessor for ChargeCAFManager(0);
  swift_allocObject();
  v3 = sub_10000EC5C(v2);

  qword_100028280 = v3;
}

uint64_t sub_10000E700(void **a1, uint64_t a2)
{
  v2 = *a1;
  _StringGuts.grow(_:)(22);

  v2;
  sub_100005790(&qword_100026958, &qword_100019FA8);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  sub_1000077DC(0xD000000000000014, 0x8000000100017670, 0xD000000000000011, 0x8000000100017650, 28);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      sub_100005F24(0, &qword_100026960, CAFCar_ptr);
      sub_100002668(&qword_100026968, &qword_100026960, CAFCar_ptr, &protocol conformance descriptor for CAFCar);
      v5 = CAFObserved<>.observable.getter();
      v6 = objc_allocWithZone(type metadata accessor for ChargeModel(0));
      sub_1000138CC(v5);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10000E8C8()
{
  sub_1000077DC(0xD000000000000025, 0x8000000100017690, 0x74696E696564, 0xE600000000000000, 35);
  v1 = OBJC_IVAR____TtC6Charge16ChargeCAFManager__model;
  v2 = sub_100005790(&qword_100026948, &qword_100019FA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ChargeCAFManager(uint64_t a1)
{
  result = qword_100026828;
  if (!qword_100026828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000EA14(uint64_t a1)
{
  sub_10000EAC0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000EAC0(uint64_t a1)
{
  if (!qword_100026838)
  {
    sub_1000028A8(&unk_100026840, "V4");
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100026838);
    }
  }
}

uint64_t sub_10000EB24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ChargeCAFManager(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10000EB64@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10000EBE4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_10000EC5C(void *a1)
{
  v2 = v1;
  v4 = sub_100005790(&qword_100026940, &qword_100019F98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  v8 = sub_100005790(&qword_100026948, &qword_100019FA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - v10;
  v12 = OBJC_IVAR____TtC6Charge16ChargeCAFManager__model;
  v15[1] = 0;
  sub_100005790(&unk_100026840, "V4");
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v12, v11, v8);
  *(v2 + OBJC_IVAR____TtC6Charge16ChargeCAFManager_cancellables) = &_swiftEmptySetSingleton;
  sub_1000077DC(0xD000000000000020, 0x8000000100017620, 0xD000000000000011, 0x8000000100017650, 23);
  *(v2 + OBJC_IVAR____TtC6Charge16ChargeCAFManager_carManager) = a1;
  v13 = a1;
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  swift_allocObject();
  swift_weakInit();
  sub_10000EF44();
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_10000EF04()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000EF44()
{
  result = qword_100026950;
  if (!qword_100026950)
  {
    sub_1000028A8(&qword_100026940, &qword_100019F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026950);
  }

  return result;
}

char *sub_10000EFB0(void *a1, char a2)
{
  v5 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  v6 = OBJC_IVAR____TtC6Charge19ChargeWindowManager_window;
  *&v2[OBJC_IVAR____TtC6Charge19ChargeWindowManager_window] = v5;
  [v5 setAutoresizesSubviews:1];
  [*&v2[v6] setHidden:0];
  [*&v2[v6] makeKeyAndVisible];
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ChargeWindowManager();
  v7 = objc_msgSendSuper2(&v16, "init");
  v8 = *&v7[OBJC_IVAR____TtC6Charge19ChargeWindowManager_window];
  v9 = type metadata accessor for ChargeViewController();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC6Charge20ChargeViewController_presentationMode] = a2;
  v15.receiver = v10;
  v15.super_class = v9;
  v11 = v7;
  v12 = v8;
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  [v12 setRootViewController:{v13, v15.receiver, v15.super_class}];

  return v11;
}

id sub_10000F114(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ChargeWindowManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000F1A0()
{
  v1 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v6 = [v1 scaledFontForFont:v5];

  *(v0 + 16) = Font.init(_:)();
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v8 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v9 = [v4 systemFontOfSize:64.0 weight:UIFontWeightMedium];
  v10 = [v7 scaledFontForFont:v9];

  *(v0 + 24) = Font.init(_:)();
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v12 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v13 = [v4 systemFontOfSize:22.0 weight:UIFontWeightMedium];
  v14 = [v11 scaledFontForFont:v13];

  *(v0 + 32) = Font.init(_:)();
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v16 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v17 = [v4 systemFontOfSize:18.0 weight:UIFontWeightMedium];
  v18 = [v15 scaledFontForFont:v17];

  Font.init(_:)();
  v19 = Font.monospaced()();

  *(v0 + 40) = v19;
  v20 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v21 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  v22 = [v4 systemFontOfSize:20.0 weight:UIFontWeightMedium];
  v23 = [v20 scaledFontForFont:v22];

  *(v0 + 48) = Font.init(_:)();
  v24 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
  v25 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v26 = [v4 systemFontOfSize:24.0 weight:UIFontWeightMedium];
  v27 = [v24 scaledFontForFont:v26];

  *(v0 + 56) = Font.init(_:)();
  v28 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
  v29 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v30 = [v4 systemFontOfSize:14.0 weight:UIFontWeightMedium];
  v31 = [v28 scaledFontForFont:v30];

  *(v0 + 64) = Font.init(_:)();
  v32 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v33 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v34 = [v4 systemFontOfSize:55.0 weight:UIFontWeightMedium];
  v35 = [v32 scaledFontForFont:v34];

  *(v0 + 72) = Font.init(_:)();
  *(v0 + 80) = xmmword_10001A020;
  *(v0 + 96) = xmmword_10001A030;
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_10000F76C()
{
  v1 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:74.0 weight:UIFontWeightMedium];
  v6 = [v1 scaledFontForFont:v5];

  *(v0 + 16) = Font.init(_:)();
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v8 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v9 = [v4 systemFontOfSize:118.0 weight:UIFontWeightMedium];
  v10 = [v7 scaledFontForFont:v9];

  *(v0 + 24) = Font.init(_:)();
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v12 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v13 = [v4 systemFontOfSize:28.0 weight:UIFontWeightMedium];
  v14 = [v11 scaledFontForFont:v13];

  *(v0 + 32) = Font.init(_:)();
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v16 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v17 = [v4 systemFontOfSize:22.0 weight:UIFontWeightMedium];
  v18 = [v15 scaledFontForFont:v17];

  Font.init(_:)();
  v19 = Font.monospaced()();

  *(v0 + 40) = v19;
  v20 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v21 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  v22 = [v4 systemFontOfSize:36.0 weight:UIFontWeightMedium];
  v23 = [v20 scaledFontForFont:v22];

  *(v0 + 48) = Font.init(_:)();
  v24 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
  v25 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v26 = [v4 systemFontOfSize:40.0 weight:UIFontWeightMedium];
  v27 = [v24 scaledFontForFont:v26];

  *(v0 + 56) = Font.init(_:)();
  v28 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
  v29 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v30 = [v4 systemFontOfSize:30.0 weight:UIFontWeightMedium];
  v31 = [v28 scaledFontForFont:v30];

  *(v0 + 64) = Font.init(_:)();
  v32 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v33 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v34 = [v4 systemFontOfSize:140.0 weight:UIFontWeightMedium];
  v35 = [v32 scaledFontForFont:v34];

  *(v0 + 72) = Font.init(_:)();
  __asm { FMOV            V1.2D, #16.0 }

  *(v0 + 80) = xmmword_10001A040;
  *(v0 + 96) = _Q1;
  *(v0 + 112) = 0x4030000000000000;
  return v0;
}

void *sub_10000FD88()
{

  return v0;
}

uint64_t sub_10000FDE0()
{
  sub_10000FD88();

  return _swift_deallocClassInstance(v0, 120, 7);
}

uint64_t sub_10000FE38()
{
  v1 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v6 = [v1 scaledFontForFont:v5];

  *(v0 + 16) = Font.init(_:)();
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v8 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v9 = [v4 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v10 = [v7 scaledFontForFont:v9];

  *(v0 + 24) = Font.init(_:)();
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v12 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v13 = [v4 systemFontOfSize:18.0 weight:UIFontWeightMedium];
  v14 = [v11 scaledFontForFont:v13];

  *(v0 + 32) = Font.init(_:)();
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v16 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v17 = [v4 systemFontOfSize:24.0 weight:UIFontWeightMedium];
  v18 = [v15 scaledFontForFont:v17];

  Font.init(_:)();
  v19 = Font.monospaced()();

  *(v0 + 40) = v19;
  v20 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v21 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  v22 = [v4 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v23 = [v20 scaledFontForFont:v22];

  *(v0 + 48) = Font.init(_:)();
  v24 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
  v25 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v26 = [v4 systemFontOfSize:40.0 weight:UIFontWeightMedium];
  v27 = [v24 scaledFontForFont:v26];

  *(v0 + 56) = Font.init(_:)();
  v28 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
  v29 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v30 = [v4 systemFontOfSize:24.0 weight:UIFontWeightMedium];
  v31 = [v28 scaledFontForFont:v30];

  *(v0 + 64) = Font.init(_:)();
  v32 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v33 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v34 = [v4 systemFontOfSize:45.0 weight:UIFontWeightMedium];
  v35 = [v32 scaledFontForFont:v34];

  *(v0 + 72) = Font.init(_:)();
  *(v0 + 80) = xmmword_10001A050;
  *(v0 + 96) = xmmword_10001A060;
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_1000103E8(double a1)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v4 = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightMedium];
  v5 = [v2 scaledFontForFont:v4];

  return Font.init(_:)();
}

uint64_t sub_10001050C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100010554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000105C0@<X0>(uint64_t a1@<X0>, void *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a3;
  static Published.subscript.getter();

  if (v9 != 1)
  {

    type metadata accessor for LayoutConfiguration(0);
    sub_10001098C(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    EnvironmentObject.init()();
    goto LABEL_5;
  }

  if (a1)
  {
    type metadata accessor for ChargeModel(0);
    sub_10001098C(&qword_1000265A8, type metadata accessor for ChargeModel, &unk_10001A770);
    ObservedObject.init(wrappedValue:)();
    sub_1000108E4();
    sub_100010938();
    _ConditionalContent<>.init(storage:)();
LABEL_5:
    sub_100005790(&qword_100026E08, &qword_10001A2C0);
    sub_100010858();
    sub_100002614();
    result = _ConditionalContent<>.init(storage:)();
    *a4 = v9;
    *(a4 + 16) = v10;
    *(a4 + 18) = v11;
    return result;
  }

  type metadata accessor for LayoutConfiguration(0);
  sub_10001098C(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t sub_100010858()
{
  result = qword_100026E10;
  if (!qword_100026E10)
  {
    sub_1000028A8(&qword_100026E08, &qword_10001A2C0);
    sub_1000108E4();
    sub_100010938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026E10);
  }

  return result;
}

unint64_t sub_1000108E4()
{
  result = qword_100026E18;
  if (!qword_100026E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026E18);
  }

  return result;
}

unint64_t sub_100010938()
{
  result = qword_100026E20;
  if (!qword_100026E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026E20);
  }

  return result;
}

uint64_t sub_10001098C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000109D8()
{
  result = qword_100026E28;
  if (!qword_100026E28)
  {
    sub_1000028A8(&qword_100026E30, &qword_10001A2C8);
    sub_100010858();
    sub_100002614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026E28);
  }

  return result;
}

void sub_100010AC0(uint64_t a1)
{
  v2 = v1;
  v47.receiver = v1;
  v47.super_class = type metadata accessor for ChargeViewController();
  objc_msgSendSuper2(&v47, "viewDidLoad");
  v3 = *(v1 + OBJC_IVAR____TtC6Charge20ChargeViewController_presentationMode);
  type metadata accessor for LayoutConfiguration(0);
  v4 = swift_allocObject();
  type metadata accessor for CGSize(0);
  Published.init(initialValue:)();
  *(v4 + OBJC_IVAR____TtC6Charge19LayoutConfiguration____lazy_storage___consoleMetrics) = 0;
  *(v4 + OBJC_IVAR____TtC6Charge19LayoutConfiguration____lazy_storage___clusterMetrics) = 0;
  *(v4 + OBJC_IVAR____TtC6Charge19LayoutConfiguration____lazy_storage___widgetMetrics) = 0;
  *(v4 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) = v3;
  LOBYTE(v45) = 0;
  v46 = v4;
  v5 = objc_allocWithZone(sub_100005790(&qword_100026E68, &qword_10001A2F8));
  v6 = UIHostingController.init(rootView:)();
  [v2 addChildViewController:{v6, sub_1000111C4, 0, v45, v46}];
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [v6 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [v2 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v6 view];

  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v12 addSubview:v13];

  [v6 didMoveToParentViewController:v2];
  sub_100005790(&qword_100026E70, &unk_10001A300);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10001A2D0;
  v15 = [v6 view];

  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = [v15 topAnchor];

  v17 = [v2 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [v17 safeAreaLayoutGuide];

  v20 = [v19 topAnchor];
  v21 = [v16 constraintEqualToAnchor:v20];

  *(v14 + 32) = v21;
  v22 = [v6 view];

  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = [v22 bottomAnchor];

  v24 = [v2 view];
  if (!v24)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 bottomAnchor];
  v28 = [v23 constraintEqualToAnchor:v27];

  *(v14 + 40) = v28;
  v29 = [v6 view];

  if (!v29)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = [v29 leadingAnchor];

  v31 = [v2 view];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v33 = [v31 safeAreaLayoutGuide];

  v34 = [v33 leadingAnchor];
  v35 = [v30 constraintEqualToAnchor:v34];

  *(v14 + 48) = v35;
  v36 = [v6 view];

  if (!v36)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = [v36 trailingAnchor];

  v38 = [v2 view];
  if (v38)
  {
    v39 = v38;
    v40 = objc_opt_self();
    v41 = [v39 safeAreaLayoutGuide];

    v42 = [v41 trailingAnchor];
    v43 = [v37 constraintEqualToAnchor:v42];

    *(v14 + 56) = v43;
    sub_100011178();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v40 activateConstraints:isa];

    CAFSignpostEmit_Rendered();
    return;
  }

LABEL_25:
  __break(1u);
}

id sub_100011120(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ChargeViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100011178()
{
  result = qword_100026E78;
  if (!qword_100026E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026E78);
  }

  return result;
}

uint64_t sub_1000111C4()
{
  if (qword_100025FF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100011258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ChargeCAFManager(0);
  sub_100011D40(&qword_100026E88, type metadata accessor for ChargeCAFManager, &unk_100019F60);
  v31 = a3;
  v32 = a1;
  v33 = a2;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v41)
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100011D40(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    v30 = v41;
    EnvironmentObject.init()();
    type metadata accessor for ChargeModel(0);
    sub_100011D40(&qword_1000265A8, type metadata accessor for ChargeModel, &unk_10001A770);
    ObservedObject.init(wrappedValue:)();
    v10 = v9;
    static ObservableObject.environmentStore.getter();
    LOBYTE(v39[0]) = 0;
    v11 = a4;

    v29 = v10;

    swift_retain_n();
    sub_100005790(&qword_100026E90, &qword_10001A448);
    sub_100005790(&qword_100026E98, &qword_10001A450);
    sub_100011BD0(&qword_100026EA0, &qword_100026E90, &qword_10001A448, sub_100011B7C);
    sub_100011BD0(&qword_100026EC0, &qword_100026E98, &qword_10001A450, sub_100011C80);
    _ConditionalContent<>.init(storage:)();

    v49 = v43;
    *v50 = *v44;
    *&v50[9] = *&v44[9];
    v47 = v41;
    v48 = v42;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
    v51._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0x494C414954494E49;
    v13._object = 0xEC000000474E495ALL;
    v14.value._countAndFlagsBits = 0x656772616843;
    v14.value._object = 0xE600000000000000;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v51._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v51);

    v16 = String.init(format:_:)();
    v18 = v17;

    type metadata accessor for LayoutConfiguration(0);
    sub_100011D40(&qword_100026120, type metadata accessor for LayoutConfiguration, &unk_100019960);
    v19 = EnvironmentObject.init()();
    v21 = v20;
    LOBYTE(v47) = 1;
    State.init(wrappedValue:)();
    v22 = *(&v41 + 1);
    LOBYTE(v45[0]) = 1;
    *&v41 = v19;
    *(&v41 + 1) = v21;
    LOBYTE(v42) = 0;
    *(&v42 + 1) = v22;
    *&v43 = v16;
    *(&v43 + 1) = v18;
    *v44 = 0x4049000000000000;
    v11 = a4;
    *&v44[8] = static ObservableObject.environmentStore.getter();
    *&v44[16] = a4;
    v44[24] = 1;

    sub_100005790(&qword_100026E90, &qword_10001A448);
    sub_100005790(&qword_100026E98, &qword_10001A450);
    sub_100011BD0(&qword_100026EA0, &qword_100026E90, &qword_10001A448, sub_100011B7C);
    sub_100011BD0(&qword_100026EC0, &qword_100026E98, &qword_10001A450, sub_100011C80);
    _ConditionalContent<>.init(storage:)();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v32;
  *(v23 + 24) = v33;
  *(v23 + 32) = v31 & 1;
  *(v23 + 40) = v11;
  v37 = v49;
  *v38 = *v50;
  *&v38[9] = *&v50[9];
  *(v40 + 9) = *&v50[9];
  v39[2] = v49;
  v40[0] = *v50;
  v24 = v48;
  v35 = v47;
  v36 = v48;
  v39[0] = v47;
  v39[1] = v48;
  *&v44[9] = *&v50[9];
  v43 = v49;
  *v44 = *v50;
  v41 = v47;
  v42 = v48;
  v25 = v47;
  v26 = v49;
  v27 = *&v44[16];
  *(a5 + 48) = *v50;
  *(a5 + 64) = v27;
  *(a5 + 16) = v24;
  *(a5 + 32) = v26;
  *a5 = v25;
  *(a5 + 80) = sub_100011D20;
  *(a5 + 88) = v23;
  sub_100011D38(v32, v33);

  sub_10000DE80(v39, v45, &qword_100026ED0, &qword_10001A460);
  v45[2] = v37;
  v46[0] = *v38;
  *(v46 + 9) = *&v38[9];
  v45[0] = v35;
  v45[1] = v36;
  return sub_100005EC4(v45, &qword_100026ED0, &qword_10001A460);
}

uint64_t sub_100011874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v18 = a5;
  v11 = type metadata accessor for GeometryProxy();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v17 = static Color.clear.getter();
  (*(v12 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4 & 1;
  *(v15 + 40) = v18;
  (*(v12 + 32))(v15 + v14, &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *a6 = v17;
  a6[1] = sub_100011E58;
  a6[2] = v15;
  a6[3] = 0;
  a6[4] = 0;
  sub_100011D38(a2, a3);
}

uint64_t sub_1000119FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  GeometryProxy.size.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_100011A84@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = static Alignment.center.getter();
  v10 = v9;
  sub_100011258(v4, v5, v6, v7, &v16);
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v22 = v16;
  v23 = v17;
  v28[2] = v18;
  v28[3] = v19;
  v28[4] = v20;
  v28[5] = v21;
  v28[0] = v16;
  v28[1] = v17;
  sub_10000DE80(&v22, v15, &qword_100026E80, &qword_10001A3F8);
  sub_100005EC4(v28, &qword_100026E80, &qword_10001A3F8);
  *a2 = v8;
  *(a2 + 8) = v10;
  v11 = v25;
  *(a2 + 48) = v24;
  *(a2 + 64) = v11;
  v12 = v27;
  *(a2 + 80) = v26;
  *(a2 + 96) = v12;
  result = *&v22;
  v14 = v23;
  *(a2 + 16) = v22;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_100011B7C()
{
  result = qword_100026EA8;
  if (!qword_100026EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026EA8);
  }

  return result;
}

uint64_t sub_100011BD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000028A8(a2, a3);
    a4();
    sub_100006174(&qword_100026EB0, &qword_100026EB8, &qword_10001A458, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011C80()
{
  result = qword_100026EC8;
  if (!qword_100026EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026EC8);
  }

  return result;
}

uint64_t sub_100011CD4()
{
  sub_100011D18(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100011D88()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  sub_100011D18(*(v0 + 16), *(v0 + 24));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011E58()
{
  type metadata accessor for GeometryProxy();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  return sub_1000119FC(v1, v2, v3, v4);
}

uint64_t sub_100011F18(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100011F74(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100011FF0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = Image.init(systemName:)();
  v6 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    v8 = KeyPath;
    v9 = *(a1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    v46 = v6;
    v47 = v5;
    v45 = v8;
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = sub_100006344();
        v11 = type metadata accessor for ClusterMetrics();
        v12 = v11;
        v13 = &off_100021580;
      }

      else
      {
        v10 = sub_100006378();
        v11 = type metadata accessor for WidgetMetrics();
        v12 = v11;
        v13 = &off_100021520;
      }
    }

    else
    {
      v10 = sub_100006310();
      v11 = type metadata accessor for ConsoleMetrics();
      v12 = v11;
      v13 = &off_1000215E0;
    }

    v49 = v11;
    v50 = v13;
    v48[0] = v10;
    sub_100005A4C(v48, v12);
    v44 = (v13[2])();
    v43 = swift_getKeyPath();
    sub_100005AA0(v48);
    v14 = [objc_opt_self() mainBundle];
    v51._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0x524148435F544F4ELL;
    v15._object = 0xEC000000474E4947;
    v16.value._countAndFlagsBits = 0x656772616843;
    v16.value._object = 0xE600000000000000;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v51._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v51);

    v18 = String.init(format:_:)();
    v20 = v19;

    v48[0] = v18;
    v48[1] = v20;
    sub_1000059F8();
    v21 = Text.init<A>(_:)();
    v23 = v22;
    v25 = v24;
    static Color.secondary.getter();
    v26 = Text.foregroundColor(_:)();
    v28 = v27;
    v30 = v29;

    sub_100005A90(v21, v23, v25 & 1);

    if (*(a1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(a1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v31 = sub_100006344();
        v32 = type metadata accessor for ClusterMetrics();
        v33 = v32;
        v34 = &off_100021580;
      }

      else
      {
        v31 = sub_100006378();
        v32 = type metadata accessor for WidgetMetrics();
        v33 = v32;
        v34 = &off_100021520;
      }
    }

    else
    {
      v31 = sub_100006310();
      v32 = type metadata accessor for ConsoleMetrics();
      v33 = v32;
      v34 = &off_1000215E0;
    }

    v49 = v32;
    v50 = v34;

    v48[0] = v31;
    sub_100005A4C(v48, v33);
    (v34[1])();
    v35 = Text.font(_:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_100005A90(v26, v28, v30 & 1);

    sub_100005AA0(v48);
    *a3 = v47;
    *(a3 + 8) = v45;
    *(a3 + 16) = v46;
    *(a3 + 24) = v43;
    *(a3 + 32) = v44;
    *(a3 + 40) = v35;
    *(a3 + 48) = v37;
    *(a3 + 56) = v39 & 1;
    *(a3 + 64) = v41;

    sub_10000E198(v35, v37, v39 & 1);

    sub_100005A90(v35, v37, v39 & 1);
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100012640();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10001245C@<D0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = static HorizontalAlignment.center.getter();
  v17 = 1;
  sub_100011FF0(v4, &v11);
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v18 = v11;
  v23[1] = v12;
  v23[2] = v13;
  v23[3] = v14;
  v24 = v15;
  v23[0] = v11;
  sub_100012560(&v18, v10);
  sub_1000125D0(v23);
  *&v16[7] = v18;
  *&v16[71] = v22;
  *&v16[55] = v21;
  *&v16[39] = v20;
  *&v16[23] = v19;
  v6 = *v16;
  *(a1 + 33) = *&v16[16];
  v7 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v7;
  result = *&v16[63];
  *(a1 + 80) = *&v16[63];
  v9 = v17;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_100012560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005790(&qword_100026EE8, &qword_10001A540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000125D0(uint64_t a1)
{
  v2 = sub_100005790(&qword_100026EE8, &qword_10001A540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100012640()
{
  result = qword_100026120;
  if (!qword_100026120)
  {
    type metadata accessor for LayoutConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026120);
  }

  return result;
}

unint64_t sub_1000126A4()
{
  result = qword_100026EF0;
  if (!qword_100026EF0)
  {
    sub_1000028A8(&qword_100026EF8, &qword_10001A5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026EF0);
  }

  return result;
}

__n128 sub_100012708(uint64_t a1, uint64_t a2)
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

uint64_t sub_100012724(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001276C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1000127E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100005790(&qword_100026F08, &qword_10001A670);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = a1[5];
  v54[0] = a1[4];
  v54[1] = v7;
  sub_1000059F8();

  v8 = Text.init<A>(_:)();
  v11 = *a1;
  if (*a1)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = *(v11 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    v48 = a2;
    v43 = v6;
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = sub_100006344();
        v17 = type metadata accessor for ClusterMetrics();
        v18 = v17;
        v19 = &off_100021580;
      }

      else
      {
        v16 = sub_100006378();
        v17 = type metadata accessor for WidgetMetrics();
        v18 = v17;
        v19 = &off_100021520;
      }
    }

    else
    {
      v16 = sub_100006310();
      v17 = type metadata accessor for ConsoleMetrics();
      v18 = v17;
      v19 = &off_1000215E0;
    }

    v55[3] = v17;
    v55[4] = v19;
    v55[0] = v16;
    sub_100005A4C(v55, v18);
    (v19[1])();
    v20 = Text.font(_:)();
    v45 = v21;
    v46 = v20;
    v23 = v22;
    v47 = v24;
    sub_100005A90(v12, v13, v14 & 1);

    sub_100005AA0(v55);
    v25 = static Edge.Set.top.getter();
    v44 = v23 & 1;
    v59 = v23 & 1;
    v56 = 1;
    v26 = *(v11 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    if (v26 == 2)
    {
      v27 = Image.init(systemName:)();
      v28 = type metadata accessor for Font.Design();
      v29 = v43;
      (*(*(v28 - 8) + 56))(v43, 1, 1, v28);
      v30 = static Font.system(size:weight:design:)();
      sub_100005EC4(v29, &qword_100026F08, &qword_10001A670);
      KeyPath = swift_getKeyPath();
      v32 = static Edge.Set.all.getter();
      LOBYTE(v54[0]) = 1;
      *&v53[0] = v27;
      *(&v53[0] + 1) = KeyPath;
      *&v53[1] = v30;
      BYTE8(v53[1]) = v32;
      memset(&v53[2], 0, 32);
      LOBYTE(v53[4]) = 1;
      sub_100013644(v53);
    }

    else
    {
      v33 = static HorizontalAlignment.center.getter();
      v51[0] = 1;
      v34 = static Alignment.center.getter();
      v36 = v35;
      sub_100012DD4(a1, v54);
      memcpy(v52, v54, sizeof(v52));
      memcpy(v49, v54, 0x118uLL);
      sub_10000DE80(v52, v53, &qword_100026F10, &qword_10001A678);
      sub_100005EC4(v49, &qword_100026F10, &qword_10001A678);
      memcpy(&v53[2] + 8, v52, 0x118uLL);
      v53[0] = v33;
      LOBYTE(v53[1]) = v51[0];
      *(&v53[1] + 1) = v34;
      *&v53[2] = v36;
      sub_1000134FC(v53);
    }

    memcpy(v51, v53, 0x141uLL);
    sub_100005790(&qword_100026F18, &qword_10001A680);
    sub_100005790(&qword_100026F20, &qword_10001A688);
    sub_100013508();
    sub_100006174(&qword_100026F30, &qword_100026F20, &qword_10001A688, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    memcpy(v53, v54, 0x141uLL);
    v38 = v45;
    v37 = v46;
    *v52 = v46;
    *&v52[8] = v45;
    v39 = v44;
    v52[16] = v44;
    *&v52[17] = *v58;
    *&v52[20] = *&v58[3];
    v40 = v47;
    *&v52[24] = v47;
    v52[32] = v25;
    *&v52[33] = *v57;
    *&v52[36] = *&v57[3];
    memset(&v52[40], 0, 32);
    LODWORD(v43) = v25;
    v52[72] = 1;
    *&v50[32] = *&v52[32];
    *&v50[48] = *&v52[48];
    *&v50[57] = *&v52[57];
    *v50 = *v52;
    *&v50[16] = *&v52[16];
    memcpy(v51, v54, 0x141uLL);
    memcpy(&v50[80], v54, 0x141uLL);
    memcpy(v48, v50, 0x191uLL);
    sub_10000DE80(v52, v49, &qword_100026720, &qword_10001A690);
    sub_10000DE80(v51, v49, &qword_100026F38, &qword_10001A698);
    sub_100005EC4(v53, &qword_100026F38, &qword_10001A698);
    v49[0] = v37;
    v49[1] = v38;
    LOBYTE(v49[2]) = v39;
    *(&v49[2] + 1) = *v58;
    HIDWORD(v49[2]) = *&v58[3];
    v49[3] = v40;
    LOBYTE(v49[4]) = v43;
    *(&v49[4] + 1) = *v57;
    HIDWORD(v49[4]) = *&v57[3];
    memset(&v49[5], 0, 32);
    LOBYTE(v49[9]) = 1;
    return sub_100005EC4(v49, &qword_100026720, &qword_10001A690);
  }

  else
  {
    type metadata accessor for LayoutConfiguration(0);
    sub_100012640();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100012DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v7 = v73;
  v27 = v74;
  v24 = v75;
  v8 = v76;
  v28 = v77;
  v9 = v78;
  (*(v4 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v3);
  v10 = Color.init(_:red:green:blue:opacity:)();
  v25 = v10;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v72[6] = v79;
  *&v72[22] = v80;
  *&v72[38] = v81;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v11 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v58[0] = *(a1 + 16);
  sub_100005790(&qword_100026F40, &qword_10001A700);
  State.wrappedValue.getter();
  if (LOBYTE(v51[0]))
  {
    v12 = -6.28318531;
  }

  else
  {
    v12 = 0.0;
  }

  static UnitPoint.center.getter();
  v14 = v13;
  v16 = v15;
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = *(a1 + 48);
  *&v47 = v7;
  *(&v47 + 1) = __PAIR64__(v24, v27);
  v19 = v24;
  *&v48 = v8;
  *(&v48 + 1) = v28;
  *&v49 = v9;
  *(&v49 + 1) = v10;
  *v50 = 256;
  *&v50[2] = *v72;
  *&v50[18] = *&v72[16];
  *&v50[34] = *&v72[32];
  *&v50[48] = *&v72[46];
  v40[0] = v47;
  v40[1] = v48;
  v40[2] = v49;
  v40[3] = *v50;
  v40[4] = *&v50[16];
  v40[5] = *&v50[32];
  *&v40[6] = *&v72[46];
  v22 = xmmword_10001A5C0;
  v51[1] = v44;
  v51[2] = v45;
  v51[0] = xmmword_10001A5C0;
  *&v52 = v46;
  v20 = KeyPath;
  *(&v52 + 1) = KeyPath;
  *&v53[0] = v11;
  *(&v53[1] + 8) = v42;
  *(&v53[2] + 8) = v43;
  *(v53 + 8) = v41;
  *(&v53[3] + 1) = v12;
  *&v54 = v14;
  *(&v54 + 1) = v16;
  *&v55 = sub_100013744;
  *(&v55 + 1) = v17;
  v57 = 0;
  v56 = 0;
  *(&v40[16] + 8) = 0u;
  *(&v40[8] + 8) = v45;
  *(&v40[7] + 8) = v44;
  *(&v40[6] + 8) = xmmword_10001A5C0;
  *(&v40[12] + 8) = v53[2];
  *(&v40[11] + 8) = v53[1];
  *(&v40[10] + 8) = v53[0];
  *(&v40[9] + 8) = v52;
  *(&v40[15] + 8) = v55;
  *(&v40[14] + 8) = v54;
  *(&v40[13] + 8) = v53[3];
  memcpy(v26, v40, 0x118uLL);
  v58[0] = v22;
  v58[1] = v44;
  v58[2] = v45;
  v62 = v41;
  v59 = v46;
  v60 = v20;
  v61 = v11;
  v63 = v42;
  v64 = v43;
  v65 = v12;
  v66 = v14;
  v67 = v16;
  v68 = sub_100013744;
  v69 = v17;
  v71 = 0;
  v70 = 0;
  sub_10001374C(a1, &v29);
  sub_10000DE80(&v47, &v29, &qword_100026F48, &qword_10001A708);
  sub_10000DE80(v51, &v29, &qword_100026F50, &qword_10001A710);
  sub_100005EC4(v58, &qword_100026F50, &qword_10001A710);
  v29 = v7;
  v30 = v27;
  v31 = v19;
  v32 = v8;
  v33 = v28;
  v34 = v9;
  v35 = v25;
  v36 = 256;
  v37 = *v72;
  v38 = *&v72[16];
  v39[0] = *&v72[32];
  *(v39 + 14) = *&v72[46];
  return sub_100005EC4(&v29, &qword_100026F48, &qword_10001A708);
}

uint64_t sub_1000132A4(uint64_t a1)
{
  static Animation.linear(duration:)();
  Animation.repeatForever(autoreverses:)();

  withAnimation<A>(_:_:)();
}

uint64_t sub_100013334(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  sub_10000DE80(&v4, v2, &qword_100026F58, &qword_10001A718);
  sub_100005790(&qword_100026F40, &qword_10001A700);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_100005EC4(&v3, &qword_100026F40, &qword_10001A700);
}

void *sub_100013408@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v11[2] = *(v1 + 32);
  v12 = *(v1 + 48);
  v4 = static HorizontalAlignment.center.getter();
  v10 = 1;
  sub_1000127E4(v11, __src);
  memcpy(__dst, __src, 0x191uLL);
  memcpy(v14, __src, 0x191uLL);
  sub_10000DE80(__dst, &v7, &qword_100026F00, &qword_10001A668);
  sub_100005EC4(v14, &qword_100026F00, &qword_10001A668);
  memcpy(&v9[7], __dst, 0x191uLL);
  v5 = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), v9, 0x198uLL);
}

unint64_t sub_100013508()
{
  result = qword_100026F28;
  if (!qword_100026F28)
  {
    sub_1000028A8(&qword_100026F18, &qword_10001A680);
    sub_10000E268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026F28);
  }

  return result;
}

uint64_t sub_100013594@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000135C0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001364C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100013678@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000136FC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000137E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100013858()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_1000138CC(void *a1)
{
  v3 = sub_100005790(&qword_100027348, &qword_10001A868);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_100005790(&qword_100027340, &qword_10001A860);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = OBJC_IVAR____TtC6Charge11ChargeModel__isCharging;
  LOBYTE(v24) = 0;
  Published.init(initialValue:)();
  (*(v8 + 32))(&v1[v11], v10, v7);
  v12 = OBJC_IVAR____TtC6Charge11ChargeModel__supplementaryStatusText;
  v24 = 0;
  v25 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v1[v12], v6, v3);
  v1[OBJC_IVAR____TtC6Charge11ChargeModel_hasEmittedFinalizedSignpost] = 0;
  sub_100007718(0xD00000000000001BLL, 0x8000000100017BE0, 0xD000000000000014, 0x8000000100017C00, 19);
  v13 = &v1[OBJC_IVAR____TtC6Charge11ChargeModel__carObservable];
  swift_beginAccess();
  type metadata accessor for CAFCarObservable();
  sub_100015338();
  v14 = a1;
  *v13 = ObservedObject.init(wrappedValue:)();
  v13[1] = v15;
  swift_endAccess();
  v16 = type metadata accessor for ChargeModel(0);
  v23.receiver = v1;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, "init");
  v18 = CAFCarObservable.observed.getter();
  [v18 registerObserver:v17];

  v19 = CAFCarObservable.observed.getter();
  v20 = [v19 dimensionManager];

  [v20 registerObserver:v17];
  sub_100013D10();

  return v17;
}

void sub_100013D10()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC6Charge11ChargeModel__carObservable;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v4 = dispatch thunk of CAFCarObservable.charging.getter();

  if (v4)
  {
    sub_1000077DC(0xD000000000000023, 0x8000000100017AC0, 0xD000000000000011, 0x8000000100017AA0, 74);
    v5 = [v4 chargingStatus];
    [v5 registerObserver:v1];

    v6 = [v4 chargingTime];
    if (v6)
    {
      v7 = v6;
      [v6 registerObserver:v1];
    }

    v8 = [v4 chargingRate];
    if (v8)
    {
      v9 = v8;
      [v8 registerObserver:v1];
    }
  }

  v10 = *(v2 + 8);
  v11 = dispatch thunk of CAFCarObservable.tripComputer.getter();

  if (v11 && (v12 = [v11 remainingRange], v11, v12))
  {
    sub_1000077DC(0xD00000000000002ALL, 0x8000000100017A70, 0xD000000000000011, 0x8000000100017AA0, 83);
    [v12 registerObserver:v1];
  }

  else if (!v4)
  {
    return;
  }

  sub_1000077DC(0x5D4547524148435BLL, 0xE800000000000000, 0x2928657461647075, 0xE800000000000000, 95);
  sub_1000144C8();
  sub_100014618();
}

uint64_t sub_100013F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100005790(&qword_100027328, &qword_10001A858);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (a4)
  {
    sub_100005F24(0, &qword_1000272F0, NSUnitLength_ptr);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_100005790(&qword_1000272E0, &qword_10001A7A8);
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_100005790(&qword_1000272E0, &qword_10001A7A8);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  return sub_100005EC4(v7, &qword_100027328, &qword_10001A858);
}

uint64_t sub_1000140FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, void *a8)
{
  v10 = sub_100005790(a5, a6);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - v12;
  sub_100005F24(0, a7, a8);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100014370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, void *a8)
{
  v11 = sub_100005790(a5, a6);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - v13;
  sub_100005F24(0, a7, a8);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a1;
  sub_100014618();

  return (*(v12 + 8))(v14, v11);
}

void sub_1000144C8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC6Charge11ChargeModel__carObservable];
  swift_beginAccess();
  v3 = v2[1];
  v4 = dispatch thunk of CAFCarObservable.charging.getter();

  if (v4)
  {
    v5 = [v4 chargingStatus];

    if (v5)
    {
      v6 = [v5 chargingState];
      if (v6 == 6 || v6 == 7)
      {
        [v5 cableState];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v8 = v1;
      static Published.subscript.setter();
    }
  }

  sub_100014C50();
}

void sub_100014618()
{
  v1 = sub_100005790(&qword_1000272E0, &qword_10001A7A8);
  v62 = *(v1 - 8);
  v63 = v1;
  __chkstk_darwin(v1);
  v3 = &v62 - v2;
  v4 = sub_100005790(&qword_1000272E8, &qword_10001A7B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  v67 = 0;
  v68 = 0xE000000000000000;
  v64 = v0;
  v11 = &v0[OBJC_IVAR____TtC6Charge11ChargeModel__carObservable];
  swift_beginAccess();
  v12 = v11[1];
  v13 = dispatch thunk of CAFCarObservable.charging.getter();

  v14 = [v13 chargingRate];
  if (v14)
  {
    if ([v14 powerInvalid])
    {
      v65 = 2108717;
      v66 = 0xE300000000000000;
      v15 = v11[1];
      v16 = CAFCarObservable.observed.getter();

      v17 = CAFCar.dimesionObservable.getter();
      v18 = dispatch thunk of CAFDimensionObservable.vehicleChargePowerUnit.getter();

      v19 = [v18 symbol];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23._countAndFlagsBits = v20;
      v23._object = v22;
      String.append(_:)(v23);

      v24 = v65;
      v25 = v66;
    }

    else
    {
      v26 = [v14 power];
      sub_100005F24(0, &qword_1000272F8, NSUnitPower_ptr);
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = v11[1];
      v28 = CAFCarObservable.observed.getter();

      v29 = CAFCar.dimesionObservable.getter();
      Measurement<>.vehicleChargePowerUnit(using:)();

      v30 = *(v5 + 8);
      v30(v7, v4);
      v31 = Measurement<>.formattedString(maximumFractionDigits:)();
      v25 = v32;
      v30(v10, v4);
      v24 = v31;
    }

    v33 = v25;
    String.append(_:)(*&v24);
  }

  v34 = v11[1];
  v35 = dispatch thunk of CAFCarObservable.tripComputer.getter();

  if (v35)
  {
    v36 = [v35 remainingRange];

    if (v36)
    {
      v37 = v67 & 0xFFFFFFFFFFFFLL;
      if ((v68 & 0x2000000000000000) != 0)
      {
        v37 = HIBYTE(v68) & 0xF;
      }

      if (v37)
      {
        v38._countAndFlagsBits = 0x20A280E220;
        v38._object = 0xA500000000000000;
        String.append(_:)(v38);
      }

      v39 = v11[1];
      v40 = CAFCarObservable.observed.getter();

      v41 = [v40 dimensionManager];
      v42 = [v41 measurementSystem];

      v43 = v36;
      v44 = v43;
      if (v42)
      {
        if ([v43 distanceMilesInvalid])
        {

          v65 = 2108717;
          v66 = 0xE300000000000000;
          v45 = [objc_opt_self() miles];
          v46 = [v45 symbol];
LABEL_17:
          v47 = v46;

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v51._countAndFlagsBits = v48;
          v51._object = v50;
          String.append(_:)(v51);

          v52 = v65;
          v53 = v66;
LABEL_21:
          v59 = v53;
          String.append(_:)(*&v52);

          goto LABEL_22;
        }

        v54 = [v44 distanceMiles];
      }

      else
      {
        if ([v43 distanceKMInvalid])
        {

          v65 = 2108717;
          v66 = 0xE300000000000000;
          v45 = [objc_opt_self() kilometers];
          v46 = [v45 symbol];
          goto LABEL_17;
        }

        v54 = [v44 distanceKM];
      }

      v55 = v54;

      sub_100005F24(0, &qword_1000272F0, NSUnitLength_ptr);
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = v63;
      v57 = Measurement<>.formattedString(maximumFractionDigits:)();
      v53 = v58;
      (*(v62 + 8))(v3, v56);
      v52 = v57;
      goto LABEL_21;
    }
  }

LABEL_22:
  v60 = v67;
  v61 = v68;
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v60;
  v66 = v61;
  v64;
  static Published.subscript.setter();
  sub_100014C50();
}

void sub_100014C50()
{
  v1 = OBJC_IVAR____TtC6Charge11ChargeModel_hasEmittedFinalizedSignpost;
  if (*(v0 + OBJC_IVAR____TtC6Charge11ChargeModel_hasEmittedFinalizedSignpost))
  {
    return;
  }

  v2 = v0;
  v3 = v0 + OBJC_IVAR____TtC6Charge11ChargeModel__carObservable;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = CAFCarObservable.observed.getter();

  v6 = [v5 charging];
  if (!v6)
  {
LABEL_8:
    sub_100007718(0xD000000000000020, 0x80000001000179F0, 0xD000000000000017, 0x8000000100017A20, 220);
    return;
  }

  if (![v6 receivedAllValues])
  {

    goto LABEL_8;
  }

  v7 = *(v3 + 8);
  v8 = CAFCarObservable.observed.getter();

  v9 = [v8 highVoltageBattery];
  if (v9)
  {
    if ([v9 receivedAllValues])
    {
      v10 = *(v3 + 8);
      v11 = CAFCarObservable.observed.getter();

      CAFSignpostEmit_Finalized();
      *(v2 + v1) = 1;
      return;
    }
  }

  sub_100007718(0xD00000000000002ALL, 0x8000000100017A40, 0xD000000000000017, 0x8000000100017A20, 225);
}

id sub_100014E4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargeModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ChargeModel(uint64_t a1)
{
  result = qword_1000272C0;
  if (!qword_1000272C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014FB0(uint64_t a1)
{
  sub_1000150AC(319, &qword_1000272D0, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_1000150AC(319, &qword_1000272D8, &type metadata for String);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000150AC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000150F8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ChargeModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100015138@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_1000151B8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100015228@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000152A8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t sub_100015338()
{
  result = qword_100027350;
  if (!qword_100027350)
  {
    type metadata accessor for CAFCarObservable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027350);
  }

  return result;
}

id ConfigurationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id ConfigurationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id ConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

Swift::Int sub_1000155D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001564C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100015690@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100015B34(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ConfigurationIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *ConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id ConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id ConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100015AFC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100015B34(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100015B6C()
{
  result = qword_100027428;
  if (!qword_100027428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027428);
  }

  return result;
}

uint64_t sub_100015BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100015C18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}