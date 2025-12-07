uint64_t sub_100136034(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Errors();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DKXPCClientApplication(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v15);
  sub_1000B5150(v15 + *(v13 + 32), v7, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100095C84(v7, &unk_1002A6F30, &unk_10023C4D0);
    if (a1)
    {
      v16 = 4;
    }

    else
    {
      v16 = 10;
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_1000EC468(v16);

    (*(a3 + 16))(a3, 1, 0);
    return sub_1000BAA28(v15);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v9 + 16))(v18, v11, v8);
    v19 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v19);

    (*(v9 + 8))(v11, v8);
    sub_1000BAA28(v15);
  }
}

uint64_t sub_100136364(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 processIdentifier];
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 valueForEntitlement:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v71 = 0u;
  }

  v76[0] = aBlock;
  v76[1] = v71;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v11 = sub_10019B91C(a1, v10);
  v13 = v12;
  sub_10018B7F4(v11, v12, a1);
  sub_10018BCE0(v11, v13);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v68 = a1;
  v14 = sub_100093DE8(v3, qword_1002A9110);
  (*(v4 + 16))(v6, v14, v3);
  sub_1000B5150(v76, &aBlock, &qword_1002A9210, &unk_10023BE70);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v67 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v65 = v4;
    v19 = v18;
    v69 = swift_slowAlloc();
    *v19 = 67109634;
    *(v19 + 4) = v7;
    *(v19 + 8) = 2080;
    v64 = v3;
    sub_1000B5150(&aBlock, &v74, &qword_1002A9210, &unk_10023BE70);
    sub_100095274(&qword_1002A9210, &unk_10023BE70);
    v20 = String.init<A>(describing:)();
    v63 = v6;
    v21 = v20;
    v23 = v22;
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v24 = sub_1000952D4(v21, v23, &v69);

    *(v19 + 10) = v24;
    *(v19 + 18) = 2080;
    *&v74 = v11;
    *(&v74 + 1) = v13;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v25 = String.init<A>(describing:)();
    v27 = sub_1000952D4(v25, v26, &v69);

    *(v19 + 20) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "new connection from pid %d, appID entitlement %s, appID %s", v19, 0x1Cu);
    swift_arrayDestroy();

    (v65)[1](v63, v64);
  }

  else
  {

    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    (*(v4 + 8))(v6, v3);
  }

  v65 = objc_opt_self();
  v64 = [v65 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore18DockDaemonProtocol_];
  v28 = swift_allocObject();
  v29 = v68;
  swift_unknownObjectWeakInit();
  sub_1000B5150(v76, &v74, &qword_1002A9210, &unk_10023BE70);
  v30 = swift_allocObject();
  v31 = v75;
  *(v30 + 24) = v74;
  v32 = v67;
  *(v30 + 16) = v67;
  *(v30 + 40) = v31;
  *(v30 + 56) = v28;
  *(v30 + 64) = v11;
  *(v30 + 72) = v13;
  v72 = sub_100136EE0;
  v73 = v30;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v71 = sub_100147FC8;
  *(&v71 + 1) = &unk_100277EE8;
  v33 = _Block_copy(&aBlock);

  [v29 setInvalidationHandler:v33];
  _Block_release(v33);
  sub_1000B5150(v76, &v74, &qword_1002A9210, &unk_10023BE70);
  v34 = swift_allocObject();
  v35 = v75;
  *(v34 + 24) = v74;
  *(v34 + 16) = v32;
  *(v34 + 40) = v35;
  *(v34 + 56) = v28;
  *(v34 + 64) = v11;
  *(v34 + 72) = v13;
  v72 = sub_100136F60;
  v73 = v34;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v71 = sub_100147FC8;
  *(&v71 + 1) = &unk_100277F38;
  v36 = _Block_copy(&aBlock);

  [v29 setInterruptionHandler:v36];
  _Block_release(v36);
  sub_100095B94(0, &qword_1002A9218, NSSet_ptr);
  sub_100095274(&qword_1002A9220, &qword_10023D440);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10023DD50;
  v38 = type metadata accessor for SensorButtonState();
  *(v37 + 56) = sub_100095274(&qword_1002A9228, &qword_10023DDC0);
  *(v37 + 32) = v38;
  v39 = type metadata accessor for SensorLEDState();
  *(v37 + 88) = sub_100095274(&qword_1002A9230, &qword_10023DDC8);
  *(v37 + 64) = v39;
  v40 = type metadata accessor for DockCoreInfo();
  *(v37 + 120) = sub_100095274(&qword_1002A9238, &qword_10023DDD0);
  *(v37 + 96) = v40;
  v41 = sub_100095B94(0, &qword_1002A9240, NSArray_ptr);
  *(v37 + 152) = sub_100095274(&unk_1002A9248, &qword_10023DDD8);
  *(v37 + 128) = v41;
  v42 = sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
  *(v37 + 184) = sub_100095274(&qword_1002A9258, &qword_10023DDE0);
  *(v37 + 160) = v42;
  v43 = sub_100095B94(0, &qword_1002A9260, NSString_ptr);
  *(v37 + 216) = sub_100095274(&qword_1002A9268, &qword_10023DDE8);
  *(v37 + 192) = v43;
  v44 = sub_100095B94(0, &qword_1002A9270, NSData_ptr);
  *(v37 + 248) = sub_100095274(&qword_1002A9278, &qword_10023DDF0);
  *(v37 + 224) = v44;
  v45 = sub_100095B94(0, &qword_1002A9280, NSDate_ptr);
  *(v37 + 280) = sub_100095274(&qword_1002A9288, &qword_10023DDF8);
  *(v37 + 256) = v45;
  v46 = sub_100095B94(0, &qword_1002A9290, NSDictionary_ptr);
  *(v37 + 312) = sub_100095274(&qword_1002A9298, &qword_10023DE00);
  *(v37 + 288) = v46;
  v47 = sub_100095B94(0, &qword_1002A92A0, NSURL_ptr);
  *(v37 + 344) = sub_100095274(&qword_1002A92A8, &qword_10023DE08);
  *(v37 + 320) = v47;
  v48 = sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
  *(v37 + 376) = sub_100095274(&qword_1002A92B8, &qword_10023DE10);
  *(v37 + 352) = v48;
  v49 = type metadata accessor for SensorTrackerState();
  *(v37 + 408) = sub_100095274(&qword_1002A92C0, &qword_10023DE18);
  *(v37 + 384) = v49;
  v50 = type metadata accessor for CameraSessionInformation();
  *(v37 + 440) = sub_100095274(&unk_1002A92C8, &qword_10023DE20);
  *(v37 + 416) = v50;
  v51 = NSSet.init(objects:)();
  *&aBlock = 0;
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  if (aBlock)
  {

    isa = Set._bridgeToObjectiveC()().super.isa;
    v54 = v64;
    [v64 setClasses:isa forSelector:"setSensorStatesWithInfo:system:sensors:states:completion:" argumentIndex:0 ofReply:0];

    v55 = Set._bridgeToObjectiveC()().super.isa;
    [v54 setClasses:v55 forSelector:"setSensorStatesWithInfo:system:sensors:states:completion:" argumentIndex:1 ofReply:0];

    v56 = Set._bridgeToObjectiveC()().super.isa;
    [v54 setClasses:v56 forSelector:"setSensorStatesWithInfo:system:sensors:states:completion:" argumentIndex:2 ofReply:0];

    v57 = Set._bridgeToObjectiveC()().super.isa;

    [v54 setClasses:v57 forSelector:"setSensorStatesWithInfo:system:sensors:states:completion:" argumentIndex:3 ofReply:0];

    v58 = [v29 setExportedInterface:v54];
    v60 = [objc_allocWithZone(type metadata accessor for dockaccessoryd(v58 v59))];
    v60[OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_debugAllowed] = *(v66 + OBJC_IVAR____TtC14dockaccessoryd15ServiceDelegate_debugAllowed);
    [v29 setExportedObject:v60];
    v61 = [v65 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore18DockClientProtocol_];
    [v29 setRemoteObjectInterface:v61];
    [v29 resume];

    sub_100095C84(v76, &qword_1002A9210, &unk_10023BE70);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100136EA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100136EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100136F10()
{
  if (*(v0 + 48))
  {
    sub_100095808((v0 + 24));
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100136FB8(uint64_t a1)
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
  v10[1] = sub_10009862C;

  return sub_10011606C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100137098()
{
  v1 = sub_100095274(&unk_1002A92E0, &qword_10023DE48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10013712C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100095274(&unk_1002A92E0, &qword_10023DE48) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100116948(a1, a2, v6);
}

uint64_t sub_1001371C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100137210(uint64_t a1)
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
  v10[1] = sub_1000A139C;

  return sub_100115778(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001372E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013731C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100137370()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001373F0()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100137458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A139C;

  return sub_100112D98(a1, v4, v5, v6);
}

uint64_t sub_10013750C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001375E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A139C;

  return sub_1001119AC(a1);
}

uint64_t sub_100137698()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001376D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A139C;

  return sub_100112AE8(a1);
}

uint64_t sub_1001377B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100137804(uint64_t a1)
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
  v10[1] = sub_1000A139C;

  return sub_10010FF34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001378D8()
{
  v1 = type metadata accessor for TrajectoryCommand();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100137A04(uint64_t a1)
{
  v3 = *(type metadata accessor for TrajectoryCommand() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1[3];
  v15 = v1[2];
  v7 = (v1 + v5);
  v8 = v7[1];
  v12 = *v7;
  v13 = v1[4];
  v9 = *(v1 + v6);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009862C;

  return sub_10010E8A8(a1, v15, v14, v13, v1 + v4, v12, v8, v9);
}

uint64_t sub_100137B9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100137C30()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100137D78(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002A9340);
  sub_100093DE8(v2, qword_1002A9340);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100137DF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100137E54()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v4 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  v2 = *(Strong + 16);

  v3 = swift_allocObject();
  v4 = sub_10013A008;
  *(v3 + 16) = sub_10013A008;
  *(v3 + 24) = v0;
  v8[4] = sub_10013A028;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001DB720;
  v8[3] = &unk_100278528;
  v5 = _Block_copy(v8);

  dispatch_sync(v2, v5);

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    v7 = v0;
LABEL_5:
    swift_weakDestroy();
    sub_1000BAA84(v4, v7);
    return swift_deallocClassInstance();
  }

  __break(1u);
  return result;
}

unint64_t sub_100138000(int a1)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0x200000000;
  }

  if (!*(v1 + 16))
  {

    return 0x200000001;
  }

  if (*(Strong + 24) != 1)
  {

    return 0x200000000;
  }

  OS_dispatch_queue.sync<A>(execute:)();

  if (v5 == a1)
  {
    return *(v1 + 16);
  }

  else
  {
    return v5 | &_mh_execute_header;
  }
}

uint64_t sub_1001380E0(uint64_t a1, void *a2)
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  *(v2 + 56) = _swiftEmptyArrayStorage;
  v14 = sub_1000B3420(0, v10);
  v16 = 0;
  v17 = 0xE000000000000000;

  _StringGuts.grow(_:)(33);

  v16 = 0xD000000000000019;
  v17 = 0x80000001002328D0;
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x65756575712ELL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000C6F40();
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000C6F98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(v2 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v2;
}

uint64_t sub_100138360(uint64_t a1, uint64_t a2)
{
  sub_1001396D0(a1, a2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001383D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Database(a1, a2);
  swift_allocObject();
  result = sub_1001380E0(0x726F737365636361, 0xEB00000000736569);
  qword_1002B1B98 = result;
  return result;
}

uint64_t sub_100138428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(186);
  v8._object = 0x80000001002327B0;
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x7265687069726550;
  v9._object = 0xEB00000000736C61;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xD00000000000009DLL;
  v10._object = 0x80000001002327D0;
  String.append(_:)(v10);
  sub_100139D48(v20, v21, 0);

  if (!v3)
  {
    type metadata accessor for DBTable(result, v12);
    v13 = swift_allocObject();
    *(v13 + 16) = 0x7265687069726550;
    *(v13 + 24) = 0xEB00000000736C61;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    if (qword_1002A66E8 != -1)
    {
      swift_once();
    }

    v14 = sub_100093DE8(v4, qword_1002A9340);
    (*(v5 + 16))(v7, v14, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1000952D4(0x7265687069726550, 0xEB00000000736C61, &v20);
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully created table: %s", v17, 0xCu);
      sub_100095808(v18);
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_100138758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = &off_100274BF8;
  type metadata accessor for DBStatement(a1, a2);
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  swift_weakInit();
  swift_weakAssign();

  v5 = sub_1001399BC(0xD000000000000050, 0x8000000100232870);

  *(inited + 16) = v5;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  if (*(inited + 16))
  {
    if (*(Strong + 24) == 1)
    {
      OS_dispatch_queue.sync<A>(execute:)();

      v7 = aBlock;
      if (aBlock != 100)
      {
        v19 = 0;
        v10 = 0;
LABEL_18:
        v20 = v7 | &_mh_execute_header;
        goto LABEL_19;
      }

      v8 = *(inited + 16);
      v9 = *(v3 + 16);
      v10 = swift_allocObject();
      v10[2] = v8;
      v10[3] = v3;
      v10[4] = &v30;

      sub_1000BAA84(0, 0);
      v11 = swift_allocObject();
      *(v11 + 16) = sub_10013A088;
      *(v11 + 24) = v10;
      v28 = sub_10013A4D8;
      v29 = v11;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_1001DB720;
      v27 = &unk_1002785F0;
      v12 = _Block_copy(&aBlock);

      dispatch_sync(v9, v12);
      _Block_release(v12);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if ((v9 & 1) == 0)
      {
        while (1)
        {
          v13 = swift_weakLoadStrong();
          if (!v13)
          {
            v19 = sub_10013A088;
            v20 = 0x200000000;
            goto LABEL_19;
          }

          if (!*(inited + 16))
          {
            v19 = sub_10013A088;
            goto LABEL_14;
          }

          if ((*(v13 + 24) & 1) == 0)
          {
            v19 = sub_10013A088;
            goto LABEL_16;
          }

          OS_dispatch_queue.sync<A>(execute:)();

          v7 = aBlock;
          if (aBlock != 100)
          {
            break;
          }

          v14 = *(inited + 16);
          v15 = *(v3 + 16);
          v16 = swift_allocObject();
          v16[2] = v14;
          v16[3] = v3;
          v16[4] = &v30;

          sub_1000BAA84(sub_10013A088, v10);
          v17 = swift_allocObject();
          *(v17 + 16) = sub_10013A088;
          *(v17 + 24) = v16;
          v28 = sub_10013A4D8;
          v29 = v17;
          aBlock = _NSConcreteStackBlock;
          v25 = 1107296256;
          v26 = sub_1001DB720;
          v27 = &unk_1002785F0;
          v18 = _Block_copy(&aBlock);

          dispatch_sync(v15, v18);
          _Block_release(v18);
          LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

          v10 = v16;
          if (v18)
          {
            goto LABEL_11;
          }
        }

        v19 = sub_10013A088;
        goto LABEL_18;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      v19 = 0;
      v10 = 0;
      v20 = 0x200000000;
      goto LABEL_19;
    }

    v19 = 0;
    v10 = 0;
LABEL_16:

    v20 = 0x200000000;
  }

  else
  {
    v19 = 0;
    v10 = 0;
LABEL_14:

    v20 = 0x200000001;
  }

LABEL_19:
  LODWORD(aBlock) = v20;
  BYTE4(aBlock) = BYTE4(v20);
  sub_100139F18();
  v21 = swift_willThrowTypedImpl();
  if (v30[2])
  {
    sub_100138428(v21, v22);
  }

  swift_setDeallocating();
  sub_100137E54();

  return sub_1000BAA84(v19, v10);
}

const unsigned __int8 *sub_100138C48(sqlite3_stmt *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sqlite3_column_text(a1, 0);
  if (result)
  {
    v11 = String.init(cString:)();
    v13 = v12;
    if (qword_1002A66E8 != -1)
    {
      swift_once();
    }

    v14 = sub_100093DE8(v6, qword_1002A9340);
    (*(v7 + 16))(v9, v14, v6);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = a3;
      v18 = v11;
      v19 = v17;
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000952D4(v18, v13, v28);
      _os_log_impl(&_mh_execute_header, v15, v16, "Found existing table: %s", v19, 0xCu);
      sub_100095808(v20);

      v11 = v18;
      a3 = v27;
    }

    v21 = (*(v7 + 8))(v9, v6);
    type metadata accessor for DBTable(v21, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = v11;
    *(v23 + 24) = v13;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v24 = sub_10013A134(a3, v11, v13);

    v25 = *(*a3 + 16);
    if (v25 < v24)
    {
      __break(1u);
    }

    else
    {
      sub_1001A2560(v24, v25);
    }
  }

  return result;
}

uint64_t sub_100138F54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  sub_100152034(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10013A2AC(v12);
    sub_1000B346C();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  v19 = *(v14 + 32);
  v37 = v13;
  v19(v16, v12, v13);
  v20 = v2[6];
  aBlock = v2[5];
  v42 = v20;

  v21._countAndFlagsBits = 6448174;
  v21._object = 0xE300000000000000;
  String.append(_:)(v21);
  (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_1000E3C10();
  URL.append<A>(component:directoryHint:)();
  (*(v7 + 8))(v9, v6);

  v23 = v2[2];
  __chkstk_darwin(v22);
  *(&v37 - 2) = v16;
  *(&v37 - 1) = v3;
  OS_dispatch_queue.sync<A>(execute:)();
  v24 = aBlock;
  if (aBlock)
  {
    sub_100139F18();
    swift_allocError();
    *v25 = v24;
    *(v25 + 4) = 0;
    swift_willThrow();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_10013A330;
    *(v26 + 24) = v3;
    v45 = sub_10013A4D8;
    v46 = v26;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1001DB720;
    v44 = &unk_100278640;
    v27 = _Block_copy(&aBlock);

    dispatch_sync(v23, v27);
    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return (*(v14 + 8))(v16, v37);
    }

    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 24) = 1;
  if (qword_1002A66E8 != -1)
  {
LABEL_13:
    swift_once();
  }

  v29 = v39;
  v30 = sub_100093DE8(v39, qword_1002A9340);
  v31 = v38;
  (*(v38 + 16))(v40, v30, v29);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v37;
  if (v34)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Database successfully opened.", v36, 2u);
  }

  (*(v31 + 8))(v40, v29);
  return (*(v14 + 8))(v16, v35);
}

uint64_t sub_100139564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  URL.path(percentEncoded:)(1);
  (*(v7 + 8))(v9, v6);
  v10 = String.utf8CString.getter();

  swift_beginAccess();
  LODWORD(a2) = sqlite3_open_v2((v10 + 32), (a2 + 32), 6, 0);
  swift_endAccess();

  *a3 = a2;
  return result;
}

uint64_t sub_1001396D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10013A048;
  *(v9 + 24) = v3;
  aBlock[4] = sub_10013A4D8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_100278578;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v8, v10);
  _Block_release(v10);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 24) = 0;
    if (qword_1002A66E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v11 = sub_100093DE8(v4, qword_1002A9340);
  (*(v5 + 16))(v7, v11, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Database closed.", v14, 2u);
  }

  (*(v5 + 8))(v7, v4);
}

sqlite3 *sub_100139970(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 32);
  if (result)
  {
    result = sqlite3_close_v2(result);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_1001399BC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*(v3 + 24) == 1)
  {
    v19 = 0;
    if (qword_1002A66E8 != -1)
    {
      swift_once();
    }

    v11 = sub_100093DE8(v6, qword_1002A9340);
    (*(v7 + 16))(v9, v11, v6);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000952D4(a1, a2, &v18);
      sub_100095808(v15);
    }

    v16 = (*(v7 + 8))(v9, v6);
    __chkstk_darwin(v16);
    *(&v17 - 4) = v3;
    *(&v17 - 3) = a1;
    *(&v17 - 2) = a2;
    *(&v17 - 1) = &v19;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v18)
    {
      return 0;
    }

    else
    {
      return v19;
    }
  }

  return result;
}

uint64_t sub_100139C74@<X0>(uint64_t a1@<X0>, sqlite3_stmt **a4@<X3>, _DWORD *a5@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = String.utf8CString.getter();
  LODWORD(a4) = sqlite3_prepare(v8, (v9 + 32), -1, a4, 0);

  *a5 = a4;
  return result;
}

uint64_t sub_100139D14@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sqlite3_step(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_100139D48(uint64_t result, unint64_t a2, char a3)
{
  v6 = result;
  v7 = *(v3 + 24);
  if ((v7 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      sub_100139F18();
      swift_allocError();
      *v15 = 0;
      *(v15 + 4) = 2;
      return swift_willThrow();
    }

    result = sub_100138F54(result, a2);
    if (v4)
    {
      return result;
    }
  }

  type metadata accessor for DBStatement(result, a2);
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  swift_weakInit();
  swift_weakAssign();

  v9 = sub_1001399BC(v6, a2);

  *(inited + 16) = v9;
  if (v9)
  {
    v10 = sub_100138000(101);
    if (v11)
    {
      v12 = HIDWORD(v10);
      v13 = v10;
      sub_100139F18();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v14 = v13;
      *(v14 + 4) = v12;
    }

    else if ((v7 & 1) == 0)
    {
      sub_1001396D0(v10, v11);
    }
  }

  else
  {
    sub_100139F18();
    swift_allocError();
    *v16 = 1;
    *(v16 + 4) = 2;
    swift_willThrow();
  }

  swift_setDeallocating();
  return sub_100137E54();
}

unint64_t sub_100139F18()
{
  result = qword_1002AA4D0;
  if (!qword_1002AA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA4D0);
  }

  return result;
}

sqlite3 *sub_100139F8C(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 32);
  if (result)
  {
    return sqlite3_close_v2(result);
  }

  return result;
}

uint64_t sub_100139FD4@<X0>(_DWORD *a1@<X8>)
{
  result = sqlite3_step(*(v1 + 16));
  *a1 = result;
  return result;
}

sqlite3_stmt *sub_10013A008()
{
  result = *(v0 + 16);
  if (result)
  {
    return sqlite3_finalize(result);
  }

  return result;
}

uint64_t sub_10013A030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013A050()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013A094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_10013A134(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_10013A094(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 16 * result;
    while (v10 < v11)
    {
      v14 = *(v6 + v12 + 48);
      v15 = *(v6 + v12 + 56);
      if (v14 != a2 || v15 != a3)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v17 = (v6 + 32 + 16 * v9);
            v18 = v17[1];
            v20 = *v17;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_10019F780(v6);
            }

            v19 = v6 + 16 * v9;
            *(v19 + 32) = v14;
            *(v19 + 40) = v15;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = v6 + v12;
            *(v13 + 48) = v20;
            *(v13 + 56) = v18;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 16;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10013A2AC(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10013A338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t initializeBufferWithCopyOfBuffer for DBError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DBError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DBError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_10013A434(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10013A44C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

void sub_10013A508(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v57 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v9 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons;
  v10 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons);
  v56 = v11;
  if (v10)
  {
    v12 = [v10 value];
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 stagingNotReadyReasons];
  if (!v13)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 value];

  if (v10)
  {
    v16 = v12 == v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
LABEL_12:
    v17 = [a1 stagingNotReadyReasons];
    v18 = *(v3 + v9);
    *(v3 + v9) = v17;

    v19 = v57;
    (*(v57 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_logger, v5);
    v20 = v5;
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v55 = v20;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v58 = v25;
      *v24 = 136315138;
      v26 = [v21 stagingNotReadyReasons];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 description];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v29 = 7104878;
        v31 = 0xE300000000000000;
      }

      v32 = sub_1000952D4(v29, v31, &v58);

      *(v24 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "Firmware update readiness updated stagingNotReadyReasons: %s", v24, 0xCu);
      sub_100095808(v25);

      v5 = v55;
      (*(v57 + 8))(v8, v55);
    }

    else
    {

      (*(v19 + 8))(v8, v20);
      v5 = v20;
    }
  }

LABEL_18:
  v33 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons;
  v34 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons);
  if (v34)
  {
    v35 = [*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons) value];
  }

  else
  {
    v35 = 0;
  }

  v36 = v57;
  v37 = [a1 updateNotReadyReasons];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 value];

    if (v34 && v35 == v39)
    {
      return;
    }
  }

  else if (!v34)
  {
    return;
  }

  v40 = [a1 updateNotReadyReasons];
  v41 = *(v3 + v33);
  *(v3 + v33) = v40;

  v42 = v56;
  (*(v36 + 16))(v56, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_logger, v5);
  v43 = a1;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v58 = v47;
    *v46 = 136315138;
    v48 = [v43 updateNotReadyReasons];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 description];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v51 = 7104878;
      v53 = 0xE300000000000000;
    }

    v54 = sub_1000952D4(v51, v53, &v58);

    *(v46 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v44, v45, "Firmware update readiness updated updateNotReadyReasons: %s", v46, 0xCu);
    sub_100095808(v47);

    (*(v36 + 8))(v56, v5);
  }

  else
  {

    (*(v36 + 8))(v42, v5);
  }
}

void sub_10013AA40(void *a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v74 = &v65 - v12;
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  v15 = [a1 state];
  if (v15)
  {
    v16 = v15;
    v68 = v10;
    v69 = v3;
    v17 = *(v7 + 16);
    v70 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_logger;
    v71 = v17;
    v72 = v7 + 16;
    v17(v14, v4 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_logger, v6);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v73 = v18;

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v67 = a1;
      v23 = v7;
      v24 = v6;
      v25 = v4;
      v26 = v22;
      *v21 = 138412290;
      v27 = v73;
      *(v21 + 4) = v73;
      *v22 = v16;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Firmware update status updated state: %@", v21, 0xCu);
      sub_1000F1CD4(v26);
      v4 = v25;
      v6 = v24;
      v7 = v23;
      a1 = v67;
    }

    v31 = *(v7 + 8);
    v30 = (v7 + 8);
    v29 = v31;
    v31(v14, v6);
    v32 = [a1 updateDuration];
    if (v32)
    {
      v33 = v32;
      v71(v74, v4 + v70, v6);
      v34 = v33;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      v37 = &selRef_setField_;
      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        v66 = v29;
        v39 = v38;
        *v38 = 134217984;
        v40 = [v34 value];
        v67 = a1;
        v41 = v30;
        v42 = v6;
        v43 = v4;
        v44 = v40;
        v45 = [v40 unsignedLongLongValue];

        v4 = v43;
        v6 = v42;
        v30 = v41;
        a1 = v67;
        *(v39 + 1) = v45;
        v37 = &selRef_setField_;

        _os_log_impl(&_mh_execute_header, v35, v36, "Firmware update status updated duration: %llu", v39, 0xCu);
        v29 = v66;
      }

      else
      {

        v35 = v34;
      }

      v29(v74, v6);
      v48 = [v34 value];
      v49 = [v48 v37[287]];

      v50 = v4 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateDuration;
      *v50 = v49;
      *(v50 + 8) = 0;
    }

    v51 = [a1 stagedFirmwareVersion];
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = v68;
      v71(v68, v4 + v70, v6);

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v66 = v29;
        v60 = v59;
        v61 = swift_slowAlloc();
        v74 = v30;
        v62 = v4;
        v63 = v61;
        v75 = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_1000952D4(v53, v55, &v75);
        _os_log_impl(&_mh_execute_header, v57, v58, "Firmware update status updated version: %s", v60, 0xCu);
        sub_100095808(v63);
        v4 = v62;

        v66(v56, v6);
      }

      else
      {

        v29(v56, v6);
      }

      v64 = (v4 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagedFirmwareVersion);
      *v64 = v53;
      v64[1] = v55;
    }

    else
    {
    }
  }

  else
  {
    v46 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v47 = 0xD000000000000028;
    v47[1] = 0x80000001002329B0;
    (*(*(v46 - 8) + 104))(v47, enum case for Errors.NotFound(_:), v46);
    swift_willThrow();
  }
}

id sub_10013B048()
{
  v1 = &v0[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateDuration];
  *v1 = 0;
  v1[8] = 1;
  v2 = &v0[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateState];
  *v2 = 0;
  v2[8] = 1;
  v3 = &v0[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagedFirmwareVersion];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_stagingNotReadyReasons] = 0;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons] = 0;
  Logger.init(subsystem:category:)();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AccessoryFirmwareUpdateProfile(0);
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10013B13C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryFirmwareUpdateProfile(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateProfile(uint64_t a1)
{
  result = qword_1002A9798;
  if (!qword_1002A9798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013B268(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10013B31C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1001AC908(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_1001AC8A4(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    result = sub_1000A0D2C(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

uint64_t sub_10013B46C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v18, 0, 14);
      v4 = v18;
      v3 = v18;
      goto LABEL_23;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v7 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v5, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v7 += v5 - a1;
    }

    v8 = __OFSUB__(v6, v5);
    v9 = v6 - v5;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v18[0] = a1;
    LOWORD(v18[1]) = a2;
    BYTE2(v18[1]) = BYTE2(a2);
    BYTE3(v18[1]) = BYTE3(a2);
    BYTE4(v18[1]) = BYTE4(a2);
    BYTE5(v18[1]) = BYTE5(a2);
    v3 = v18 + BYTE6(a2);
    v4 = v18;
    goto LABEL_23;
  }

  v10 = a1;
  v9 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v10, v11))
    {
      v7 += v10 - v11;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v12 = __DataStorage._length.getter();
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = (v13 + v7);
  if (v7)
  {
    v3 = v14;
  }

  else
  {
    v3 = 0;
  }

  v4 = v7;
LABEL_23:
  v15 = sub_10013BA5C(v4, v3);
  v16 = sub_10013B6C0(v15);

  return v16;
}

uint64_t sub_10013B630(int a1)
{
  sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10023CE80;
  *(v2 + 32) = HIBYTE(a1);
  *(v2 + 33) = BYTE2(a1);
  *(v2 + 34) = BYTE1(a1);
  *(v2 + 35) = a1;
  v3 = sub_100104264(v2);

  return v3;
}

uint64_t sub_10013B6C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  sub_10013BAD8();
  do
  {
    ++v2;
    v4 = String.init<A>(_:radix:uppercase:)();
    v6 = v5;
    if (String.count.getter() == 1)
    {
      v7._countAndFlagsBits = v4;
      v7._object = v6;
      String.append(_:)(v7);

      v4 = 48;
      v6 = 0xE100000000000000;
    }

    v3._countAndFlagsBits = v4;
    v3._object = v6;
    String.append(_:)(v3);

    --v1;
  }

  while (v1);
  return 0;
}

unint64_t sub_10013B7B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = *(a1 + 32);
  if (v1 != 1)
  {
    result |= *(a1 + 33) << 8;
    if (v1 != 2)
    {
      result |= *(a1 + 34) << 16;
      if (v1 != 3)
      {
        result |= *(a1 + 35) << 24;
        if (v1 != 4)
        {
          result |= *(a1 + 36) << 32;
          if (v1 != 5)
          {
            result |= *(a1 + 37) << 40;
            if (v1 != 6)
            {
              result |= *(a1 + 38) << 48;
              if (v1 != 7)
              {
                result |= *(a1 + 39) << 56;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10013B844(uint64_t a1, unint64_t a2)
{
  if ((String.count.getter() & 1) == 0)
  {
    v28 = xmmword_10023BF90;
    v4 = String.count.getter();
    if (v4 < 1)
    {
      return 0;
    }

    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = __OFADD__(v6, 2) ? 0x7FFFFFFFFFFFFFFFLL : v6 + 2;

      v8 = sub_10013BB2C(v6, a1, a2);
      v10 = v9;

      v11 = Substring.index(_:offsetBy:limitedBy:)();
      v13 = (v12 & 1) != 0 ? v10 : v11;
      if (v13 >> 14 < v8 >> 14)
      {
        break;
      }

      v14 = Substring.subscript.getter();
      v16 = v15;
      v18 = v17;
      v20 = v19;

      if (!((v14 ^ v16) >> 14))
      {
        goto LABEL_25;
      }

      if ((v20 & 0x1000000000000000) != 0)
      {
        LOWORD(v18) = sub_10017BA20(v14, v16, v18, v20, 16);

        if ((v18 & 0x100) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v25[0] = v18;
          v25[1] = v20 & 0xFFFFFFFFFFFFFFLL;
          v21 = v25;
        }

        else if ((v18 & 0x1000000000000000) != 0)
        {
          v21 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = _StringObject.sharedUTF8.getter();
        }

        v22 = sub_10013BBDC(v21, v14, v16, v18, v20, 16);
        LOBYTE(v18) = v22;
        v27 = BYTE1(v22) & 1;
        v23 = (v22 >> 8) & 1;

        if (v23)
        {
          goto LABEL_26;
        }
      }

      v26 = v18;
      Data._Representation.append(contentsOf:)();
      v6 = v7;
      if (v7 >= v5)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_25:

LABEL_26:
    sub_1000A0D2C(v28, *(&v28 + 1));
  }

  return 0;
}

id *sub_10013BA5C(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1001F7A30();
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10013BAD8()
{
  result = qword_1002A97A8;
  if (!qword_1002A97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A97A8);
  }

  return result;
}

unint64_t sub_10013BB2C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_10013BBDC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1001E4838(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1001E4838(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1001E4838(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_10013C084()
{
  result = qword_1002A97B0;
  if (!qword_1002A97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A97B0);
  }

  return result;
}

BOOL sub_10013C0D8()
{
  v1 = v0[1];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return 0;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v2 = v0[2];
  if (v2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return 0;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v3 = v0[3];
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return 0;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v4 = v0[4];
  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return 0;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v5 = v0[5];
  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return 0;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v6 = v0[6];
  if (v6 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return 0;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v7 = v0[7];
  if (!(v7 >> 62))
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    return 0;
  }

LABEL_15:
  v8 = v0[8];
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaDictionary.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    return 0;
  }

  v11 = v0[9];
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = __CocoaDictionary.count.getter();
  }

  else
  {
    v12 = *(v11 + 16);
  }

  return v12 == 0;
}

void sub_10013C29C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() UUIDWithString:v0];

  qword_1002A97C0 = v1;
}

uint64_t sub_10013C30C()
{
  v1 = [v0 data];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  LOBYTE(v1) = Data._Representation.subscript.getter();
  sub_1000A0D2C(v2, v4);
  v5 = [v0 data];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  LOBYTE(v5) = Data._Representation.subscript.getter();
  sub_1000A0D2C(v6, v8);
  v9 = [v0 data];
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  LOBYTE(v9) = Data._Representation.subscript.getter();
  sub_1000A0D2C(v10, v12);
  v13 = [v0 data];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  LODWORD(v13) = Data._Representation.subscript.getter();
  sub_1000A0D2C(v14, v16);
  return v1 | (v5 << 8) | (v9 << 16) | (v13 << 24);
}

uint64_t sub_10013C4D8()
{
  sub_100095274(&unk_1002A9818, &unk_10023E338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023E160;
  v1 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10023C170;
  *(v2 + 56) = &type metadata for UInt32;
  *(v2 + 64) = &protocol witness table for UInt32;
  *(v2 + 32) = 62;
  String.init(format:_:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 UUIDWithString:v3];

  *(inited + 32) = v4;
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x8000000100232E10;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10023C170;
  *(v5 + 56) = &type metadata for UInt32;
  *(v5 + 64) = &protocol witness table for UInt32;
  *(v5 + 32) = 67;
  String.init(format:_:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v1 UUIDWithString:v6];

  *(inited + 56) = v7;
  strcpy((inited + 64), "LED Component");
  *(inited + 78) = -4864;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10023C170;
  *(v8 + 56) = &type metadata for UInt32;
  *(v8 + 64) = &protocol witness table for UInt32;
  *(v8 + 32) = 73;
  String.init(format:_:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v1 UUIDWithString:v9];

  *(inited + 80) = v10;
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000100232E30;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10023C170;
  *(v11 + 56) = &type metadata for UInt32;
  *(v11 + 64) = &protocol witness table for UInt32;
  *(v11 + 32) = 16;
  String.init(format:_:)();
  v12 = String._bridgeToObjectiveC()();

  v13 = [v1 UUIDWithString:v12];

  *(inited + 104) = v13;
  *(inited + 112) = 0x676E6972696150;
  *(inited + 120) = 0xE700000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10023C170;
  *(v14 + 56) = &type metadata for UInt32;
  *(v14 + 64) = &protocol witness table for UInt32;
  *(v14 + 32) = 150;
  String.init(format:_:)();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v1 UUIDWithString:v15];

  *(inited + 128) = v16;
  *(inited + 136) = 0x79726574746142;
  *(inited + 144) = 0xE700000000000000;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10023C170;
  *(v17 + 56) = &type metadata for UInt32;
  *(v17 + 64) = &protocol witness table for UInt32;
  *(v17 + 32) = 162;
  String.init(format:_:)();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v1 UUIDWithString:v18];

  *(inited + 152) = v19;
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x8000000100232E50;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10023C170;
  *(v20 + 56) = &type metadata for UInt32;
  *(v20 + 64) = &protocol witness table for UInt32;
  *(v20 + 32) = 256;
  String.init(format:_:)();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v1 UUIDWithString:v21];

  *(inited + 176) = v22;
  strcpy((inited + 184), "Corsair System");
  *(inited + 199) = -18;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10023C170;
  *(v23 + 56) = &type metadata for UInt32;
  *(v23 + 64) = &protocol witness table for UInt32;
  *(v23 + 32) = 512;
  String.init(format:_:)();
  v24 = String._bridgeToObjectiveC()();

  v25 = [v1 UUIDWithString:v24];

  *(inited + 200) = v25;
  *(inited + 208) = 0xD000000000000016;
  *(inited + 216) = 0x8000000100232E70;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10023C170;
  *(v26 + 56) = &type metadata for UInt32;
  *(v26 + 64) = &protocol witness table for UInt32;
  *(v26 + 32) = 768;
  String.init(format:_:)();
  v27 = String._bridgeToObjectiveC()();

  v28 = [v1 UUIDWithString:v27];

  *(inited + 224) = v28;
  strcpy((inited + 232), "Corsair Sensor");
  *(inited + 247) = -18;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10023C170;
  *(v29 + 56) = &type metadata for UInt32;
  *(v29 + 64) = &protocol witness table for UInt32;
  *(v29 + 32) = 297;
  String.init(format:_:)();
  v30 = String._bridgeToObjectiveC()();

  v31 = [v1 UUIDWithString:v30];

  *(inited + 248) = v31;
  *(inited + 256) = 0xD000000000000020;
  *(inited + 264) = 0x8000000100232E90;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10023C170;
  *(v32 + 56) = &type metadata for UInt32;
  *(v32 + 64) = &protocol witness table for UInt32;
  *(v32 + 32) = 566;
  String.init(format:_:)();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v1 UUIDWithString:v33];

  *(inited + 272) = v34;
  *(inited + 280) = 0x657261776D726946;
  *(inited + 288) = 0xEF65746164705520;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10023C170;
  *(v35 + 56) = &type metadata for UInt32;
  *(v35 + 64) = &protocol witness table for UInt32;
  *(v35 + 32) = 567;
  String.init(format:_:)();
  v36 = String._bridgeToObjectiveC()();

  v37 = [v1 UUIDWithString:v36];

  *(inited + 296) = v37;
  *(inited + 304) = 0x74736F6E67616944;
  *(inited + 312) = 0xEB00000000736369;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10023C170;
  *(v38 + 56) = &type metadata for UInt32;
  *(v38 + 64) = &protocol witness table for UInt32;
  *(v38 + 32) = 569;
  String.init(format:_:)();
  v39 = String._bridgeToObjectiveC()();

  v40 = [v1 UUIDWithString:v39];

  *(inited + 320) = v40;
  *(inited + 328) = 0xD00000000000001DLL;
  *(inited + 336) = 0x8000000100232EC0;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10023C170;
  *(v41 + 56) = &type metadata for UInt32;
  *(v41 + 64) = &protocol witness table for UInt32;
  *(v41 + 32) = 624;
  String.init(format:_:)();
  v42 = String._bridgeToObjectiveC()();

  v43 = [v1 UUIDWithString:v42];

  *(inited + 344) = v43;
  *(inited + 352) = 0x7363697274654DLL;
  *(inited + 360) = 0xE700000000000000;
  v44 = sub_1001F2E38(inited);
  swift_setDeallocating();
  sub_100095274(&qword_1002A9828, &qword_10023E348);
  result = swift_arrayDestroy();
  qword_1002B1BA8 = v44;
  return result;
}

uint64_t sub_10013CDB0()
{
  sub_100095274(&unk_1002A9818, &unk_10023E338);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10023E170;
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 UUIDWithString:v1];

  *(v0 + 32) = v3;
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x8000000100232AC0;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 UUIDWithString:v4];

  *(v0 + 56) = v5;
  *(v0 + 64) = 0x73726556204B4441;
  *(v0 + 72) = 0xEB000000006E6F69;
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10023C170;
  *(v6 + 56) = &type metadata for UInt32;
  *(v6 + 64) = &protocol witness table for UInt32;
  *(v6 + 32) = 32;
  String.init(format:_:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v2 UUIDWithString:v7];

  *(v0 + 80) = v8;
  strcpy((v0 + 88), "Manufacturer");
  *(v0 + 101) = 0;
  *(v0 + 102) = -5120;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10023C170;
  *(v9 + 56) = &type metadata for UInt32;
  *(v9 + 64) = &protocol witness table for UInt32;
  *(v9 + 32) = 33;
  String.init(format:_:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v2 UUIDWithString:v10];

  *(v0 + 104) = v11;
  *(v0 + 112) = 0x6C65646F4DLL;
  *(v0 + 120) = 0xE500000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10023C170;
  *(v12 + 56) = &type metadata for UInt32;
  *(v12 + 64) = &protocol witness table for UInt32;
  *(v12 + 32) = 35;
  String.init(format:_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v2 UUIDWithString:v13];

  *(v0 + 128) = v14;
  *(v0 + 136) = 1701667150;
  *(v0 + 144) = 0xE400000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10023C170;
  *(v15 + 56) = &type metadata for UInt32;
  *(v15 + 64) = &protocol witness table for UInt32;
  *(v15 + 32) = 37;
  String.init(format:_:)();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v2 UUIDWithString:v16];

  *(v0 + 152) = v17;
  *(v0 + 160) = 28239;
  *(v0 + 168) = 0xE200000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10023C170;
  *(v18 + 56) = &type metadata for UInt32;
  *(v18 + 64) = &protocol witness table for UInt32;
  *(v18 + 32) = 48;
  String.init(format:_:)();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v2 UUIDWithString:v19];

  *(v0 + 176) = v20;
  strcpy((v0 + 184), "Serial Number");
  *(v0 + 198) = -4864;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10023C170;
  *(v21 + 56) = &type metadata for UInt32;
  *(v21 + 64) = &protocol witness table for UInt32;
  *(v21 + 32) = 55;
  String.init(format:_:)();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v2 UUIDWithString:v22];

  *(v0 + 200) = v23;
  *(v0 + 208) = 0x6E6F6973726556;
  *(v0 + 216) = 0xE700000000000000;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10023C170;
  *(v24 + 56) = &type metadata for UInt32;
  *(v24 + 64) = &protocol witness table for UInt32;
  *(v24 + 32) = 17;
  String.init(format:_:)();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v2 UUIDWithString:v25];

  *(v0 + 224) = v26;
  *(v0 + 232) = 0x7465532072696150;
  *(v0 + 240) = 0xEA00000000007075;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10023C170;
  *(v27 + 56) = &type metadata for UInt32;
  *(v27 + 64) = &protocol witness table for UInt32;
  *(v27 + 32) = 18;
  String.init(format:_:)();
  v28 = String._bridgeToObjectiveC()();

  v29 = [v2 UUIDWithString:v28];

  *(v0 + 248) = v29;
  *(v0 + 256) = 0x7265562072696150;
  *(v0 + 264) = 0xEB00000000796669;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10023C170;
  *(v30 + 56) = &type metadata for UInt32;
  *(v30 + 64) = &protocol witness table for UInt32;
  *(v30 + 32) = 19;
  String.init(format:_:)();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v2 UUIDWithString:v31];

  *(v0 + 272) = v32;
  *(v0 + 280) = 0xD000000000000010;
  *(v0 + 288) = 0x8000000100232B10;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10023C170;
  *(v33 + 56) = &type metadata for UInt32;
  *(v33 + 64) = &protocol witness table for UInt32;
  *(v33 + 32) = 20;
  String.init(format:_:)();
  v34 = String._bridgeToObjectiveC()();

  v35 = [v2 UUIDWithString:v34];

  *(v0 + 296) = v35;
  *(v0 + 304) = 0xD000000000000010;
  *(v0 + 312) = 0x8000000100232B30;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10023C170;
  *(v36 + 56) = &type metadata for UInt32;
  *(v36 + 64) = &protocol witness table for UInt32;
  *(v36 + 32) = 21;
  String.init(format:_:)();
  v37 = String._bridgeToObjectiveC()();

  v38 = [v2 UUIDWithString:v37];

  *(v0 + 320) = v38;
  *(v0 + 328) = 0xD000000000000014;
  *(v0 + 336) = 0x8000000100232B50;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10023C170;
  *(v39 + 56) = &type metadata for UInt32;
  *(v39 + 64) = &protocol witness table for UInt32;
  *(v39 + 32) = 82;
  String.init(format:_:)();
  v40 = String._bridgeToObjectiveC()();

  v41 = [v2 UUIDWithString:v40];

  *(v0 + 344) = v41;
  *(v0 + 352) = 0xD000000000000011;
  *(v0 + 360) = 0x8000000100232B70;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10023C170;
  *(v42 + 56) = &type metadata for UInt32;
  *(v42 + 64) = &protocol witness table for UInt32;
  *(v42 + 32) = 83;
  String.init(format:_:)();
  v43 = String._bridgeToObjectiveC()();

  v44 = [v2 UUIDWithString:v43];

  *(v0 + 368) = v44;
  *(v0 + 376) = 0xD000000000000011;
  *(v0 + 384) = 0x8000000100232B90;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10023C170;
  *(v45 + 56) = &type metadata for UInt32;
  *(v45 + 64) = &protocol witness table for UInt32;
  *(v45 + 32) = 104;
  String.init(format:_:)();
  v46 = String._bridgeToObjectiveC()();

  v47 = [v2 UUIDWithString:v46];

  *(v0 + 392) = v47;
  strcpy((v0 + 400), "Battery Level");
  *(v0 + 414) = -4864;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10023C170;
  *(v48 + 56) = &type metadata for UInt32;
  *(v48 + 64) = &protocol witness table for UInt32;
  *(v48 + 32) = 121;
  String.init(format:_:)();
  v49 = String._bridgeToObjectiveC()();

  v50 = [v2 UUIDWithString:v49];

  *(v0 + 416) = v50;
  *(v0 + 424) = 0xD000000000000012;
  *(v0 + 432) = 0x8000000100232BB0;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10023C170;
  *(v51 + 56) = &type metadata for UInt32;
  *(v51 + 64) = &protocol witness table for UInt32;
  *(v51 + 32) = 143;
  String.init(format:_:)();
  v52 = String._bridgeToObjectiveC()();

  v53 = [v2 UUIDWithString:v52];

  *(v0 + 440) = v53;
  strcpy((v0 + 448), "Charging State");
  *(v0 + 463) = -18;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10023C170;
  *(v54 + 56) = &type metadata for UInt32;
  *(v54 + 64) = &protocol witness table for UInt32;
  *(v54 + 32) = 165;
  String.init(format:_:)();
  v55 = String._bridgeToObjectiveC()();

  v56 = [v2 UUIDWithString:v55];

  *(v0 + 464) = v56;
  *(v0 + 472) = 0xD000000000000011;
  *(v0 + 480) = 0x8000000100232BD0;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10023C170;
  *(v57 + 56) = &type metadata for UInt32;
  *(v57 + 64) = &protocol witness table for UInt32;
  *(v57 + 32) = 304;
  String.init(format:_:)();
  v58 = String._bridgeToObjectiveC()();

  v59 = [v2 UUIDWithString:v58];

  *(v0 + 488) = v59;
  *(v0 + 496) = 0xD00000000000002DLL;
  *(v0 + 504) = 0x8000000100232BF0;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10023C170;
  *(v60 + 56) = &type metadata for UInt32;
  *(v60 + 64) = &protocol witness table for UInt32;
  *(v60 + 32) = 305;
  String.init(format:_:)();
  v61 = String._bridgeToObjectiveC()();

  v62 = [v2 UUIDWithString:v61];

  *(v0 + 512) = v62;
  *(v0 + 520) = 0xD00000000000001BLL;
  *(v0 + 528) = 0x8000000100232C20;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_10023C170;
  *(v63 + 56) = &type metadata for UInt32;
  *(v63 + 64) = &protocol witness table for UInt32;
  *(v63 + 32) = 625;
  String.init(format:_:)();
  v64 = String._bridgeToObjectiveC()();

  v65 = [v2 UUIDWithString:v64];

  *(v0 + 536) = v65;
  *(v0 + 544) = 0xD000000000000011;
  *(v0 + 552) = 0x8000000100232C40;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_10023C170;
  *(v66 + 56) = &type metadata for UInt32;
  *(v66 + 64) = &protocol witness table for UInt32;
  *(v66 + 32) = 626;
  String.init(format:_:)();
  v67 = String._bridgeToObjectiveC()();

  v68 = [v2 UUIDWithString:v67];

  *(v0 + 560) = v68;
  *(v0 + 568) = 0xD000000000000019;
  *(v0 + 576) = 0x8000000100232C60;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_10023C170;
  *(v69 + 56) = &type metadata for UInt32;
  *(v69 + 64) = &protocol witness table for UInt32;
  *(v69 + 32) = 312;
  String.init(format:_:)();
  v70 = String._bridgeToObjectiveC()();

  v71 = [v2 UUIDWithString:v70];

  *(v0 + 584) = v71;
  *(v0 + 592) = 0xD000000000000019;
  *(v0 + 600) = 0x8000000100232C80;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_10023C170;
  *(v72 + 56) = &type metadata for UInt32;
  *(v72 + 64) = &protocol witness table for UInt32;
  *(v72 + 32) = 313;
  String.init(format:_:)();
  v73 = String._bridgeToObjectiveC()();

  v74 = [v2 UUIDWithString:v73];

  *(v0 + 608) = v74;
  *(v0 + 616) = 0xD000000000000023;
  *(v0 + 624) = 0x8000000100232CA0;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_10023C170;
  *(v75 + 56) = &type metadata for UInt32;
  *(v75 + 64) = &protocol witness table for UInt32;
  *(v75 + 32) = 544;
  String.init(format:_:)();
  v76 = String._bridgeToObjectiveC()();

  v77 = [v2 UUIDWithString:v76];

  *(v0 + 632) = v77;
  strcpy((v0 + 640), "Product Data");
  *(v0 + 653) = 0;
  *(v0 + 654) = -5120;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10023C170;
  *(v78 + 56) = &type metadata for UInt32;
  *(v78 + 64) = &protocol witness table for UInt32;
  *(v78 + 32) = 564;
  String.init(format:_:)();
  v79 = String._bridgeToObjectiveC()();

  v80 = [v2 UUIDWithString:v79];

  *(v0 + 656) = v80;
  *(v0 + 664) = 0xD000000000000019;
  *(v0 + 672) = 0x8000000100232CD0;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_10023C170;
  *(v81 + 56) = &type metadata for UInt32;
  *(v81 + 64) = &protocol witness table for UInt32;
  *(v81 + 32) = 565;
  String.init(format:_:)();
  v82 = String._bridgeToObjectiveC()();

  v83 = [v2 UUIDWithString:v82];

  *(v0 + 680) = v83;
  *(v0 + 688) = 0xD000000000000016;
  *(v0 + 696) = 0x8000000100232CF0;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_10023C170;
  *(v84 + 56) = &type metadata for UInt32;
  *(v84 + 64) = &protocol witness table for UInt32;
  *(v84 + 32) = 572;
  String.init(format:_:)();
  v85 = String._bridgeToObjectiveC()();

  v86 = [v2 UUIDWithString:v85];

  *(v0 + 704) = v86;
  *(v0 + 712) = 0xD000000000000022;
  *(v0 + 720) = 0x8000000100232D10;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_10023C170;
  *(v87 + 56) = &type metadata for UInt32;
  *(v87 + 64) = &protocol witness table for UInt32;
  *(v87 + 32) = 586;
  String.init(format:_:)();
  v88 = String._bridgeToObjectiveC()();

  v89 = [v2 UUIDWithString:v88];

  *(v0 + 728) = v89;
  *(v0 + 736) = 0xD000000000000028;
  *(v0 + 744) = 0x8000000100232D40;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_10023C170;
  *(v90 + 56) = &type metadata for UInt32;
  *(v90 + 64) = &protocol witness table for UInt32;
  *(v90 + 32) = 568;
  String.init(format:_:)();
  v91 = String._bridgeToObjectiveC()();

  v92 = [v2 UUIDWithString:v91];

  *(v0 + 752) = v92;
  *(v0 + 760) = 0xD00000000000001ELL;
  *(v0 + 768) = 0x8000000100232D70;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_10023C170;
  *(v93 + 56) = &type metadata for UInt32;
  *(v93 + 64) = &protocol witness table for UInt32;
  *(v93 + 32) = 588;
  String.init(format:_:)();
  v94 = String._bridgeToObjectiveC()();

  v95 = [v2 UUIDWithString:v94];

  *(v0 + 776) = v95;
  *(v0 + 784) = 0xD00000000000001BLL;
  *(v0 + 792) = 0x8000000100232D90;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_10023C170;
  *(v96 + 56) = &type metadata for UInt32;
  *(v96 + 64) = &protocol witness table for UInt32;
  *(v96 + 32) = 589;
  String.init(format:_:)();
  v97 = String._bridgeToObjectiveC()();

  v98 = [v2 UUIDWithString:v97];

  *(v0 + 800) = v98;
  *(v0 + 808) = 0xD00000000000001ALL;
  *(v0 + 816) = 0x8000000100232DB0;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_10023C170;
  *(v99 + 56) = &type metadata for UInt32;
  *(v99 + 64) = &protocol witness table for UInt32;
  *(v99 + 32) = 257;
  String.init(format:_:)();
  v100 = String._bridgeToObjectiveC()();

  v101 = [v2 UUIDWithString:v100];

  *(v0 + 824) = v101;
  *(v0 + 832) = 0x746F6F626552;
  *(v0 + 840) = 0xE600000000000000;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_10023C170;
  *(v102 + 56) = &type metadata for UInt32;
  *(v102 + 64) = &protocol witness table for UInt32;
  *(v102 + 32) = 258;
  String.init(format:_:)();
  v103 = String._bridgeToObjectiveC()();

  v104 = [v2 UUIDWithString:v103];

  *(v0 + 848) = v104;
  *(v0 + 856) = 1953259848;
  *(v0 + 864) = 0xE400000000000000;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_10023C170;
  *(v105 + 56) = &type metadata for UInt32;
  *(v105 + 64) = &protocol witness table for UInt32;
  *(v105 + 32) = 259;
  String.init(format:_:)();
  v106 = String._bridgeToObjectiveC()();

  v107 = [v2 UUIDWithString:v106];

  *(v0 + 872) = v107;
  strcpy((v0 + 880), "Return to Home");
  *(v0 + 895) = -18;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_10023C170;
  *(v108 + 56) = &type metadata for UInt32;
  *(v108 + 64) = &protocol witness table for UInt32;
  *(v108 + 32) = 260;
  String.init(format:_:)();
  v109 = String._bridgeToObjectiveC()();

  v110 = [v2 UUIDWithString:v109];

  *(v0 + 896) = v110;
  *(v0 + 904) = 0x797469636F6C6556;
  *(v0 + 912) = 0xE800000000000000;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_10023C170;
  *(v111 + 56) = &type metadata for UInt32;
  *(v111 + 64) = &protocol witness table for UInt32;
  *(v111 + 32) = 261;
  String.init(format:_:)();
  v112 = String._bridgeToObjectiveC()();

  v113 = [v2 UUIDWithString:v112];

  *(v0 + 920) = v113;
  *(v0 + 928) = 0x6E6F697469736F50;
  *(v0 + 936) = 0xE800000000000000;
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_10023C170;
  *(v114 + 56) = &type metadata for UInt32;
  *(v114 + 64) = &protocol witness table for UInt32;
  *(v114 + 32) = 262;
  String.init(format:_:)();
  v115 = String._bridgeToObjectiveC()();

  v116 = [v2 UUIDWithString:v115];

  *(v0 + 944) = v116;
  *(v0 + 952) = 0xD000000000000015;
  *(v0 + 960) = 0x8000000100232DD0;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_10023C170;
  *(v117 + 56) = &type metadata for UInt32;
  *(v117 + 64) = &protocol witness table for UInt32;
  *(v117 + 32) = 263;
  String.init(format:_:)();
  v118 = String._bridgeToObjectiveC()();

  v119 = [v2 UUIDWithString:v118];

  *(v0 + 968) = v119;
  *(v0 + 976) = 0x7373657250;
  *(v0 + 984) = 0xE500000000000000;
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_10023C170;
  *(v120 + 56) = &type metadata for UInt32;
  *(v120 + 64) = &protocol witness table for UInt32;
  *(v120 + 32) = 801;
  String.init(format:_:)();
  v121 = String._bridgeToObjectiveC()();

  v122 = [v2 UUIDWithString:v121];

  *(v0 + 992) = v122;
  *(v0 + 1000) = 0x5420726F736E6553;
  *(v0 + 1008) = 0xEB00000000657079;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_10023C170;
  *(v123 + 56) = &type metadata for UInt32;
  *(v123 + 64) = &protocol witness table for UInt32;
  *(v123 + 32) = 802;
  String.init(format:_:)();
  v124 = String._bridgeToObjectiveC()();

  v125 = [v2 UUIDWithString:v124];

  *(v0 + 1016) = v125;
  *(v0 + 1024) = 0x4420726F736E6553;
  *(v0 + 1032) = 0xEB00000000617461;
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_10023C170;
  *(v126 + 56) = &type metadata for UInt32;
  *(v126 + 64) = &protocol witness table for UInt32;
  *(v126 + 32) = 264;
  String.init(format:_:)();
  v127 = String._bridgeToObjectiveC()();

  v128 = [v2 UUIDWithString:v127];

  *(v0 + 1040) = v128;
  strcpy((v0 + 1048), "Motion Status");
  *(v0 + 1062) = -4864;
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_10023C170;
  *(v129 + 56) = &type metadata for UInt32;
  *(v129 + 64) = &protocol witness table for UInt32;
  *(v129 + 32) = 265;
  String.init(format:_:)();
  v130 = String._bridgeToObjectiveC()();

  v131 = [v2 UUIDWithString:v130];

  *(v0 + 1064) = v131;
  *(v0 + 1072) = 0xD00000000000001CLL;
  *(v0 + 1080) = 0x8000000100232DF0;
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_10023C170;
  *(v132 + 56) = &type metadata for UInt32;
  *(v132 + 64) = &protocol witness table for UInt32;
  *(v132 + 32) = 272;
  String.init(format:_:)();
  v133 = String._bridgeToObjectiveC()();

  v134 = [v2 UUIDWithString:v133];

  *(v0 + 1088) = v134;
  *(v0 + 1096) = 0x46206E6F69746F4DLL;
  *(v0 + 1104) = 0xEF6B636162646565;
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_10023C170;
  *(v135 + 56) = &type metadata for UInt32;
  *(v135 + 64) = &protocol witness table for UInt32;
  *(v135 + 32) = 266;
  String.init(format:_:)();
  v136 = String._bridgeToObjectiveC()();

  v137 = [v2 UUIDWithString:v136];

  *(v0 + 1112) = v137;
  strcpy((v0 + 1120), "System Event");
  *(v0 + 1133) = 0;
  *(v0 + 1134) = -5120;
  v138 = sub_1001F2E38(v0);
  swift_setDeallocating();
  sub_100095274(&qword_1002A9828, &qword_10023E348);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1002B1BB0 = v138;
  return result;
}

void sub_10013E7E0(uint64_t a1, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
  {
    if (a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      *(v5 + 24) = a2;
      v6 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_connectOnActions;
      swift_beginAccess();
      v7 = *&v2[v6];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v2[v6] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_100102950(0, v7[2] + 1, 1, v7);
        *&v2[v6] = v7;
      }

      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        v7 = sub_100102950((v9 > 1), v10 + 1, 1, v7);
      }

      v7[2] = (v10 + 1);
      v11 = &v7[2 * v10];
      v11[4] = &unk_10023E378;
      v11[5] = v5;
      *&v2[v6] = v7;
      swift_endAccess();
    }

    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    v12 = qword_1002B1EB8;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v2;
    v12;
    v14 = v2;
    sub_1001D5444(sub_1001400A0, v13);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "CB peripheral is nil", v16, 2u);
    }
  }
}

uint64_t sub_10013EA28(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  v5 = *a2;
  v6 = *a3;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_10009862C;

  return v9(v5, v6);
}

uint64_t sub_10013EB28(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_100095274(&qword_1002A9850, &qword_10023E360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  if (qword_1002A66F8 != -1)
  {
    v12 = inited;
    swift_once();
    inited = v12;
  }

  v6 = qword_1002A97C0;
  *(inited + 32) = qword_1002A97C0;
  v7 = inited + 32;
  v14 = *(a1 + 32);
  *(inited + 40) = v14;
  v8 = inited;
  v9 = v6;
  sub_100140004(&v14, v13);
  v10 = sub_1001F322C(v8);
  swift_setDeallocating();
  sub_100095C84(v7, &qword_1002A9858, &qword_10023E368);
  v13[3] = sub_100095274(&qword_1002A9848, &qword_10023E358);
  v13[0] = v10;
  swift_beginAccess();
  sub_1001DA494(v13, v2, v4);
  return swift_endAccess();
}

uint64_t sub_10013EC8C()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_advData;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_10;
  }

  v6 = sub_10016D4D0(v1, v3);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100095B34(*(v5 + 56) + 32 * v6, v15);

  sub_100095274(&qword_1002A9848, &qword_10023E358);
  if (swift_dynamicCast())
  {
    if (qword_1002A66F8 == -1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      swift_once();
      if (*(v14 + 16))
      {
LABEL_6:
        v9 = sub_10016D848(qword_1002A97C0);
        if (v10)
        {
          v11 = *(v14 + 56) + 16 * v9;
          v12 = *v11;
          sub_1000A0CD8(*v11, *(v11 + 8));

          return v12;
        }
      }
    }

LABEL_10:
  }

  return 0;
}

uint64_t sub_10013EE04()
{
  v1 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
  if (v1 && (v2 = [v1 name]) != 0)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_deviceName);
    v5 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_deviceName + 8);
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      v10 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_advData;
      swift_beginAccess();
      v11 = *(v0 + v10);
      if (*(v11 + 16) && (, v12 = sub_10016D4D0(v7, v9), v14 = v13, , (v14 & 1) != 0))
      {
        sub_100095B34(*(v11 + 56) + 32 * v12, v17);

        if (swift_dynamicCast())
        {
          return v16;
        }
      }

      else
      {
      }

      return 0x6E776F6E6B6E55;
    }
  }

  return v4;
}

id sub_10013EF7C(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
  if (!result)
  {
    return result;
  }

  result = [result services];
  if (!result)
  {
    return result;
  }

  v3 = result;
  sub_100095B94(0, &qword_1002A9840, CBService_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
      v10 = [v8 UUID];
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_22;
    }

LABEL_27:

    return 0;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v12 = _swiftEmptyArrayStorage[4];
LABEL_25:
    v13 = v12;

    return v13;
  }

  __break(1u);
  return result;
}

id sub_10013F1B8(uint64_t a1, id a2)
{
  if (!*(v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral))
  {
    return 0;
  }

  result = [a2 characteristics];
  if (!result)
  {
    return result;
  }

  v4 = result;
  sub_100095B94(0, &unk_1002A9830, CBCharacteristic_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
      v11 = [v9 UUID];
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_27:

    return 0;
  }

LABEL_22:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v13 = _swiftEmptyArrayStorage[4];
LABEL_25:
    v14 = v13;

    return v14;
  }

  __break(1u);
  return result;
}

id sub_10013F42C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BTDevice(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BTDevice(uint64_t a1)
{
  result = qword_1002A97F8;
  if (!qword_1002A97F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013F610(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 sub_10013F730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10013F754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_10013F79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10013F808()
{
  result = qword_1002A9808;
  if (!qword_1002A9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A9808);
  }

  return result;
}

uint64_t sub_10013F890@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_10013F90C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  Logger.init(subsystem:category:)();
  v9 = &v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_discoveryContext];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  v9[80] = 0;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_connectOnActions] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_discoveryMode] = 0;
  v10 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral] = 0;
  v11 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_advData;
  *&v4[v11] = sub_1001F2468(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate] = 0;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_hapPeripheral] = 0;
  UUID.init()();
  v12 = &v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_deviceName];
  *v12 = a1;
  v12[1] = a2;
  v13 = *&v4[v10];
  *&v4[v10] = a3;
  v14 = a3;

  *&v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_rssi] = a4;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for BTDevice(0);
  return objc_msgSendSuper2(&v16, "init");
}

id sub_10013FA64()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = &unk_1002B1000;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = 0x6E776F6E6B6E55;
    v6 = swift_slowAlloc();
    *&v34[0] = swift_slowAlloc();
    *v6 = 136315394;
    type metadata accessor for UUID();
    sub_10013FFC0(&unk_1002A6F90, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1000952D4(v7, v8, v34);

    *(v6 + 4) = v9;
    v4 = &unk_1002B1000;
    *(v6 + 12) = 2080;
    v10 = *&v1[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
    if (v10 && (v11 = [v10 name]) != 0)
    {
      v12 = v11;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v4 = &unk_1002B1000;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    v15 = sub_1000952D4(v5, v14, v34);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s connected to %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v16 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate;
  v17 = *&v1[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate];
  if (v17)
  {
    [v17 didConnect];
  }

  v18 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_discoveryMode;
  if (v1[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_discoveryMode])
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Discovering services!", v21, 2u);
    }

    v22 = v1[v18];
    v23 = sub_1001F3950(_swiftEmptyArrayStorage);
    v24 = sub_1001F3978(_swiftEmptyArrayStorage);
    v25 = &v1[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_discoveryContext];
    swift_beginAccess();
    v26 = *(v25 + 1);
    v34[0] = *v25;
    v34[1] = v26;
    v27 = *(v25 + 2);
    v28 = *(v25 + 3);
    v29 = *(v25 + 4);
    v35 = v25[80];
    v34[3] = v28;
    v34[4] = v29;
    v34[2] = v27;
    *v25 = v22;
    *(v25 + 1) = _swiftEmptyArrayStorage;
    *(v25 + 2) = _swiftEmptyArrayStorage;
    *(v25 + 3) = _swiftEmptyArrayStorage;
    *(v25 + 4) = _swiftEmptyArrayStorage;
    *(v25 + 5) = _swiftEmptyArrayStorage;
    *(v25 + 6) = _swiftEmptyArrayStorage;
    *(v25 + 7) = _swiftEmptyArrayStorage;
    *(v25 + 8) = v23;
    *(v25 + 9) = v24;
    v25[80] = 0;
    sub_100095C84(v34, &qword_1002A8798, &qword_10023E350);
    v31 = sub_10013C474(v33);
    if (*(v30 + 8))
    {
      *(v30 + 80) = 1;
    }

    (v31)(v33, 0);
    result = *&v1[v4[379]];
    if (result)
    {
      return [result discoverServices:0];
    }
  }

  else
  {
    result = *&v1[v16];
    if (result)
    {

      return [result didFinishDiscovery:0];
    }
  }

  return result;
}

id sub_10013FE28()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    type metadata accessor for UUID();
    sub_10013FFC0(&unk_1002A6F90, &protocol conformance descriptor for UUID);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000952D4(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s disconnected", v4, 0xCu);
    sub_100095808(v5);
  }

  result = *&v1[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate];
  if (result)
  {

    return [result didDisconnect];
  }

  return result;
}

uint64_t sub_10013FFC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100140060()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001400A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001400E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10009862C;

  return sub_10013EA28(a1, a2, a3, v8);
}

void sub_1001401B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
  }
}

uint64_t sub_10014025C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1000A0CD8(a1, a2);
  Data.Iterator.init(_:at:)();
  v7 = Data.Iterator.next()();
  if ((*&v7 & 0x100) == 0)
  {
    value = v7.value;
    v22 = xmmword_10023C170;
    do
    {
      v9 = String.count.getter();
      if (v9 <= 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = 58;
      }

      if (v9 <= 0)
      {
        v11 = 0xE000000000000000;
      }

      else
      {
        v11 = 0xE100000000000000;
      }

      sub_100095274(&unk_1002A73A0, &qword_10023C670);
      v12 = swift_allocObject();
      *(v12 + 16) = v22;
      *(v12 + 56) = &type metadata for UInt8;
      *(v12 + 64) = &protocol witness table for UInt8;
      *(v12 + 32) = value;
      v13 = String.init(format:_:)();
      v15 = v14;
      v23._countAndFlagsBits = v10;
      v23._object = v11;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);

      String.append(_:)(v23);

      v17 = Data.Iterator.next()();
      value = v17.value;
    }

    while ((*&v17 & 0x100) == 0);
  }

  (*(v20 + 8))(v6, v21);
  countAndFlagsBits = String.uppercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001404A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for Data.Iterator();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v8 - 8);
  v25 = &v23 - v9;
  v10 = 0xD000000000000018;
  v11 = 0x8000000100231150;
  sub_1000A0CD8(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_1001407E0();
  dispatch thunk of IteratorProtocol.next()();
  if ((v31 & 1) == 0)
  {
    v27 = xmmword_10023C170;
    do
    {
      v12 = v30;
      sub_100095274(&unk_1002A73A0, &qword_10023C670);
      v13 = swift_allocObject();
      *(v13 + 16) = v27;
      *(v13 + 56) = &type metadata for UInt8;
      *(v13 + 64) = &protocol witness table for UInt8;
      *(v13 + 32) = v12;
      v14 = String.init(format:_:)();
      v16 = v15;
      v28 = v10;
      v29 = v11;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      String.append(_:)(v17);

      v10 = v28;
      v11 = v29;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v31 != 1);
  }

  (*(v24 + 8))(v7, v5);
  v18 = v25;
  UUID.init(uuidString:)();

  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v18, 1, v19) != 1)
  {
    return (*(v20 + 32))(v26, v18, v19);
  }

  UUID.init()();
  result = (v21)(v18, 1, v19);
  if (result != 1)
  {
    return sub_100140838(v18);
  }

  return result;
}

unint64_t sub_1001407E0()
{
  result = qword_1002A7140;
  if (!qword_1002A7140)
  {
    type metadata accessor for Data.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7140);
  }

  return result;
}

uint64_t sub_100140838(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001408A0(uint64_t a1)
{
  sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10023C8B0;
  UUID.uuid.getter();
  *(v2 + 32) = v3;
  UUID.uuid.getter();
  *(v2 + 33) = v4;
  UUID.uuid.getter();
  *(v2 + 34) = v5;
  UUID.uuid.getter();
  *(v2 + 35) = v6;
  UUID.uuid.getter();
  *(v2 + 36) = v7;
  UUID.uuid.getter();
  *(v2 + 37) = v8;
  v9 = sub_100104264(v2);

  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_100140998(uint64_t a1, unint64_t a2)
{
  v29 = xmmword_10023BF90;
  v25 = 58;
  v26 = 0xE100000000000000;
  v24 = &v25;
  v2 = sub_10017B660(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000BAB94, v23, a1, a2, &v25);
  v3 = v2[2];
  if (!v3)
  {

    v13 = 0;
    v16 = 0;
    v14 = 0xC000000000000000;
    goto LABEL_29;
  }

  v4 = (v2 + 7);
  do
  {
    v6 = *(v4 - 3);
    v5 = *(v4 - 2);
    v8 = *(v4 - 1);
    v7 = *v4;

    if (Substring.distance(from:to:)() != 2 || !((v5 ^ v6) >> 14))
    {

      goto LABEL_4;
    }

    if ((v7 & 0x1000000000000000) != 0)
    {
      LOWORD(v8) = sub_10017BA20(v6, v5, v8, v7, 16);

      if ((v8 & 0x100) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((v7 & 0x2000000000000000) != 0)
      {
        v25 = v8;
        v26 = v7 & 0xFFFFFFFFFFFFFFLL;
        v9 = &v25;
      }

      else if ((v8 & 0x1000000000000000) != 0)
      {
        v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v9 = _StringObject.sharedUTF8.getter();
      }

      v10 = sub_10013BBDC(v9, v6, v5, v8, v7, 16);
      LOBYTE(v8) = v10;
      v11 = (v10 >> 8) & 1;

      if ((v11 & 1) == 0)
      {
LABEL_13:
        v12 = sub_100095274(&qword_1002A9860, &qword_10023E380);
        v27 = v12;
        v28 = sub_100140CA0();
        LOBYTE(v25) = v8;
        sub_1000A09E0(&v25, v12);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_100095808(&v25);
      }
    }

LABEL_4:
    v4 += 4;
    --v3;
  }

  while (v3);

  v14 = *(&v29 + 1);
  v13 = v29;
  v15 = *(&v29 + 1) >> 62;
  if ((*(&v29 + 1) >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_28;
    }

    v18 = *(v29 + 16);
    v17 = *(v29 + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (!v19)
    {
      if (v20 != 6)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v15)
  {
    if (!__OFSUB__(DWORD1(v29), v29))
    {
      if (DWORD1(v29) - v29 != 6)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

LABEL_31:
    __break(1u);
  }

  if (BYTE14(v29) != 6)
  {
LABEL_28:
    v16 = 0;
    goto LABEL_29;
  }

LABEL_25:
  v21 = *(&v29 + 1);
  v16 = v29;
  sub_1000A0CD8(v29, *(&v29 + 1));
  v14 = v21;
  v13 = v16;
LABEL_29:
  sub_1000A0D2C(v13, v14);
  return v16;
}

unint64_t sub_100140CA0()
{
  result = qword_1002A9868;
  if (!qword_1002A9868)
  {
    sub_10009589C(&qword_1002A9860, &qword_10023E380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A9868);
  }

  return result;
}

uint64_t sub_100140D04(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_10:
    if (v3 == 6)
    {
      return result;
    }
  }

  sub_1000A0D2C(result, a2);
  return 0;
}

void sub_100140D84(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager;
  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager))
  {
    v3 = v1;
    v5 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_powerOnActions;
    swift_beginAccess();
    v6 = *(v3 + v5);
    v7 = *(v6 + 16);

    if (v7)
    {
      v8 = 0;
      v9 = v6 + 40;
      while (v8 < *(v6 + 16))
      {
        v10 = *(v3 + v2);
        if (!v10)
        {
          goto LABEL_10;
        }

        ++v8;
        v11 = *(v9 - 8);
        v13 = a1;
        v14 = v10;

        v12 = v10;
        v11(&v14, &v13);

        v9 += 16;
        if (v7 == v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

    else
    {
LABEL_7:

      *(v3 + v5) = _swiftEmptyArrayStorage;
    }
  }
}

void sub_100140EA4()
{
  v1 = v0;
  sub_100147A0C();
  v2 = swift_allocError();
  *v3 = 0;
  sub_100140D84(v2);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Bluetooth powered off, attempting to clear state.", v6, 2u);
  }

  sub_1001059EC();

  *(v1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) = 0;
  v7 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  v8 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredDevices;
  swift_beginAccess();
  *(v1 + v9) = &_swiftEmptyDictionarySingleton;

  v10 = *(v1 + v7);

  os_unfair_lock_unlock(v10 + 4);

  v11 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
    if (v12)
    {
      v13 = swift_allocError();
      *v14 = 0;
      v15 = v12;
      sub_1001410AC(v15, v13);
    }
  }

  *(v1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_enableOnPowerOn) = 1;
}

BOOL sub_1001410AC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v26 = v4;
      v12 = v11;
      v13 = swift_slowAlloc();
      *&aBlock = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_1000952D4(v14, v15, &aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Reporting accessory disconnect due to error: %s", v12, 0xCu);
      sub_100095808(v13);

      v4 = v26;
    }
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v17 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
  sub_1000CB8B8(a1, &aBlock);
  v18 = v33;
  if (v33)
  {
    sub_1000A0D80(&aBlock, v37);
    v19 = *&v17[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    sub_1000A097C(v37, v36);
    v20 = swift_allocObject();
    v20[2] = v17;
    sub_1000A0D80(v36, (v20 + 3));
    v20[8] = a1;
    v20[9] = a2;
    v34 = sub_100147610;
    v35 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v32 = sub_100147FC8;
    v33 = &unk_100278AB8;
    v21 = _Block_copy(&aBlock);
    swift_errorRetain();
    v22 = v17;
    v23 = v19;
    v24 = a1;
    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000BAB30();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v29 + 8))(v6, v4);
    (*(v27 + 8))(v8, v28);
    sub_100095808(v37);
  }

  else
  {

    sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
  }

  return v18 != 0;
}

void sub_100141564()
{
  v1 = v0;
  sub_100140D84(0);
  v2 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_enableOnPowerOn;
  if (*(v0 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_enableOnPowerOn) == 1)
  {
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v3 = qword_1002B1CF0;
    v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v5 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v5 + 4);

    v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
    swift_beginAccess();
    v7 = *(v3 + v6);
    v8 = *(v3 + v4);

    os_unfair_lock_unlock(v8 + 4);

    if (v7 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
      {

        sub_1000F2E4C(1);
      }

      *(v1 + v2) = 0;
    }
  }
}

uint64_t sub_1001416C4(void *a1)
{
  v2 = v1;
  v4 = [a1 state];
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          sub_100147A0C();
          v5 = swift_allocError();
          *v6 = 1;
          sub_100140D84(v5);

          goto LABEL_24;
        }

        goto LABEL_16;
      }

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_22;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Central resetting! Treat as power-off";
      goto LABEL_21;
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Central state unknown, treat as power-off";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v4 == 3)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Central state unauthorized, treat as power-off";
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v4 == 4)
  {
LABEL_23:
    sub_100140EA4();
    goto LABEL_24;
  }

  if (v4 != 5)
  {
LABEL_16:
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136315138;
      v25[0] = [v14 state];
      type metadata accessor for CBManagerState(0);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000952D4(v19, v20, v28);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Not handling central manager state: %s", v17, 0xCu);
      sub_100095808(v18);
    }

    goto LABEL_24;
  }

  [a1 setDelegate:v1];
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Central powered on", v9, 2u);
  }

  sub_100141564();
LABEL_24:
  sub_1000B5150(v2 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_delegate, v28, &qword_1002A98D8, &qword_10023E428);
  if (!v28[3])
  {
    return sub_100095C84(v28, &qword_1002A98D8, &qword_10023E428);
  }

  sub_1000A097C(v28, v25);
  sub_100095C84(v28, &qword_1002A98D8, &qword_10023E428);
  v22 = v26;
  v23 = v27;
  sub_1000A09E0(v25, v26);
  (*(v23 + 8))([a1 state], v22, v23);
  return sub_100095808(v25);
}

void sub_100141C30(void *a1, void *a2)
{
  v59 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v62 = *(v7 - 8);
  __chkstk_darwin(v7);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode;
  v63 = v2;
  if (*(&v2->isa + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) == 2)
  {
    v55 = v7;
    v56 = v5;
    v14 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v57 = v4;
    v58 = v14;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&aBlock = v19;
      *v18 = 136315138;
      v20 = [v14 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = UUID.uuidString.getter();
      v23 = v22;
      (*(v10 + 8))(v12, v9);
      v24 = sub_1000952D4(v21, v23, &aBlock);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Peripheral %s connected", v18, 0xCu);
      sub_100095808(v19);
    }

    v25 = v63;

    sub_1001059EC();

    *(&v25->isa + v13) = 3;
    if (*(&v25->isa + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
    {

      sub_1000F2E4C(2);
    }

    v26 = v58;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v27 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    sub_1000CB8B8(v26, &aBlock);
    if (v68)
    {
      sub_1000A0D80(&aBlock, v71);
      v28 = *&v27[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      sub_1000A097C(v71, v65);
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      sub_1000A0D80(v65, v29 + 24);
      *(v29 + 64) = v26;
      v69 = sub_100147924;
      v70 = v29;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v67 = sub_100147FC8;
      v68 = &unk_100278C98;
      v30 = _Block_copy(&aBlock);
      v31 = v26;
      v32 = v27;
      v33 = v28;
      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      v35 = v61;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v30);

      (*(v56 + 8))(v35, v36);
      (*(v62 + 8))(v34, v55);
      sub_100095808(v71);
    }

    else
    {
      sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
      v40 = v63;
      sub_1000E4E98();
      v41 = *(&v40->isa + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
      if (v41)
      {
        sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
        v42 = v41;
        v43 = static OS_dispatch_queue.main.getter();
        v44 = swift_allocObject();
        v45 = v59;
        *(v44 + 16) = v42;
        *(v44 + 24) = v45;
        v69 = sub_1001478B8;
        v70 = v44;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v67 = sub_100147FC8;
        v68 = &unk_100278C48;
        v46 = _Block_copy(&aBlock);
        v47 = v42;
        v48 = v45;

        v49 = v60;
        static DispatchQoS.unspecified.getter();
        *&aBlock = _swiftEmptyArrayStorage;
        sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_1000BAB30();
        v50 = v61;
        v51 = v57;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v46);

        (*(v56 + 8))(v50, v51);
        (*(v62 + 8))(v49, v55);
      }
    }

    sub_1000B5150(v63 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_delegate, &aBlock, &qword_1002A98D8, &qword_10023E428);
    if (v68)
    {
      sub_1000A097C(&aBlock, v71);
      sub_100095C84(&aBlock, &qword_1002A98D8, &qword_10023E428);
      v52 = v72;
      v53 = v73;
      sub_1000A09E0(v71, v72);
      (*(v53 + 24))(v26, 0, v52, v53);

      sub_100095808(v71);
    }

    else
    {

      sub_100095C84(&aBlock, &qword_1002A98D8, &qword_10023E428);
    }
  }

  else
  {
    v63 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v63, v37, "connection callback while in non-connecting state", v38, 2u);
    }

    v39 = v63;
  }
}

void sub_1001425D8(char *result, void *a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  if (a4)
  {
    v7 = *sub_1000A09E0(a2, a2[3]);

    sub_1001443B0(v7, a3, a4, result);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001426CC(char *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_1000A09E0(a2, a2[3]);
  sub_1001460D4(*v7, a4, a1);
  v8 = *(*sub_1000A09E0(a2, a2[3]) + 32);
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      if (a4)
      {
        a4 = _convertErrorToNSError(_:)();
      }

      v13[4] = MotionFeedback.init(positions:velocities:);
      v13[5] = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_100142800;
      v13[3] = &unk_100278AE0;
      v12 = _Block_copy(v13);
      [v10 handleDisconnectionWithError:a4 completionHandler:v12];
      _Block_release(v12);
    }
  }
}

uint64_t sub_100142800(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100142854(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v54 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  __chkstk_darwin(v63);
  v64 = (&v53 - v9);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v65 = v14;

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v19 = [v65 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v23 = sub_1000952D4(v20, v22, aBlock);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Peripheral %s disconnected", v17, 0xCu);
    sub_100095808(v18);
  }

  sub_1001059EC();

  v4[OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode] = 0;
  if (*&v4[OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan])
  {

    sub_1000F2E4C(3);
  }

  v24 = sub_1001D5DDC();
  v25 = v65;
  v26 = sub_1001473DC(v24, v25);

  v62 = v25;

  v27 = 1 << *(v26 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v26 + 64);
  v30 = (v27 + 63) >> 6;

  v31 = 0;
  v65 = v4;
  if (v29)
  {
    while (1)
    {
      v32 = v31;
LABEL_12:
      v33 = __clz(__rbit64(v29)) | (v32 << 6);
      v34 = *(v26 + 56);
      v35 = (*(v26 + 48) + 16 * v33);
      v37 = *v35;
      v36 = v35[1];
      v38 = v34 + *(*(type metadata accessor for BTDiscoveredDevice(0) - 8) + 72) * v33;
      v24 = v64;
      sub_1000E40C4(v38, v64 + *(v63 + 48));
      *v24 = v37;
      v24[1] = v36;

      v4 = v65;
      sub_100143020(v24, v65);
      v29 &= v29 - 1;
      sub_100095C84(v24, &qword_1002A98D0, &unk_10023FFF0);
      v31 = v32;
      if (!v29)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);

      result = sub_100095C84(v24, &qword_1002A98D0, &unk_10023FFF0);
      __break(1u);
      return result;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(v26 + 64 + 8 * v32);
    ++v31;
    if (v29)
    {
      goto LABEL_12;
    }
  }

  v39 = v61;
  if (!sub_1001410AC(v62, v61))
  {
    v40 = *&v4[OBJC_IVAR____TtC14dockaccessoryd6BTLink_device];
    if (v40)
    {
      *&v4[OBJC_IVAR____TtC14dockaccessoryd6BTLink_device] = 0;
      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
      v41 = static OS_dispatch_queue.main.getter();
      v42 = swift_allocObject();
      v43 = v54;
      v42[2] = v40;
      v42[3] = v43;
      v42[4] = v39;
      v68 = sub_1001475D0;
      v69 = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      v67 = &unk_100278A68;
      v44 = _Block_copy(aBlock);
      v45 = v40;
      v46 = v43;
      swift_errorRetain();

      v47 = v55;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      v48 = v57;
      v49 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v44);

      (*(v59 + 8))(v48, v49);
      (*(v56 + 8))(v47, v58);
    }
  }

  sub_1000B5150(&v4[OBJC_IVAR____TtC14dockaccessoryd6BTLink_delegate], aBlock, &qword_1002A98D8, &qword_10023E428);
  if (!v67)
  {
    return sub_100095C84(aBlock, &qword_1002A98D8, &qword_10023E428);
  }

  sub_1000A097C(aBlock, v70);
  sub_100095C84(aBlock, &qword_1002A98D8, &qword_10023E428);
  v50 = v71;
  v51 = v72;
  sub_1000A09E0(v70, v71);
  (*(v51 + 32))(v62, v39, v50, v51);
  return sub_100095808(v70);
}

uint64_t sub_100143020(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A9C20, &qword_10023D210);
  __chkstk_darwin(v4 - 8);
  v29 = &v27 - v5;
  v6 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v7 = __chkstk_darwin(v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_1000B5150(a1, &v27 - v10, &qword_1002A98D0, &unk_10023FFF0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30[0] = v15;
    *v14 = 136315138;
    sub_10014775C(v11, v9);
    v28 = a2;
    v16 = a1;
    v18 = *v9;
    v17 = v9[1];
    sub_1000E4128(v9 + *(v6 + 48));
    v19 = sub_1000952D4(v18, v17, v30);
    a1 = v16;
    a2 = v28;

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Removing discovered device after disconnect: %s", v14, 0xCu);
    sub_100095808(v15);
  }

  else
  {

    sub_100095C84(v11, &qword_1002A98D0, &unk_10023FFF0);
  }

  v20 = *a1;
  v21 = a1[1];
  v22 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  v23 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

  os_unfair_lock_lock(v23 + 4);

  swift_beginAccess();
  v24 = v29;
  sub_1001E4E78(v20, v21, v29);
  sub_100095C84(v24, &unk_1002A9C20, &qword_10023D210);
  swift_endAccess();
  v25 = *(a2 + v22);

  os_unfair_lock_unlock(v25 + 4);
}

unint64_t *sub_10014339C(unint64_t *result, uint64_t a2, void *a3, void *a4)
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
    v9 = sub_100147004(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void sub_100143434(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v143 = *(v6 - 8);
  __chkstk_darwin(v6);
  v142 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v127 - v14;
  __chkstk_darwin(v13);
  v17 = &v127 - v16;
  v150 = type metadata accessor for DaemonAccessory(0);
  v151 = &off_10027A0F0;
  v149[0] = a1;
  *&v145 = v150;
  v18 = *(*sub_1000A09E0(v149, v150) + 32);
  if (!v18 || (v144 = a2, objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) == 0))
  {

LABEL_6:
    sub_100095808(v149);
    return;
  }

  v20 = v19;
  v140 = v6;
  v137 = v12;
  v21 = v18;

  v22 = v21;
  v23 = [v20 identifier];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = sub_1000DBA24(v25, v27);

  v29 = *(v9 + 16);
  v134 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
  v138 = a3;
  v136 = v9 + 16;
  v135 = v29;
  v29(v17, a3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v8);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v133 = v15;
  v141 = v8;
  LODWORD(v139) = v28;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v148[0] = v34;
    *v33 = 136315138;
    if (v28)
    {
      v35 = 0x646572696150;
    }

    else
    {
      v35 = 0x6465726961706E55;
    }

    v36 = v20;
    v37 = v22;
    v38 = v9;
    if (v28)
    {
      v39 = 0xE600000000000000;
    }

    else
    {
      v39 = 0xE800000000000000;
    }

    v40 = sub_1000952D4(v35, v39, v148);
    v9 = v38;
    v22 = v37;
    v20 = v36;

    *(v33 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Connected to %s accessory.", v33, 0xCu);
    sub_100095808(v34);
    v8 = v141;
  }

  v41 = *(v9 + 8);
  v41(v17, v8);
  v42 = v143;
  v43 = *(*sub_1000A09E0(v149, v150) + 16);
  if (v43)
  {
    v44 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_hapPeripheral);
    if (v44)
    {
      [v44 connectedToCBPeripheral:v144 error:0];
    }
  }

  v45 = v142;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v48 = *(v42 + 8);
  v47 = v42 + 8;
  v131 = v48;
  v48(v45, v140);
  [v20 setConnectionStartTime:isa];

  [v20 handleConnectionWithPeripheral:v144 withError:0];
  if (qword_1002A6780 != -1)
  {
LABEL_67:
    swift_once();
  }

  sub_100181A24();
  if ((v139 & 1) != 0 && [v20 connectReason] != 7)
  {
    v139 = v9;
    v132 = v22;

    sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_10023CE80;
    v65 = objc_opt_self();
    sub_100095274(&unk_1002A73A0, &qword_10023C670);
    v66 = swift_allocObject();
    v145 = xmmword_10023C170;
    *(v66 + 16) = xmmword_10023C170;
    *(v66 + 56) = &type metadata for UInt32;
    *(v66 + 64) = &protocol witness table for UInt32;
    *(v66 + 32) = 304;
    String.init(format:_:)();
    v67 = String._bridgeToObjectiveC()();

    v144 = v20;
    v68 = [v65 UUIDWithString:v67];

    v69 = [v68 UUIDString];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    *(v64 + 32) = v70;
    *(v64 + 40) = v72;
    v73 = swift_allocObject();
    *(v73 + 16) = v145;
    *(v73 + 56) = &type metadata for UInt32;
    *(v73 + 64) = &protocol witness table for UInt32;
    *(v73 + 32) = 82;
    String.init(format:_:)();
    v74 = String._bridgeToObjectiveC()();

    v75 = [v65 UUIDWithString:v74];

    v76 = [v75 UUIDString];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    *(v64 + 48) = v77;
    *(v64 + 56) = v79;
    v80 = swift_allocObject();
    *(v80 + 16) = v145;
    *(v80 + 56) = &type metadata for UInt32;
    *(v80 + 64) = &protocol witness table for UInt32;
    *(v80 + 32) = 544;
    String.init(format:_:)();
    v81 = String._bridgeToObjectiveC()();

    v82 = [v65 UUIDWithString:v81];

    v83 = [v82 UUIDString];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    *(v64 + 64) = v84;
    *(v64 + 72) = v86;
    v87 = v141;
    v88 = swift_allocObject();
    *(v88 + 16) = v145;
    *(v88 + 56) = &type metadata for UInt32;
    *(v88 + 64) = &protocol witness table for UInt32;
    *(v88 + 32) = 264;
    String.init(format:_:)();
    v89 = String._bridgeToObjectiveC()();

    v90 = [v65 UUIDWithString:v89];

    v91 = [v90 UUIDString];
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    *(v64 + 80) = v92;
    *(v64 + 88) = v94;
    v95 = Array._bridgeToObjectiveC()().super.isa;

    [v144 discoverAccessoriesAndReadCharacteristicTypes:v95];

    v96 = v138;
    v97 = v137;
LABEL_58:
    v121 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_haptics;
    if (*(v96 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_haptics))
    {
      v135(v97, v96 + v134, v87);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&_mh_execute_header, v122, v123, "done with haptics", v124, 2u);

        v125 = v132;
      }

      else
      {
        v125 = v122;
        v122 = v132;
      }

      v126 = v139;

      (*(v126 + 8))(v97, v87);
      *(v96 + v121) = 0;
    }

    else
    {
    }

    goto LABEL_6;
  }

  sub_1000A097C(v149, v148);
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  if (!swift_dynamicCast())
  {

    goto LABEL_6;
  }

  v139 = v9;
  v130 = v147;
  v49 = *(v147 + 16);
  if (v49)
  {
    v50 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_connectOnActions;
    swift_beginAccess();
    *(v49 + v50) = _swiftEmptyArrayStorage;
  }

  v128 = v41;
  v143 = v47;
  v51 = [v20 identifier];

  v52 = v138;
  if (v51)
  {
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
    swift_beginAccess();
    v56 = *(v52 + v55);
    v146 = v56;
    v132 = v22;
    v144 = (v56 & 0xFFFFFFFFFFFFFF8);
    if (v56 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v145 = v56 & 0xC000000000000001;
    v22 = v56 + 4;

    v129 = v56;

    do
    {
      v57 = v9;
      if (!v9)
      {
        break;
      }

      --v9;
      if (__OFSUB__(v57, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v145)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (v9 >= *(v144 + 2))
        {
          goto LABEL_66;
        }

        v47 = v22[v9].isa;
      }

      v58 = *(v47 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
      v59 = *(v47 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
      sub_1000A0CD8(v58, v59);
      v20 = sub_10014025C(v58, v59);
      v61 = v60;
      sub_1000A0D2C(v58, v59);
      if (v20 == v41 && v61 == v54)
      {

        break;
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    while ((v63 & 1) == 0);

    __chkstk_darwin(v98);
    *(&v127 - 2) = &v146;
    v99 = sub_1001625BC(sub_100147978, (&v127 - 4), v9, v57 == 0);

    v96 = v138;
    v97 = v137;
    if (v99)
    {

      v100 = *(v130 + 32);
      if (v100)
      {
        v101 = *(v96 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
        objc_opt_self();
        v102 = swift_dynamicCastObjCClass();
        if (v102)
        {
          v103 = v102;
          v104 = objc_allocWithZone(HAPAccessoryPairingRequest);
          v105 = v101;
          v106 = v100;
          v107 = [v104 init];
          [v107 setRequiresUserConsent:1];
          [v107 setPairingIdentity:0];
          v108 = v142;
          static Date.now.getter();
          Date.timeIntervalSince1970.getter();
          v110 = v109;
          v131(v108, v140);
          *&v105[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_pairingInterval] = v110;
          [v103 startPairingWithRequest:v107];

          v97 = v137;
        }
      }
    }

    else
    {
      v135(v133, v138 + v134, v141);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v130;
      if (v113)
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v111, v112, "Ignoring connection for pair request without valid token", v115, 2u);
      }

      v128(v133, v141);
      *(v114 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer) = 1;
      if (qword_1002A67A0 != -1)
      {
        swift_once();
      }

      v116 = qword_1002B1EB8;
      v117 = *(*sub_1000A09E0(v149, v150) + 16);
      v118 = swift_allocObject();
      *(v118 + 16) = v116;
      *(v118 + 24) = v117;
      v119 = v117;
      v120 = v116;
      sub_1001D5444(sub_1000E1618, v118);
    }

    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    sub_1000E4E98();

    v87 = v141;
    goto LABEL_58;
  }

  __break(1u);
}

void sub_1001443B0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), char *a4)
{
  v104 = a4;
  v105 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v98 = *(v9 - 8);
  __chkstk_darwin(v9);
  v97 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DKBTConnectMetric();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Date();
  v103 = *(v102 - 8);
  v12 = __chkstk_darwin(v102);
  v100 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v101 = &v86 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DaemonAccessory(0);
  v111 = &off_10027A0F0;
  v109 = a1;
  v19 = *(*sub_1000A09E0(&v109, v110) + 32);
  if (!v19 || (v93 = a2, objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) == 0))
  {

LABEL_37:
    sub_100095808(&v109);
    return;
  }

  v21 = v20;
  v22 = v19;

  v89 = v22;
  v90 = v21;
  v23 = [v21 identifier];
  v92 = v9;
  v91 = v8;
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = v25;
  v29 = v104;
  v88 = sub_1000DBA24(v28, v27);

  (*(v16 + 16))(v18, &v29[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v15);
  v30 = v105;
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  v33 = os_log_type_enabled(v31, v32);
  v87 = v6;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    swift_getErrorValue();
    v36 = Error.localizedDescription.getter();
    v38 = sub_1000952D4(v36, v37, aBlock);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to connect to peripheral: %s", v34, 0xCu);
    sub_100095808(v35);

    v30 = v105;
  }

  (*(v16 + 8))(v18, v15);
  v39 = v103;
  v40 = v90;
  v41 = v89;
  v42 = _convertErrorToNSError(_:)();
  [v40 handleConnectionWithPeripheral:v93 withError:v42];

  v43 = *(*sub_1000A09E0(&v109, v110) + 16);
  v44 = v92;
  v45 = v91;
  if (v43)
  {
    v46 = v43;
    sub_1000F7FF0(v30);
  }

  v47 = [v40 connectionStartTime];

  if (v47)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v100;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v50 = v49;
    v53 = *(v39 + 8);
    v52 = v39 + 8;
    v51 = v53;
    v53(v48, v102);
    Date.timeIntervalSince1970.getter();
    v55 = v54;
    sub_1000A097C(&v109, aBlock);
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    v56 = swift_dynamicCast();
    v105 = v53;
    if (!v56)
    {

      v63 = v104;
      goto LABEL_34;
    }

    v100 = v41;
    v57 = v108;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v58 = *(v57 + 24);
    v59 = sub_1001884E4(v58);

    if (v59 && (v60 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter(), v62 = v61, v59, v62))
    {
      v89 = v60;
      v90 = v62;
    }

    else
    {

      v90 = 0xE700000000000000;
      v89 = 0x6E776F6E6B6E55;
    }

    v64 = *(v57 + 24);
    v65 = sub_1001884E4(v64);

    if (v65 && (v66 = dispatch thunk of DockCoreAccessory.model.getter(), v68 = v67, v65, v68))
    {
      v86 = v66;
    }

    else
    {

      v86 = 0x6E776F6E6B6E55;
    }

    v103 = v52;
    v69 = v50 - v55;
    v70 = *(v57 + 24);
    v71 = sub_1001884E4(v70);

    if (v71)
    {
      v72 = dispatch thunk of DockCoreAccessory.info.getter();

      v93 = DockCoreInfo.name.getter();
    }

    else
    {
      v93 = 0x6E776F6E6B6E55;
    }

    swift_getErrorValue();
    Error.localizedDescription.getter();
    [v40 connectReason];

    v73 = sub_1001834DC() * 100.0 / v69;
    if (COERCE__INT64(fabs(v73)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v73 > -1.0)
    {
      if (v73 < 1.84467441e19)
      {
        v74 = 100.0 - sub_1001834C8() * 100.0 / v69;
        if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v63 = v104;
          if (v74 > -1.0)
          {
            if (v74 < 1.84467441e19)
            {
              v75 = v94;
              DKBTConnectMetric.init(duration:error:reason:activeTrackingPercent:trackingButtonOnPercent:firmwareVersion:hardwareModel:hardwareMake:)();
              DKBTConnectMetric.send()();

              (*(v95 + 8))(v75, v96);
              v44 = v92;
              v45 = v91;
              v41 = v100;
              v51 = v105;
LABEL_34:
              v76 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
              v77 = *&v63[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock];

              os_unfair_lock_lock(v77 + 4);

              *&v63[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing] = 0;

              v78 = *&v63[v76];

              os_unfair_lock_unlock(v78 + 4);

              if (v88)
              {
                v79 = *&v63[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
                sub_1000A097C(&v109, &v108);
                v80 = swift_allocObject();
                *(v80 + 16) = v63;
                sub_1000A0D80(&v108, v80 + 24);
                aBlock[4] = sub_10014786C;
                aBlock[5] = v80;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_100147FC8;
                aBlock[3] = &unk_100278BF8;
                v81 = _Block_copy(aBlock);
                v82 = v79;
                v83 = v63;
                v84 = v97;
                static DispatchQoS.unspecified.getter();
                v106 = _swiftEmptyArrayStorage;
                sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                sub_100095274(&unk_1002A6B60, qword_10023AE10);
                sub_1000BAB30();
                v85 = v87;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v81);

                (*(v99 + 8))(v45, v85);
                (*(v98 + 8))(v84, v44);
                v105(v101, v102);
              }

              else
              {
                v51(v101, v102);
              }

              goto LABEL_37;
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_44:
  __break(1u);
}

id sub_100145040(void *a1, uint64_t a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v6 = sub_10016D4D0(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_100095B34(*(a2 + 56) + 32 * v6, v13);
      if (swift_dynamicCast())
      {
        return v12;
      }
    }
  }

  else
  {
  }

  result = [a1 name];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  return result;
}

uint64_t sub_100145138(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v63 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100145040(a1, a2);
  v17 = v16;
  v18 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode);
  v64 = a1;
  if (v18 == 1)
  {
    v59 = v12;
    v60 = v9;
    v61 = v8;
    v19 = v15;
    v20 = objc_allocWithZone(type metadata accessor for BTDevice(0));

    v21 = a1;
    v22 = a2;
    v23 = sub_10013F90C(v19, v17, a1, a3);

    v24 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_advData;
    swift_beginAccess();
    *&v23[v24] = v22;
    v62 = v22;

    v25 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_filter;
    swift_beginAccess();
    sub_1000B5150(v4 + v25, &aBlock, &qword_1002A7B30, &qword_10023CA08);
    if (*(&v66 + 1))
    {
      sub_100095C84(&aBlock, &qword_1002A7B30, &qword_10023CA08);
      result = sub_1000B5150(v4 + v25, &aBlock, &qword_1002A7B30, &qword_10023CA08);
      v27 = *(&v66 + 1);
      if (!*(&v66 + 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      v28 = v67;
      sub_1000A09E0(&aBlock, *(&v66 + 1));
      v29 = (*(v28 + 2))(v23, v27, v28);
      sub_100095808(&aBlock);
      if (v29)
      {
        v30 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_match);
        v58 = (v4 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_match);
        if (v30)
        {
          v31 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_match + 8);
          sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);

          v57 = static OS_dispatch_queue.main.getter();
          v32 = swift_allocObject();
          v32[2] = v30;
          v32[3] = v31;
          v56 = v31;
          v32[4] = v23;
          v67 = sub_100147AEC;
          v68 = v32;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v66 = sub_100147FC8;
          *(&v66 + 1) = &unk_100278D60;
          v55 = _Block_copy(&aBlock);
          sub_1000C6F30(v30, v31);
          v33 = v23;

          static DispatchQoS.unspecified.getter();
          *&aBlock = _swiftEmptyArrayStorage;
          sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100095274(&unk_1002A6B60, qword_10023AE10);
          sub_1000BAB30();
          v34 = v61;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v35 = v55;
          v36 = v57;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v35);

          sub_1000BAA84(v30, v56);
          (*(v60 + 8))(v11, v34);
          (*(v63 + 8))(v14, v59);
        }

        result = sub_1000B5150(v4 + v25, &aBlock, &qword_1002A7B30, &qword_10023CA08);
        if (*(&v66 + 1))
        {

          v37 = *(&v66 + 1);
          v38 = v67;
          v39 = sub_1000A09E0(&aBlock, *(&v66 + 1));
          v40 = *(v37 - 8);
          __chkstk_darwin(v39);
          v42 = &v55 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v40 + 16))(v42);
          LOBYTE(v38) = v38[1](v37, v38);

          (*(v40 + 8))(v42, v37);
          sub_100095808(&aBlock);
          a2 = v62;
          if ((v38 & 1) == 0)
          {
            v43 = v58;
            v44 = *v58;
            v45 = v58[1];
            *v58 = 0;
            v43[1] = 0;
            sub_1000BAA84(v44, v45);
            v67 = 0;
            aBlock = 0u;
            v66 = 0u;
            swift_beginAccess();
            sub_1000E52E0(&aBlock, v4 + v25);
            swift_endAccess();
          }

          goto LABEL_17;
        }

LABEL_22:
        __break(1u);
        return result;
      }
    }

    else
    {

      sub_100095C84(&aBlock, &qword_1002A7B30, &qword_10023CA08);
    }

    v46 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_match);
    if (v46)
    {
      v47 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_match + 8);
      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);

      v58 = static OS_dispatch_queue.main.getter();
      v48 = swift_allocObject();
      v48[2] = v46;
      v48[3] = v47;
      v48[4] = v23;
      v67 = sub_10014799C;
      v68 = v48;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v66 = sub_100147FC8;
      *(&v66 + 1) = &unk_100278D10;
      v49 = _Block_copy(&aBlock);
      v50 = v23;
      sub_1000C6F30(v46, v47);

      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      v51 = v61;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v52 = v58;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v49);

      sub_1000BAA84(v46, v47);
      (*(v60 + 8))(v11, v51);
      (*(v63 + 8))(v14, v59);
    }

    else
    {
    }

    a2 = v62;
    goto LABEL_17;
  }

LABEL_17:
  sub_1000B5150(v4 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_delegate, &aBlock, &qword_1002A98D8, &qword_10023E428);
  if (!*(&v66 + 1))
  {
    return sub_100095C84(&aBlock, &qword_1002A98D8, &qword_10023E428);
  }

  sub_1000A097C(&aBlock, v69);
  sub_100095C84(&aBlock, &qword_1002A98D8, &qword_10023E428);
  v53 = v70;
  v54 = v71;
  sub_1000A09E0(v69, v70);
  (*(v54 + 16))(v64, a2, v53, v54);
  return sub_100095808(v69);
}

uint64_t sub_100145A64(void *a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v45 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&aBlock = v17;
    *v16 = 136315138;
    v18 = [v12 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = UUID.uuidString.getter();
    v20 = v3;
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v23 = sub_1000952D4(v19, v22, &aBlock);
    v3 = v20;

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Peripheral %s failed to connect", v16, 0xCu);
    sub_100095808(v17);
  }

  sub_1001059EC();

  *(v3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) = 0;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v24 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
  v25 = v45;
  sub_1000CB8B8(v45, &aBlock);
  if (v50)
  {
    sub_1000A0D80(&aBlock, v54);
    if (v46)
    {
      v26 = *&v24[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      sub_1000A097C(v54, v53);
      v27 = swift_allocObject();
      v27[2] = v24;
      sub_1000A0D80(v53, (v27 + 3));
      v28 = v46;
      v27[8] = v25;
      v27[9] = v28;
      v51 = sub_10014781C;
      v52 = v27;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v49 = sub_100147FC8;
      v50 = &unk_100278BA8;
      v29 = _Block_copy(&aBlock);
      v30 = v25;
      v31 = v24;
      v32 = v26;
      swift_errorRetain();
      v33 = v39;
      static DispatchQoS.unspecified.getter();
      v47 = _swiftEmptyArrayStorage;
      sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      v34 = v41;
      v35 = v44;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v43 + 8))(v34, v35);
      (*(v40 + 8))(v33, v42);
      sub_100095808(v54);
    }

    else
    {
      sub_100095808(v54);
    }
  }

  else
  {
    sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
  }

  sub_1000B5150(v3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_delegate, &aBlock, &qword_1002A98D8, &qword_10023E428);
  if (v50)
  {
    sub_1000A097C(&aBlock, v54);
    sub_100095C84(&aBlock, &qword_1002A98D8, &qword_10023E428);
    v36 = v55;
    v37 = v56;
    sub_1000A09E0(v54, v55);
    (*(v37 + 24))(v25, v46, v36, v37);

    return sub_100095808(v54);
  }

  else
  {

    return sub_100095C84(&aBlock, &qword_1002A98D8, &qword_10023E428);
  }
}

void sub_1001460D4(uint64_t a1, uint64_t a2, char *a3)
{
  v104 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v107 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DKBTConnectMetric();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Date();
  v108 = *(v111 - 8);
  v13 = __chkstk_darwin(v111);
  v105 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v88 - v15;
  v110 = type metadata accessor for Logger();
  v109 = *(v110 - 1);
  __chkstk_darwin(v110);
  v16 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v16 - 8);
  v18 = &v88 - v17;
  v114[3] = type metadata accessor for DaemonAccessory(0);
  v114[4] = &off_10027A0F0;
  v114[0] = a1;
  sub_1000A097C(v114, aBlock);

  v19 = sub_100095274(&unk_1002A7A90, &unk_10023C960);
  if (!swift_dynamicCast())
  {
    goto LABEL_35;
  }

  v94 = v19;
  v97 = v8;
  v98 = v9;
  v99 = v6;
  v20 = v113;
  v21 = *(v113 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2;
  v100 = v10;
  if (v21 || (v22 = v113[4]) == 0)
  {
LABEL_6:
    v33 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
    v34 = *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock];

    os_unfair_lock_lock(v34 + 4);

    *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing] = 0;

    v35 = *&a3[v33];

    os_unfair_lock_unlock(v35 + 4);

    v36 = *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingSetup];
    *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingSetup] = 0;

    v37 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController;
    [*(v20 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController) deRegisterFromNotifications];
    [*(v20 + v37) invalidate];
    v38 = *(v20 + v37);
    *(v20 + v37) = 0;

    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v20;

    sub_1001B6410(0, 0, v18, &unk_10023E430, v40);

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v93 = qword_1002B1CF0;
    v41 = *(*(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
    sub_10014E948(v20, 0, 0, 0);
    v42 = v111;
    v96 = v41;
    v43 = *&v41[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
    *&v41[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;

    v44 = v108;
    v45 = *(v20 + 32);
    if (!v45)
    {
      goto LABEL_34;
    }

    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (!v46)
    {
      goto LABEL_34;
    }

    v47 = v46;
    v48 = v45;
    v49 = [v47 connectionStartTime];
    if (v49)
    {
      v92 = v47;
      v110 = v48;
      v50 = v106;
      v51 = v49;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = v105;
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v54 = v53;
      v57 = *(v44 + 8);
      v55 = v44 + 8;
      v56 = v57;
      v57(v52, v42);
      Date.timeIntervalSince1970.getter();
      v59 = v58;
      sub_1000A097C(v114, aBlock);
      if (swift_dynamicCast())
      {
        v94 = v56;
        v108 = v55;
        v60 = v113;
        v61 = v113[3];
        v62 = sub_1001884E4(v61);

        if (v62 && (v63 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter(), v65 = v64, v62, v65))
        {
          v109 = v65;
          v91 = v63;
        }

        else
        {

          v109 = 0xE700000000000000;
          v91 = 0x6E776F6E6B6E55;
        }

        v66 = v60;
        v67 = v60[3];
        v68 = sub_1001884E4(v67);

        if (v68 && (v69 = dispatch thunk of DockCoreAccessory.model.getter(), v71 = v70, v68, (v105 = v71) != 0))
        {
          v90 = v69;
        }

        else
        {

          v105 = 0xE700000000000000;
          v90 = 0x6E776F6E6B6E55;
        }

        v72 = v66[3];
        v73 = sub_1001884E4(v72);

        if (v73)
        {
          v74 = dispatch thunk of DockCoreAccessory.info.getter();

          DockCoreInfo.name.getter();
          v89 = v75;
        }

        else
        {
          v89 = 0xE700000000000000;
        }

        v95 = v5;
        v76 = v54 - v59;
        if (v104)
        {
          swift_getErrorValue();
          Error.localizedDescription.getter();
        }

        [v92 connectReason];
        v77 = sub_1001834DC() * 100.0 / v76;
        if (COERCE__INT64(fabs(v77)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v77 > -1.0)
        {
          if (v77 < 1.84467441e19)
          {
            v78 = 100.0 - sub_1001834C8() * 100.0 / v76;
            if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v79 = v94;
              if (v78 > -1.0)
              {
                if (v78 < 1.84467441e19)
                {
                  v80 = v101;
                  DKBTConnectMetric.init(duration:error:reason:activeTrackingPercent:trackingButtonOnPercent:firmwareVersion:hardwareModel:hardwareMake:)();
                  DKBTConnectMetric.send()();

                  (*(v102 + 8))(v80, v103);
                  v79(v106, v111);
                  v5 = v95;
                  v10 = v100;
                  goto LABEL_34;
                }

                goto LABEL_41;
              }

LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        __break(1u);
        goto LABEL_38;
      }

      v56(v50, v42);
    }

    else
    {
    }

LABEL_34:
    v81 = *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    v82 = swift_allocObject();
    *(v82 + 16) = a3;
    *(v82 + 24) = v20;
    aBlock[4] = sub_100147754;
    aBlock[5] = v82;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100278B58;
    v83 = _Block_copy(aBlock);

    v84 = v81;
    v85 = a3;
    v86 = v107;
    static DispatchQoS.unspecified.getter();
    v113 = _swiftEmptyArrayStorage;
    sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000BAB30();
    v87 = v97;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v83);

    (*(v99 + 8))(v87, v5);
    (*(v10 + 8))(v86, v98);

LABEL_35:
    sub_100095808(v114);
    return;
  }

  v95 = v5;
  v23 = *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
  v96 = v22;
  v24 = [v96 identifier];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v30 = swift_allocError();
    *v31 = 0xD000000000000016;
    v31[1] = 0x8000000100232F40;
    (*(*(v29 - 8) + 104))(v31, enum case for Errors.PairingError(_:), v29);
    v32 = sub_1001F29A8(_swiftEmptyArrayStorage);
    sub_100156798(v26, v28, 6, v32, v30);

    a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
    v5 = v95;
    v10 = v100;
    goto LABEL_6;
  }

LABEL_42:
  __break(1u);
}

Swift::Int sub_100147004(unint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v51 = a2;
  v58 = a4;
  v52 = a1;
  v63 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v5 = __chkstk_darwin(v63);
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v61 = &v50 - v8;
  __chkstk_darwin(v7);
  v65 = (&v50 - v9);
  v10 = type metadata accessor for BTDiscoveredDevice(0);
  v60 = *(v10 - 8);
  result = __chkstk_darwin(v10 - 8);
  v64 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0;
  v13 = 0;
  v62 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = v62[7];
    v26 = (v62[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v60 + 72);
    v59 = v24;
    v30 = v64;
    sub_1000E40C4(v25 + v29 * v24, v64);
    v31 = v65;
    *v65 = v27;
    v31[1] = v28;
    v32 = v63;
    sub_1000E40C4(v30, v31 + *(v63 + 48));
    v33 = v31;
    v34 = v61;
    sub_1000B5150(v33, v61, &qword_1002A98D0, &unk_10023FFF0);
    swift_bridgeObjectRetain_n();

    v35 = v34 + *(v32 + 48);
    v36 = *(v35 + 8);
    v37 = v36;
    sub_1000E4128(v35);
    if (v36 && (sub_100095B94(0, &unk_1002A98E0, CBPeripheral_ptr), v38 = v58, v39 = static NSObject.== infix(_:_:)(), v38, v37, (v39 & 1) != 0))
    {
      v40 = v57;
      sub_10014775C(v65, v57);

      v41 = (v40 + *(v63 + 48));
      v43 = v41[2];
      v42 = v41[3];
      v45 = v41[4];
      v44 = v41[5];
      v46 = v41[7];
      v55 = v41[6];
      v56 = v44;
      v54 = v46;
      sub_1000E4184(v43, v42, v45, v44, v55, v46);
      sub_1000E4128(v41);
      if (!v42)
      {
        goto LABEL_19;
      }

      v47 = v42;
      v48 = v56;
      sub_1000E41D0(v43, v47, v45, v56, v55, v54);
      sub_1000E4128(v64);

      if ((v48 & 0x10000) != 0)
      {
        *(v52 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        if (__OFADD__(v53++, 1))
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_100095C84(v65, &qword_1002A98D0, &unk_10023FFF0);
LABEL_19:
      sub_1000E4128(v64);
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_1001CA268(v52, v51, v53, v62);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

Swift::Int sub_1001473DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v9;
      v11 = sub_10014339C(v13, v6, a1, v14);

      return v11;
    }
  }

  __chkstk_darwin(v8);
  bzero(&v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_100147004((&v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_100147588()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001475F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100147620()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100147660(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009862C;

  return sub_1000D7F74(a1, v4, v5, v6);
}

uint64_t sub_100147714()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014775C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001477CC()
{
  sub_100095808((v0 + 24));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10014782C()
{
  sub_100095808((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100147878()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001478DC()
{
  sub_100095808((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100147924()
{
  v1 = v0[2];
  v2 = v0[8];
  v3 = *sub_1000A09E0(v0 + 3, v0[6]);

  sub_100143434(v3, v2, v1);
}

uint64_t sub_1001479CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100147A0C()
{
  result = qword_1002A98F0;
  if (!qword_1002A98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A98F0);
  }

  return result;
}

unint64_t sub_100147A74()
{
  result = qword_1002A98F8;
  if (!qword_1002A98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A98F8);
  }

  return result;
}

id MockAttributes.service.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *MockAttributes.start.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *MockAttributes.veloWrite.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *MockAttributes.veloRead.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *MockAttributes.posWrite.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *MockAttributes.posRead.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

double static MockDockAccessory.getBLEAttributes(_:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t static MockDockAccessory.getDockCoreInfo(name:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  UUID.init(uuidString:)();
  v7 = type metadata accessor for UUID();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for DockCoreInfo());

    return DockCoreInfo.init(type:name:identifier:)();
  }

  return result;
}

__n128 sub_100147ED8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100147EEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_100147F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100147FC8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Int MotionType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

id MotionValidator.init(type:interval:)(char a1, double a2)
{
  Logger.init(subsystem:category:)();
  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleBuffer] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleStampedBufferImu] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationBuffer] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__pitchRateBuffer] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timer] = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationTimer] = 0;
  v5 = &v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__startupConstants];
  sub_100095274(&unk_1002A6840, &unk_10023E5A0);
  v6 = swift_allocObject();
  v6[1] = xmmword_10023AAC0;
  v6[2] = xmmword_10023AAD0;
  v6[3] = xmmword_10023AAE0;
  *v5 = xmmword_10023AAF0;
  *(v5 + 2) = 0x3FC3333333333333;
  *(v5 + 3) = 5;
  *(v5 + 4) = 0x3FC3333333333333;
  *(v5 + 5) = v6;
  *(v5 + 3) = xmmword_10023AB00;
  v7 = &v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationCallback];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__expiry] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__startupTimeout] = 0x402E000000000000;
  v8 = &v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timedOutCallback];
  *v8 = 0;
  v8[1] = 0;
  v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator_type] = a1 & 1;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__interval] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for MotionValidator(0);
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t type metadata accessor for MotionValidator(uint64_t a1)
{
  result = qword_1002A99A0;
  if (!qword_1002A99A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MotionValidator.start(timedOutCallback:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v6 = [v2 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100185F9C(v7, v9, 0, 0);

  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleBuffer] = _swiftEmptyArrayStorage;

  *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__pitchRateBuffer] = _swiftEmptyArrayStorage;

  v10 = &v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timedOutCallback];
  v11 = *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timedOutCallback];
  v12 = *&v3[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timedOutCallback + 8];
  *v10 = a1;
  *(v10 + 1) = a2;

  sub_1000BAA84(v11, v12);
  *(swift_allocObject() + 16) = v3;
  v13 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
  v14 = v3;
  v15 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
  v16 = *&v14[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timer];
  *&v14[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timer] = v15;

  sub_100149550();
}

void sub_100148488(uint64_t a1)
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  sub_100095274(&qword_1002A9968, &qword_10023E5B0);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v47)
  {
    v2 = [objc_allocWithZone(NSDate) init];
    [v2 timeIntervalSince1970];
    v4 = v3;

    v5 = [v47 attitude];
    [v5 quaternion];
    simd_quatd.init(_:)(v6, v48);
    v45 = v7;
    __y = v8;

    v9 = vnegq_f64(v45);
    v10 = vmulq_f64(__y, xmmword_10023E590);
    v11 = vextq_s8(v10, vnegq_f64(v10), 8uLL);
    v12 = vmlaq_f64(vmulq_f64(v45, 0), 0, vextq_s8(v9, v45, 8uLL));
    v13 = vaddq_f64(vextq_s8(v45, v9, 8uLL), vmlaq_f64(vmulq_f64(v10, 0), 0, v11));
    v14 = vaddq_f64(v11, v12);
    v15 = vnegq_f64(v13);
    v16 = vextq_s8(v14, vnegq_f64(v14), 8uLL);
    v17 = vmlaq_n_f64(vmulq_laneq_f64(v15, v45, 1), vextq_s8(v13, v15, 8uLL), v45.f64[0]);
    v18 = vmlaq_n_f64(vmulq_laneq_f64(v13, __y, 1), vextq_s8(v15, v13, 8uLL), __y.f64[0]);
    *&__y.f64[0] = *&vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v14, __y, 1), v16, __y.f64[0]), v17);
    v19 = vaddq_f64(v18, vmlaq_n_f64(vmulq_laneq_f64(v14, v45, 1), v16, v45.f64[0]));
    v20 = sqrt(vmuld_n_f64(v19.f64[0], v19.f64[0]) + vmuld_lane_f64(v19.f64[1], v19, 1));
    v21 = atan2(v19.f64[1], v19.f64[0]);
    v22 = atan2(__y.f64[0], v20);
    v23 = OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleStampedBufferImu;
    v24 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleStampedBufferImu);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v23) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_100103114(0, v24[2] + 1, 1, v24);
      *(a1 + v23) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_100103114((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = (v27 + 1);
    v28 = &v24[3 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v22;
    v29 = v28 + 4;
    v29[2] = v4;
    *(a1 + v23) = v24;
    if (v27)
    {
      v30 = *(v29 - 2) - *(v29 + 1);
      v31 = *(v29 - 1) - *(v29 + 2);
      v32 = OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__pitchRateBuffer;
      v33 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__pitchRateBuffer);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + v32) = v33;
      if ((v34 & 1) == 0)
      {
        v33 = sub_100102EE8(0, v33[2] + 1, 1, v33);
        *(a1 + v32) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      v37 = v30 / v31;
      if (v36 >= v35 >> 1)
      {
        v33 = sub_100102EE8((v35 > 1), v36 + 1, 1, v33);
      }

      v33[2] = (v36 + 1);
      *&v33[v36 + 4] = v37;
      *(a1 + v32) = v33;
    }
  }

  v38 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timer);
  if (v38)
  {
    v39 = v38;
    dispatch thunk of RepeatingTimer.timeSinceInit()();
    v41 = v40;

    if (v41 > 15.0)
    {
      v42 = a1 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timedOutCallback;
      v43 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timedOutCallback);
      if (v43)
      {
        v44 = *(v42 + 8);

        v43(1);
        sub_1000BAA84(v43, v44);
      }
    }
  }
}

void MotionValidator.startCalibrationMonitor(callback:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationCallback];
  v5 = *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationCallback];
  v6 = *(v4 + 1);
  *v4 = a1;
  *(v4 + 1) = a2;

  sub_1000BAA84(v5, v6);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v7 = [v3 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100185F9C(v8, v10, 0, 0);

  *&v3[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationBuffer] = _swiftEmptyArrayStorage;

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(type metadata accessor for RepeatingTimer());

  v12 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
  v13 = *&v3[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationTimer];
  *&v3[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationTimer] = v12;
}

void sub_10014899C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_100095274(&qword_1002A9968, &qword_10023E5B0);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v49)
    {
      v3 = [v49 attitude];
      [v3 quaternion];
      simd_quatd.init(_:)(v4, v50);
      v47 = v5;
      __y = v6;

      v7 = vnegq_f64(v47);
      v8 = vmulq_f64(__y, xmmword_10023E590);
      v9 = vextq_s8(v8, vnegq_f64(v8), 8uLL);
      v10 = vmlaq_f64(vmulq_f64(v47, 0), 0, vextq_s8(v7, v47, 8uLL));
      v11 = vaddq_f64(vextq_s8(v47, v7, 8uLL), vmlaq_f64(vmulq_f64(v8, 0), 0, v9));
      v12 = vaddq_f64(v9, v10);
      v13 = vnegq_f64(v11);
      v14 = vextq_s8(v12, vnegq_f64(v12), 8uLL);
      v15 = vmlaq_n_f64(vmulq_laneq_f64(v13, v47, 1), vextq_s8(v11, v13, 8uLL), v47.f64[0]);
      v16 = vmlaq_n_f64(vmulq_laneq_f64(v11, __y, 1), vextq_s8(v13, v11, 8uLL), __y.f64[0]);
      *&__y.f64[0] = *&vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v12, __y, 1), v14, __y.f64[0]), v15);
      v17 = vaddq_f64(v16, vmlaq_n_f64(vmulq_laneq_f64(v12, v47, 1), v14, v47.f64[0]));
      v18 = sqrt(vmuld_n_f64(v17.f64[0], v17.f64[0]) + vmuld_lane_f64(v17.f64[1], v17, 1));
      v19 = atan2(v17.f64[1], v17.f64[0]);
      v20 = atan2(__y.f64[0], v18);
      v21 = [objc_allocWithZone(NSDate) init];
      [v21 timeIntervalSince1970];
      v23 = v22;

      v24 = OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationBuffer;
      v25 = *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationBuffer];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v2[v24] = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_100103114(0, v25[2] + 1, 1, v25);
        *&v2[v24] = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_100103114((v27 > 1), v28 + 1, 1, v25);
      }

      v25[2] = (v28 + 1);
      v29 = &v25[3 * v28 + 4];
      *v29 = v19;
      v29[1] = v20;
      *(v29 + 2) = v23;
      *&v2[v24] = v25;
      v30 = v25[2];
      if (!v30)
      {
        goto LABEL_25;
      }

      v31 = &v25[3 * v30 + 4];
      if (*&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__startupConstants + 48] >= *(v31 - 8) - *(v25 + 6))
      {
        goto LABEL_25;
      }

      v32 = *(v25 + 5);
      v33 = v30 - 1;
      if (v33)
      {
        v35 = (v25 + 8);
        v36 = v33;
        v34 = *(v25 + 5);
        do
        {
          v37 = *v35;
          v35 += 3;
          v38 = v37;
          if (v37 < v34)
          {
            v34 = v38;
          }

          --v36;
        }

        while (v36);
        v39 = (v25 + 8);
        do
        {
          v40 = *v39;
          v39 += 3;
          v41 = v40;
          if (v40 < v32)
          {
            v32 = v41;
          }

          --v33;
        }

        while (v33);
      }

      else
      {
        v34 = *(v25 + 5);
      }

      if (v34 - v32 >= *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__startupConstants + 56] || (v42 = *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationCallback]) == 0 || (v43 = *(v31 - 16), v44 = *&v2[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationCallback + 8], v45 = , v42(v45, v43), sub_1000BAA84(v42, v44), *&v2[v24] = _swiftEmptyArrayStorage, , _swiftEmptyArrayStorage[2]))
      {
        sub_1001A2644(0, 1);
        v46 = v2;
        v2 = v49;
      }

      else
      {
LABEL_25:
        v46 = v49;
      }
    }
  }
}

Swift::Void __swiftcall MotionValidator.stopCalibrationMonitor()()
{
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationBuffer) = _swiftEmptyArrayStorage;

  v1 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationTimer);
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__calibrationTimer) = 0;
}

Swift::Void __swiftcall MotionValidator.stop()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleBuffer] = _swiftEmptyArrayStorage;

  *&v0[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__pitchRateBuffer] = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timer;
  v9 = *&v0[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timer];
  if (v9)
  {
    v10 = v9;
    dispatch thunk of RepeatingTimer.cancel()();

    v9 = *&v1[v8];
  }

  *&v1[v8] = 0;

  sub_10014A2EC();
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v11 = qword_1002B1CF0;
  v12 = [v1 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v13;
  v16[4] = v15;
  aBlock[4] = sub_10014A724;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100278F40;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000E5288();
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v23 + 8))(v4, v2);
  (*(v5 + 8))(v7, v22);

  v18 = &v1[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timedOutCallback];
  v19 = *&v1[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timedOutCallback];
  v20 = *&v1[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timedOutCallback + 8];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_1000BAA84(v19, v20);
}

uint64_t MotionValidator.registerMotion(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v5 = [v2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_100185F9C(v6, v8, a1, a2);
}

Swift::Void __swiftcall MotionValidator.unregisterMotion(dispatch:)(Swift::Bool dispatch)
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v3 = [v1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_100186E38(v4, v6, dispatch);
}

Swift::Bool __swiftcall MotionValidator.isPositionValid(deviceMotion:)(CMDeviceMotion_optional deviceMotion)
{
  v2 = v1;
  isa = deviceMotion.value.super.super.isa;
  type metadata accessor for DockCoreManager();
  if (static DockCoreManager.ignoreStartupValidation.getter())
  {
    return 1;
  }

  v5 = isa;
  if (isa)
  {
    goto LABEL_7;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  sub_100095274(&qword_1002A9968, &qword_10023E5B0);
  OS_dispatch_queue.sync<A>(execute:)();
  v5 = v34;
  if (!v34)
  {
    return 1;
  }

LABEL_7:
  v6 = isa;
  v7 = [v5 attitude];
  [v7 quaternion];
  simd_quatd.init(_:)(v8, v35);
  v32 = v9;
  v33 = v10;

  v11 = vnegq_f64(v32);
  v12 = vmulq_f64(v33, xmmword_10023E590);
  v13 = vextq_s8(v12, vnegq_f64(v12), 8uLL);
  v14 = vmlaq_f64(vmulq_f64(v32, 0), 0, vextq_s8(v11, v32, 8uLL));
  v15 = vaddq_f64(vextq_s8(v32, v11, 8uLL), vmlaq_f64(vmulq_f64(v12, 0), 0, v13));
  v16 = vaddq_f64(v13, v14);
  v17 = vnegq_f64(v15);
  v18 = vextq_s8(v16, vnegq_f64(v16), 8uLL);
  v19 = vmlaq_n_f64(vmulq_laneq_f64(v15, v33, 1), vextq_s8(v17, v15, 8uLL), v33.f64[0]);
  *&v15.f64[0] = *&vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v16, v33, 1), v18, v33.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v17, v32, 1), vextq_s8(v15, v17, 8uLL), v32.f64[0]));
  v20 = vaddq_f64(v19, vmlaq_n_f64(vmulq_laneq_f64(v16, v32, 1), v18, v32.f64[0]));
  v21 = atan2(v15.f64[0], sqrt(vmuld_n_f64(v20.f64[0], v20.f64[0]) + vmuld_lane_f64(v20.f64[1], v20, 1)));
  v22 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__startupConstants + 40);
  v23 = (v22 + 40);
  v24 = *(v22 + 16) + 1;
  do
  {
    if (!--v24)
    {
      v4 = 1;
      v28 = v5;
      goto LABEL_14;
    }

    v26 = *(v23 - 1);
    v25 = *v23;
    v23 += 2;
  }

  while (vabdd_f64(v21, v26) >= v25);
  v27 = v21;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "Startup position is invalid, pitch -> %f", v30, 0xCu);
  }

  v4 = 0;
LABEL_14:

  return v4;
}

Swift::Bool __swiftcall MotionValidator.isMotionValid()()
{
  if (*(v0 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timer) && (*(v0 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator_type) & 1) == 0)
  {
    return sub_100149A98();
  }

  else
  {
    return 1;
  }
}

void sub_100149550()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v9 = qword_1002B1CF0;
    v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v11 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v11 + 4);

    v12 = *(v9 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v13 = *(v9 + v10);
    v45 = v12;

    os_unfair_lock_unlock(v13 + 4);

    if (!v12)
    {
      return;
    }

    type metadata accessor for Actuator();
    static Actuator.Yaw.getter();
    v44 = dispatch thunk of DockCoreAccessory.getActuator(name:)();

    if (!v44)
    {
      v26 = v45;
LABEL_13:

      return;
    }

    static Actuator.Pitch.getter();
    v14 = dispatch thunk of DockCoreAccessory.getActuator(name:)();

    if (!v14)
    {

      v26 = v44;
      goto LABEL_13;
    }

    v43 = v14;
    v40 = v1;
    v15 = *(v9 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v46 = dispatch thunk of DockCoreAccessory.info.getter();
    v41 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v16 = *&v15[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v17 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v42 = v15;
    v18 = *&v15[v17];
    v19 = *(v18 + 16);

    if (!v19)
    {
      break;
    }

    v20 = v3;
    v3 = 0;
    v21 = v18 + 32;
    v1 = (v20 + 8);
    while (v3 < *(v18 + 16))
    {
      sub_1000A097C(v21, v47);
      v22 = *(*sub_1000A09E0(v47, v47[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v22) = static UUID.== infix(_:_:)();
      v23 = *v1;
      (*v1)(v6, v2);
      v23(v8, v2);
      if (v22)
      {

        v24 = v42;
        v27 = *&v42[v41];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v47, &v48);
        sub_100095808(v47);
        goto LABEL_17;
      }

      ++v3;
      sub_100095808(v47);
      v21 += 40;
      if (v19 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_10:

  v24 = v42;
  v25 = *&v42[v41];
  OS_dispatch_semaphore.signal()();

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
LABEL_17:

  v28 = v43;
  if (*(&v49 + 1))
  {
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    if (swift_dynamicCast())
    {
      v29 = v47[0];
      v30 = swift_allocObject();
      v30[2] = v40;
      v31 = v44;
      v30[3] = v44;
      v30[4] = v28;
      v32 = *(v29 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
      v33 = __chkstk_darwin(v31);
      *(&v40 - 4) = v29;
      *(&v40 - 3) = sub_10014AA6C;
      *(&v40 - 2) = v30;
      __chkstk_darwin(v33);
      *(&v40 - 2) = sub_10014AA78;
      *(&v40 - 1) = v34;
      v36 = v35;
      v37 = v44;
      v38 = v28;

      os_unfair_lock_lock(v32 + 4);
      sub_100137D60(v39);
      os_unfair_lock_unlock(v32 + 4);
    }

    else
    {
    }
  }

  else
  {

    sub_10014A9A0(&v48);
  }
}

uint64_t sub_100149A98()
{
  v1 = sub_100149DE4();
  v2 = v1[2];
  v3 = v0 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__startupConstants;
  if (*(v0 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__startupConstants + 24) >= v2)
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "minimum angle readings not met, force setting valid to true", v17, 2u);
    }

    return 1;
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "using precise startup validation", v6, 2u);
  }

  if (v2)
  {
    sub_1001D7148(0, v2, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[2];
    v9 = (v1 + 7);
    v10 = v2;
    do
    {
      v11 = *(v9 - 2);
      v12 = *v9;
      v29 = v7;
      v13 = v7[3];
      v14 = v8 + 1;
      if (v8 >= v13 >> 1)
      {
        sub_1001D7148((v13 > 1), v8 + 1, 1);
        v7 = v29;
      }

      v7[2] = v14;
      *&v7[v8 + 4] = vabdd_f64(v11, v12);
      v9 += 4;
      ++v8;
      --v10;
    }

    while (v10);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage[2];
    if (!v14)
    {
      v19 = 0.0;
      goto LABEL_21;
    }
  }

  if (v14 > 3)
  {
    v18 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (v7 + 6);
    v19 = 0.0;
    v21 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
      v20 += 4;
      v21 -= 4;
    }

    while (v21);
    if (v14 == v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0.0;
  }

  v22 = v14 - v18;
  v23 = 8 * v18 + 32;
  do
  {
    v19 = v19 + *(v7 + v23);
    v23 += 8;
    --v22;
  }

  while (v22);
LABEL_21:

  v24 = v19 / v2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "pitchError is %f", v27, 0xCu);
  }

  if (v24 < *(v3 + 16))
  {

    return 1;
  }

  sub_100149F80(v1);

  return 0;
}

id *sub_100149DE4()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleBuffer;
  v2 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleBuffer);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);

  v8 = _swiftEmptyArrayStorage;
  v9 = 0.0;
  v10 = 1;
  v11 = v5;
LABEL_3:
  if (vabdd_f64(v11, v5) > 0.1)
  {
    v9 = v7 - v11;
    goto LABEL_6;
  }

  v12 = 1;
  while (v10 != v3)
  {
    v16 = v2 + 32 + 32 * v10;
    v4 = *v16;
    v11 = *(v16 + 8);
    v6 = *(v16 + 16);
    v7 = *(v16 + 24);
    ++v10;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100102B98(0, v8[2] + 1, 1, v8);
    }

    v14 = v8[2];
    v13 = v8[3];
    if (v14 >= v13 >> 1)
    {
      v8 = sub_100102B98((v13 > 1), v14 + 1, 1, v8);
    }

    v12 = 0;
    v8[2] = (v14 + 1);
    v15 = &v8[4 * v14];
    v15[4] = v4;
    *(v15 + 5) = v11;
    v15[6] = v6;
    *(v15 + 7) = v7 - v9;
  }

  if (v8[2] < *(v0 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__startupConstants + 24))
  {

    v8 = *(v0 + v1);
  }

  return v8;
}

void sub_100149F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 56);
    do
    {
      v3 = *(v2 - 2);
      v4 = *v2;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134218240;
        *(v7 + 4) = v3;
        *(v7 + 12) = 2048;
        *(v7 + 14) = v4;
        _os_log_impl(&_mh_execute_header, v5, v6, "imu pitch %f acc pitch %f", v7, 0x16u);
      }

      v2 += 4;
      --v1;
    }

    while (v1);
  }
}

id MotionValidator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MotionValidator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionValidator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10014A26C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014A2AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10014A2EC()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v31 - v5;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v7 = qword_1002B1CF0;
    v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v9 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v9 + 4);

    v10 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v11 = *(v7 + v8);
    v12 = v10;

    os_unfair_lock_unlock(v11 + 4);

    if (!v10)
    {
      break;
    }

    v13 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v32 = v12;
    v35 = dispatch thunk of DockCoreAccessory.info.getter();
    v33 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v14 = *&v13[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v34 = v13;
    v16 = *&v13[v15];
    v17 = *(v16 + 16);

    if (!v17)
    {
LABEL_8:

      v23 = v34;
      v24 = *&v34[v33];
      OS_dispatch_semaphore.signal()();

      v39 = 0;
      v37 = 0u;
      v38 = 0u;
LABEL_10:

      v26 = v32;
      if (*(&v38 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        v27 = swift_dynamicCast();
        if (v27)
        {
          v28 = v36[0];
          v29 = *(v36[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
          __chkstk_darwin(v27);
          *(&v31 - 2) = sub_10014AA08;
          *(&v31 - 1) = v28;

          os_unfair_lock_lock(v29 + 4);
          sub_1000F003C(v30);
          os_unfair_lock_unlock(v29 + 4);
        }

        else
        {
        }
      }

      else
      {

        sub_10014A9A0(&v37);
      }

      return;
    }

    v18 = 0;
    v19 = v1;
    v1 = v16 + 32;
    v20 = (v19 + 8);
    while (v18 < *(v16 + 16))
    {
      sub_1000A097C(v1, v36);
      v21 = *(*sub_1000A09E0(v36, v36[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v21) = static UUID.== infix(_:_:)();
      v22 = *v20;
      (*v20)(v4, v0);
      v22(v6, v0);
      if (v21)
      {

        v23 = v34;
        v25 = *&v34[v33];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v36, &v37);
        sub_100095808(v36);
        goto LABEL_10;
      }

      ++v18;
      sub_100095808(v36);
      v1 += 40;
      if (v17 == v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }
}

uint64_t sub_10014A6E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10014A730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10014A768()
{
  result = qword_1002A9970;
  if (!qword_1002A9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A9970);
  }

  return result;
}

uint64_t sub_10014A7D4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_10014A8B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10014A8C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10014A910(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_10014A9A0(uint64_t a1)
{
  v2 = sub_100095274(&unk_1002A6F40, &unk_10023BE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014AA24()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10014AA98(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1002A6780 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_100095274(&qword_1002A9968, &qword_10023E5B0);
    OS_dispatch_queue.sync<A>(execute:)();
    if (!v38)
    {
      break;
    }

    v6 = [v38 attitude];
    [v6 quaternion];
    simd_quatd.init(_:)(v7, v39);
    v36 = v8;
    __y = v9;

    v10 = vnegq_f64(v36);
    v11 = vmulq_f64(__y, xmmword_10023E590);
    v12 = vextq_s8(v11, vnegq_f64(v11), 8uLL);
    v13 = vmlaq_f64(vmulq_f64(v36, 0), 0, vextq_s8(v10, v36, 8uLL));
    v14 = vaddq_f64(vextq_s8(v36, v10, 8uLL), vmlaq_f64(vmulq_f64(v11, 0), 0, v12));
    v15 = vaddq_f64(v12, v13);
    v16 = vnegq_f64(v14);
    v17 = vextq_s8(v15, vnegq_f64(v15), 8uLL);
    v18 = vmlaq_n_f64(vmulq_laneq_f64(v16, v36, 1), vextq_s8(v14, v16, 8uLL), v36.f64[0]);
    v19 = vmlaq_n_f64(vmulq_laneq_f64(v14, __y, 1), vextq_s8(v16, v14, 8uLL), __y.f64[0]);
    *&__y.f64[0] = *&vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v15, __y, 1), v17, __y.f64[0]), v18);
    v20 = vaddq_f64(v19, vmlaq_n_f64(vmulq_laneq_f64(v15, v36, 1), v17, v36.f64[0]));
    v21 = sqrt(vmuld_n_f64(v20.f64[0], v20.f64[0]) + vmuld_lane_f64(v20.f64[1], v20, 1));
    v22 = atan2(v20.f64[1], v20.f64[0]);
    v23 = atan2(__y.f64[0], v21);
    v24 = a1[2];
    if (!v24)
    {
LABEL_15:
      v26 = 0.0;
      v27 = 0;
LABEL_16:
      v30 = OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleBuffer;
      v31 = *(a3 + OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__angleBuffer);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + v30) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_100102B98(0, v31[2] + 1, 1, v31);
        *(a3 + v30) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_100102B98((v33 > 1), v34 + 1, 1, v31);
      }

      v31[2] = (v34 + 1);
      v35 = &v31[4 * v34];
      *(v35 + 4) = v22;
      *(v35 + 5) = v23;
      v35[6] = v27;
      *(v35 + 7) = v26;
      *(a3 + v30) = v31;

      return;
    }

    a1 += 4;
    v25 = a2 + 32;
    v26 = 0.0;
    v27 = 0;
    while (1)
    {
      v29 = *a1++;
      v28 = v29;
      if (v29 != dispatch thunk of Component.id.getter())
      {
        goto LABEL_11;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v28 >= *(a2 + 16))
      {
        goto LABEL_24;
      }

      v27 = *(v25 + 8 * v28);
LABEL_11:
      if (v28 == dispatch thunk of Component.id.getter())
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (v28 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_15;
        }

        v26 = -*(v25 + 8 * v28);
      }

      if (!--v24)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }
}

__n128 sub_10014ADA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10014ADB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10014AE00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

char *sub_10014AE5C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v7 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController;
  *&v2[v7] = [objc_allocWithZone(UARPController) init];
  v8 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_registeredAccessories;
  *&v2[v8] = sub_1001F39A0(_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
  *&v2[v9] = sub_1001F3A98(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v2[v10] = v11;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_FWUPDATE_IDLE_TIMEOUT] = 0x404E000000000000;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;
  updated = type metadata accessor for AccessoryFirmwareUpdateManager(0);
  v35.receiver = v2;
  v35.super_class = updated;
  v13 = objc_msgSendSuper2(&v35, "init");
  v14 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController;
  v15 = *&v13[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController];
  v16 = v13;
  [v15 setDelegate:v16];
  v17 = v16;
  v18 = sub_10015079C(0x706163702ELL, 0xE500000000000000);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    (*(v4 + 16))(v6, &v16[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger], v3);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = v3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v32 = v6;
      v27 = v20;
      v28 = v26;
      v34 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000952D4(v27, v21, &v34);
      _os_log_impl(&_mh_execute_header, v22, v23, "Starting packet capture to %s", v25, 0xCu);
      sub_100095808(v28);

      (*(v4 + 8))(v32, v33);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v29 = *&v13[v14];
    v17 = String._bridgeToObjectiveC()();

    [v29 startPacketCapture:v17];
  }

  return v16;
}

void sub_10014B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = type metadata accessor for Logger();
  __chkstk_darwin(v10);
  sub_10014E948(a2, v7, a4, a5);
  v11 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer);
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer) = 0;
}

NSString sub_10014B4AC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(NSString);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithString:v13];

  [v14 UTF8String];
  v15 = v14;
  if (sandbox_extension_consume() == -1)
  {
    v17 = type metadata accessor for Errors();
    sub_1001519DC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v19 = v18;
    _StringGuts.grow(_:)(37);

    v20._countAndFlagsBits = a3;
    v20._object = a4;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x20726F6620;
    v21._object = 0xE500000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = a1;
    v22._object = a2;
    String.append(_:)(v22);
    *v19 = 0xD00000000000001CLL;
    v19[1] = 0x8000000100233550;
    (*(*(v17 - 8) + 104))(v19, enum case for Errors.FailedToConsumeExtensionForLocalAsset(_:), v17);
    goto LABEL_5;
  }

  v16 = sub_10014FDEC(a1, a2, a5, a6);
  if (v6)
  {
LABEL_5:
    swift_willThrow();
    return v13;
  }

  v13 = v16;
  sandbox_extension_release();
  return v13;
}

void sub_10014B6CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  v13 = sub_10014F580(a2, v12);
  if (v13)
  {
    v14 = v13;
    v45 = a1;
    v42 = v5;
    v15 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
    v16 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

    os_unfair_lock_lock(v16 + 4);

    v17 = [v14 uuid];
    v18 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
    swift_beginAccess();
    v19 = *(v2 + v18);

    v20 = sub_1001A359C(v17, v19);

    v21 = *(v2 + v15);

    os_unfair_lock_unlock(v21 + 4);

    if (v20)
    {

      sub_1000A097C(v45, &v43);
      v22 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
      swift_beginAccess();
      sub_100151B18(&v43, v20 + v22);
      swift_endAccess();
    }

    else
    {
      v27 = v42;
      (*(v6 + 16))(v11, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v42);
      v28 = v14;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v14;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed fetching UARP session for %@", v31, 0xCu);
        sub_100095C84(v32, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v6 + 8))(v11, v27);
      v43 = 0;
      v44 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v43 = 0xD000000000000014;
      v44 = 0x8000000100233530;
      v34 = [v28 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39 = v43;
      v40 = v44;
      sub_1000A1168();
      swift_allocError();
      *v41 = v39;
      *(v41 + 8) = v40;
      *(v41 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v5);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed fetching UARP accessory", v25, 2u);
    }

    (*(v6 + 8))(v9, v5);
    sub_1000A1168();
    swift_allocError();
    *v26 = 0xD000000000000011;
    *(v26 + 8) = 0x8000000100233510;
    *(v26 + 16) = 1;
    swift_willThrow();
  }
}

void sub_10014BB80(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v14 = sub_10014F580(a1, v13);
  if (v14)
  {
    v15 = v14;
    v41 = a2;
    v44 = v3;
    v16 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
    v17 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

    os_unfair_lock_lock(v17 + 4);

    v18 = [v15 uuid];
    v19 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
    swift_beginAccess();
    v20 = *(v2 + v19);

    v21 = sub_1001A359C(v18, v20);

    v22 = *(v2 + v16);

    os_unfair_lock_unlock(v22 + 4);

    if (v21)
    {
      sub_1000BB690(v41);
    }

    else
    {
      (*(v7 + 16))(v12, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v6);
      v27 = v15;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v15;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed fetching UARP session for %@", v30, 0xCu);
        sub_100095C84(v31, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v7 + 8))(v12, v6);
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v42 = 0xD000000000000014;
      v43 = 0x8000000100233530;
      v33 = [v27 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37._countAndFlagsBits = v34;
      v37._object = v36;
      String.append(_:)(v37);

      v38 = v42;
      v39 = v43;
      sub_1000A1168();
      swift_allocError();
      *v40 = v38;
      *(v40 + 8) = v39;
      *(v40 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    (*(v7 + 16))(v10, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v6);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed fetching UARP accessory", v25, 2u);
    }

    (*(v7 + 8))(v10, v6);
    sub_1000A1168();
    swift_allocError();
    *v26 = 0xD000000000000011;
    *(v26 + 8) = 0x8000000100233510;
    *(v26 + 16) = 1;
    swift_willThrow();
  }
}

void sub_10014C008(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v14 = sub_10014F580(a1, v13);
  if (v14)
  {
    v15 = v14;
    v43 = a2;
    v46 = v3;
    v16 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
    v17 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

    os_unfair_lock_lock(v17 + 4);

    v18 = [v15 uuid];
    v19 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
    swift_beginAccess();
    v20 = *(v2 + v19);

    v21 = sub_1001A359C(v18, v20);

    v22 = *(v2 + v16);

    os_unfair_lock_unlock(v22 + 4);

    if (v21)
    {
      v23 = *&v21[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile];
      sub_10013AA40(v43, v24);
    }

    else
    {
      (*(v7 + 16))(v12, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v6);
      v29 = v15;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v15;
        v34 = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed fetching UARP session for %@", v32, 0xCu);
        sub_100095C84(v33, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v7 + 8))(v12, v6);
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v44 = 0xD000000000000014;
      v45 = 0x8000000100233530;
      v35 = [v29 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39._countAndFlagsBits = v36;
      v39._object = v38;
      String.append(_:)(v39);

      v40 = v44;
      v41 = v45;
      sub_1000A1168();
      swift_allocError();
      *v42 = v40;
      *(v42 + 8) = v41;
      *(v42 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    (*(v7 + 16))(v10, v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v6);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed fetching UARP accessory", v27, 2u);
    }

    (*(v7 + 8))(v10, v6);
    sub_1000A1168();
    swift_allocError();
    *v28 = 0xD000000000000011;
    *(v28 + 8) = 0x8000000100233510;
    *(v28 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_10014C4A8(id a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v74 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v74 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v74 - v18;
  __chkstk_darwin(v17);
  v21 = v74 - v20;
  if ([a2 downloadStatus] == 2)
  {
    (*(v7 + 16))(v13, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v6);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Download failed for %@", v25, 0xCu);
      sub_100095C84(v26, &unk_1002A6F60, &unk_10023C4E0);
    }

    v28 = *(v7 + 8);
    v29 = v13;
    return v28(v29, v6);
  }

  sub_10014FAE8(a1);
  if (!v30)
  {
LABEL_10:
    (*(v7 + 16))(v16, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v6);
    v37 = a1;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "error retreiving dockaccessory for uarp accessory %@", v40, 0xCu);
      sub_100095C84(v41, &unk_1002A6F60, &unk_10023C4E0);
    }

    v28 = *(v7 + 8);
    v29 = v16;
    return v28(v29, v6);
  }

  v75 = a1;
  v76 = v6;
  v31 = v30;
  sub_1000FA5C0();
  if (!v32)
  {

    a1 = v75;
    v6 = v76;
    goto LABEL_10;
  }

  v33 = v32;
  v74[5] = v31;
  v34 = [a2 assetVersion];
  if (v34)
  {
    v35 = v34;
    v36 = [objc_allocWithZone(HMFSoftwareVersion) initWithVersionString:v34];
  }

  else
  {
    v36 = 0;
  }

  v44 = [v33 isAtLeastVersion:v36];

  v45 = *(v7 + 16);
  if (v44)
  {
    v45(v21, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v76);
    v46 = v33;
    v47 = a2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412546;
      *(v50 + 4) = v46;
      *v51 = v33;
      *(v50 + 12) = 2112;
      v52 = v46;
      v53 = [v47 assetVersion];
      if (v53)
      {
        v54 = v53;
        v55 = [objc_allocWithZone(HMFSoftwareVersion) initWithVersionString:v53];

        v56 = v55;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      *(v50 + 14) = v55;
      v51[1] = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Current FW version %@ if greater than or equal to new version %@", v50, 0x16u);
      sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
      swift_arrayDestroy();
    }

    else
    {
      v52 = v48;
      v48 = v46;
    }

    return (*(v7 + 8))(v21, v76);
  }

  else
  {
    v74[3] = v7 + 16;
    v74[4] = v10;
    v74[1] = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger;
    v74[2] = v45;
    v45(v19, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v76);
    v57 = v33;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v58;
      v62 = swift_slowAlloc();
      *v60 = 138412290;
      *(v60 + 4) = v57;
      *v62 = v33;
      v63 = v57;
      _os_log_impl(&_mh_execute_header, v61, v59, "asset version is %@", v60, 0xCu);
      sub_100095C84(v62, &unk_1002A6F60, &unk_10023C4E0);
      v58 = v61;
    }

    v64 = v57;

    (*(v7 + 8))(v19, v76);
    v65 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
    v66 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

    os_unfair_lock_lock(v66 + 4);

    v67 = v75;
    v68 = [v75 uuid];
    v69 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
    swift_beginAccess();
    v70 = *(v3 + v69);

    v71 = sub_1001A359C(v68, v70);

    v72 = *(v3 + v65);

    os_unfair_lock_unlock(v72 + 4);

    if (v71)
    {
      [v71 assetAvailablityUpdateForAccessoryID:v67 assetID:a2];
    }

    else
    {
      v73 = sub_10014F178(v67);
      [v73 assetAvailablityUpdateForAccessoryID:v67 assetID:a2];
    }
  }
}

void sub_10014CE30(void *a1, uint64_t a2, uint64_t a3)
{
  v33[1] = a2;
  v33[2] = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v34 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v33 - v9;
  v11 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
  v12 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = [a1 uuid];
  v14 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
  swift_beginAccess();
  v15 = *(v3 + v14);

  v16 = sub_1001A359C(v13, v15);

  v17 = *(v3 + v11);

  os_unfair_lock_unlock(v17 + 4);

  if (v16)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v35 = 0;
    v19 = [v16 sendMessageToAccessory:a1 uarpMsg:isa error:&v35];

    if (v19)
    {
      v20 = v35;
    }

    else
    {
      v27 = v35;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v6 + 16))(v34, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v5);
      swift_errorRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        swift_errorRetain();
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&_mh_execute_header, v28, v29, "sendMessageToAccessory: failed with error %@", v30, 0xCu);
        sub_100095C84(v31, &unk_1002A6F60, &unk_10023C4E0);
      }

      else
      {
      }

      (*(v6 + 8))(v34, v5);
    }
  }

  else
  {
    (*(v6 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v5);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "UARP session not found for %@", v24, 0xCu);
      sub_100095C84(v25, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v6 + 8))(v10, v5);
  }
}