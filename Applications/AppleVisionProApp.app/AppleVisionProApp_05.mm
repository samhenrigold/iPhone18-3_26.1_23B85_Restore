uint64_t sub_100083B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVPageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083C00(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TVPageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100083C74()
{
  v1 = type metadata accessor for TVPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[6];
  v7 = type metadata accessor for MetricsPipeline();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  swift_unknownObjectRelease();

  v8 = v0 + v3 + v1[9];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  sub_100002BE4(&qword_10016E3E0, &unk_100115030);

  v11 = v1[10];
  sub_100002BE4(&qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100083EE8(uint64_t a1, void *a2)
{
  type metadata accessor for TVPageView(0);

  return sub_1000839C4(a1, a2);
}

uint64_t sub_100083F98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008401C()
{
  result = qword_10016E4D0;
  if (!qword_10016E4D0)
  {
    sub_10000459C(&qword_10016E4B0, &unk_1001150C0);
    type metadata accessor for TVStoreExtensionView(255);
    sub_1000841BC(&qword_10016E3C8, type metadata accessor for TVStoreExtensionView, &unk_100114FD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E4D0);
  }

  return result;
}

unint64_t sub_100084108()
{
  result = qword_10016E4D8;
  if (!qword_10016E4D8)
  {
    sub_10000459C(&unk_10016E398, &qword_100117BA0);
    sub_1000841BC(&qword_10016E4E0, sub_100084204, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E4D8);
  }

  return result;
}

uint64_t sub_1000841BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100084204()
{
  result = qword_10016E4E8;
  if (!qword_10016E4E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016E4E8);
  }

  return result;
}

uint64_t sub_100084250(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016E4A0, &qword_1001150A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000842B8(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100084320()
{
  sub_10000459C(&qword_10016E4A0, &qword_1001150A8);
  sub_10000459C(&unk_10016E398, &qword_100117BA0);
  sub_100083F98(&qword_10016E4C0, &qword_10016E4A0, &qword_1001150A8, sub_100083F68);
  sub_100084108();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000843E4()
{
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

double sub_100084488(uint64_t a1)
{

  v4 = sub_10008C4F0(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000845DC()
{
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100084694@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

double sub_100084754(uint64_t a1)
{
  swift_beginAccess();

  sub_10008C334(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_10008489C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

double sub_100084904(uint64_t a1)
{
  v2 = v1;
  v87 = *v2;
  v4 = type metadata accessor for Device();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v88 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v8 = __chkstk_darwin(v7 - 8);
  v86 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v85 = &v81 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v81 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v81 - v16;
  __chkstk_darwin(v15);
  v19 = &v81 - v18;
  sub_10000C178(a1, &v81 - v18, &qword_10016B010, &qword_100110020);
  v91 = *(v5 + 48);
  if (v91(v19, 1, v4) == 1)
  {
    v20 = v5;
    sub_100009908(v19, &qword_10016B010, &qword_100110020);
    v84 = 0;
    v21 = 0;
  }

  else
  {
    v84 = Device.serialNumber.getter();
    v21 = v22;
    v20 = v5;
    (*(v5 + 8))(v19, v4);
  }

  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
  v92[1] = v2;
  v89 = sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  v90 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  sub_10000C178(v2 + v24, v17, &qword_10016B010, &qword_100110020);
  if (v91(v17, 1, v4))
  {
    sub_100009908(v17, &qword_10016B010, &qword_100110020);
    v26 = v20;
    if (!v21)
    {
      return result;
    }

    goto LABEL_6;
  }

  v26 = v20;
  isa = v20[2].isa;
  v37 = v88;
  isa(v88, v17, v4);
  sub_100009908(v17, &qword_10016B010, &qword_100110020);
  v38 = Device.serialNumber.getter();
  v40 = v39;
  (v26[1].isa)(v37, v4);
  if (!v21)
  {
    if (!v40)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v40)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v84 == v38 && v21 == v40)
  {

    return result;
  }

  v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v80 & 1) == 0)
  {
LABEL_7:
    swift_getKeyPath();
    v92[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10000C178(v2 + v24, v14, &qword_10016B010, &qword_100110020);
    if (v91(v14, 1, v4))
    {
      sub_100009908(v14, &qword_10016B010, &qword_100110020);
      sub_10003CEC8(0xD000000000000019, 0x800000010011EC20);
      if (qword_100168E40 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006B0C(v27, qword_100181FE8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_22;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v84 = v26;
      v32 = v31;
      v92[0] = v31;
      *v30 = 136315138;
      v33 = _typeName(_:qualified:)();
      v35 = sub_100006B44(v33, v34, v92);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s removing persisted selected device serialNumber", v30, 0xCu);
      sub_1000052E4(v32);
      v26 = v84;
    }

    else
    {
      v41 = v88;
      (v26[2].isa)(v88, v14, v4);
      sub_100009908(v14, &qword_10016B010, &qword_100110020);
      v42 = Device.serialNumber.getter();
      v44 = v43;
      (v26[1].isa)(v41, v4);
      sub_10003C324(0xD000000000000019, 0x800000010011EC20, v42, v44);
      if (qword_100168E40 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100006B0C(v45, qword_100181FE8);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      v84 = v46;
      if (!os_log_type_enabled(v46, v47))
      {

        goto LABEL_23;
      }

      v48 = swift_slowAlloc();
      v82 = v42;
      v49 = v48;
      v83 = swift_slowAlloc();
      v92[0] = v83;
      *v49 = 136315394;
      v50 = _typeName(_:qualified:)();
      v52 = sub_100006B44(v50, v51, v92);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2080;
      v53 = sub_100006B44(v82, v44, v92);

      *(v49 + 14) = v53;
      v28 = v84;
      _os_log_impl(&_mh_execute_header, v84, v47, "%s persisted selected device serialNumber: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

LABEL_22:

LABEL_23:
    sub_100002BE4(&qword_10016E778, &qword_1001152C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010FEE0;
    strcpy((inited + 32), "serialNumber");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    swift_getKeyPath();
    v92[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v55 = v85;
    sub_10000C178(v2 + v24, v85, &qword_10016B010, &qword_100110020);
    if (v91(v55, 1, v4))
    {
      sub_100009908(v55, &qword_10016B010, &qword_100110020);
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v58 = v88;
      (v26[2].isa)(v88, v55, v4);
      sub_100009908(v55, &qword_10016B010, &qword_100110020);
      v56 = Device.serialNumber.getter();
      v57 = v59;
      (v26[1].isa)(v58, v4);
    }

    *(inited + 48) = v56;
    *(inited + 56) = v57;
    *(inited + 64) = 0xD000000000000013;
    *(inited + 72) = 0x800000010011EC40;
    swift_getKeyPath();
    v92[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = v86;
    sub_10000C178(v2 + v24, v86, &qword_10016B010, &qword_100110020);
    if (v91(v60, 1, v4))
    {
      sub_100009908(v60, &qword_10016B010, &qword_100110020);
      v61 = 0;
      v62 = 0;
    }

    else
    {
      v63 = v88;
      (v26[2].isa)(v88, v60, v4);
      sub_100009908(v60, &qword_10016B010, &qword_100110020);
      v61 = Device.buildNumber.getter();
      v62 = v64;
      (v26[1].isa)(v63, v4);
    }

    *(inited + 80) = v61;
    *(inited + 88) = v62;
    v65 = sub_10000B924(inited);
    swift_setDeallocating();
    sub_100002BE4(&qword_10016E780, &qword_1001152C8);
    swift_arrayDestroy();
    v66 = [objc_opt_self() defaultCenter];
    if (qword_100168F70 != -1)
    {
      swift_once();
    }

    v67 = qword_1001821C0;
    sub_10008E1F4(v65);
    v68 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v66 postNotificationName:v67 object:0 userInfo:v68];

    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100006B0C(v69, qword_100181FE8);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v72 = 136315394;
      v73 = _typeName(_:qualified:)();
      v75 = sub_100006B44(v73, v74, v92);

      *(v72 + 4) = v75;
      *(v72 + 12) = 2080;
      sub_100002BE4(&qword_10016B278, &qword_100113A20);
      v76 = Dictionary.description.getter();
      v78 = v77;

      v79 = sub_100006B44(v76, v78, v92);

      *(v72 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "%s posted selectedDeviceDidChange notification with userInfo: %s", v72, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100085624@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  return sub_10000C178(v5 + v3, a1, &qword_10016B010, &qword_100110020);
}

uint64_t sub_1000856FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  return sub_10000C178(v3 + v4, a2, &qword_10016B010, &qword_100110020);
}

uint64_t sub_1000857D4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000C178(a1, &v6 - v3, &qword_10016B010, &qword_100110020);
  return sub_100085880(v4);
}

uint64_t sub_100085880(uint64_t a1)
{
  v3 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  sub_10000C178(v1 + v9, v8, &qword_10016B010, &qword_100110020);
  v10 = sub_10008C794(v8, a1);
  sub_100009908(v8, &qword_10016B010, &qword_100110020);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10000C178(a1, v8, &qword_10016B010, &qword_100110020);
    sub_10000C178(v1 + v9, v6, &qword_10016B010, &qword_100110020);
    swift_beginAccess();
    sub_10008D8B0(v8, v1 + v9);
    swift_endAccess();
    sub_100084904(v6);
    sub_100009908(v6, &qword_10016B010, &qword_100110020);
    sub_100009908(v8, &qword_10016B010, &qword_100110020);
  }

  return sub_100009908(a1, &qword_10016B010, &qword_100110020);
}

uint64_t sub_100085AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_10000C178(a2, &v12[-v8], &qword_10016B010, &qword_100110020);
  v10 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  sub_10000C178(a1 + v10, v7, &qword_10016B010, &qword_100110020);
  swift_beginAccess();
  sub_10008D8B0(v9, a1 + v10);
  swift_endAccess();
  sub_100084904(v7);
  sub_100009908(v7, &qword_10016B010, &qword_100110020);
  return sub_100009908(v9, &qword_10016B010, &qword_100110020);
}

uint64_t sub_100085C38()
{
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100085CE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads);
}

double sub_100085D98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads;
  if (!*(v1 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (!a1 || (sub_10008C704(*(v1 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads), a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100085EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for PushNotificationDispatchItem();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100085FB8, 0, 0);
}

uint64_t sub_100085FB8()
{
  (*(v0[5] + 104))(v0[6], enum case for PushNotificationDispatchItem.device(_:), v0[4]);
  type metadata accessor for PushNotificationDispatch();
  sub_10008D960(&qword_10016E760, &type metadata accessor for PushNotificationDispatch, &protocol conformance descriptor for PushNotificationDispatch);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000860A8, v2, v1);
}

uint64_t sub_1000860A8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  dispatch thunk of PushNotificationDispatch.register(_:handler:)();

  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000861A0;

  return DeviceCloudKitCoordinator.registerForPushNotifications()();
}

uint64_t sub_1000861A0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1000862E0;

  return sub_100087414();
}

uint64_t sub_1000862E0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_100086420;

  return sub_1000899C8();
}

uint64_t sub_100086420()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100086530()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100087414();
}

uint64_t sub_1000865C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_100087414();
}

uint64_t sub_100086650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_1000899C8();
}

uint64_t sub_1000866E0()
{
  v1[6] = *v0;
  v2 = type metadata accessor for DeviceService();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for Calendar();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  sub_100002BE4(&qword_10016B420, &qword_100110790);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000868D8, 0, 0);
}

uint64_t sub_1000868D8()
{
  v65 = v0;
  v1 = objc_opt_self();
  *(v0 + 160) = v1;
  v2 = [v1 standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.lastAuthKitDevicesUpdateKey.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v5 = v64;
  *(v0 + 16) = v63;
  *(v0 + 32) = v5;
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  if (*(v0 + 40))
  {
    v9 = swift_dynamicCast();
    (*(v7 + 56))(v8, v9 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v8, 1, v6) != 1)
    {
      (*(*(v0 + 120) + 32))(*(v0 + 152), *(v0 + 104), *(v0 + 112));
      goto LABEL_10;
    }
  }

  else
  {
    sub_100009908(v0 + 16, &qword_100169A38, &qword_10010D460);
    (*(v7 + 56))(v8, 1, 1, v6);
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  v12 = *(v0 + 104);
  static Date.distantPast.getter();
  if ((*(v11 + 48))(v12, 1, v10) != 1)
  {
    sub_100009908(*(v0 + 104), &qword_10016B420, &qword_100110790);
  }

LABEL_10:
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  v15 = *(v0 + 80);
  static Calendar.current.getter();
  v16 = Calendar.isDateInToday(_:)();
  (*(v14 + 8))(v13, v15);
  if (v16)
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 152);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 112);
    v21 = type metadata accessor for Logger();
    sub_100006B0C(v21, qword_100181FE8);
    (*(v19 + 16))(v18, v17, v20);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 152);
    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = *(v0 + 112);
    if (v24)
    {
      v62 = *(v0 + 152);
      v29 = swift_slowAlloc();
      *&v63 = swift_slowAlloc();
      *v29 = 136315394;
      v30 = _typeName(_:qualified:)();
      v32 = sub_100006B44(v30, v31, &v63);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      sub_10008D960(&qword_10016B468, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v27 + 8);
      v36(v26, v28);
      v37 = sub_100006B44(v33, v35, &v63);

      *(v29 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s not requesting AuthKit Devices update; last update: %s", v29, 0x16u);
      swift_arrayDestroy();

      v36(v62, v28);
    }

    else
    {

      v58 = *(v27 + 8);
      v58(v26, v28);
      v58(v25, v28);
    }

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 144);
    v39 = *(v0 + 152);
    v40 = *(v0 + 112);
    v41 = *(v0 + 120);
    v42 = type metadata accessor for Logger();
    sub_100006B0C(v42, qword_100181FE8);
    (*(v41 + 16))(v38, v39, v40);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 144);
    v47 = *(v0 + 112);
    v48 = *(v0 + 120);
    if (v45)
    {
      v49 = swift_slowAlloc();
      *&v63 = swift_slowAlloc();
      *v49 = 136315394;
      v50 = _typeName(_:qualified:)();
      v52 = sub_100006B44(v50, v51, &v63);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2080;
      sub_10008D960(&qword_10016B468, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v56 = *(v48 + 8);
      v56(v46, v47);
      v57 = sub_100006B44(v53, v55, &v63);

      *(v49 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s requesting AuthKit Devices update; last update: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v56 = *(v48 + 8);
      v56(v46, v47);
    }

    *(v0 + 168) = v56;
    DeviceService.init()();
    v61 = swift_task_alloc();
    *(v0 + 176) = v61;
    *v61 = v0;
    v61[1] = sub_100087030;

    return DeviceService.activate()();
  }
}

uint64_t sub_100087030()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 184) = v3;
  *v3 = v2;
  v3[1] = sub_100087174;

  return DeviceService.updateAuthKitDevices()();
}

uint64_t sub_100087174()
{

  if (v0)
  {

    v1 = sub_10008D9F8;
  }

  else
  {
    v1 = sub_10008728C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10008728C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12 = *(v0 + 152);
  v6 = [*(v0 + 160) standardUserDefaults];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v1(v2, v3);
  static UserDefaultUtilities.SharedConstants.lastAuthKitDevicesUpdateKey.getter();
  v8 = String._bridgeToObjectiveC()();

  [v6 setObject:isa forKey:v8];

  DeviceService.invalidate()();
  (*(v4 + 8))(v5, v11);
  v1(v12, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100087414()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = type metadata accessor for DeviceService();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v1[10] = swift_task_alloc();
  sub_100002BE4(&qword_10016B010, &qword_100110020);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100087584, 0, 0);
}

uint64_t sub_100087584()
{
  v1 = v0[5];
  v0[2] = v1;
  v2 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_authKitCoordinator;
  v3 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_cloudKitAccountCoordinator);
  v4 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_deviceCloudKitCoordinator;
  v0[14] = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_deviceCloudKitCoordinator;
  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = type metadata accessor for DeviceProvider(0);
  v7 = sub_10008D960(&qword_10016E770, type metadata accessor for DeviceProvider, &unk_100115164);
  *v5 = v0;
  v5[1] = sub_1000876B0;

  return DeviceFallbackProviding.fetchDevicesWithFallback(authKitCoordinator:cloudKitAccountCoordinator:deviceCloudKitCoordinator:)(v1 + v2, v3, v1 + v4, v6, v7);
}

uint64_t sub_1000876B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_100088084;
  }

  else
  {
    v4 = sub_1000877C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000877C4()
{
  v19 = v0;
  v1 = v0[16];
  v0[18] = type metadata accessor for Device();
  v2 = Array.uniqued<A>(_:)();
  v0[19] = v2;
  if (*(v1 + 16) == *(v2 + 16))
  {

    sub_100088E08(v0[19], v0[13]);
    v0[21] = type metadata accessor for MainActor();
    v0[22] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100087CA8, v4, v3);
  }

  else
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006B0C(v5, qword_100181FE8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_100006B44(v9, v10, &v18);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = Array.description.getter();
      v14 = v13;

      v15 = sub_100006B44(v12, v14, &v18);

      *(v8 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s found duplicate devices: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v16 = swift_task_alloc();
    v0[20] = v16;
    *v16 = v0;
    v16[1] = sub_100087B04;

    return DeviceCloudKitCoordinator.removeDuplicateDevices()();
  }
}

uint64_t sub_100087B04()
{

  return _swift_task_switch(sub_100087C00, 0, 0);
}

uint64_t sub_100087C00(__n128 a1)
{
  sub_100088E08(v1[19], v1[13]);
  v1[21] = type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100087CA8, v3, v2);
}

uint64_t sub_100087CA8()
{
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[5];

  sub_100084488(v6);
  sub_10000C178(v2, v3, &qword_10016B010, &qword_100110020);
  sub_100085880(v3);
  byte_10016BF08 = *(v1 + 16) != 0;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  v9[5] = v1;
  sub_1000EE5F8(0, 0, v4, &unk_100115260, v9);

  return _swift_task_switch(sub_100087E2C, 0, 0);
}

uint64_t sub_100087E2C()
{
  v16 = v0;
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FE8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = Array.description.getter();
    v11 = v10;

    v12 = sub_100006B44(v9, v11, &v15);

    *(v5 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s updated devices: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v4 = *(v0 + 104);
  }

  sub_100009908(v4, &qword_10016B010, &qword_100110020);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100088084()
{
  v29 = v0;
  type metadata accessor for Code(0);
  swift_errorRetain();
  v0[3] = static CloudKitUtilities.zoneNotFoundError.getter();
  sub_10008D960(&qword_1001691C0, type metadata accessor for Code, &unk_10010C5B8);
  v1 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v1)
  {

    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100181FE8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v28 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = sub_100006B44(v7, v8, &v28);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s failed to update devices; zone not found", v5, 0xCu);
      sub_1000052E4(v6);
    }

    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = sub_1000885F0;

    return DeviceCloudKitCoordinator.registerForPushNotifications()();
  }

  else
  {
    swift_errorRetain();
    v0[4] = static CloudKitUtilities.notAuthenticatedError.getter();
    v11 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v11)
    {
      v12 = v0[12];

      v13 = type metadata accessor for Device();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      v0[26] = type metadata accessor for MainActor();
      v0[27] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100088A98, v15, v14);
    }

    else
    {
      if (qword_100168E40 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006B0C(v16, qword_100181FE8);
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        *v19 = 136315394;
        v22 = _typeName(_:qualified:)();
        v24 = sub_100006B44(v22, v23, &v28);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2112;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v25;
        *v20 = v25;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s failed to update devices: %@", v19, 0x16u);
        sub_100009908(v20, &unk_100169C20, &unk_10010D6B0);

        sub_1000052E4(v21);
      }

      else
      {
      }

      v26 = v0[1];

      return v26();
    }
  }
}

uint64_t sub_1000885F0()
{

  return _swift_task_switch(sub_1000886EC, 0, 0);
}

uint64_t sub_1000886EC(uint64_t a1)
{
  DeviceService.init()();
  v2 = swift_task_alloc();
  *(v1 + 192) = v2;
  *v2 = v1;
  v2[1] = sub_100088788;

  return DeviceService.activate()();
}

uint64_t sub_100088788()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 200) = v3;
  *v3 = v2;
  v3[1] = sub_1000888CC;

  return DeviceService.updateAuthKitDevices()();
}

uint64_t sub_1000888CC()
{

  if (v0)
  {

    v1 = sub_10008D9EC;
  }

  else
  {
    v1 = sub_1000889E4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000889E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DeviceService.invalidate()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100088A98()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];

  sub_100084488(_swiftEmptyArrayStorage);
  sub_10000C178(v1, v2, &qword_10016B010, &qword_100110020);
  sub_100085880(v2);
  byte_10016BF08 = 0;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;
  v7[5] = _swiftEmptyArrayStorage;
  sub_1000EE5F8(0, 0, v3, &unk_100115258, v7);

  sub_100009908(v1, &qword_10016B010, &qword_100110020);

  return _swift_task_switch(sub_100088C28, 0, 0);
}

uint64_t sub_100088C28()
{
  v12 = v0;
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FE8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s failed to update devices; user not authenticated", v4, 0xCu);
    sub_1000052E4(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100088DDC@<X0>(uint64_t *a2@<X8>)
{
  result = Device.serialNumber.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100088E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v7 = __chkstk_darwin(v6 - 8);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v80 = &v72 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v72 - v12;
  __chkstk_darwin(v11);
  v15 = &v72 - v14;
  v16 = type metadata accessor for Device();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v75 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v76 = &v72 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v72 - v23;
  __chkstk_darwin(v22);
  v26 = &v72 - v25;
  v27 = sub_10003D38C(0xD000000000000019, 0x800000010011EC20);
  v29 = a2;
  v84 = v16;
  v82 = a2;
  v79 = v15;
  if (!v28)
  {
    goto LABEL_9;
  }

  v30 = v28;
  v72 = v13;
  v73 = v26;
  v74 = v5;
  v81 = v17;
  v78 = a1;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_8:

    v17 = v81;
    v29 = v82;
    v15 = v79;
    v13 = v72;
LABEL_9:
    v38 = v29;
    static SoftwareUpdateUtilities.highestVersionDevice(from:)();
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006B0C(v39, qword_100181FE8);
    sub_10000C178(v15, v13, &qword_10016B010, &qword_100110020);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v42 = 136315394;
      v43 = _typeName(_:qualified:)();
      v45 = sub_100006B44(v43, v44, &v87);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = v80;
      sub_10000C178(v13, v80, &qword_10016B010, &qword_100110020);
      v47 = v77;
      sub_10000C178(v46, v77, &qword_10016B010, &qword_100110020);
      v48 = v84;
      if ((*(v17 + 48))(v47, 1, v84) == 1)
      {
        v49 = 0xE300000000000000;
        v50 = 7104878;
      }

      else
      {
        v52 = v75;
        (*(v17 + 32))(v75, v47, v48);
        v85 = 0;
        v86 = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v50 = v85;
        v49 = v86;
        (*(v17 + 8))(v52, v48);
      }

      sub_100009908(v80, &qword_10016B010, &qword_100110020);
      sub_100009908(v13, &qword_10016B010, &qword_100110020);
      v53 = sub_100006B44(v50, v49, &v87);

      *(v42 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s no persisted selected device; selecting device %s", v42, 0x16u);
      swift_arrayDestroy();

      v15 = v79;
      v51 = v82;
    }

    else
    {

      sub_100009908(v13, &qword_10016B010, &qword_100110020);
      v51 = v38;
    }

    return sub_10008D32C(v15, v51);
  }

  v32 = v27;
  v83 = *(v81 + 16);
  v33 = (v81 + 8);
  v34 = v78 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
  v35 = *(v81 + 72);
  while (1)
  {
    v83(v24, v34, v16);
    if (Device.serialNumber.getter() == v32 && v30 == v36)
    {

      goto LABEL_20;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      break;
    }

    v16 = v84;
    (*v33)(v24, v84);
    v34 += v35;
    if (!--v31)
    {
      goto LABEL_8;
    }
  }

  v16 = v84;
LABEL_20:
  v55 = *(v81 + 32);
  v56 = v73;
  v55(v73, v24, v16);
  v57 = v76;
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100006B0C(v58, qword_100181FE8);
  v83(v57, v56, v16);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v84 = v55;
    v85 = v62;
    *v61 = 136315394;
    v63 = _typeName(_:qualified:)();
    v64 = v16;
    v66 = sub_100006B44(v63, v65, &v85);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2080;
    sub_10008D960(&qword_10016E768, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    (*v33)(v57, v64);
    v70 = sub_100006B44(v67, v69, &v85);

    *(v61 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v59, v60, "%s fetched persisted selected device %s", v61, 0x16u);
    swift_arrayDestroy();
    v55 = v84;

    v56 = v73;
  }

  else
  {

    (*v33)(v57, v16);
    v64 = v16;
  }

  v71 = v82;
  v55(v82, v56, v64);
  return (*(v81 + 56))(v71, 0, 1, v64);
}

uint64_t sub_100089674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();

  return _swift_task_switch(sub_1000896F0, 0, 0);
}

uint64_t sub_1000896F0()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1000897D8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000897D8()
{

  return _swift_task_switch(sub_1000898F0, 0, 0);
}

uint64_t sub_1000898F0()
{
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089968, v1, v0);
}

uint64_t sub_100089968()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000899C8()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_100089A90;

  return AuthKitCoordinator.getRemoteDownloadIdentifiersThatAcceptAppStoreDownloads()();
}

uint64_t sub_100089A90(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100089B90, 0, 0);
}

uint64_t sub_100089B90()
{
  v21 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads;
  v4 = v2;
  if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads))
  {
    if (sub_10008C704(*(v2 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads), v0[10]))
    {
      *(v2 + v3) = v1;

      goto LABEL_6;
    }

    v4 = v0[7];
  }

  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[4] = v4;
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006B0C(v6, qword_100181FE8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, v20);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    swift_getKeyPath();
    v0[5] = v9;
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v2 + v3);
    if (v14)
    {
      v0[2] = 0;
      v0[3] = 0xE000000000000000;
      v0[6] = v14;
      sub_100002BE4(&qword_10016B430, &unk_1001107A0);
      _print_unlocked<A, B>(_:_:)();
      v15 = v0[2];
      v16 = v0[3];
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    v17 = sub_100006B44(v15, v16, v20);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s remoteDownloadIdentifiersThatAcceptAppStoreDownloads = %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100089F28(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  v22[0] = v2;
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads);
  if (!v6)
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006B0C(v9, qword_100181FE8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100006B44(v13, v14, v22);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100006B44(a1, a2, v22);
    v16 = "%s remoteDownloadIdentifiersThatAcceptAppStoreDownloads is nil, unable to determine if %s accepts app store downloads";
    goto LABEL_12;
  }

  v22[0] = a1;
  v22[1] = a2;
  __chkstk_darwin(v5);
  v21[2] = v22;

  v7 = sub_10008BE3C(sub_10008D2BC, v21, v6);

  if (v7)
  {
    return 1;
  }

  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006B0C(v17, qword_100181FE8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v12 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100006B44(v18, v19, v22);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100006B44(a1, a2, v22);
    v16 = "%s %s is not found in remoteDownloadIdentifiersThatAcceptAppStoreDownloads";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v10, v11, v16, v12, 0x16u);
    swift_arrayDestroy();
  }

LABEL_13:

  return 0;
}

uint64_t sub_10008A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = type metadata accessor for Device();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_10008A3EC, 0, 0);
}

uint64_t sub_10008A3EC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 104);
    v31 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v29 = (v3 + 16);
    v30 = *(v3 + 72);
    v28 = (v4 + 40) & ~v4;
    v27 = (v3 + 32);
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v26 = *(v7 + 56);
    v25 = (v7 + 48);
    v24 = (v7 + 8);
    do
    {
      v32 = v2;
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 120);
      v13 = *(v0 + 96);
      v26(v10, 1, 1, v6);
      v14 = swift_allocObject();
      swift_weakInit();
      (*v29)(v12, v5, v13);
      v15 = swift_allocObject();
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 4) = v14;
      (*v27)(&v15[v28], v12, v13);
      sub_10000C178(v10, v11, &unk_10016F2B0, &qword_10010F6F0);
      v16 = (*v25)(v11, 1, v6);
      v17 = *(v0 + 128);
      if (v16 == 1)
      {
        sub_100009908(*(v0 + 128), &unk_10016F2B0, &qword_10010F6F0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v24)(v17, v6);
      }

      if (*(v15 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_100115288;
      *(v21 + 24) = v15;

      if (v20 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_100009908(v9, &unk_10016F2B0, &qword_10010F6F0);
      v5 += v30;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10008A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10008A7C0, 0, 0);
}

uint64_t sub_10008A7C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_10008A8B0;
    v3 = v0[6];

    return sub_10008A9C0(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10008A8B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10008A9C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10008AA08, 0, 0);
}

uint64_t sub_10008AA08(uint64_t a1)
{
  v2 = Device.productName.getter();
  v1[5] = v3;
  v1[6] = v2;
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_10008AAA4;

  return sub_1000BD234();
}

uint64_t sub_10008AAA4(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_10008ABA4, 0, 0);
}

uint64_t sub_10008ABA4()
{
  v17 = v0;
  if (v0[8])
  {
    type metadata accessor for MainActor();
    v0[9] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10008AE48, v2, v1);
  }

  else
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006B0C(v3, qword_100181FE8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[5];
      if (v6)
      {
        v7 = v0[5];
      }

      else
      {
        v7 = 0x800000010011EC00;
      }

      if (v6)
      {
        v8 = v0[6];
      }

      else
      {
        v8 = 0xD000000000000010;
      }

      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100006B44(v10, v11, &v16);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      v13 = sub_100006B44(v8, v7, &v16);

      *(v9 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s failed to load device model for device: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10008AE48()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0x800000010011EC00;
  }

  sub_10008AFA0(v5, v6, v7, v1, v4);

  return _swift_task_switch(sub_10008AF40, 0, 0);
}

uint64_t sub_10008AF40()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10008AFA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_10004E32C(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 24) = v18;
  swift_endAccess();
  v17[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006B0C(v10, qword_100181FE8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100006B44(v14, v15, v17);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100006B44(a2, a3, v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s cached device model for device: %s", v13, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10008B280(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return _swift_task_switch(sub_10008B2C8, 0, 0);
}

uint64_t sub_10008B2C8(uint64_t a1)
{
  v2 = Device.productName.getter();
  v1[10] = v3;
  v1[11] = v2;
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008B36C, v5, v4);
}

uint64_t sub_10008B36C()
{
  v1 = v0[8];

  swift_getKeyPath();
  v0[5] = v1;
  v0[14] = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
  v0[15] = sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v3 = v0[10];
    if (v3)
    {
      v4 = v0[11];
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3)
    {
      v5 = v0[10];
    }

    else
    {
      v5 = 0x800000010011EC00;
    }

    v6 = sub_10006889C(v4, v5);
    if (v7)
    {
      v0[16] = *(*(v2 + 56) + 8 * v6);

      v8 = sub_10008B73C;
    }

    else
    {

      v8 = sub_10008D9F0;
    }
  }

  else
  {
    v8 = sub_10008B504;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10008B504()
{
  v15 = v0;
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FE8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    if (v4)
    {
      v5 = v0[11];
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4)
    {
      v6 = v0[10];
    }

    else
    {
      v6 = 0x800000010011EC00;
    }

    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100006B44(v5, v6, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s device model not cached, loading for device: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_10008B7B8;
  v12 = v0[7];

  return sub_10008A9C0(v12);
}

uint64_t sub_10008B73C()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10008B7B8()
{

  return _swift_task_switch(sub_10008B8B4, 0, 0);
}

uint64_t sub_10008B8B4(uint64_t a1)
{
  *(v1 + 144) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008B940, v3, v2);
}

uint64_t sub_10008B940()
{
  v1 = v0[8];

  swift_getKeyPath();
  v0[6] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 24);
  if (*(v2 + 16) && ((v3 = v0[10]) != 0 ? (v4 = v0[10]) : (v4 = 0x800000010011EC00), v3 ? (v5 = v0[11]) : (v5 = 0xD000000000000010), , v6 = sub_10006889C(v5, v4), v8 = v7, , (v8 & 1) != 0))
  {
    v9 = *(*(v2 + 56) + 8 * v6);

    v10 = v9;
  }

  else
  {

    v10 = 0;
  }

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10008BA88()
{

  sub_100009908(v0 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice, &qword_10016B010, &qword_100110020);
  v1 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_authKitCoordinator;
  v2 = type metadata accessor for AuthKitCoordinator();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_deviceCloudKitCoordinator;
  v4 = type metadata accessor for DeviceCloudKitCoordinator();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceProvider(uint64_t a1)
{
  result = qword_10016E548;
  if (!qword_10016E548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008BC48(uint64_t a1)
{
  sub_10008BDAC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AuthKitCoordinator();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DeviceCloudKitCoordinator();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10008BDAC(uint64_t a1)
{
  if (!qword_10016E558)
  {
    type metadata accessor for Device();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10016E558);
    }
  }
}

NSString sub_10008BE04()
{
  result = String._bridgeToObjectiveC()();
  qword_1001821C0 = result;
  return result;
}

uint64_t sub_10008BE3C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10008BEE8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10008C010(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008C108;

  return v6(a1);
}

uint64_t sub_10008C108()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10008C200(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + v12);

      v17 = sub_10006889C(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_10008C334(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_13:
      v11 = (*(a1 + 48) + 16 * (v8 | (v3 << 6)));
      v12 = *v11;
      v13 = v11[1];

      sub_10006889C(v12, v13);
      v15 = v14;

      if ((v15 & 1) == 0)
      {

        return;
      }

      type metadata accessor for Entity();
      sub_10008D960(&qword_10016E788, &type metadata accessor for Entity, &protocol conformance descriptor for Entity);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();

      if ((v16 & 1) == 0)
      {
        return;
      }
    }

    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v6 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10008C4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_10008D960(&qword_10016B020, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C704(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10008C794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100002BE4(&qword_10016B008, &qword_100110018);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10000C178(a1, &v21 - v13, &qword_10016B010, &qword_100110020);
  sub_10000C178(a2, &v14[v15], &qword_10016B010, &qword_100110020);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10000C178(v14, v10, &qword_10016B010, &qword_100110020);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10008D960(&qword_10016B020, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100009908(v14, &qword_10016B010, &qword_100110020);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100009908(v14, &qword_10016B008, &qword_100110018);
    v17 = 1;
    return v17 & 1;
  }

  sub_100009908(v14, &qword_10016B010, &qword_100110020);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10008CAB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = sub_10000BB74(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  v9 = type metadata accessor for Device();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  AuthKitCoordinator.init()();
  v10 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_cloudKitAccountCoordinator;
  type metadata accessor for CloudKitAccountCoordinator();
  *(v3 + v10) = CloudKitAccountCoordinator.__allocating_init()();
  DeviceCloudKitCoordinator.init()();
  *(v3 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads) = 0;
  ObservationRegistrar.init()();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = v3;

  sub_1000EE5F8(0, 0, v7, &unk_100115190, v12);

  dispatch thunk of NetworkStatusCoordinator.registerForConnected(file:handler:)();

  sub_100031904(0, &qword_10016E750, NSNotificationCenter_ptr);

  static NSNotificationCenter.register(_:file:handler:)();

  sub_100031904(0, &qword_10016E758, NSDistributedNotificationCenter_ptr);
  v13 = static NSNotificationName.devicesDidChange.getter();

  static NSNotificationCenter.register(_:file:handler:)();

  static NSNotificationCenter.register(_:file:handler:)();

  static NSNotificationCenter.register(_:file:handler:)();

  return v3;
}

uint64_t sub_10008CE3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_100085EF8(a1, v4, v5, v7, v6);
}

uint64_t sub_10008CEFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086530();
}

uint64_t sub_10008CF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_1000865C0();
}

uint64_t sub_10008D01C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086530();
}

uint64_t sub_10008D0AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086650();
}

uint64_t sub_10008D13C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086650();
}

uint64_t sub_10008D1CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086530();
}

uint64_t sub_10008D2BC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10008D32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008D3B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_100089674(a1, v4, v5, v7, v6);
}

uint64_t sub_10008D474(void (*a1)(void, __n128))
{
  swift_unknownObjectRelease();

  (a1)(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10008D4CC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000FA04;

  return sub_10008A2DC(a1, a2, v7, v6);
}

uint64_t sub_10008D580()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008D5B8()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008D684(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100024388;

  return sub_10008A7A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10008D77C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008D7B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FA04;

  return sub_10008C010(a1, v4);
}

void sub_10008D86C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads) = *(v0 + 24);
}

uint64_t sub_10008D8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008D960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10008D9B0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void sub_10008DA14(void *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v3 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = CKRecord.recordType.getter();
  v28 = v7;
  if (v10 == 0xD000000000000017 && 0x800000010011DCA0 == v11)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
LABEL_12:
      sub_10008E138();
      swift_allocError();
      swift_willThrow();

      return;
    }
  }

  v13 = [a1 encryptedValues];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 objectForKeyedSubscript:v14];
  swift_unknownObjectRelease();

  if (!v15)
  {
    goto LABEL_12;
  }

  v31 = v15;
  sub_100002BE4(&qword_10016E7B8, &qword_100115300);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = v29;
  v26 = v30;
  v16 = [a1 encryptedValues];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 objectForKeyedSubscript:v17];
  swift_unknownObjectRelease();

  if (!v18)
  {

    (*(v28 + 56))(v5, 1, 1, v6);
    goto LABEL_11;
  }

  v29 = v18;
  v19 = swift_dynamicCast();
  v20 = v28;
  (*(v28 + 56))(v5, v19 ^ 1u, 1, v6);
  if ((*(v20 + 48))(v5, 1, v6) == 1)
  {

LABEL_11:
    sub_1000842B8(v5);
    goto LABEL_12;
  }

  v21 = *(v20 + 32);
  v21(v9, v5, v6);
  v22 = type metadata accessor for SpatialGalleryFavorite(0);
  v23 = v27;
  v21(v27 + *(v22 + 20), v9, v6);
  v24 = v26;
  *v23 = v25;
  v23[1] = v24;
}

Class sub_10008DDD0()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  sub_100031904(0, &qword_10016E790, CKRecordZoneID_ptr);
  if (qword_100168F78 != -1)
  {
    swift_once();
  }

  v4 = qword_1001821C8;
  v5 = unk_1001821D0;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v4;
  v9._object = v5;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v9, v10).super.isa;
  v12._countAndFlagsBits = v3;
  v12._object = v2;
  String.append(_:)(v12);
  sub_100031904(0, &qword_10016E798, CKRecordID_ptr);
  v13._countAndFlagsBits = 0xD000000000000013;
  v13._object = 0x800000010011EC60;
  v14 = CKRecordID.init(recordName:zoneID:)(v13, isa).super.isa;
  sub_100031904(0, &unk_10016E7A0, CKRecord_ptr);
  v15 = v14;
  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x800000010011DCA0;
  v17 = CKRecord.init(recordType:recordID:)(v16, v15).super.isa;
  v18 = [(objc_class *)v17 encryptedValues];
  swift_getObjectType();
  v25 = &type metadata for String;
  v26 = &protocol witness table for String;
  v24[0] = v3;
  v24[1] = v2;

  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v19 = [(objc_class *)v17 encryptedValues];
  swift_getObjectType();
  v20 = *(type metadata accessor for SpatialGalleryFavorite(0) + 20);
  v21 = type metadata accessor for Date();
  v25 = v21;
  v26 = &protocol witness table for Date;
  v22 = sub_100020014(v24);
  (*(*(v21 - 8) + 16))(v22, v1 + v20, v21);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();

  return v17;
}

void sub_10008E06C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE800000000000000;
    v3 = 0x6174616472657375;
  }

  qword_1001821C8 = v3;
  unk_1001821D0 = v5;
}

unint64_t sub_10008E138()
{
  result = qword_10016E7B0;
  if (!qword_10016E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E7B0);
  }

  return result;
}

unint64_t sub_10008E1A0()
{
  result = qword_10016E7C0;
  if (!qword_10016E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E7C0);
  }

  return result;
}

uint64_t sub_10008E1F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_100169750, &qword_10010D1E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    sub_100002BE4(&qword_10016B278, &qword_100113A20);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000BF7C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000BF7C(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
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
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10000BF7C(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10008E4D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_100169750, &qword_10010D1E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000076F0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000BF7C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000BF7C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000BF7C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000BF7C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10008E798(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_100169750, &qword_10010D1E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000BF7C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000BF7C(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
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
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10000BF7C(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_10008EA60()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, "init");
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100182048);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Creating UTS Service", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return v1;
}

id sub_10008EBF8(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182048);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v85 = v10;
    *v8 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v85);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s - Fetching data from UTS %@", v8, 0x16u);
    sub_100009908(v9, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v10);
  }

  v15 = sub_10000B5DC(&off_100159C48);
  sub_100002BE4(&qword_10016E7F8, &qword_1001153D0);
  swift_arrayDestroy();
  v16 = WLKRestrictionsCountryCode();
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = WLKRestrictionsMaximumEffectiveMovieRanking();
    if (v21)
    {
      v22 = v21;
      v85 = v18;
      v86 = v20;

      v23._countAndFlagsBits = 58;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      *&v82[0] = [v22 integerValue];
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25 = v15;
      v26 = v85;
      v27 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v25;
      sub_10004E4A8(v26, v27, 29293, 0xE200000000000000, isUniquelyReferenced_nonNull_native);

      v15 = v85;
    }

    v29 = WLKRestrictionsMaximumEffectiveTVShowRanking();
    if (v29)
    {
      v30 = v29;
      v85 = v18;
      v86 = v20;
      v31._countAndFlagsBits = 58;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      *&v82[0] = [v30 integerValue];
      v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v32);

      v33 = v85;
      v34 = v86;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v15;
      sub_10004E4A8(v33, v34, 7501428, 0xE300000000000000, v35);

      v15 = v85;
    }

    else
    {
    }
  }

  v85 = 0x2F7365766C656873;
  v86 = 0xE800000000000000;
  v36 = [v5 description];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  sub_10008E798(v15);
  v41 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = String._bridgeToObjectiveC()();
  v44 = String._bridgeToObjectiveC()();
  v45 = [objc_opt_self() requestPropertiesWithEndpoint:v41 queryParameters:isa httpMethod:v43 caller:v44];

  v80 = v45;
  v46 = [objc_allocWithZone(WLKUTSNetworkRequestOperation) initWithRequestProperties:v45];
  v47 = [objc_opt_self() currentQueue];
  if (!v47)
  {
    v47 = [objc_allocWithZone(NSOperationQueue) init];
  }

  [v47 addOperation:v46];
  [v47 waitUntilAllOperationsAreFinished];
  v48 = [v46 responseDictionary];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = objc_opt_self();
  v50 = Dictionary._bridgeToObjectiveC()().super.isa;
  v85 = 0;
  v51 = [v49 dataWithJSONObject:v50 options:0 error:&v85];

  v52 = v85;
  if (v51)
  {
    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    sub_10003DC0C(v53, v55);
    v56 = sub_10008F98C(v53, v55);
    if (!v57)
    {
      v84[0] = v53;
      v84[1] = v55;
      sub_10003DC0C(v53, v55);
      sub_100002BE4(&qword_10016E800, &qword_1001153D8);
      if (swift_dynamicCast())
      {
        sub_10002BF6C(v82, &v85);
        sub_10000524C(&v85, v87);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10003DBB8(v53, v55);
          sub_10000524C(&v85, v87);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v58 = *(&v82[0] + 1);
          v59 = *&v82[0];
          sub_1000052E4(&v85);
LABEL_29:
          v85 = v59;
          v86 = v58;

          v79 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          v77 = [objc_opt_self() valueWithObject:v79 inContext:a1];
          result = swift_unknownObjectRelease();
          if (v77)
          {

            sub_10003DBB8(v53, v55);

            goto LABEL_31;
          }

          __break(1u);
          goto LABEL_33;
        }

        sub_1000052E4(&v85);
      }

      else
      {
        v83 = 0;
        memset(v82, 0, sizeof(v82));
        sub_100009908(v82, &qword_10016E808, &unk_1001153E0);
      }

      v56 = sub_10008F768(v53, v55);
    }

    v59 = v56;
    v58 = v57;
    sub_10003DBB8(v53, v55);
    goto LABEL_29;
  }

  v60 = v52;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v61 = v46;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = _typeName(_:qualified:)();
    v67 = sub_100006B44(v65, v66, v84);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    v68 = [v61 error];
    if (v68)
    {
      v69 = v68;
      swift_getErrorValue();
      v70 = Error.localizedDescription.getter();
      v72 = v71;

      v85 = 0;
      v86 = 0xE000000000000000;
      *&v82[0] = v70;
      *(&v82[0] + 1) = v72;
      _print_unlocked<A, B>(_:_:)();

      v73 = v85;
      v74 = v86;
    }

    else
    {
      v74 = 0xE300000000000000;
      v73 = 7104878;
    }

    v75 = sub_100006B44(v73, v74, v84);

    *(v64 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v62, v63, "%s - Error fetching data from UTS %s", v64, 0x16u);
    swift_arrayDestroy();
  }

  v85 = 0;
  v86 = 0xE000000000000000;
  v76 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v77 = [objc_opt_self() valueWithObject:v76 inContext:a1];
  result = swift_unknownObjectRelease();
  if (v77)
  {

LABEL_31:

    return v77;
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_10008F6F4(uint64_t a1, uint64_t a2)
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

  sub_100002BE4(&qword_100169580, qword_10010CDC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10008F768(uint64_t a1, unint64_t a2)
{
  sub_10003DC0C(a1, a2);
  sub_10008F810(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_10008F7D4@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_10008F810(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_10003DBB8(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_10008F6F4(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_10003DBB8(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10008F98C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_10008FB4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_10008FC28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TetsuoAppMainView(uint64_t a1)
{
  result = qword_10016E868;
  if (!qword_10016E868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008FD24(uint64_t a1)
{
  sub_100025958(319);
  if (v1 <= 0x3F)
  {
    sub_1000719BC(319);
    if (v2 <= 0x3F)
    {
      sub_10008FDF0(319);
      if (v3 <= 0x3F)
      {
        sub_10008FE48(319);
        if (v4 <= 0x3F)
        {
          sub_100071908();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10008FDF0(uint64_t a1)
{
  if (!qword_10016E878)
  {
    type metadata accessor for AppState(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10016E878);
    }
  }
}

void sub_10008FE48(uint64_t a1)
{
  if (!qword_10016E880)
  {
    sub_10000459C(&qword_100170710, &qword_10011A170);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &qword_10016E880);
    }
  }
}

void *sub_10008FEC8(uint64_t a1)
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    result = static UserDefaultUtilities.daemonUserDefaults.getter();
    if (!result)
    {
      return result;
    }

    v3 = result;
    static UserDefaultUtilities.SharedConstants.supressDebugButton.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100009908(v8, &qword_100169A38, &qword_10010D460);
      static UserDefaultUtilities.SharedConstants.supressDebugButton.getter();
      v6 = String._bridgeToObjectiveC()();

      v7 = [v3 BOOLForKey:v6];

      return (v7 ^ 1);
    }

    memset(v8, 0, sizeof(v8));
    sub_100009908(v8, &qword_100169A38, &qword_10010D460);
  }

  return 0;
}

uint64_t sub_100090008@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v17 = sub_100002BE4(&qword_10016E8C0, &qword_100115470);
  __chkstk_darwin(v17);
  v3 = &v16 - v2;
  v4 = sub_100002BE4(&qword_10016E8C8, &qword_100115478);
  __chkstk_darwin(v4);
  v6 = (&v16 - v5);
  v16 = v1;
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager);
    swift_getKeyPath();
    v19 = v8;
    sub_100091DB0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    v9 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v8) = v9[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI];

    if ((v8 & 1) != 0 && (v10 = *(v7 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager), swift_getKeyPath(), v19 = v10, v11 = v10, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v12 = *&v11[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel], , v11, v12))
    {
      type metadata accessor for AppDelegate(0);
      sub_100091DB0(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
      v13 = EnvironmentObject.init()();
      *v6 = v12;
      v6[1] = v13;
      v6[2] = v14;
      swift_storeEnumTagMultiPayload();
      sub_100091894();
      sub_1000918E8();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      sub_100090350(v3);
      sub_100091824(v3, v6);
      swift_storeEnumTagMultiPayload();
      sub_100091894();
      sub_1000918E8();
      _ConditionalContent<>.init(storage:)();
      return sub_1000919CC(v3);
    }
  }

  else
  {
    type metadata accessor for SceneDelegate();
    sub_100091DB0(&qword_10016D538, type metadata accessor for SceneDelegate, &unk_100119300);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100090350@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  __chkstk_darwin(v3);
  v5 = (&v30 - v4);
  started = type metadata accessor for JetStartUpCoordinator();
  v35 = *(started - 8);
  v36 = started;
  __chkstk_darwin(started);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002BE4(&qword_10016E908, &qword_1001154E0);
  v33 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = *(v2 + 40);

  if ((v17 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = v8;
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v32 + 8))(v10, v31);
  }

  type metadata accessor for AppState(0);
  sub_100091DB0(&qword_10016E910, type metadata accessor for AppState, &unk_10011A824);
  Bindable<A>.init(wrappedValue:)();
  v19 = *v2;
  if (*v2)
  {
    type metadata accessor for TetsuoAppMainView(0);
    v20 = v19;
    Binding.projectedValue.getter();
    v21 = v37;
    sub_1000F4BD8(v5, v37);

    sub_100009908(v5, &unk_100170700, &unk_1001153F0);
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v22 = *(v33 + 1);
    v23 = v22(v14, v11);
    v38 = v41;
    v39 = v42;
    v40 = v43;
    __chkstk_darwin(v23);
    *(&v30 - 2) = v21;
    *(&v30 - 1) = v2;
    v33 = v16;
    sub_100002BE4(&qword_10016E918, &qword_100115510);
    sub_100091A4C();
    sub_100012C48(&qword_10016E928, &qword_10016E918, &qword_100115510, &protocol conformance descriptor for _TupleTabContent<A, B>);
    v24 = v34;
    TabView.init<A>(selection:content:)();
    v25 = static Color.accentColor.getter();
    KeyPath = swift_getKeyPath();
    v41 = v25;

    v27 = AnyShapeStyle.init<A>(_:)();
    v22(v33, v11);

    v28 = (v24 + *(sub_100002BE4(&qword_10016E8C0, &qword_100115470) + 36));
    *v28 = KeyPath;
    v28[1] = v27;
    return (*(v35 + 8))(v37, v36);
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_100091DB0(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000908F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v35 = a3;
  v4 = sub_100002BE4(&qword_10016E930, &qword_100115548);
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v26 = &v26 - v5;
  v6 = sub_100002BE4(&qword_10016E938, &qword_100115550);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - v7;
  v8 = sub_100002BE4(&qword_10016E940, &qword_100115558);
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v32 = sub_100002BE4(&qword_10016E948, &qword_100115560);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v26 - v11;
  v39 = 0;
  v36 = a1;
  sub_100002BE4(&qword_10016E950, &qword_100115568);
  sub_100002BE4(&qword_10016E958, &qword_100115570);
  sub_100091A4C();
  v13 = sub_10000459C(&qword_10016E960, &qword_100115578);
  v14 = sub_100091B00();
  v37 = v13;
  v38 = v14;
  v15 = 1;
  swift_getOpaqueTypeConformance2();
  sub_100012C48(&qword_10016E990, &qword_10016E958, &qword_100115570, &protocol conformance descriptor for Label<A, B>);
  Tab<>.init(value:content:label:)();
  v39 = 1;
  sub_100002BE4(&qword_10016E998, &qword_100115588);
  v16 = sub_10000459C(&qword_10016E9A0, &qword_100115590);
  v17 = sub_100091CC8();
  v37 = v16;
  v38 = v17;
  v18 = v10;
  v19 = v27;
  swift_getOpaqueTypeConformance2();
  v20 = v28;
  v21 = Tab<>.init(value:content:label:)();
  v22 = sub_10008FEC8(v21);
  v23 = v29;
  if (v22)
  {
    LOBYTE(v37) = 2;
    sub_100091DF8();
    v24 = v26;
    Tab<>.init(value:content:label:)();
    (*(v20 + 32))(v19, v24, v23);
    v15 = 0;
  }

  (*(v20 + 56))(v19, v15, 1, v23);
  sub_100091414(v18, v19, v35);
  sub_100009908(v19, &qword_10016E938, &qword_100115550);
  (*(v33 + 8))(v18, v34);
  return (*(v30 + 8))(v12, v32);
}

uint64_t sub_100090E00(uint64_t a1)
{
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002BE4(&qword_10016E960, &qword_100115578);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 16))(v8, a1, started);
  v10 = &v8[*(type metadata accessor for DiscoveryFeedView(0) + 20)];
  v18 = 0;
  State.init(wrappedValue:)();
  v11 = *(&v17[0] + 1);
  *v10 = v17[0];
  *(v10 + 1) = v11;
  v12 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  *&v17[0] = v12;
  v14 = AnyShapeStyle.init<A>(_:)();
  v15 = &v8[*(v6 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  memset(v17, 0, sizeof(v17));
  static AutomationSemantics.page(name:id:)();
  sub_100009908(v17, &qword_100169A38, &qword_10010D460);
  sub_100091B00();
  View.automationSemantics(_:)();
  (*(v3 + 8))(v5, v2);
  return sub_100009908(v8, &qword_10016E960, &qword_100115578);
}

uint64_t sub_100091084()
{
  v0 = type metadata accessor for AutomationSemantics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002BE4(&qword_10016E9A0, &qword_100115590);
  __chkstk_darwin(v4);
  v6 = v12 - v5;
  sub_1000713E8(v12 - v5);
  v7 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  *&v12[0] = v7;
  v9 = AnyShapeStyle.init<A>(_:)();
  v10 = &v6[*(v4 + 36)];
  *v10 = KeyPath;
  v10[1] = v9;
  memset(v12, 0, sizeof(v12));
  static AutomationSemantics.page(name:id:)();
  sub_100009908(v12, &qword_100169A38, &qword_10010D460);
  sub_100091CC8();
  View.automationSemantics(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_100009908(v6, &qword_10016E9A0, &qword_100115590);
}

__n128 sub_1000912AC@<Q0>(uint64_t a1@<X8>)
{
  sub_1000B6808(0, 2, v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v6[8];
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100091334(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() mainBundle];
  v11._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v11);

  sub_100012928();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100091414@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v31 = a3;
  v3 = sub_100002BE4(&qword_10016E930, &qword_100115548);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v26 - v5;
  v6 = sub_100002BE4(&qword_10016E938, &qword_100115550);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_100002BE4(&qword_10016E9C0, &qword_100115598);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v30 = sub_100002BE4(&qword_10016E9C8, &qword_1001155A0);
  v12 = *(v30 - 8);
  __chkstk_darwin(v30);
  v14 = &v26 - v13;
  v27 = sub_100002BE4(&qword_10016E9D0, &qword_1001155A8);
  v15 = *(v27 - 8);
  __chkstk_darwin(v27);
  v17 = &v26 - v16;
  sub_100002BE4(&qword_10016E948, &qword_100115560);
  sub_100091E4C();
  dispatch thunk of TabContent._identifiedView.getter();
  sub_100002BE4(&qword_10016E940, &qword_100115558);
  sub_100091F54();
  dispatch thunk of TabContent._identifiedView.getter();
  sub_10009205C(v29, v8);
  v18 = 1;
  if ((*(v4 + 48))(v8, 1, v3) != 1)
  {
    v19 = v26;
    (*(v4 + 32))(v26, v8, v3);
    sub_10009213C();
    dispatch thunk of TabContent._identifiedView.getter();
    (*(v4 + 8))(v19, v3);
    v18 = 0;
  }

  v20 = sub_100002BE4(&qword_10016E9E8, &qword_1001155B0);
  (*(*(v20 - 8) + 56))(v11, v18, 1, v20);
  v21 = sub_100002BE4(&qword_10016E9F0, &unk_1001155B8);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  v24 = v31;
  (*(v15 + 32))(v31, v17, v27);
  (*(v12 + 32))(v24 + v22, v14, v30);
  return sub_1000920CC(v11, v24 + v23);
}

uint64_t sub_100091824(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016E8C0, &qword_100115470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100091894()
{
  result = qword_10016E8D8;
  if (!qword_10016E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E8D8);
  }

  return result;
}

unint64_t sub_1000918E8()
{
  result = qword_10016E8E0;
  if (!qword_10016E8E0)
  {
    sub_10000459C(&qword_10016E8C0, &qword_100115470);
    sub_100012C48(&qword_10016E8E8, &qword_10016E8F0, &qword_1001154A8, &protocol conformance descriptor for TabView<A, B>);
    sub_100012C48(&qword_10016E8F8, &qword_10016E900, &qword_1001154B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E8E0);
  }

  return result;
}

uint64_t sub_1000919CC(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016E8C0, &qword_100115470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100091A4C()
{
  result = qword_10016E920;
  if (!qword_10016E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E920);
  }

  return result;
}

uint64_t sub_100091AA0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100091B00()
{
  result = qword_10016E968;
  if (!qword_10016E968)
  {
    sub_10000459C(&qword_10016E960, &qword_100115578);
    sub_100091BB8();
    sub_100012C48(&qword_10016E8F8, &qword_10016E900, &qword_1001154B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E968);
  }

  return result;
}

unint64_t sub_100091BB8()
{
  result = qword_10016E970;
  if (!qword_10016E970)
  {
    sub_10000459C(&qword_10016E978, &qword_100115580);
    sub_100091DB0(&qword_10016E980, type metadata accessor for DiscoveryFeedView, &unk_100117E64);
    sub_100091C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E970);
  }

  return result;
}

unint64_t sub_100091C74()
{
  result = qword_10016E988;
  if (!qword_10016E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E988);
  }

  return result;
}

unint64_t sub_100091CC8()
{
  result = qword_10016E9A8;
  if (!qword_10016E9A8)
  {
    sub_10000459C(&qword_10016E9A0, &qword_100115590);
    sub_100091DB0(&qword_10016E9B0, type metadata accessor for DeviceTab, &unk_10011399C);
    sub_100012C48(&qword_10016E8F8, &qword_10016E900, &qword_1001154B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9A8);
  }

  return result;
}

uint64_t sub_100091DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100091DF8()
{
  result = qword_10016E9B8;
  if (!qword_10016E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9B8);
  }

  return result;
}

unint64_t sub_100091E4C()
{
  result = qword_10016E9D8;
  if (!qword_10016E9D8)
  {
    sub_10000459C(&qword_10016E948, &qword_100115560);
    sub_100091A4C();
    sub_10000459C(&qword_10016E960, &qword_100115578);
    sub_100091B00();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016E990, &qword_10016E958, &qword_100115570, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9D8);
  }

  return result;
}

unint64_t sub_100091F54()
{
  result = qword_10016E9E0;
  if (!qword_10016E9E0)
  {
    sub_10000459C(&qword_10016E940, &qword_100115558);
    sub_100091A4C();
    sub_10000459C(&qword_10016E9A0, &qword_100115590);
    sub_100091CC8();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016E990, &qword_10016E958, &qword_100115570, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9E0);
  }

  return result;
}

uint64_t sub_10009205C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016E938, &qword_100115550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000920CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016E9C0, &qword_100115598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009213C()
{
  result = qword_10016E9F8;
  if (!qword_10016E9F8)
  {
    sub_10000459C(&qword_10016E930, &qword_100115548);
    sub_100091A4C();
    sub_100091DF8();
    sub_100012C48(&qword_10016E990, &qword_10016E958, &qword_100115570, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9F8);
  }

  return result;
}

unint64_t sub_10009220C()
{
  result = qword_10016EA00;
  if (!qword_10016EA00)
  {
    sub_10000459C(&qword_10016EA08, &qword_1001155C8);
    sub_100091894();
    sub_1000918E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EA00);
  }

  return result;
}

__n128 sub_10009229C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000922B0(uint64_t a1, int a2)
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

uint64_t sub_1000922F8(uint64_t result, int a2, int a3)
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

void sub_100092364(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  sub_100012928();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v29 = a3;
  if (a3 <= 1u)
  {
    if (!a3)
    {
      static Font.largeTitle.getter();
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (a3 == 2)
  {
LABEL_5:
    static Font.title2.getter();
    goto LABEL_7;
  }

  static Font.footnote.getter();
LABEL_7:
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  sub_10001297C(v6, v8, v10 & 1);

  if (v29 == 3)
  {
    static Font.Weight.light.getter();
  }

  else if (v29 == 2)
  {
    static Font.Weight.regular.getter();
  }

  else
  {
    static Font.Weight.bold.getter();
  }

  v16 = Text.fontWeight(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10001297C(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v24 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = v20 & 1;
  *(a4 + 24) = v22;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 0;
  *(a4 + 48) = v24;
  *(a4 + 56) = v25;
  *(a4 + 64) = v26;
  *(a4 + 72) = v27;
  *(a4 + 80) = v28;
  *(a4 + 88) = 0;
}

double sub_100092530@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = static HorizontalAlignment.leading.getter();
  v18 = 1;
  sub_100092364(v4, &v12);
  v21 = v14;
  v22 = v15;
  v23[0] = v16[0];
  *(v23 + 9) = *(v16 + 9);
  v19 = v12;
  v20 = v13;
  *(v25 + 9) = *(v16 + 9);
  v24[2] = v14;
  v24[3] = v15;
  v25[0] = v16[0];
  v24[0] = v12;
  v24[1] = v13;
  sub_100092664(&v19, &v11);
  sub_1000926D4(v24);
  *&v17[39] = v21;
  *&v17[55] = v22;
  *&v17[71] = v23[0];
  *&v17[80] = *(v23 + 9);
  *&v17[7] = v19;
  *&v17[23] = v20;
  v6 = *&v17[48];
  *(a2 + 49) = *&v17[32];
  *(a2 + 65) = v6;
  v7 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v7;
  result = *&v17[16];
  v9 = *v17;
  *(a2 + 33) = *&v17[16];
  v10 = v18;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 17) = v9;
  return result;
}

uint64_t sub_100092664(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016EA10, &qword_100115660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000926D4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016EA10, &qword_100115660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100092758()
{
  result = qword_10016EA18;
  if (!qword_10016EA18)
  {
    sub_10000459C(&qword_10016EA20, qword_1001156C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EA18);
  }

  return result;
}

unint64_t sub_1000927C0()
{
  result = qword_10016EA28;
  if (!qword_10016EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EA28);
  }

  return result;
}

uint64_t sub_100092828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseComponentModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000928A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseComponentModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EpicShowcaseView(uint64_t a1)
{
  result = qword_10016EA90;
  if (!qword_10016EA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100092964(uint64_t a1)
{
  result = type metadata accessor for EpicShowcaseComponentModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000929EC(uint64_t a1)
{
  static Color.white.getter();
  v1 = Color.opacity(_:)();

  qword_10016EA30 = v1;
}

uint64_t sub_100092A34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v25 = type metadata accessor for _Glass();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100002BE4(&qword_10016EAC8, &qword_100115798);
  __chkstk_darwin(v9);
  v11 = (&v24 - v10);
  *v11 = static Alignment.center.getter();
  v11[1] = v12;
  v13 = v11 + *(sub_100002BE4(&qword_10016EAD0, &qword_1001157A0) + 44);
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = sub_100002BE4(&qword_10016EAD8, &qword_1001157A8);
  sub_10009340C(v2, &v13[*(v14 + 44)]);
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = v11 + *(v9 + 36);
  sub_100092D3C(v2, v18);
  v19 = (v18 + *(sub_100002BE4(&qword_10016EAE0, &qword_1001157B0) + 36));
  *v19 = v15;
  v19[1] = v17;
  v20 = *(v6 + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(&v8->i8[v20], v21, v22);
  *v8 = vdupq_n_s64(0x4040000000000000uLL);
  static _Glass.regular.getter();
  sub_100096DE0();
  sub_100097900(&qword_10016B858, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  View._glassEffect<A>(_:in:)();
  (*(v3 + 8))(v5, v25);
  sub_100096EC4(v8, &type metadata accessor for RoundedRectangle);
  return sub_100009908(v11, &qword_10016EAC8, &qword_100115798);
}

uint64_t sub_100092D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18[0] = type metadata accessor for AutomationSemantics();
  v7 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002BE4(&qword_10016EB08, &unk_1001157C0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  sub_100093018(a1, v18 - v11);
  v13 = (a1 + *(type metadata accessor for EpicShowcaseComponentModel(0) + 36));
  v14 = v13[1];
  *v6 = *v13;
  v6[1] = v14;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10010D3B0;
  sub_100097044(v6, v16 + v15, type metadata accessor for AutomationUtilities.AutomationAttributeType);

  sub_1000FCC48(1, v16, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100096EC4(v6, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  sub_100096F24();
  View.automationSemantics(_:)();
  (*(v7 + 8))(v9, v18[0]);
  return sub_100009908(v12, &qword_10016EB08, &unk_1001157C0);
}

uint64_t sub_100093018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EpicShowcaseView(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100002BE4(&qword_10016EB20, &unk_1001157D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = type metadata accessor for EpicShowcaseComponentModel(0);
  memcpy(v30, (a1 + *(v16 + 44)), 0x150uLL);
  v17 = sub_100096FD4(v30);
  v18 = 1;
  if (v17 != 1 && v30[28])
  {
    v24 = v6;
    v25 = v9;
    sub_100096FF8();
    v26 = a2;
    sub_10000C178(&v30[24], &v29, &qword_10016EB30, &qword_1001157E0);
    static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)();
    v6 = v24;
    sub_100009908(&v30[24], &qword_10016EB30, &qword_1001157E0);
    sub_100097044(v28, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EpicShowcaseView);
    v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v20 = swift_allocObject();
    sub_1000972E4(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    sub_10000C178(v15, v13, &qword_10016BA40, &qword_100110FC0);
    v21 = swift_allocObject();
    v21[2] = sub_100096654;
    v21[3] = 0;
    v21[4] = sub_100097348;
    v21[5] = v20;
    sub_100002BE4(&qword_10016EB38, &qword_1001157E8);
    sub_100097840();
    v22 = v25;
    a2 = v26;
    AsyncImage.init(url:scale:transaction:content:)();
    sub_100009908(v15, &qword_10016BA40, &qword_100110FC0);
    (*(v7 + 32))(a2, v22, v6);
    v18 = 0;
  }

  return (*(v7 + 56))(a2, v18, 1, v6);
}

uint64_t sub_10009340C@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v58 = a3;
  v57 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  __chkstk_darwin(v57);
  v5 = &v52 - v4;
  v6 = sub_100002BE4(&qword_10016B958, &qword_100110EA0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v52 - v11;
  v13 = sub_100002BE4(&qword_10016EB58, &qword_100115800);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v53 = sub_100002BE4(&qword_10016EB60, &qword_100115808);
  v16 = *(v53 - 8);
  v17 = __chkstk_darwin(v53);
  v56 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v55 = &v52 - v19;
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v20 = sub_100002BE4(&qword_10016EB68, &qword_100115810);
  sub_100093A54(a1, &v15[*(v20 + 44)]);
  v21 = static Edge.Set.horizontal.getter();
  v22 = &v15[*(sub_100002BE4(&qword_10016EB70, &qword_100115818) + 36)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  v23 = static Alignment.center.getter();
  v59 = v24;
  v60 = v23;
  v54 = v13;
  v25 = &v15[*(v13 + 36)];
  *v25 = static HorizontalAlignment.center.getter();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v26 = &v25[*(sub_100002BE4(&qword_10016B968, &qword_100110EB0) + 44)];
  static Material.thin.getter();
  *&v12[*(sub_100002BE4(&qword_10016B970, &qword_100110EB8) + 56)] = 256;
  *&v12[*(sub_100002BE4(&qword_10016B978, &qword_100110EC0) + 36)] = 0x4004000000000000;
  *&v12[*(v7 + 44)] = 256;
  sub_10000C178(v12, v10, &qword_10016B958, &qword_100110EA0);
  *v26 = 0;
  v26[8] = 1;
  v27 = sub_100002BE4(&qword_10016B980, &qword_100110EC8);
  sub_10000C178(v10, &v26[*(v27 + 48)], &qword_10016B958, &qword_100110EA0);
  sub_100009908(v12, &qword_10016B958, &qword_100110EA0);
  sub_100009908(v10, &qword_10016B958, &qword_100110EA0);
  LOBYTE(v12) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v25[*(sub_100002BE4(&qword_10016B988, &qword_100110ED0) + 36)];
  *v36 = v12;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = &v25[*(sub_100002BE4(&qword_10016B960, &qword_100110EA8) + 36)];
  v61 = 0;
  State.init(wrappedValue:)();
  v38 = v63;
  *v37 = v62;
  *(v37 + 1) = v38;
  v39 = *(type metadata accessor for BlurViewFadeModifier(0) + 20);
  *&v37[v39] = swift_getKeyPath();
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  swift_storeEnumTagMultiPayload();
  v40 = &v25[*(sub_100002BE4(&qword_10016EB78, &qword_100115858) + 36)];
  v41 = v59;
  *v40 = v60;
  v40[1] = v41;
  v42 = enum case for DynamicTypeSize.accessibility2(_:);
  v43 = type metadata accessor for DynamicTypeSize();
  (*(*(v43 - 8) + 104))(v5, v42, v43);
  sub_100097900(&qword_100169A78, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100097948();
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    v45 = v55;
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v5, &qword_100169A10, &qword_10010D450);
    sub_100009908(v15, &qword_10016EB58, &qword_100115800);
    v46 = *(v16 + 16);
    v47 = v56;
    v48 = v53;
    v46(v56, v45, v53);
    v49 = v58;
    *v58 = 0;
    *(v49 + 8) = 1;
    v50 = sub_100002BE4(&qword_10016EBA8, &qword_100115868);
    v46(v49 + *(v50 + 48), v47, v48);
    v51 = *(v16 + 8);
    v51(v45, v48);
    return (v51)(v47, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100093A54@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v71 = a3;
  v69 = sub_100002BE4(&qword_10016EBB0, &qword_100115870);
  v4 = *(v69 - 8);
  __chkstk_darwin(v69);
  v6 = &v67 - v5;
  v7 = sub_100002BE4(&qword_10016EBB8, &qword_100115878);
  v8 = __chkstk_darwin(v7 - 8);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v73 = &v67 - v11;
  v12 = __chkstk_darwin(v10);
  v81 = &v67 - v13;
  __chkstk_darwin(v12);
  v80 = &v67 - v14;
  v15 = sub_100002BE4(&qword_10016EBC0, &qword_100115880);
  v16 = __chkstk_darwin(v15);
  v72 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v67 - v18;
  v20 = sub_100002BE4(&qword_10016EBC8, &qword_100115888);
  v21 = __chkstk_darwin(v20 - 8);
  v70 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v67 - v23;
  v25 = type metadata accessor for EpicShowcaseComponentModel(0);
  v26 = (a1 + v25[13]);
  v79 = v26[1];
  if (v79)
  {
    v78 = *v26;
    v77 = static VerticalAlignment.center.getter();

    v27 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    LOBYTE(v88[0]) = 0;
    LOBYTE(v82) = 0;
    v75 = 0;
    v76 = v27;
  }

  else
  {
    v77 = 0;
    v78 = 0;
    v76 = 0;
    v75 = 0;
    v29 = 0;
    v31 = 0;
    v33 = 0;
    v35 = 0;
  }

  *v24 = static VerticalAlignment.center.getter();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v36 = sub_100002BE4(&qword_10016EBD0, &qword_100115890);
  v37 = v24;
  sub_10009425C(a1, &v24[*(v36 + 44)]);
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v38 = sub_100002BE4(&qword_10016EBD8, &qword_100115898);
  sub_1000949AC(a1, &v19[*(v38 + 44)]);
  v39 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v40 = v19;
  v41 = &v19[*(v15 + 36)];
  *v41 = v39;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  if (*(a1 + v25[6] + 8))
  {
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v46 = sub_100002BE4(&qword_10016EBF0, &qword_1001158B0);
    sub_100095A78(a1, &v6[*(v46 + 44)]);
    v47 = v80;
    sub_100097AB8(v6, v80);
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v47 = v80;
  }

  v49 = v69;
  v50 = *(v4 + 56);
  v51 = 1;
  v50(v47, v48, 1, v69);
  if (*(a1 + v25[7] + 8))
  {
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v52 = sub_100002BE4(&qword_10016EBF0, &qword_1001158B0);
    sub_100096030(&v6[*(v52 + 44)]);
    v53 = v81;
    sub_100097AB8(v6, v81);
    v51 = 0;
  }

  else
  {
    v53 = v81;
  }

  v50(v53, v51, 1, v49);
  v68 = v37;
  v54 = v37;
  v55 = v70;
  sub_10000C178(v54, v70, &qword_10016EBC8, &qword_100115888);
  v56 = v40;
  v57 = v72;
  sub_10000C178(v40, v72, &qword_10016EBC0, &qword_100115880);
  v58 = v80;
  v59 = v73;
  sub_10000C178(v80, v73, &qword_10016EBB8, &qword_100115878);
  v60 = v53;
  v61 = v74;
  sub_10000C178(v60, v74, &qword_10016EBB8, &qword_100115878);
  v82 = v77;
  *&v83 = v75;
  *(&v83 + 1) = v78;
  *&v84 = v79;
  *(&v84 + 1) = v76;
  *&v85 = v29;
  *(&v85 + 1) = v31;
  *&v86 = v33;
  *(&v86 + 1) = v35;
  v87 = 0;
  v62 = v71;
  *(v71 + 80) = 0;
  v63 = v85;
  v62[2] = v84;
  v62[3] = v63;
  v62[4] = v86;
  v64 = v83;
  *v62 = v82;
  v62[1] = v64;
  v65 = sub_100002BE4(&qword_10016EBE0, &qword_1001158A0);
  sub_10000C178(v55, v62 + v65[12], &qword_10016EBC8, &qword_100115888);
  sub_10000C178(v57, v62 + v65[16], &qword_10016EBC0, &qword_100115880);
  sub_10000C178(v59, v62 + v65[20], &qword_10016EBB8, &qword_100115878);
  sub_10000C178(v61, v62 + v65[24], &qword_10016EBB8, &qword_100115878);
  sub_10000C178(&v82, v88, &qword_10016EBE8, &qword_1001158A8);
  sub_100009908(v81, &qword_10016EBB8, &qword_100115878);
  sub_100009908(v58, &qword_10016EBB8, &qword_100115878);
  sub_100009908(v56, &qword_10016EBC0, &qword_100115880);
  sub_100009908(v68, &qword_10016EBC8, &qword_100115888);
  sub_100009908(v61, &qword_10016EBB8, &qword_100115878);
  sub_100009908(v59, &qword_10016EBB8, &qword_100115878);
  sub_100009908(v57, &qword_10016EBC0, &qword_100115880);
  sub_100009908(v55, &qword_10016EBC8, &qword_100115888);
  v88[0] = v77;
  v88[1] = 0;
  v88[2] = v75;
  v88[3] = v78;
  v88[4] = v79;
  v88[5] = v76;
  v88[6] = v29;
  v88[7] = v31;
  v88[8] = v33;
  v88[9] = v35;
  v89 = 0;
  return sub_100009908(v88, &qword_10016EBE8, &qword_1001158A8);
}

uint64_t sub_10009425C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v30 = type metadata accessor for AutomationSemantics();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002BE4(&qword_10016ED20, &qword_1001159A8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v8 = sub_100002BE4(&qword_10016ED28, &qword_1001159B0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = sub_100002BE4(&qword_10016ED30, &qword_1001159B8);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_100094694(v28, v7);
  v18 = &v7[*(v5 + 44)];
  *v18 = 0;
  *(v18 + 4) = 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001D504(v7, v10, &qword_10016ED20, &qword_1001159A8);
  v19 = &v10[*(v8 + 36)];
  v20 = *(&v33[7] + 8);
  *(v19 + 4) = *(&v33[6] + 8);
  *(v19 + 5) = v20;
  *(v19 + 6) = *(&v33[8] + 8);
  v21 = *(&v33[3] + 8);
  *v19 = *(&v33[2] + 8);
  *(v19 + 1) = v21;
  v22 = *(&v33[5] + 8);
  *(v19 + 2) = *(&v33[4] + 8);
  *(v19 + 3) = v22;
  memset(v33, 0, 32);
  memset(v32, 0, sizeof(v32));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v32, &qword_100169A38, &qword_10010D460);
  sub_100009908(v33, &qword_100169A38, &qword_10010D460);
  sub_100098260();
  View.automationSemantics(_:)();
  (*(v29 + 8))(v3, v30);
  sub_100009908(v10, &qword_10016ED28, &qword_1001159B0);
  v23 = *(v12 + 16);
  v23(v15, v17, v11);
  v24 = v31;
  v23(v31, v15, v11);
  v25 = &v24[*(sub_100002BE4(&qword_10016ED68, &qword_1001159D0) + 48)];
  v26 = *(v12 + 8);
  v26(v17, v11);
  *v25 = 0;
  v25[8] = 0;
  return (v26)(v15, v11);
}

uint64_t sub_100094694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016ED60, &qword_1001159C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = type metadata accessor for EpicShowcaseComponentModel(0);
  memcpy(v21, (a1 + *(v14 + 44)), 0x150uLL);
  v15 = sub_100096FD4(v21);
  v16 = 1;
  if (v15 != 1 && v21[12])
  {
    sub_100096FF8();
    v19 = a2;
    sub_10000C178(&v21[8], &v20, &qword_10016EB30, &qword_1001157E0);
    static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)();
    sub_100009908(&v21[8], &qword_10016EB30, &qword_1001157E0);
    sub_10000C178(v13, v11, &qword_10016BA40, &qword_100110FC0);
    v17 = swift_allocObject();
    v17[2] = sub_100096540;
    v17[3] = 0;
    v17[4] = FeatureEligibilityState.rawValue.getter;
    v17[5] = 0;
    sub_100002BE4(&qword_10016ED70, &qword_1001159D8);
    sub_1000984A0();
    a2 = v19;
    AsyncImage.init(url:scale:transaction:content:)();
    sub_100009908(v13, &qword_10016BA40, &qword_100110FC0);
    (*(v5 + 32))(a2, v7, v4);
    v16 = 0;
  }

  return (*(v5 + 56))(a2, v16, 1, v4);
}

uint64_t sub_1000949AC@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v60 = a1;
  v70 = a2;
  v66 = sub_100002BE4(&qword_10016EC10, &qword_100115908);
  __chkstk_darwin(v66);
  v4 = &v59 - v3;
  v69 = sub_100002BE4(&qword_10016EC38, &qword_100115918);
  v68 = *(v69 - 8);
  v5 = __chkstk_darwin(v69);
  v67 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v59 - v7;
  v8 = type metadata accessor for AutomationSemantics();
  v62 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002BE4(&qword_10016EC40, &qword_100115920);
  __chkstk_darwin(v12);
  v14 = &v59 - v13;
  v65 = sub_100002BE4(&qword_10016EC48, &qword_100115928);
  v73 = *(v65 - 8);
  v15 = __chkstk_darwin(v65);
  v64 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v59 - v17;
  sub_10009510C(a1, v14);
  v18 = v14 + *(sub_100002BE4(&qword_10016EC50, &qword_100115930) + 36);
  *v18 = 0;
  *(v18 + 8) = 1;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = (v14 + *(sub_100002BE4(&qword_10016EC58, &qword_100115938) + 36));
  v20 = v79;
  *v19 = v78;
  v19[1] = v20;
  v19[2] = v80;
  v21 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v22 = v14 + *(v12 + 36);
  *v22 = v21;
  *(v22 + 8) = v23;
  *(v22 + 16) = v24;
  *(v22 + 24) = v25;
  *(v22 + 32) = v26;
  *(v22 + 40) = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(&v74, &qword_100169A38, &qword_10010D460);
  sub_100009908(&v76, &qword_100169A38, &qword_10010D460);
  sub_100097D00();
  v59 = v11;
  View.automationSemantics(_:)();
  v27 = *(v9 + 8);
  v61 = v9 + 8;
  v63 = v27;
  v27(v11, v8);
  sub_100009908(v14, &qword_10016EC40, &qword_100115920);
  *&v76 = sub_100095860(v60);
  *(&v76 + 1) = v28;
  sub_100012928();
  v29 = Text.init<A>(_:)();
  v31 = v30;
  LOBYTE(v14) = v32;
  static Font.subheadline.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_10001297C(v29, v31, v14 & 1);

  v40 = *(sub_100002BE4(&qword_10016B9F8, &qword_1001158D0) + 36);
  v41 = enum case for BlendMode.plusLighter(_:);
  v42 = type metadata accessor for BlendMode();
  (*(*(v42 - 8) + 104))(&v4[v40], v41, v42);
  *v4 = v33;
  *(v4 + 1) = v35;
  v4[16] = v37 & 1;
  *(v4 + 3) = v39;
  KeyPath = swift_getKeyPath();
  v44 = &v4[*(v66 + 36)];
  *v44 = KeyPath;
  v44[8] = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v45 = v59;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(&v74, &qword_100169A38, &qword_10010D460);
  sub_100009908(&v76, &qword_100169A38, &qword_10010D460);
  sub_100097C48();
  v46 = v72;
  View.automationSemantics(_:)();
  v63(v45, v62);
  sub_100009908(v4, &qword_10016EC10, &qword_100115908);
  v47 = *(v73 + 16);
  v48 = v64;
  v49 = v65;
  v47(v64, v71, v65);
  v50 = v68;
  v51 = *(v68 + 16);
  v52 = v67;
  v53 = v69;
  v51(v67, v46, v69);
  v54 = v70;
  v47(v70, v48, v49);
  v55 = sub_100002BE4(&qword_10016ECD8, &qword_100115970);
  v51(&v54[*(v55 + 48)], v52, v53);
  v56 = *(v50 + 8);
  v56(v72, v53);
  v57 = *(v73 + 8);
  v57(v71, v49);
  v56(v52, v53);
  return (v57)(v48, v49);
}

uint64_t sub_10009510C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016ECC0, &qword_100115960);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - v6;
  v8 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v43 = sub_100002BE4(&qword_10016ECE8, &qword_100115978);
  __chkstk_darwin(v43);
  v15 = &v40 - v14;
  v45 = sub_100002BE4(&qword_10016ECA0, &qword_100115950);
  v16 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v40 - v17;
  v18 = type metadata accessor for EpicShowcaseComponentModel(0);
  memcpy(v69, (a1 + *(v18 + 44)), 0x150uLL);
  if (sub_100096FD4(v69) == 1 || (v42 = v4, (v19 = v69[36]) == 0))
  {
    v35 = 1;
  }

  else
  {
    v41 = a2;
    v20 = v69[35];

    v21._countAndFlagsBits = 0x2F3A6C6F626D7973;
    v21._object = 0xE90000000000002FLL;
    if (String.hasPrefix(_:)(v21))
    {
      v22 = String.count.getter();
      sub_1000981B0(v22, v20, v19);

      v23 = static String._fromSubstring(_:)();
      v25 = v24;

      v26 = static Alignment.center.getter();
      v28 = v27;
      sub_100096838(v23, v25, &v47);
      v65 = v55;
      v66[0] = v56[0];
      *(v66 + 9) = *(v56 + 9);
      v61 = v51;
      v62 = v52;
      v63 = v53;
      v64 = v54;
      v57 = v47;
      v58 = v48;
      v59 = v49;
      v60 = v50;
      v67[8] = v55;
      v68[0] = v56[0];
      *(v68 + 9) = *(v56 + 9);
      v67[4] = v51;
      v67[5] = v52;
      v67[6] = v53;
      v67[7] = v54;
      v67[0] = v47;
      v67[1] = v48;
      v67[2] = v49;
      v67[3] = v50;
      sub_10000C178(&v57, &v46, &qword_10016ED00, &qword_100115988);
      sub_100009908(v67, &qword_10016ED00, &qword_100115988);

      *v15 = v26;
      *(v15 + 1) = v28;
      v29 = v66[0];
      *(v15 + 9) = v65;
      *(v15 + 10) = v29;
      *(v15 + 169) = *(v66 + 9);
      v30 = v62;
      *(v15 + 5) = v61;
      *(v15 + 6) = v30;
      v31 = v64;
      *(v15 + 7) = v63;
      *(v15 + 8) = v31;
      v32 = v58;
      *(v15 + 1) = v57;
      *(v15 + 2) = v32;
      v33 = v60;
      *(v15 + 3) = v59;
      *(v15 + 4) = v33;
      swift_storeEnumTagMultiPayload();
      sub_100002BE4(&qword_10016ECB0, &qword_100115958);
      sub_100012C48(&qword_10016ECA8, &qword_10016ECB0, &qword_100115958, &protocol conformance descriptor for ZStack<A>);
      sub_100012C48(&qword_10016ECB8, &qword_10016ECC0, &qword_100115960, &protocol conformance descriptor for AsyncImage<A>);
      v34 = v44;
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v36 = [objc_opt_self() mainScreen];
      [v36 nativeScale];

      sub_100096FF8();
      static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)();

      sub_10000C178(v13, v11, &qword_10016BA40, &qword_100110FC0);
      v37 = swift_allocObject();
      v37[2] = sub_100096CB0;
      v37[3] = 0;
      v37[4] = FeatureEligibilityState.rawValue.getter;
      v37[5] = 0;
      sub_100002BE4(&qword_10016ECF0, &qword_100115980);
      sub_100098124();
      AsyncImage.init(url:scale:transaction:content:)();
      v38 = v42;
      (*(v5 + 16))(v15, v7, v42);
      swift_storeEnumTagMultiPayload();
      sub_100002BE4(&qword_10016ECB0, &qword_100115958);
      sub_100012C48(&qword_10016ECA8, &qword_10016ECB0, &qword_100115958, &protocol conformance descriptor for ZStack<A>);
      sub_100012C48(&qword_10016ECB8, &qword_10016ECC0, &qword_100115960, &protocol conformance descriptor for AsyncImage<A>);
      v34 = v44;
      _ConditionalContent<>.init(storage:)();
      (*(v5 + 8))(v7, v38);
      sub_100009908(v13, &qword_10016BA40, &qword_100110FC0);
    }

    a2 = v41;
    sub_10001D504(v34, v41, &qword_10016ECA0, &qword_100115950);
    v35 = 0;
  }

  return (*(v16 + 56))(a2, v35, 1, v45);
}

uint64_t sub_100095860(uint64_t a1)
{
  v2 = type metadata accessor for EpicShowcaseComponentModel(0);
  v3 = (a1 + *(v2 + 48));
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  v5 = *v3;
  v6 = *(a1 + *(v2 + 56));
  if (!v6)
  {

    return v5;
  }

  v7 = *(v6 + 16);

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v6 - 16 + (v9 << 6);
  while (1)
  {
    if (v7 == v9)
    {
      sub_100002BE4(&qword_1001695D0, &unk_10010CF70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10010D3B0;
      *(v17 + 32) = v5;
      *(v17 + 40) = v4;
      sub_1000DAF34(v10);
      sub_100002BE4(&qword_10016B430, &unk_1001107A0);
      sub_100012C48(&qword_10016ECE0, &qword_10016B430, &unk_1001107A0, &protocol conformance descriptor for [A]);
      v5 = BidirectionalCollection<>.joined(separator:)();

      return v5;
    }

    if (v9 >= *(v6 + 16))
    {
      break;
    }

    v12 = (v11 + 64);
    ++v9;
    v13 = *(v11 + 72);
    v11 += 64;
    if (v13)
    {
      v18 = *v12;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100009094(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_100009094((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[16 * v15];
      *(v16 + 4) = v18;
      *(v16 + 5) = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100095A78@<X0>(uint64_t a3@<X2>, char *a4@<X8>)
{
  v61 = a3;
  v67 = a4;
  v4 = type metadata accessor for AutomationSemantics();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100002BE4(&qword_10016EBF8, &qword_1001158B8) - 8;
  __chkstk_darwin(v56);
  v7 = &v56 - v6;
  v58 = sub_100002BE4(&qword_10016EC00, &qword_1001158C0);
  __chkstk_darwin(v58);
  v57 = &v56 - v8;
  v9 = sub_100002BE4(&qword_10016EC08, &qword_1001158C8);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = __chkstk_darwin(v9);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v56 - v12;

  static Font.footnote.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  static Color.white.getter();
  v18 = Color.opacity(_:)();

  *&v69[0] = v18;
  v19 = Text.foregroundStyle<A>(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10001297C(v13, v15, v17 & 1);

  v26 = *(sub_100002BE4(&qword_10016B9F8, &qword_1001158D0) + 36);
  v27 = enum case for BlendMode.plusLighter(_:);
  v28 = type metadata accessor for BlendMode();
  (*(*(v28 - 8) + 104))(&v7[v26], v27, v28);
  *v7 = v19;
  *(v7 + 1) = v21;
  v7[16] = v23 & 1;
  *(v7 + 3) = v25;
  KeyPath = swift_getKeyPath();
  v30 = &v7[*(sub_100002BE4(&qword_10016EC10, &qword_100115908) + 36)];
  *v30 = KeyPath;
  v30[8] = 0;
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v31 = &v7[*(v56 + 44)];
  *v31 = KeyPath;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  type metadata accessor for EpicShowcaseComponentModel(0);
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v57;
  sub_10001D504(v7, v57, &qword_10016EBF8, &qword_1001158B8);
  v45 = v44 + *(v58 + 36);
  *v45 = KeyPath;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  memset(v69, 0, 32);
  memset(v68, 0, sizeof(v68));
  v46 = v64;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v68, &qword_100169A38, &qword_10010D460);
  sub_100009908(v69, &qword_100169A38, &qword_10010D460);
  sub_100097B30();
  v47 = v59;
  View.automationSemantics(_:)();
  (*(v65 + 8))(v46, v66);
  sub_100009908(v44, &qword_10016EC00, &qword_1001158C0);
  v49 = v62;
  v48 = v63;
  v50 = *(v62 + 16);
  v51 = v60;
  v50(v60, v47, v63);
  v52 = v67;
  v50(v67, v51, v48);
  v53 = &v52[*(sub_100002BE4(&qword_10016EC30, &qword_100115910) + 48)];
  v54 = *(v49 + 8);
  v54(v47, v48);
  *v53 = 0;
  v53[8] = 0;
  return (v54)(v51, v48);
}

uint64_t sub_100096030@<X0>(char *a3@<X8>)
{
  v58 = a3;
  v3 = type metadata accessor for AutomationSemantics();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100002BE4(&qword_10016EC00, &qword_1001158C0);
  __chkstk_darwin(v50);
  v6 = &v49 - v5;
  v7 = sub_100002BE4(&qword_10016EC08, &qword_1001158C8);
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = __chkstk_darwin(v7);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v49 - v10;

  static Font.callout.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  static Font.Weight.medium.getter();
  v16 = Text.fontWeight(_:)();
  v18 = v17;
  v20 = v19;
  sub_10001297C(v11, v13, v15 & 1);

  *&v60[0] = static Color.white.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10001297C(v16, v18, v20 & 1);

  v28 = *(sub_100002BE4(&qword_10016B9F8, &qword_1001158D0) + 36);
  v29 = enum case for BlendMode.plusLighter(_:);
  v30 = type metadata accessor for BlendMode();
  (*(*(v30 - 8) + 104))(&v6[v28], v29, v30);
  *v6 = v21;
  *(v6 + 1) = v23;
  v6[16] = v25 & 1;
  *(v6 + 3) = v27;
  KeyPath = swift_getKeyPath();
  v32 = &v6[*(sub_100002BE4(&qword_10016EC10, &qword_100115908) + 36)];
  *v32 = KeyPath;
  v32[8] = 0;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  v33 = &v6[*(sub_100002BE4(&qword_10016EBF8, &qword_1001158B8) + 36)];
  *v33 = KeyPath;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = &v6[*(v50 + 36)];
  *v34 = KeyPath;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  memset(v60, 0, 32);
  memset(v59, 0, sizeof(v59));
  v39 = v53;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v59, &qword_100169A38, &qword_10010D460);
  sub_100009908(v60, &qword_100169A38, &qword_10010D460);
  sub_100097B30();
  v40 = v51;
  View.automationSemantics(_:)();
  (*(v56 + 8))(v39, v57);
  sub_100009908(v6, &qword_10016EC00, &qword_1001158C0);
  v42 = v54;
  v41 = v55;
  v43 = *(v54 + 16);
  v44 = v52;
  v43(v52, v40, v55);
  v45 = v58;
  v43(v58, v44, v41);
  v46 = &v45[*(sub_100002BE4(&qword_10016EC30, &qword_100115910) + 48)];
  v47 = *(v42 + 8);
  v47(v40, v41);
  *v46 = 0;
  v46[8] = 0;
  return (v47)(v44, v41);
}

uint64_t sub_100096540@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  return result;
}

uint64_t sub_10009665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for JoeColorType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EpicShowcaseComponentModel(0);
  memcpy(v16, (a1 + *(v8 + 44)), sizeof(v16));
  if (sub_100096FD4(v16) == 1 || !*&v16[14])
  {
    v11 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    result = Color.init(_:)();
  }

  else
  {
    v12[4] = v16[12];
    v12[5] = v16[13];
    v13 = *&v16[14];
    v14 = *(&v16[14] + 8);
    v15 = *(&v16[15] + 1);
    (*(v5 + 104))(v7, enum case for JoeColorType.background(_:), v4);
    sub_10000C178(&v16[12], v12, &qword_10016EB30, &qword_1001157E0);
    v9 = sub_1000EC004(v7);
    sub_100009908(&v16[12], &qword_10016EB30, &qword_1001157E0);
    (*(v5 + 8))(v7, v4);
    result = v9;
  }

  *a2 = result;
  *(a2 + 8) = 256;
  return result;
}

uint64_t sub_100096838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v36[0] = a1;
  v36[1] = a2;
  v37 = type metadata accessor for Image.ResizingMode();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = static Color.black.getter();
  if (qword_100168F80 != -1)
  {
    swift_once();
  }

  v7 = qword_10016EA30;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v8 = v52;
  v10 = v53;
  v9 = v54;
  v11 = v55;
  v12 = v56;
  v13 = v57;

  v14 = static Alignment.center.getter();
  v16 = v15;
  v17 = static Alignment.center.getter();
  *&v58 = v8;
  *(&v58 + 1) = __PAIR64__(v9, v10);
  *&v59 = v11;
  *(&v59 + 1) = v12;
  *&v60 = v13;
  *(&v60 + 1) = v7;
  LOWORD(v61) = 256;
  *(&v61 + 1) = v14;
  *&v62 = v16;
  *(&v62 + 1) = v17;
  v63 = v18;
  v81 = v18;
  v78 = v60;
  v79 = v61;
  v80 = v62;
  v76 = v58;
  v77 = v59;
  v64 = v8;
  v65 = v10;
  v66 = v9;
  v67 = v11;
  v68 = v12;
  v69 = v13;
  v70 = v7;
  v71 = 256;
  v72 = v14;
  v73 = v16;
  v74 = v17;
  v75 = v18;
  sub_10000C178(&v58, &v99, &qword_10016ED08, &qword_100115990);
  sub_100009908(&v64, &qword_10016ED08, &qword_100115990);

  Image.init(systemName:)();
  v19 = v37;
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v37);
  v20 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v19);
  v21 = static Color.white.getter();
  v22 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v99) = 1;
  *(v82 + 8) = v76;
  *(&v82[3] + 8) = v79;
  *(&v82[2] + 8) = v78;
  *(&v82[4] + 8) = v80;
  v23 = v38;
  *&v82[0] = v38;
  *(&v82[5] + 1) = v81;
  *(&v82[1] + 8) = v77;
  v39 = v82[0];
  v40 = v82[1];
  v43 = v82[4];
  v44 = v82[5];
  v41 = v82[2];
  v42 = v82[3];
  v83[0] = v20;
  v83[1] = 0;
  LOWORD(v84) = 1;
  WORD3(v84) = v51;
  *(&v84 + 2) = v50;
  *(&v84 + 1) = v21;
  LOBYTE(v85) = v22;
  DWORD1(v85) = *&v49[3];
  *(&v85 + 1) = *v49;
  *(&v85 + 1) = v24;
  *&v86[0] = v25;
  *(&v86[0] + 1) = v26;
  *&v86[1] = v27;
  BYTE8(v86[1]) = 0;
  *&v48[9] = *(v86 + 9);
  v47 = v85;
  *v48 = v86[0];
  v45 = v20;
  v46 = v84;
  v28 = v82[1];
  *a3 = v82[0];
  a3[1] = v28;
  v29 = v41;
  v30 = v42;
  v31 = v44;
  a3[4] = v43;
  a3[5] = v31;
  a3[2] = v29;
  a3[3] = v30;
  v32 = v45;
  v33 = v46;
  *(a3 + 153) = *&v48[9];
  v34 = *v48;
  a3[8] = v47;
  a3[9] = v34;
  a3[6] = v32;
  a3[7] = v33;
  v87[0] = v20;
  v87[1] = 0;
  v88 = 1;
  v89 = v50;
  v90 = v51;
  v91 = v21;
  v92 = v22;
  *v93 = *v49;
  *&v93[3] = *&v49[3];
  v94 = v24;
  v95 = v25;
  v96 = v26;
  v97 = v27;
  v98 = 0;
  sub_10000C178(v82, &v99, &qword_10016ED10, &qword_100115998);
  sub_10000C178(v83, &v99, &qword_10016ED18, &qword_1001159A0);
  sub_100009908(v87, &qword_10016ED18, &qword_1001159A0);
  v102 = v78;
  v103 = v79;
  v104 = v80;
  v99 = v23;
  v105 = v81;
  v100 = v76;
  v101 = v77;
  return sub_100009908(&v99, &qword_10016ED10, &qword_100115998);
}

uint64_t sub_100096CB8@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
  v9 = Image.resizable(capInsets:resizingMode:)();
  result = (*(v6 + 8))(v8, v5);
  *a3 = v9;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 17) = a2;
  return result;
}

unint64_t sub_100096DE0()
{
  result = qword_10016EAE8;
  if (!qword_10016EAE8)
  {
    sub_10000459C(&qword_10016EAC8, &qword_100115798);
    sub_100012C48(&qword_10016EAF0, &qword_10016EAF8, &qword_1001157B8, &protocol conformance descriptor for ZStack<A>);
    sub_100012C48(&qword_10016EB00, &qword_10016EAE0, &qword_1001157B0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EAE8);
  }

  return result;
}

uint64_t sub_100096EC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100096F24()
{
  result = qword_10016EB10;
  if (!qword_10016EB10)
  {
    sub_10000459C(&qword_10016EB08, &unk_1001157C0);
    sub_100012C48(&qword_10016EB18, &qword_10016EB20, &unk_1001157D0, &protocol conformance descriptor for AsyncImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EB10);
  }

  return result;
}

uint64_t sub_100096FD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_100096FF8()
{
  result = qword_10016EB28;
  if (!qword_10016EB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016EB28);
  }

  return result;
}

uint64_t sub_100097044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000970AC()
{
  v1 = *(type metadata accessor for EpicShowcaseView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = type metadata accessor for EpicShowcaseComponentModel(0);
  v7 = v6[5];
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v5 + v6[11]);
  v11 = v10[4];
  if (v11)
  {
    if (v11 == 1)
    {
      goto LABEL_13;
    }
  }

  if (v10[12])
  {
  }

  if (v10[20])
  {
  }

  if (v10[28])
  {
  }

LABEL_13:

  v12 = (v5 + v6[15]);
  if (v12[3])
  {
    sub_1000052E4(v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000972E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097348@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EpicShowcaseView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10009665C(v4, a1);
}

uint64_t sub_1000973B8(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  if (AsyncImagePhase.image.getter())
  {
    a2(&v7);
    swift_retain_n();
    sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
    sub_100002BE4(&qword_10016EB50, &qword_1001157F8);
    sub_100043F28();
    sub_100012C48(&qword_10016EB48, &qword_10016EB50, &qword_1001157F8, &protocol conformance descriptor for _ShapeView<A, B>);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    a4(&v7);
    sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
    sub_100002BE4(&qword_10016EB50, &qword_1001157F8);
    sub_100043F28();
    sub_100012C48(&qword_10016EB48, &qword_10016EB50, &qword_1001157F8, &protocol conformance descriptor for _ShapeView<A, B>);
    _ConditionalContent<>.init(storage:)();
  }

  return v7;
}

uint64_t sub_1000975C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(void))
{
  if (AsyncImagePhase.image.getter())
  {
    a2(&v7);
    swift_retain_n();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    a4();
    _ConditionalContent<>.init(storage:)();
  }

  return v7;
}

uint64_t sub_1000976CC(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(void))
{
  if (AsyncImagePhase.image.getter())
  {
    a2(&v7);
    swift_retain_n();
    sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
    sub_100043F28();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    a4();
    sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
    sub_100043F28();
    _ConditionalContent<>.init(storage:)();
  }

  return v7;
}

unint64_t sub_100097840()
{
  result = qword_10016EB40;
  if (!qword_10016EB40)
  {
    sub_10000459C(&qword_10016EB38, &qword_1001157E8);
    sub_100043F28();
    sub_100012C48(&qword_10016EB48, &qword_10016EB50, &qword_1001157F8, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EB40);
  }

  return result;
}

uint64_t sub_100097900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100097948()
{
  result = qword_10016EB80;
  if (!qword_10016EB80)
  {
    sub_10000459C(&qword_10016EB58, &qword_100115800);
    sub_100097A00();
    sub_100012C48(&qword_10016EBA0, &qword_10016EB78, &qword_100115858, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EB80);
  }

  return result;
}

unint64_t sub_100097A00()
{
  result = qword_10016EB88;
  if (!qword_10016EB88)
  {
    sub_10000459C(&qword_10016EB70, &qword_100115818);
    sub_100012C48(&qword_10016EB90, &qword_10016EB98, &qword_100115860, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EB88);
  }

  return result;
}

uint64_t sub_100097AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016EBB0, &qword_100115870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100097B30()
{
  result = qword_10016EC18;
  if (!qword_10016EC18)
  {
    sub_10000459C(&qword_10016EC00, &qword_1001158C0);
    sub_100097BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC18);
  }

  return result;
}

unint64_t sub_100097BBC()
{
  result = qword_10016EC20;
  if (!qword_10016EC20)
  {
    sub_10000459C(&qword_10016EBF8, &qword_1001158B8);
    sub_100097C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC20);
  }

  return result;
}

unint64_t sub_100097C48()
{
  result = qword_10016EC28;
  if (!qword_10016EC28)
  {
    sub_10000459C(&qword_10016EC10, &qword_100115908);
    sub_100044A48();
    sub_100012C48(&qword_10016A3A0, &qword_10016A3A8, &unk_10010F358, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC28);
  }

  return result;
}

unint64_t sub_100097D00()
{
  result = qword_10016EC60;
  if (!qword_10016EC60)
  {
    sub_10000459C(&qword_10016EC40, &qword_100115920);
    sub_100097D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC60);
  }

  return result;
}

unint64_t sub_100097D8C()
{
  result = qword_10016EC68;
  if (!qword_10016EC68)
  {
    sub_10000459C(&qword_10016EC58, &qword_100115938);
    sub_100097E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC68);
  }

  return result;
}

unint64_t sub_100097E18()
{
  result = qword_10016EC70;
  if (!qword_10016EC70)
  {
    sub_10000459C(&qword_10016EC50, &qword_100115930);
    sub_100097EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC70);
  }

  return result;
}

unint64_t sub_100097EA4()
{
  result = qword_10016EC78;
  if (!qword_10016EC78)
  {
    sub_10000459C(&qword_10016EC80, &qword_100115940);
    sub_100097F5C();
    sub_100012C48(&qword_10016ECC8, &qword_10016ECD0, &qword_100115968, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC78);
  }

  return result;
}

unint64_t sub_100097F5C()
{
  result = qword_10016EC88;
  if (!qword_10016EC88)
  {
    sub_10000459C(&qword_10016EC90, &qword_100115948);
    sub_100097FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC88);
  }

  return result;
}

unint64_t sub_100097FE0()
{
  result = qword_10016EC98;
  if (!qword_10016EC98)
  {
    sub_10000459C(&qword_10016ECA0, &qword_100115950);
    sub_100012C48(&qword_10016ECA8, &qword_10016ECB0, &qword_100115958, &protocol conformance descriptor for ZStack<A>);
    sub_100012C48(&qword_10016ECB8, &qword_10016ECC0, &qword_100115960, &protocol conformance descriptor for AsyncImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC98);
  }

  return result;
}

uint64_t sub_1000980E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(a1, v3[2], v3[3], v3[4], v3[5]);
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 18) = v8 & 1;
  return result;
}

unint64_t sub_100098124()
{
  result = qword_10016ECF8;
  if (!qword_10016ECF8)
  {
    sub_10000459C(&qword_10016ECF0, &qword_100115980);
    sub_100043F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ECF8);
  }

  return result;
}

uint64_t sub_1000981B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
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
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_100098260()
{
  result = qword_10016ED38;
  if (!qword_10016ED38)
  {
    sub_10000459C(&qword_10016ED28, &qword_1001159B0);
    sub_1000982EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ED38);
  }

  return result;
}

unint64_t sub_1000982EC()
{
  result = qword_10016ED40;
  if (!qword_10016ED40)
  {
    sub_10000459C(&qword_10016ED20, &qword_1001159A8);
    sub_100098378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ED40);
  }

  return result;
}

unint64_t sub_100098378()
{
  result = qword_10016ED48;
  if (!qword_10016ED48)
  {
    sub_10000459C(&qword_10016ED50, &qword_1001159C0);
    sub_100012C48(&qword_10016ED58, &qword_10016ED60, &qword_1001159C8, &protocol conformance descriptor for AsyncImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ED48);
  }

  return result;
}

uint64_t sub_100098428()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100098468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000975C0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

unint64_t sub_1000984A0()
{
  result = qword_10016ED78;
  if (!qword_10016ED78)
  {
    sub_10000459C(&qword_10016ED70, &qword_1001159D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ED78);
  }

  return result;
}

uint64_t sub_100098524()
{
  sub_10000459C(&qword_10016EAC8, &qword_100115798);
  type metadata accessor for RoundedRectangle();
  sub_100096DE0();
  sub_100097900(&qword_10016B858, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000985E0()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

id sub_100098678()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [objc_opt_self() listeningForAlternateBonjourBrowsing];
}

uint64_t sub_1000986F8(char a1)
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000AAC58(a1 & 1);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000987F8()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [objc_opt_self() getAdvertisingAccessMode];
}

id sub_100098878@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [objc_opt_self() getAdvertisingAccessMode];
  *a2 = result;
  return result;
}

double sub_100098904(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
  sub_100099F88();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

id sub_1000989B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = 0;
  v3 = [objc_opt_self() setAdvertisingAccessMode:a1 withError:&v7];
  v4 = v3;
  if (v3)
  {
    result = v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *a2 = v4 ^ 1;
  return result;
}

uint64_t sub_100098A88()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v4 + 16) = 64;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 32) = 0u;
  HIDWORD(v24) = noErr.getter();
  v5 = String._bridgeToObjectiveC()();
  APSSettingsGetCString();

  v6 = HIDWORD(v24);
  if (v6 == noErr.getter())
  {

    v8 = sub_100099F20(v7);
    v10 = v9;

    v25[0] = v8;
    v25[1] = v10;

    static CharacterSet.whitespaces.getter();
    sub_100012928();
    v11 = StringProtocol.trimmingCharacters(in:)();
    v13 = v12;
    (*(v1 + 8))(v3, v0);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      return v8;
    }
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006B0C(v16, qword_100181F88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 136315138;
      v21 = _typeName(_:qualified:)();
      v23 = sub_100006B44(v21, v22, v25);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s Could not get AirPlay Receiver password", v19, 0xCu);
      sub_1000052E4(v20);
    }
  }

  return 0;
}

uint64_t sub_100098DCC()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_100098E4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

double sub_100098EC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100098F08(v1, v2);
}

double sub_100098F08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100099038()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

void sub_1000990A8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
}

void sub_100099148(char a1)
{
  if (*(v1 + 56) == (a1 & 1))
  {
    *(v1 + 56) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100099228()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 57);
}

void sub_100099298(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 57);
}

void sub_100099338(char a1)
{
  if (*(v1 + 57) == (a1 & 1))
  {
    *(v1 + 57) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

BOOL sub_100099420()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = sub_100098A88();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

BOOL sub_1000994EC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100099420();
  *a1 = result;
  return result;
}

uint64_t sub_100099544(char a1)
{
  if (a1)
  {
    if (*(v1 + 57) == 1)
    {
      *(v1 + 57) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100099F88();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (*(v1 + 56) == 1)
    {
      *(v1 + 56) = 1;
    }

    else
    {
      v3 = swift_getKeyPath();
      __chkstk_darwin(v3);
      sub_100099F88();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    swift_getKeyPath();
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return notify_post("com.apple.airplay.prefsChanged");
}

void sub_100099744()
{
  sub_100098F08(0, 0xE000000000000000);
  v0 = String._bridgeToObjectiveC()();
  APSSettingsRemoveValue();

  v1 = String._bridgeToObjectiveC()();
  APSSettingsSetValue();

  v2 = String._bridgeToObjectiveC()();
  APSSettingsSetValue();
}

uint64_t sub_100099804()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = sub_100098A88();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000998AC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return notify_post("com.apple.airplay.prefsChanged");
}

void sub_1000999AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = String._bridgeToObjectiveC()();
  v15 = a1;
  v16 = a2;
  static String.Encoding.utf8.getter();
  sub_100012928();
  StringProtocol.cString(using:)();
  v8 = *(v5 + 8);
  v8(v7, v4);
  v15 = a1;
  v16 = a2;
  static String.Encoding.utf8.getter();
  StringProtocol.lengthOfBytes(using:)();
  v8(v7, v4);
  v9 = v14;
  APSSettingsSetCString();

  v10 = String._bridgeToObjectiveC()();
  v11 = kCFBooleanFalse;
  APSSettingsSetValue();

  v12 = String._bridgeToObjectiveC()();
  APSSettingsSetValue();
}

uint64_t sub_100099BB0()
{
  v1 = v0;
  if (*(v0 + 57))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + 57) = 0;
  }

  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + 40);
  v4 = *(v1 + 48);

  return sub_1000998AC(v3, v4);
}

uint64_t sub_100099CE0()
{
  sub_1000319E0(v0 + 16);

  v1 = OBJC_IVAR____TtC17AppleVisionProApp28AirplayReceiverSettingsState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirplayReceiverSettingsState(uint64_t a1)
{
  result = qword_10016EDB0;
  if (!qword_10016EDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100099DE0(uint64_t a1)
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

uint64_t sub_100099EA0()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  type metadata accessor for AirplayReceiverSettingsState(0);
  v1 = sub_100098A88();
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0xE000000000000000;
  if (v2)
  {
    v4 = v2;
  }

  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 56) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_100099F20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return static String._fromUTF8Repairing(_:)();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return static String._fromUTF8Repairing(_:)();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100099F88()
{
  result = qword_10016F028;
  if (!qword_10016F028)
  {
    type metadata accessor for AirplayReceiverSettingsState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F028);
  }

  return result;
}

uint64_t sub_10009A01C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100099804();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10009A060(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

BOOL sub_10009A0C4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100099420();
  *a1 = result;
  return result;
}

void sub_10009A174()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

id sub_10009A444(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StoreProductViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10009A4BC(uint64_t a1)
{
  v2 = sub_10009A728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009A4F8(uint64_t a1)
{
  v2 = sub_10009A728();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009A588(void *a1)
{
  v2 = sub_100002BE4(&qword_10016F068, &unk_100115D50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000524C(a1, a1[3]);
  sub_10009A728();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10009A69C@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_10000B5DC(&off_100159CA8);
  sub_10009A8B0(&unk_100159CC8);
  a1[3] = sub_100002BE4(&qword_100169C98, &qword_100115D60);
  result = sub_10009A918();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_10009A728()
{
  result = qword_10016F070;
  if (!qword_10016F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F070);
  }

  return result;
}

id sub_10009A77C(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100182048);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error making the JSContext", v5, 2u);
    }

    v6 = objc_allocWithZone(JSValue);

    return [v6 init];
  }

  return result;
}

uint64_t sub_10009A8B0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016E7F8, &qword_1001153D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009A918()
{
  result = qword_10016F078;
  if (!qword_10016F078)
  {
    sub_10000459C(&qword_100169C98, &qword_100115D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F078);
  }

  return result;
}

unint64_t sub_10009A9A8()
{
  result = qword_10016F080;
  if (!qword_10016F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F080);
  }

  return result;
}

unint64_t sub_10009AA00()
{
  result = qword_10016F088;
  if (!qword_10016F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F088);
  }

  return result;
}

uint64_t sub_10009AA54(unsigned __int8 a1, unsigned __int8 a2)
{
  sub_100031904(0, &qword_10016BF10, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(a1).super.super.isa;
  v5 = NSNumber.init(integerLiteral:)(a2).super.super.isa;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_10009AAD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  if (a1 == 2)
  {
    v4 = 0x6E696D6165727473;
    v3 = 0xE900000000000067;
  }

  v5 = 0xD000000000000011;
  v6 = 0x800000010011C610;
  if (!a1)
  {
    v5 = 0x7265766F63736964;
    v6 = 0xE900000000000079;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6E696D6165727473;
    }

    else
    {
      v11 = 6710895;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000067;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x7265766F63736964;
    }

    if (a2)
    {
      v10 = 0x800000010011C610;
    }

    else
    {
      v10 = 0xE900000000000079;
    }

    if (v7 != v9)
    {
      goto LABEL_29;
    }
  }

  if (v8 != v10)
  {
LABEL_29:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_30;
  }

  v12 = 1;
LABEL_30:

  return v12 & 1;
}

uint64_t sub_10009AC04(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      a1 = 0x3763353738766564;
    }

    else
    {
      a1 = 0x6333663735766564;
    }

    if (v2 == 2)
    {
      v3 = 0xEC00000037333966;
    }

    else
    {
      v3 = 0xEC00000065373636;
    }
  }

  else
  {
    if (a1)
    {
      a1 = 0x3030386431766564;
    }

    else
    {
      a1 = a1;
    }

    if (v2)
    {
      v3 = 0xEC00000034383065;
    }

    else
    {
      v3 = 0xE000000000000000;
    }
  }

  v4 = a2;
  v5 = 0xE000000000000000;
  v6 = 0x3763353738766564;
  v7 = 0xEC00000037333966;
  if (a2 != 2)
  {
    v6 = 0x6333663735766564;
    v7 = 0xEC00000065373636;
  }

  if (a2)
  {
    v4 = 0x3030386431766564;
    v5 = 0xEC00000034383065;
  }

  if (a2 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (a1 == v8 && v3 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10009AD70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xEF6567616D496E6FLL;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }

    v4 = 0x7474754273706954;
  }

  else if (a1 == 2)
  {
    v4 = 0x69766544206C6C41;
    v5 = 0xEB00000000736563;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 1701736260;
    }

    else
    {
      v4 = 0x747465536E65704FLL;
    }

    if (v3 == 3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEC00000073676E69;
    }
  }

  v6 = 0x69766544206C6C41;
  v7 = 0xEB00000000736563;
  v8 = 0xE400000000000000;
  v9 = 1701736260;
  if (a2 != 3)
  {
    v9 = 0x747465536E65704FLL;
    v8 = 0xEC00000073676E69;
  }

  if (a2 != 2)
  {
    v6 = v9;
    v7 = v8;
  }

  if (a2)
  {
    v2 = 0xEF6567616D496E6FLL;
  }

  if (a2 <= 1u)
  {
    v10 = 0x7474754273706954;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10009AEF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x7463656C65537369;
  v5 = 0xEA00000000006465;
  if (a1 != 5)
  {
    v4 = 0x6E6F69746361;
    v5 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6C6562616CLL;
  if (a1 != 3)
  {
    v7 = 0x54746E65746E6F63;
    v6 = 0xEB00000000657079;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1701869940;
  if (a1 != 1)
  {
    v9 = 0x656C746974;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE400000000000000;
        if (v10 != 1701869940)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x656C746974)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701667182)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x7463656C65537369)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F69746361)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6C6562616CLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000657079;
    if (v10 != 0x54746E65746E6F63)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10009B110(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006465747261;
  v3 = 0x7453746559746F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x73736563637573;
    }

    else
    {
      v5 = 0x6572756C696166;
    }

    v6 = 0xE700000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x676E6964616F6CLL;
    }

    else
    {
      v5 = 0x7453746559746F6ELL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED00006465747261;
    }
  }

  v7 = 0x73736563637573;
  if (a2 != 2)
  {
    v7 = 0x6572756C696166;
  }

  if (a2)
  {
    v3 = 0x676E6964616F6CLL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10009B258(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006B636F6CLL;
  v3 = 0xD000000000000017;
  v4 = 0x6E5565746F6D6572;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x6E5565746F6D6572;
    }

    if (v5 == 2)
    {
      v7 = 0x800000010011C9E0;
    }

    else
    {
      v7 = 0xEC0000006B636F6CLL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (v5)
    {
      v7 = 0x800000010011C9C0;
    }

    else
    {
      v7 = 0x800000010011C9A0;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000017;
    v2 = 0x800000010011C9E0;
  }

  v8 = 0x800000010011C9C0;
  if (!a2)
  {
    v3 = 0xD000000000000014;
    v8 = 0x800000010011C9A0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

void sub_10009B398(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

void sub_10009B468(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
}

id sub_10009B538@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_10009B5F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002F83C(v1);
}

uint64_t sub_10009B620@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_10009B6D0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

id sub_10009B7A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

void sub_10009B858(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002FF74(v1);
}

id sub_10009B888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

void sub_10009B940(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100030180(v1);
}

id sub_10009B970@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 104);
  *a2 = v4;

  return v4;
}

void sub_10009BA28(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10003038C(v1);
}

id sub_10009BA58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_10009BB10(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100030988(v1);
}

double sub_10009BB40(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_10009BBC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_10009BC9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

double sub_10009BD48(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10009BE14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_10009BEEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_10009BF9C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

id sub_10009C06C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [objc_opt_self() listeningForAlternateBonjourBrowsing];
  *a2 = result;
  return result;
}

double sub_10009C198(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10009C254()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10009C300@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_10009C3B4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_100031904(0, &unk_10016F330, UIWindowScene_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void sub_10009C578(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager;
  v5 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016F328, APRKStreamRenderingManager_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

double sub_10009C74C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState] > 2u)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      return result;
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager];

  sub_1000AB280(v1, v4);

  if (v1[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v1[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI] = 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager;
  v7 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager];
  if (v7)
  {
    [v7 setDelegate:0];
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*&v1[v6] stopReceiverServer];
  if (*&v1[v6])
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10009CA9C()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState);
}

void sub_10009CB44(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState);
}

double sub_10009CBF4(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (sub_10009AAD0(*(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState), a1))
  {
    *(v1 + v3) = a1;

    return sub_10009C74C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10009CDAC()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v1)
  {
    swift_getKeyPath();
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + 16);

    swift_getKeyPath();
    sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = *(v2 + 17);
  }

  return v1;
}

void sub_10009CF74(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion;
  v5 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion);
  if (!v5)
  {
    if (!a1)
    {
      *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion) = 0;
      v7 = 0;
      goto LABEL_9;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  sub_100031904(0, &qword_10016F320, RBSAssertion_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (!v9)
  {
LABEL_9:
    v10 = v7;
    v11 = 0;
    goto LABEL_10;
  }

  v13 = v9;
  v10 = v7;
  [v13 removeObserver:v2];
  v11 = v13;
LABEL_10:
  v14 = v11;
  [v11 invalidate];
}

void sub_10009D15C(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion);
  *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion) = a2;
  if (v2)
  {
    v4 = a2;
    [v2 removeObserver:a1];
  }

  else
  {
    v5 = a2;
  }

  [v2 invalidate];
}

uint64_t sub_10009D1E8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_10009D288(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

void sub_10009D364(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10009D47C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10009D520@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

uint64_t sub_10009D5D8()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);

  return v1;
}

uint64_t sub_10009D694@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
  a2[1] = v4;
}

double sub_10009D74C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void *sub_10009D8DC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_10009D984@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_10009DA48(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer;
  v5 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer);
  if (!v5)
  {
    if (!a1)
    {
      v11 = 0;
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016F318, BSContinuousMachTimer_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
  v10 = v7;
  [v11 invalidate];
}

double sub_10009DC80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

char *sub_10009DDB4()
{
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager] = 0;
  type metadata accessor for AirplayReceiverSettingsState(0);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverSettingsState] = sub_100099EA0();
  v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState] = 3;
  v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI] = 0;
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion] = 0;
  v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion] = 0;
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController] = 0;
  v1 = &v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer] = 0;
  type metadata accessor for LockoutObserverManager();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager] = LockoutObserverManager.init()();
  type metadata accessor for FeatureEligibilityObserverManager();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__featureEligibilityManager] = FeatureEligibilityObserverManager.init()();
  ObservationRegistrar.init()();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AirplayReceiverLifecycleManager(0);
  v2 = objc_msgSendSuper2(&v5, "init");
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  v3 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v3;
}

id sub_10009E090()
{
  v1 = v0;
  swift_getKeyPath();
  v8 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager];

  v3 = v1;
  sub_1000AB280(v3, v2);

  swift_getKeyPath();
  v8 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *&v3[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__featureEligibilityManager];
  v5 = v3;

  sub_1000AB4B8(v5, v4);

  v7.receiver = v5;
  v7.super_class = type metadata accessor for AirplayReceiverLifecycleManager(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for AirplayReceiverLifecycleManager(uint64_t a1)
{
  result = qword_10016F128;
  if (!qword_10016F128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009E374(uint64_t a1)
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

double sub_10009E454()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v2 - 8);
  v34 = &v33 - v3;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, &v35);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Setting up AirplayReceiverLifecycleManager, connection to APRK rendering manager.", v7, 0xCu);
    sub_1000052E4(v8);
  }

  type metadata accessor for MirroringViewModel(0);
  v12 = swift_allocObject();
  v13 = v1;
  v14 = sub_1000AC218(v13, 0, v12);

  type metadata accessor for AirplayReceiverMainModel(0);
  swift_allocObject();

  v33 = v14;
  v16 = sub_10007B3F8(v15);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v33 - 2) = v13;
  *(&v33 - 1) = v16;
  v35 = v13;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v35 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *&v13[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel];
  if (v18)
  {
    swift_getKeyPath();
    v35 = v18;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v18 + 32);

    v20 = swift_getKeyPath();
    __chkstk_darwin(v20);
    *(&v33 - 4) = v19;
    *(&v33 - 3) = v13;
    *(&v33 - 2) = &off_10015D878;
    v35 = v19;
    sub_1000AC1D0(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v21 = [objc_opt_self() sharedInstance];
  [v21 setPreemptionPolicy:2];
  [v21 setMaxNumberOfConcurrentSessions:1];
  [v21 setAltAdvertisingEnabled:1];
  [v21 setOptimizeAudioRenderingLatency:1];
  [v21 setEnableMixingMediaAudio:1];
  v22 = v21;
  sub_10009C578(v21);
  swift_getKeyPath();
  v35 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__featureEligibilityManager;
  v24 = *&v13[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__featureEligibilityManager];

  sub_1000AB6F0(v13, v24);

  swift_getKeyPath();
  v35 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(*&v13[v23] + 16);
  v26 = v25 & 1;
  if ((v13[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion] ^ v25))
  {
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    *(&v33 - 2) = v13;
    *(&v33 - 8) = v26;
    v35 = v13;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v13[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion] = v26;
  }

  v28 = type metadata accessor for TaskPriority();
  v29 = v34;
  (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v13;
  v31 = v13;
  sub_1000EE8E8(0, 0, v29, &unk_1001163C0, v30);

  return result;
}

uint64_t sub_10009EB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a4;
  return _swift_task_switch(sub_10009EB50, 0, 0);
}

uint64_t sub_10009EB50()
{
  v1 = *(v0 + 40);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  *(v0 + 48) = v2;
  if (v2)
  {
    swift_getKeyPath();
    *(v0 + 24) = v2;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 56) = *(v2 + 32);

    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_10009ED4C;

    return sub_1000B9C9C();
  }

  else
  {
    **(v0 + 32) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10009ED4C()
{

  return _swift_task_switch(sub_10009EE64, 0, 0);
}

double sub_10009EE8C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  swift_getKeyPath();
  v24 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager;
  v7 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager);
  if (v7 && [v7 delegate])
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006B0C(v8, qword_100181F88);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = _typeName(_:qualified:)();
      v14 = a1;
      v15 = sub_100006B44(v12, v13, &v24);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_100006B44(v14, a2, &v24);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Start receiver server for reason: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    swift_getKeyPath();
    v24 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *&v3[v6];
    if (v16)
    {
      [v16 setDelegate:v3];
    }

    swift_getKeyPath();
    v24 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *&v3[v6];
    if (v17)
    {
      [v17 startReceiverServerWithSupportedRenderingModes:1];
    }

    swift_getKeyPath();
    v24 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *&v3[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager];

    sub_1000AB93C(v3, v18);

    sub_10009F3E0(2u);
  }

  swift_getKeyPath();
  v24 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (v3[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState] == 2)
  {

    return result;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    if (v3[v19] <= 1u && !v3[v19])
    {

LABEL_20:
      v3[v19] = 0;
      return sub_10009C74C();
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_20;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v24 = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10009F3E0(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v33 = *(v10 - 8);
  v34 = v10;
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 == 2)
  {
    v3 = sub_1000A736C();
  }

  else
  {
    v32 = v7;
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006B0C(v13, qword_100181F88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30 = v6;
      v17 = v16;
      v18 = swift_slowAlloc();
      v31 = ObjectType;
      v19 = v18;
      aBlock[0] = v18;
      *v17 = 136315394;
      v20 = _typeName(_:qualified:)();
      v22 = sub_100006B44(v20, v21, aBlock);

      *(v17 + 4) = v22;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s Override Force Accept Dialog state to %{BOOL}d", v17, 0x12u);
      sub_1000052E4(v19);
      ObjectType = v31;

      v6 = v30;
    }

    v7 = v32;
  }

  swift_getKeyPath();
  aBlock[0] = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = v3 & 1;
  [*&v2[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager] setForcePermissionDialog:v3 & 1];
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v2;
  *(v25 + 32) = ObjectType;
  aBlock[4] = sub_1000AC6BC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015D938;
  v26 = _Block_copy(aBlock);
  v27 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v7 + 8))(v9, v6);
  return (*(v33 + 8))(v12, v34);
}

void sub_10009F894(uint64_t a1, unint64_t a2)
{
  swift_getObjectType();
  v4 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  sub_1000AC364();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006B0C(v7, qword_100181F88);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v22);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_100006B44(a1, a2, &v22);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Foreground requested for reason: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v14)
  {
    v15 = v14;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    sub_1000EE5F8(0, 0, v6, &unk_100116350, v17);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v21, v18, "Unable to foreground because open application service could not be created.", v19, 2u);
    }

    v20 = v21;
  }
}

uint64_t sub_10009FBF4(uint64_t a1)
{
  v2 = v1[23];
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  v3 = String._bridgeToObjectiveC()();
  v1[24] = v3;

  v1[2] = v1;
  v1[7] = v1 + 21;
  v1[3] = sub_10009FD3C;
  v4 = swift_continuation_init();
  v1[17] = sub_100002BE4(&unk_10016F300, &unk_100116358);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10004789C;
  v1[13] = &unk_10015DD48;
  v1[14] = v4;
  [v2 openApplication:v3 withOptions:0 completion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10009FD3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_10009FF70;
  }

  else
  {
    v2 = sub_10009FE4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10009FE4C()
{
  v1 = *(v0 + 192);

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181F88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Foreground request completed.", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10009FF70(uint64_t a1)
{
  v14 = v1;
  v2 = *(v1 + 192);
  swift_willThrow();

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181F88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100006B44(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to foreground ourself due to error: %{public}s", v6, 0xCu);
    sub_1000052E4(v7);
  }

  else
  {
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_1000A013C()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  if (![Strong activationState])
  {

    v3 = 1;
    return v3 & 1;
  }

  v2 = [v1 activationState];

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
LABEL_5:
    if (sub_10009CDAC() == 1)
    {

      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v3 & 1;
}

void sub_1000A02D0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181F88);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v37 = a3;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v11 = 136315650;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, &v38);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_100006B44(a1, a2, &v38);
    *(v11 + 22) = 1024;
    *(v11 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s dismiss AirplayUI for reason: %{public}s with shouldStopConnection: %{BOOL}d", v11, 0x1Cu);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v38 = v4;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (*(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {

    v16 = 0;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v16 = 0;
    if ((v17 & 1) == 0)
    {
      swift_getKeyPath();
      v38 = v4;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = *(v4 + v15);
    }
  }

  if (sub_10009AAD0(*(v4 + v15), v16))
  {
    *(v4 + v15) = v16;
    sub_10009C74C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v38 = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI))
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    v38 = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 0;
  }

  swift_getKeyPath();
  v38 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel;
  v21 = *(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v21)
  {
    swift_getKeyPath();
    v38 = v21;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v21 + 16);

    sub_10002EFE4(0);
    if (v22[13])
    {
      v23 = swift_getKeyPath();
      __chkstk_darwin(v23);
      v38 = v22;
      sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (v22[11])
    {
      v24 = swift_getKeyPath();
      __chkstk_darwin(v24);
      v38 = v22;
      sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (v22[12])
    {
      v25 = swift_getKeyPath();
      __chkstk_darwin(v25);
      v38 = v22;
      sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  swift_getKeyPath();
  v38 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v4 + v20);
  if (v26)
  {
    swift_getKeyPath();
    v38 = v26;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *(v26 + 16);

    swift_getKeyPath();
    v38 = v27;
    sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = *(v27 + 112);
    v29 = v28;

    if (v28)
    {
      [v29 setDelegate:0];
    }
  }

  swift_getKeyPath();
  v38 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v4 + v20);
  if (v30)
  {
    swift_getKeyPath();
    v38 = v30;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v30 + 16);

    if (*(v31 + 112))
    {
      v32 = swift_getKeyPath();
      __chkstk_darwin(v32);
      v38 = v31;
      sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_100030510(0);
      v33 = *(v31 + 112);
      *(v31 + 112) = 0;
    }
  }

  sub_1000A0EA0();
  v34 = (v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
  if (*(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8))
  {
    v35 = swift_getKeyPath();
    __chkstk_darwin(v35);
    v38 = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v34 = 0;
    v34[1] = 0;
  }

  v36 = swift_getKeyPath();
  __chkstk_darwin(v36);
  v38 = v4;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (v37)
  {
    sub_1000A1080();
  }
}