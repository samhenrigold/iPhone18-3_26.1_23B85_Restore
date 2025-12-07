_BYTE *storeEnumTagSinglePayload for PrecipitationForecastSummaries.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x10006C398);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10006C3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100007374(v8, a2, v7);
}

uint64_t sub_10006C4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
    v10 = a1 + *(a4 + 20);
  }

  return sub_100006BD4(v10, a2, a2, v9);
}

void sub_10006C558(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10006C5DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006C5DC(uint64_t a1)
{
  if (!qword_1000A59E0)
  {
    type metadata accessor for ForecastSummary();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A59E0);
    }
  }
}

unint64_t sub_10006C638()
{
  result = qword_1000A5A18;
  if (!qword_1000A5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A18);
  }

  return result;
}

unint64_t sub_10006C690()
{
  result = qword_1000A5A20;
  if (!qword_1000A5A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A20);
  }

  return result;
}

unint64_t sub_10006C6E8()
{
  result = qword_1000A5A28;
  if (!qword_1000A5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A28);
  }

  return result;
}

uint64_t sub_10006C77C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_10006C7B8(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)(a1, a2, v2, v3, v4);
}

uint64_t sub_10006C7DC(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10006C7F8()
{
  sub_100030E38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v10 = sub_100006FF0(v9);
  __chkstk_darwin(v10);
  v11 = sub_100070B3C();
  sub_1000707FC(v11, v12, &unk_1000A3930, &qword_100080900);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100007374(v0, 1, v13);

  if (v14 == 1)
  {
    sub_100070860(v0, &unk_1000A3930, &qword_100080900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100030C40();
    (*(v15 + 8))(v0, v13);
  }

  v16 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100070860(v6, &unk_1000A3930, &qword_100080900);
    sub_100070AEC();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100070AEC();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v2;

  swift_task_create();

  sub_100070860(v6, &unk_1000A3930, &qword_100080900);

LABEL_9:
  sub_100030E08();
}

void sub_10006CAAC()
{
  sub_100030E38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v10 = sub_100006FF0(v9);
  __chkstk_darwin(v10);
  v11 = sub_100070B3C();
  sub_1000707FC(v11, v12, &unk_1000A3930, &qword_100080900);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100007374(v0, 1, v13);

  if (v14 == 1)
  {
    sub_100070860(v0, &unk_1000A3930, &qword_100080900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100030C40();
    v15 = sub_100070B54();
    v16(v15);
  }

  v17 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100070860(v6, &unk_1000A3930, &qword_100080900);
    sub_100070AEC();
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = v2;
    sub_100003020(&unk_1000A5AA0, &qword_100082C70);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100070AEC();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;

  sub_100003020(&unk_1000A5AA0, &qword_100082C70);
  swift_task_create();

  sub_100070860(v6, &unk_1000A3930, &qword_100080900);

LABEL_9:
  sub_100030E08();
}

uint64_t sub_10006CD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003020(&unk_1000A3930, &qword_100080900);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_1000707FC(a3, v24 - v10, &unk_1000A3930, &qword_100080900);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100007374(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100070860(v11, &unk_1000A3930, &qword_100080900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
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
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100003020(&qword_1000A3800, &unk_100080860);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_100070860(a3, &unk_1000A3930, &qword_100080900);

      return v21;
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

  sub_100070860(a3, &unk_1000A3930, &qword_100080900);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id sub_10006D068(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithDescription:v3];

  return v4;
}

uint64_t sub_10006D0E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MachService();
  v11 = sub_100006FF0(v10);
  __chkstk_darwin(v11);
  sub_100006930(a1, v5 + qword_1000A5A38);
  v12 = (v5 + qword_1000A5A40);
  *v12 = a2;
  v12[1] = a3;
  *(v5 + qword_1000A5A48) = a4;
  swift_unknownObjectRetain();

  static MachServices.Notifications.getter();
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.notifications.getter();
  v13 = XPCDaemonService.init(machService:targetQueue:)();
  swift_unknownObjectRelease();

  sub_100006994(a1);
  return v13;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NotificationsManager.evaluateConnectionCriteria(_:)(NSXPCConnection a1)
{
  PartyProcessXCPDaemonConnectionPredicate = type metadata accessor for FirstPartyProcessXCPDaemonConnectionPredicate();
  sub_100006FBC();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static XPCDaemonConnectionPredicate<>.firstPartyProcess.getter();
  v7[2] = PartyProcessXCPDaemonConnectionPredicate;
  v7[3] = v6;
  v7[1] = &protocol witness table for FirstPartyProcessXCPDaemonConnectionPredicate;
  dispatch thunk of XPCDaemonService.evaluate<each A>(_:is:)();
  (*(v3 + 8))(v6, PartyProcessXCPDaemonConnectionPredicate);
}

uint64_t sub_10006D328()
{
  sub_100006994((v0 + qword_1000A5A38));
  swift_unknownObjectRelease();
}

uint64_t sub_10006D378(uint64_t a1)
{
  sub_100006994((a1 + qword_1000A5A38));
  swift_unknownObjectRelease();
}

uint64_t NotificationsManager.schedule()()
{
  sub_100030C4C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v3);
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006D4D0, 0, 0);
}

uint64_t sub_10006D4D0(uint64_t a1)
{
  static Logger.notifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10004B070(v3))
  {
    *sub_100030F7C() = 0;
    sub_1000310B0(&_mh_execute_header, v4, v5, "Received proxy request for updating notification fetch schedule");
    sub_10004B030();
  }

  v6 = v1[6];

  v7 = *(v6 + 8);
  v8 = sub_100030CE0();
  v7(v8);
  if (WDWeatherAppIsInstalled())
  {
    v10 = v1[3];
    v9 = v1[4];
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    sub_100070B60();
    v12 = sub_10006D068(0xD00000000000002BLL, v11);
    v1[9] = v12;
    v13 = type metadata accessor for TaskPriority();
    sub_100006BD4(v9, 1, 1, v13);
    v14 = v10;
    v15 = v12;
    v16 = static NotificationsActor.shared.getter();
    sub_100070AD4();
    v19 = sub_1000708BC(v17, v18, &protocol conformance descriptor for NotificationsActor.Actor);
    v20 = swift_allocObject();
    v20[2] = v16;
    v20[3] = v19;
    v20[4] = v14;
    v20[5] = v15;
    v21 = sub_10006CD70(0, 0, v9, &unk_100082BC8, v20);
    v1[10] = v21;
    v22 = swift_task_alloc();
    v1[11] = v22;
    v23 = sub_100003020(&qword_1000A3800, &unk_100080860);
    *v22 = v1;
    v22[1] = sub_10006D7C8;
    v24 = v1[2];

    return Task<>.value.getter(v24, v21, v23);
  }

  else
  {
    static Logger.notifications.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (sub_10004B070(v26))
    {
      *sub_100030F7C() = 0;
      sub_1000310B0(&_mh_execute_header, v27, v28, "Weather app was uninstalled; rejecting scheduling request");
      sub_10004B030();
    }

    v29 = sub_100030CE0();
    v7(v29);
    v30 = type metadata accessor for Date();
    sub_100070B78(v30);
    [objc_opt_self() neSessionClearCaches];

    sub_100030C70();

    return v31();
  }
}

uint64_t sub_10006D7C8()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  return _swift_task_switch(sub_10006D8B4, 0, 0);
}

uint64_t sub_10006D8B4()
{
  sub_100030C58();
  v1 = *(v0 + 72);

  [objc_opt_self() neSessionClearCaches];

  sub_100030C70();

  return v2();
}

uint64_t sub_10006D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_100003020(&qword_1000A5A30, &qword_100082BD8);
  v4[5] = swift_task_alloc();
  v4[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000708BC(&qword_1000A40F8, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_10006DA4C, v6, v5);
}

uint64_t sub_10006DA4C()
{
  sub_100030C58();
  v1 = v0[4];
  ReferenceCountedLazy.increase()();
  v0[9] = v0[2];
  NotificationEnablementTracker.trackEnablement()();
  ReferenceCountedLazy.decrease()();
  sub_1000032B8((v1 + qword_1000A5A38), *(v1 + qword_1000A5A38 + 24));
  sub_100030CE0();
  v0[10] = dispatch thunk of PrecipitationNotificationsManagerType.schedule()();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10006DB44;
  v3 = v0[5];

  return Promise.resolveAsync()(v3);
}

uint64_t sub_10006DB44()
{
  sub_100030C4C();
  sub_100043668();
  v3 = v2;
  sub_10004AFD8();
  *v4 = v3;
  v5 = *v1;
  sub_10000FA6C();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_10006DCC8;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_10006DC48;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10006DC48()
{
  sub_100030C58();

  v0 = sub_100030CE0();
  sub_10000F924(v0, v1);

  sub_100030C70();

  return v2();
}

uint64_t sub_10006DCC8()
{
  sub_100030C58();

  v0 = type metadata accessor for Date();
  sub_100070B78(v0);

  sub_100030C70();

  return v1();
}

uint64_t sub_10006DD80(const void *a1, void *a2)
{
  v2[2] = a2;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  v2[3] = swift_task_alloc();
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a1);
  a2;
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_10006DE88;

  return NotificationsManager.schedule()();
}

uint64_t sub_10006DE88()
{
  sub_100030C58();
  sub_100043668();
  v2 = v1;
  sub_10004AFD8();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_10000FA6C();
  *v8 = v7;

  v9 = sub_100070B54();
  sub_10000F924(v9, v10);
  v11 = type metadata accessor for Date();
  isa = 0;
  if (sub_100007374(v5, 1, v11) != 1)
  {
    v13 = *(v2 + 24);
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_100030C40();
    (*(v14 + 8))(v13, v11);
  }

  v15 = *(v2 + 40);
  (v15)[2](v15, isa);
  _Block_release(v15);

  sub_100030C70();

  return v16();
}

void sub_10006E04C(uint64_t a1, void (**a2)(void, void))
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000706DC;
  *(v11 + 24) = v10;
  _Block_copy(a2);

  static Logger.notifications.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v4;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received proxy request for evaluating notification subscriptions", v14, 2u);
    v4 = v28;
  }

  v15 = *(v4 + 8);
  v15(v9, v3);
  if (WDWeatherAppIsInstalled())
  {
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    v16 = sub_10006D068(0xD000000000000029, 0x8000000100085EA0);
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.notifications.getter();
    sub_100003020(&qword_1000A5A30, &qword_100082BD8);
    type metadata accessor for NotificationsManager(0);
    firstly<A, B>(on:disposeOn:closure:)();

    v18 = swift_allocObject();
    v18[2] = sub_100070AA0;
    v18[3] = v11;
    v18[4] = v16;

    v19 = v16;
    v20 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    v21 = swift_allocObject();
    v21[2] = sub_100070AA0;
    v21[3] = v11;
    v21[4] = v19;

    v22 = v19;
    v23 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    static Logger.notifications.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Weather app was uninstalled; rejecting evaluation request", v26, 2u);
    }

    v15(v7, v3);
    a2[2](a2, 0);
    [objc_opt_self() neSessionClearCaches];
  }

  _Block_release(a2);
}

void NotificationsManager.evaluate(with:)()
{
  sub_100030E38();
  v29 = sub_100070BB8();
  v2 = type metadata accessor for Logger();
  sub_100006FBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100070B14();
  __chkstk_darwin(v6);
  sub_100070AEC();
  v7 = swift_allocObject();
  sub_100070BD8(v7);
  static Logger.notifications.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_100030F7C();
    sub_100070B6C(v10);
    sub_100070B98(&_mh_execute_header, v11, v12, "Received proxy request for evaluating notification subscriptions");
    sub_100030D84();
  }

  v13 = *(v4 + 8);
  v14 = sub_100070B54();
  v13(v14);
  if (WDWeatherAppIsInstalled())
  {
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    sub_100070B60();
    v16 = sub_10006D068(0xD000000000000029, v15);
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.notifications.getter();
    sub_100003020(&qword_1000A5A30, &qword_100082BD8);
    firstly<A, B>(on:disposeOn:closure:)();

    sub_100030E74();
    v18 = swift_allocObject();
    v18[2] = sub_1000700B4;
    v18[3] = v0;
    v18[4] = v16;

    v19 = v16;
    v20 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    sub_100030E74();
    v21 = swift_allocObject();
    v21[2] = sub_1000700B4;
    v21[3] = v0;
    v21[4] = v19;

    v22 = v19;
    v23 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    static Logger.notifications.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_100030F7C();
      sub_100070B6C(v26);
      sub_100070BF8(&_mh_execute_header, v27, v28, "Weather app was uninstalled; rejecting evaluation request");
      sub_100030D84();
    }

    (v13)(v1, v2);
    v30(0);
    [objc_opt_self() neSessionClearCaches];
  }

  sub_100030E08();
}

id sub_10006E86C(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  v2 = objc_opt_self();

  return [v2 neSessionClearCaches];
}

void sub_10006E90C(uint64_t a1, void (*a2)(Class), uint64_t a3)
{
  v47 = a2;
  v46 = a3;
  v4 = type metadata accessor for Logger();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = __chkstk_darwin(v4);
  v41 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v37[-v7];
  v9 = sub_100003020(&qword_1000A5A30, &qword_100082BD8);
  v10 = __chkstk_darwin(v9 - 8);
  v42 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v37[-v12];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v37[-v19];
  v45 = a1;
  sub_1000707FC(a1, v13, &qword_1000A5A30, &qword_100082BD8);
  if (sub_100007374(v13, 1, v14) == 1)
  {
    sub_100070860(v13, &qword_1000A3800, &unk_100080860);
    static Logger.notifications.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Did not receive new fetch schedule date after evaluation", v23, 2u);
    }

    (*(v43 + 8))(v8, v44);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    v24 = v41;
    static Logger.notifications.getter();
    (*(v15 + 16))(v18, v20, v14);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = v27;
      v40 = swift_slowAlloc();
      v48 = v40;
      *v27 = 136446210;
      sub_1000708BC(&qword_1000A4198, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v38 = v26;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v31 = *(v15 + 8);
      v31(v18, v14);
      v32 = sub_10000D9FC(v28, v30, &v48);

      v33 = v39;
      *(v39 + 1) = v32;
      _os_log_impl(&_mh_execute_header, v25, v38, "Updated notification fetch schedule with date after evaluation: %{public}s", v33, 0xCu);
      sub_100006994(v40);

      (*(v43 + 8))(v41, v44);
      v31(v20, v14);
    }

    else
    {

      v34 = *(v15 + 8);
      v34(v18, v14);
      (*(v43 + 8))(v24, v44);
      v34(v20, v14);
    }
  }

  v35 = v42;
  sub_1000707FC(v45, v42, &qword_1000A5A30, &qword_100082BD8);
  if (sub_100007374(v35, 1, v14) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v35, v14);
  }

  v47(isa);
}

uint64_t NotificationsManager.unregister()()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_100070AD4();
  sub_1000708BC(v3, v4, &protocol conformance descriptor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v6;
  v1[8] = v5;

  return _swift_task_switch(sub_10006EF84, v6, v5);
}

uint64_t sub_10006EF84(uint64_t a1)
{
  static Logger.notifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10004B070(v3))
  {
    *sub_100030F7C() = 0;
    sub_1000310B0(&_mh_execute_header, v4, v5, "Received request for unregistering all notification subscriptions");
    sub_10004B030();
  }

  v6 = v1[2];

  v7 = sub_100030CE0();
  v8(v7);
  sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
  sub_100070B60();
  v1[9] = sub_10006D068(0xD00000000000001DLL, v9);
  sub_1000032B8((v6 + qword_1000A5A38), *(v6 + qword_1000A5A38 + 24));
  sub_100030CE0();
  v1[10] = dispatch thunk of PrecipitationNotificationsManagerType.unregister()();
  v10 = swift_task_alloc();
  v1[11] = v10;
  *v10 = v1;
  v10[1] = sub_10006F0EC;

  return Promise.resolveAsync()(v10);
}

uint64_t sub_10006F0EC()
{
  sub_100030C58();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = sub_100070A7C;
  }

  else
  {

    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = sub_10006F224;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10006F224()
{
  sub_100030C4C();
  sub_100024BD4();
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_10006F2CC;

  return Promise.resolveAsync()(v2);
}

uint64_t sub_10006F2CC()
{
  sub_100030C58();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = sub_100070A34;
  }

  else
  {

    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = sub_10006F404;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10006F404()
{
  sub_100030C4C();

  [objc_opt_self() neSessionClearCaches];

  sub_100030C70();

  return v1();
}

uint64_t sub_10006F4A8(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  sub_100070AEC();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_100078554(a5, v8);
}

uint64_t sub_10006F514(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000708BC(&qword_1000A40F8, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006F5D8, v4, v3);
}

uint64_t sub_10006F5D8()
{
  sub_100030C4C();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10006F684;

  return NotificationsManager.unregister()();
}

uint64_t sub_10006F684()
{
  sub_100030C4C();
  sub_100043668();
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_10000FA6C();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_100030C70();

  return v6();
}

void sub_10006F7A8(uint64_t a1, void (**a2)(void))
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10007063C;
  *(v11 + 24) = v10;
  _Block_copy(a2);

  static Logger.notifications.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v4;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received request for validating channel subscriptions", v14, 2u);
    v4 = v25;
  }

  v15 = *(v4 + 8);
  v15(v9, v3);
  if (WDWeatherAppIsInstalled())
  {
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    v16 = sub_10006D068(0xD00000000000001BLL, 0x8000000100085EF0);
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.notifications.getter();
    type metadata accessor for NotificationsManager(0);
    firstly<A, B>(on:disposeOn:closure:)();

    v18 = swift_allocObject();
    v18[2] = sub_100070A80;
    v18[3] = v11;
    v18[4] = v16;

    v19 = v16;
    v20 = zalgo.getter();
    Promise.always(on:closure:)();
  }

  else
  {
    static Logger.notifications.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Weather app was uninstalled; rejecting validation request", v23, 2u);
    }

    v15(v7, v3);
    a2[2](a2);
    [objc_opt_self() neSessionClearCaches];
  }

  _Block_release(a2);
}

void NotificationsManager.validate(with:)()
{
  sub_100030E38();
  v27 = sub_100070BB8();
  v2 = type metadata accessor for Logger();
  sub_100006FBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100070B14();
  __chkstk_darwin(v6);
  sub_100070AEC();
  v7 = swift_allocObject();
  sub_100070BD8(v7);
  static Logger.notifications.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_100030F7C();
    sub_100070B6C(v10);
    sub_100070B98(&_mh_execute_header, v11, v12, "Received request for validating channel subscriptions");
    sub_100030D84();
  }

  v13 = *(v4 + 8);
  v14 = sub_100070B54();
  v13(v14);
  if (WDWeatherAppIsInstalled())
  {
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    sub_100070B60();
    v16 = sub_10006D068(0xD00000000000001BLL, v15);
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.notifications.getter();
    firstly<A, B>(on:disposeOn:closure:)();

    sub_100030E74();
    v18 = swift_allocObject();
    v18[2] = sub_100070140;
    v18[3] = v0;
    v18[4] = v16;

    v19 = v16;
    v20 = zalgo.getter();
    Promise.always(on:closure:)();
  }

  else
  {
    static Logger.notifications.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = sub_100030F7C();
      sub_100070B6C(v23);
      sub_100070BF8(&_mh_execute_header, v24, v25, "Weather app was uninstalled; rejecting validation request");
      sub_100030D84();
    }

    v26 = (v13)(v1, v2);
    v28(v26);
    [objc_opt_self() neSessionClearCaches];
  }

  sub_100030E08();
}

id sub_10006FEA4(void (*a1)(void))
{
  a1();
  v1 = objc_opt_self();

  return [v1 neSessionClearCaches];
}

void sub_10006FF40(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

uint64_t sub_10006FFB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006FFFC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100030BFC(v6);
  *v7 = v8;
  v7[1] = sub_1000435A4;

  return sub_10006D950(a1, v3, v4, v5);
}

uint64_t sub_10007010C()
{

  sub_100070AEC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t type metadata accessor for NotificationsManager(uint64_t a1)
{
  result = qword_1000A5A50;
  if (!qword_1000A5A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100070200(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100070A78;

  return v6(a1);
}

uint64_t sub_1000702F8()
{
  sub_100030C58();
  sub_100070B30();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_100070AA8(v1);

  return v4(v3);
}

uint64_t sub_100070388(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10007047C;

  return v5(v2 + 32);
}

uint64_t sub_10007047C()
{
  sub_100030C4C();
  sub_100043668();
  v2 = v1;
  sub_10004AFD8();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_10000FA6C();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_100030C70();

  return v8();
}

uint64_t sub_100070574()
{
  sub_100030C58();
  sub_100070B30();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_100070AA8(v1);

  return v4(v3);
}

uint64_t sub_100070604()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070648()
{
  sub_100030C58();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100070AF8(v1);

  return v3(v2);
}

uint64_t sub_1000706F0()
{

  sub_100030E74();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10007072C()
{
  _Block_release(*(v0 + 16));

  sub_100070AEC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100070768()
{
  sub_100030C58();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100070AF8(v1);

  return v3(v2);
}

uint64_t sub_1000707FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003020(a3, a4);
  sub_100030C40();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100070860(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003020(a2, a3);
  sub_100030C40();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000708BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100070904()
{
  sub_100030C58();
  sub_100070B30();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_100070AA8(v1);

  return v4(v3);
}

uint64_t sub_100070994()
{
  sub_100030C58();
  sub_100070B30();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_100070AA8(v1);

  return v4(v3);
}

uint64_t sub_100070B78(uint64_t a1)
{

  return sub_100006BD4(v1, 1, 1, a1);
}

void sub_100070B98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_100070BB8()
{

  return swift_getObjectType();
}

uint64_t sub_100070BD8(uint64_t a1)
{
  *(v3 - 88) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

void sub_100070BF8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *sub_100070C1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for APSEnvironment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC8weatherd20APSConnectionManager_lock);
  UnfairLock.lock()();
  v11 = *(v1 + OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v31 = v10;
    v32 = v2;
    v33 = v3;
    v30 = OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection;
    static Settings.WeatherEnvironment.apsEnvironment.getter();
    sub_100073634(&qword_1000A5B68, v13, type metadata accessor for APSConnectionManager, &unk_100082D48);
    Configurable.setting<A>(_:)();

    v14 = APSEnvironment.rawValue.getter();
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    static Logger.notifications.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315138;

      v21 = v14;
      v22 = sub_10000D9FC(v14, v16, &v34);

      *(v19 + 4) = v22;
      v14 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Setting up APSConnction with environment %s", v19, 0xCu);
      sub_100006994(v20);
    }

    (*(v33 + 8))(v5, v32);
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.notifications.getter();
    v24 = objc_allocWithZone(APSConnection);
    v25 = sub_1000730EC(v14, v16, 0xD000000000000015, 0x8000000100085FD0, v23);
    v11 = v25;
    if (v25)
    {
      [v25 setDelegate:v1];
      sub_100073264(&off_10009AF80, v11);
      v26 = *(v1 + v30);
      *(v1 + v30) = v11;
      v27 = v11;
    }
  }

  UnfairLock.unlock()();
  return v11;
}

void sub_100070FCC()
{
  sub_100030E38();
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for PromiseDeduperFlags();
  __chkstk_darwin(v2);
  sub_10000E970();
  v3 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v3 - 8);
  sub_10003C888();
  v4 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_lock;
  static UnfairLock.Options.dataSynchronization.getter();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v0[v4] = UnfairLock.init(options:)();
  *&v0[OBJC_IVAR____TtC8weatherd20APSConnectionManager_observers] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_deduper;
  v7 = _swiftEmptyArrayStorage;
  sub_100073634(&qword_1000A5BA0, 255, &type metadata accessor for PromiseDeduperFlags, &protocol conformance descriptor for PromiseDeduperFlags);
  sub_100003020(&qword_1000A4E28, &qword_100082DA0);
  sub_1000626C0(&qword_1000A5BB0, &qword_1000A4E28, &qword_100082DA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100003020(&qword_1000A5BB8, &qword_100082DA8);
  swift_allocObject();
  *&v0[v5] = PromiseDeduper.init(options:)();
  *&v0[OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, "init");
  sub_100030E08();
}

void *sub_100071274()
{
  swift_getObjectType();

  return Configurable.setting<A>(_:)();
}

uint64_t sub_1000712CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:)(a1, a2, ObjectType, a6);
}

uint64_t sub_100071334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:_:)(a1, a2, a3, ObjectType, a7);
}

uint64_t sub_1000713A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:_:)(a1, a2, a3, a4, ObjectType, a8);
}

void sub_100071424(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  sub_100006FBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000188B0();
  v33 = v7;
  __chkstk_darwin(v8);
  sub_1000737A4();
  static Logger.notifications.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v32 = a1;
  if (os_log_type_enabled(v9, v10))
  {
    sub_10007378C();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136446210;
    v13 = Array.description.getter();
    v15 = sub_10000D9FC(v13, v14, &v34);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Attempting to subscribe to channels %{public}s", v11, 0xCu);
    sub_100006994(v12);
    sub_100073780();

    sub_100073780();
  }

  else
  {
  }

  v16 = *(v5 + 8);
  v16(v1, v3);
  v17 = sub_100070C1C();
  if (!v17)
  {
    sub_1000732D0();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return;
  }

  v18 = v17;
  v19 = sub_100073324(v17);
  sub_100003020(&qword_1000A3B60, &unk_100082250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100081610;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000100084790;
  if (v19)
  {
    v21 = sub_10002AB80(v19, inited);

    swift_setDeallocating();
    sub_100073220();
    if (v21)
    {
      goto LABEL_13;
    }
  }

  else
  {
    swift_setDeallocating();
    sub_100073220();
  }

  static Logger.notifications.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    sub_100073798();
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "APSConnection configuration error: com.apple.weather is not an enabled topic", v25, 2u);
    sub_100073780();
  }

  v16(v33, v3);
LABEL_13:
  v26 = *(v32 + 16);
  v27 = _swiftEmptyArrayStorage;
  if (v26)
  {
    v34 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v28 = (v32 + 40);
    while (1)
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v31 = objc_allocWithZone(PKPublicChannel);
      swift_bridgeObjectRetain_n();
      if (!sub_100073198(v29, v30))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v28 += 2;
      if (!--v26)
      {
        v27 = v34;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_10007337C(v27, 0xD000000000000011, 0x8000000100084790, v18, &selRef_subscribeToChannels_forTopic_);
  }
}

void sub_100071818(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  sub_100006FBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10003C888();
  static Logger.notifications.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    sub_10007378C();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    v11 = Array.description.getter();
    v23 = v3;
    v13 = sub_10000D9FC(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to unsubscribe from channels %{public}s", v9, 0xCu);
    sub_100006994(v10);
    sub_100073780();

    sub_100073780();

    (*(v5 + 8))(v1, v23);
  }

  else
  {

    (*(v5 + 8))(v1, v3);
  }

  v14 = sub_100070C1C();
  if (v14)
  {
    v15 = v14;
    v16 = *(a1 + 16);
    v17 = _swiftEmptyArrayStorage;
    if (v16)
    {
      v24 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v18 = (a1 + 40);
      while (1)
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = objc_allocWithZone(PKPublicChannel);
        swift_bridgeObjectRetain_n();
        if (!sub_100073198(v19, v20))
        {
          break;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v18 += 2;
        if (!--v16)
        {
          v17 = v24;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
      sub_10007337C(v17, 0xD000000000000011, 0x8000000100084790, v15, &selRef_unsubscribeFromChannels_forTopic_);
    }
  }

  else
  {
    sub_1000732D0();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }
}

uint64_t sub_100071AF0()
{
  v1 = type metadata accessor for Logger();
  sub_100006FBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10003C888();
  static Logger.notifications.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    sub_100073798();
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching subscribed channels", v7, 2u);
    sub_100073780();
  }

  v8 = (*(v3 + 8))(v0, v1);
  __chkstk_darwin(v8);
  return PromiseDeduper.promise(key:createBlock:)();
}

uint64_t sub_100071C7C(uint64_t a1)
{
  sub_100003020(&qword_1000A5B80, &unk_100082D90);
  swift_allocObject();
  return Promise.init(resolver:)();
}

void sub_100071CE4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_100070C1C();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = sub_100073480;
    v11[5] = v8;
    v14[4] = sub_1000734F8;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1000720BC;
    v14[3] = &unk_10009C950;
    v12 = _Block_copy(v14);

    sub_10007351C(0xD000000000000011, 0x8000000100084790, v12, v10);
    _Block_release(v12);
  }

  else
  {

    sub_1000732D0();
    swift_allocError();
    *v13 = 0;
    a3();
  }
}

void sub_100071E94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *))
{
  if (a2)
  {
    sub_1000732D0();
    v7 = swift_allocError();
    *v8 = a2;
    swift_errorRetain();
    swift_errorRetain();
    a3(v7);
  }

  else if (a1)
  {
    v10 = sub_100037A1C(a1);
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    while (v10 != v11)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v16 = sub_100073590(v13);
      v18 = v17;

      ++v11;
      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005B5C4();
          v12 = v21;
        }

        v19 = v12[2];
        if (v19 >= v12[3] >> 1)
        {
          sub_10005B5C4();
          v12 = v22;
        }

        v12[2] = v19 + 1;
        v20 = &v12[2 * v19];
        v20[4] = v16;
        v20[5] = v18;
        v11 = v15;
      }
    }

    a5(v12);
  }

  else
  {
    a5(0);
  }
}

uint64_t sub_1000720BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100030944(0, &qword_1000A5B60, PKPublicChannel_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100072160()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  sub_100006FBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10003C888();
  static Logger.notifications.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    sub_100073798();
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unsubscribing from all subscribed channels", v7, 2u);
    sub_100073780();
  }

  (*(v3 + 8))(v0, v1);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A5BC0, &unk_100082DB0);
  firstly<A, B>(on:disposeOn:closure:)();

  v9 = static OS_dispatch_queue.notifications.getter();
  v10 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v10;
}

void sub_100072370(uint64_t *a1)
{
  v2 = *a1;
  if (!v2 || (sub_100071818(v2), !v1))
  {
    sub_100003020(&qword_1000A37D0, &qword_100080838);
    swift_allocObject();
    Promise.init(value:)();
  }
}

void sub_1000723D8()
{
  sub_100030E38();
  v1 = v0;
  v2 = type metadata accessor for Logger();
  sub_100006FBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000E970();
  v8 = v7 - v6;
  UnfairLock.lock()();
  v9 = OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection;
  v10 = *(v0 + OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection);
  if (v10)
  {
    v11 = v10;
    static Logger.notifications.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      sub_100073798();
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Invalidating APSConnection", v14, 2u);
      sub_100073780();
    }

    (*(v4 + 8))(v8, v2);
    sub_100073264(_swiftEmptyArrayStorage, v11);
    [v11 setDelegate:0];
    [v11 shutdown];

    v15 = *(v1 + v9);
    *(v1 + v9) = 0;
  }

  UnfairLock.unlock()();
  sub_100030E08();
}

void sub_10007260C()
{
  sub_100030E38();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100006FBC();
  v57 = v4;
  __chkstk_darwin(v5);
  sub_10000E970();
  v55 = v7 - v6;
  v56 = type metadata accessor for DispatchQoS();
  sub_100006FBC();
  v54 = v8;
  __chkstk_darwin(v9);
  sub_10000E970();
  v53 = v11 - v10;
  v12 = type metadata accessor for APSMessage(0);
  __chkstk_darwin(v12 - 8);
  sub_10000E970();
  v15 = (v14 - v13);
  v16 = type metadata accessor for Logger();
  sub_100006FBC();
  v58 = v17;
  __chkstk_darwin(v18);
  sub_1000188B0();
  v50 = v19;
  __chkstk_darwin(v20);
  sub_1000737A4();
  static Logger.notifications.getter();
  v21 = v2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v49 = v16;
    v24 = v3;
    v25 = v15;
    sub_10007378C();
    v26 = swift_slowAlloc();
    *v26 = 134349056;
    if (!v2)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v27 = v26;
    *(v26 + 4) = [v21 identifier];

    _os_log_impl(&_mh_execute_header, v22, v23, "Received incoming message: %{public}lu", v27, 0xCu);
    sub_100073780();

    v15 = v25;
    v3 = v24;
    v16 = v49;
  }

  else
  {

    v22 = v21;
  }

  v28 = *(v58 + 8);
  v28(v0, v16);
  UnfairLock.lock()();
  v29 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_observers;
  swift_beginAccess();
  v30 = *(v0 + v29);

  UnfairLock.unlock()();
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_100073590(v21);
  v52 = v3;
  if (v31)
  {
  }

  else
  {
    static Logger.notifications.getter();
    v32 = v21;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      sub_10007378C();
      v35 = v15;
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      *(v36 + 4) = [v32 identifier];

      _os_log_impl(&_mh_execute_header, v33, v34, "Received incoming message without channel identifier: %{public}lu", v36, 0xCu);
      v15 = v35;
      sub_100073780();
    }

    else
    {

      v33 = v32;
    }

    v28(v50, v16);
  }

  v59 = v15;
  sub_100007064(v21, v15);
  v37 = dispatch_group_create();
  sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
  v51 = sub_10006D068(0xD00000000000001DLL, 0x8000000100086010);
  v38 = *(v30 + 16);
  if (v38)
  {
    v39 = (v30 + 40);
    do
    {
      v40 = *v39;
      swift_unknownObjectRetain();
      dispatch_group_enter(v37);
      ObjectType = swift_getObjectType();
      v42 = swift_allocObject();
      *(v42 + 16) = v37;
      v43 = *(v40 + 8);
      v44 = v37;
      v43(v59, sub_10007362C, v42, ObjectType, v40);
      swift_unknownObjectRelease();

      v39 += 2;
      --v38;
    }

    while (v38);
  }

  [objc_opt_self() neSessionClearCaches];
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v45 = static OS_dispatch_queue.notifications.getter();
  v46 = swift_allocObject();
  *(v46 + 16) = v51;
  v60[4] = nullsub_1;
  v60[5] = v46;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 1107296256;
  v60[2] = sub_100002FA4;
  v60[3] = &unk_10009C9C8;
  v47 = _Block_copy(v60);
  v48 = v51;
  static DispatchQoS.unspecified.getter();
  sub_100073634(&qword_1000A4B70, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003020(&unk_1000A32B0, &qword_100080350);
  sub_1000626C0(&qword_1000A4B80, &unk_1000A32B0, &qword_100080350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v47);

  (*(v57 + 8))(v55, v52);
  (*(v54 + 8))(v53, v56);
  sub_10006A28C(v59);

  sub_100030E08();
}

void sub_100072D30()
{
  sub_100030E38();
  v2 = v1;
  v3 = type metadata accessor for Logger();
  sub_100006FBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10003C888();
  static Logger.notifications.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v35 = v3;
    sub_10007378C();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136446210;
    if (!v2)
    {
      goto LABEL_23;
    }

    v11 = v10;

    sub_100030944(0, &qword_1000A5B88, APSChannelSubscriptionFailure_ptr);
    v12 = Array.description.getter();
    v14 = sub_10000D9FC(v12, v13, &v37);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to subscribe to channels with failures: %{public}s", v9, 0xCu);
    sub_100006994(v11);
    sub_100073780();

    sub_100073780();

    (*(v5 + 8))(v0, v35);
  }

  else
  {

    (*(v5 + 8))(v0, v3);
  }

  v15 = v2;
  UnfairLock.lock()();
  v16 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_observers;
  swift_beginAccess();
  v17 = *(v0 + v16);

  UnfairLock.unlock()();
  if (v15)
  {
    v18 = v15;
    v36 = sub_100037A1C(v15);
    if (!v36)
    {
LABEL_18:

      sub_100030E08();
      return;
    }

    v19 = 0;
    v20 = *(v17 + 16);
    v32 = v15 + 32;
    v33 = v15;
    v34 = v15 & 0xC000000000000001;
    while (2)
    {
      sub_1000731FC(v19, v34 == 0, v18);
      if (v34)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v32 + 8 * v19);
      }

      v22 = v21;
      if (!__OFADD__(v19++, 1))
      {
        v24 = 0;
        v25 = (v17 + 40);
        while (v20 != v24)
        {
          if (v24 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v26 = *v25;
          swift_unknownObjectRetain();
          v27 = sub_100073590(v22);
          if (!v28)
          {
            goto LABEL_21;
          }

          v29 = v27;
          v30 = v28;
          ++v24;
          ObjectType = swift_getObjectType();
          (*(v26 + 16))(v29, v30, ObjectType, v26);
          swift_unknownObjectRelease();

          v25 += 2;
        }

        v18 = v33;
        if (v19 != v36)
        {
          continue;
        }

        goto LABEL_18;
      }

      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

id sub_1000730EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

id sub_100073198(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithChannelID:v3];

  return v4;
}

unint64_t sub_1000731FC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100073220()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_100073264(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 _setEnabledTopics:isa];
}

unint64_t sub_1000732D0()
{
  result = qword_1000A5B58;
  if (!qword_1000A5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5B58);
  }

  return result;
}

uint64_t sub_100073324(void *a1)
{
  v1 = [a1 enabledTopics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10007337C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_100030944(0, &qword_1000A5B60, PKPublicChannel_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = String._bridgeToObjectiveC()();

  [a4 *a5];
}

uint64_t sub_100073448()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073480(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1000734B8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100073504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10007351C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 getRegisteredChannelsForTopic:v6 withCompletion:a3];
}

uint64_t sub_100073590(void *a1)
{
  v1 = [a1 channelID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000735F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100073634(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100073688(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000736D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10007372C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100073744(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_1000737B8(uint64_t a1)
{
  sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100018920();
  __chkstk_darwin(v2);
  v4 = &v29 - v3;
  v5 = type metadata accessor for Date();
  sub_100006FBC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = String._bridgeToObjectiveC()();
  sub_1000759A8(v12, "setTitle:");

  v13 = String._bridgeToObjectiveC()();
  sub_1000759A8(v13, "setSubtitle:");

  v14 = String._bridgeToObjectiveC()();
  sub_1000759A8(v14, "setBody:");

  v15 = String._bridgeToObjectiveC()();
  sub_1000759A8(v15, "setThreadIdentifier:");

  if (*(a1 + 64))
  {
    v16 = *(a1 + 64);
  }

  else
  {
    v16 = Dictionary.init(dictionaryLiteral:)();
  }

  sub_100074AA0(v16);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000759A8(v18, "setUserInfo:");

  if (*(a1 + 72))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  [v11 setInterruptionLevel:v19];
  v20 = [objc_opt_self() defaultSound];
  sub_1000759A8(v20, "setSound:");

  v21 = String._bridgeToObjectiveC()();
  sub_1000759A8(v21, "setCategoryIdentifier:");

  v22 = type metadata accessor for SevereNotificationContent(0);
  sub_10000F994(a1 + *(v22 + 40), v4);
  if (sub_100007374(v4, 1, v5) == 1)
  {
    v23 = sub_10007595C();
    sub_100075278(v23, v24);
    sub_100018858(v4, &qword_1000A3800, &unk_100080860);
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    v25 = Date._bridgeToObjectiveC()().super.isa;
    [v11 setExpirationDate:v25];

    (*(v7 + 8))(v10, v5);
    v26 = sub_10007595C();
    sub_100075278(v26, v27);
  }

  return v11;
}

uint64_t sub_100073B18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100018920();
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  sub_100003020(&qword_1000A5BD0, &qword_100082E90);
  sub_100006FBC();
  sub_100018920();
  __chkstk_darwin(v7);
  v25 = type metadata accessor for SevereNotificationContent(0);
  sub_100018904();
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v26 = a1;
  sub_1000032B8(a1, v11);
  sub_1000752D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006994(v26);
  }

  v23 = v6;
  v32 = 0;
  sub_100075988();
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v10 + 1) = v12;
  v31 = 1;
  sub_100075988();
  *(v10 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v10 + 3) = v13;
  v30 = 2;
  sub_100075988();
  *(v10 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v10 + 5) = v14;
  v29 = 3;
  sub_100075988();
  *(v10 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v10 + 7) = v15;
  v28 = 4;
  sub_100075988();
  v10[72] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  type metadata accessor for Date();
  v27 = 7;
  sub_100007EE4(&qword_1000A36C8, &protocol conformance descriptor for Date);
  v16 = v23;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10000F924(v16, &v10[*(v25 + 40)]);
  v17 = sub_100073F5C();
  v18 = sub_100075998();
  v19(v18);
  *(v10 + 8) = v17;
  sub_100075324(v10, v24, type metadata accessor for SevereNotificationContent);
  sub_100006994(v26);
  v20 = sub_10007595C();
  return sub_100075278(v20, v21);
}

uint64_t sub_100073F5C()
{
  v1 = Dictionary.init(dictionaryLiteral:)();
  LOBYTE(v17) = 5;
  sub_100003020(&qword_1000A5BD0, &qword_100082E90);
  v2 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v0)
  {
  }

  else
  {
    if (v3)
    {
      v20 = &type metadata for String;
      *&v19 = v2;
      *(&v19 + 1) = v3;
      sub_100018804(&v19, &v17);
      swift_isUniquelyReferenced_nonNull_native();
      v21 = v1;
      sub_10002C1A4(&v17);
      v1 = v21;
    }

    else
    {
      v4 = sub_100074DF4(0x6E6F697461636F4CLL, 0xE800000000000000);
      if (v5)
      {
        v6 = v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v1;
        v8 = *(v1 + 24);
        sub_100003020(&qword_1000A3E50, &qword_100080CF0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
        v1 = v21;

        sub_100018804((*(v21 + 56) + 32 * v6), &v17);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      sub_100018858(&v17, &unk_1000A3880, &qword_1000808A8);
    }

    LOBYTE(v17) = 6;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v10)
    {
      v20 = &type metadata for String;
      *&v19 = v9;
      *(&v19 + 1) = v10;
      sub_100018804(&v19, &v17);
      swift_isUniquelyReferenced_nonNull_native();
      v21 = v1;
      sub_10002C1A4(&v17);
      return v21;
    }

    else
    {
      v12 = sub_100074DF4(0x55736C6961746544, 0xEA00000000004C52);
      if (v13)
      {
        v14 = v12;
        v15 = swift_isUniquelyReferenced_nonNull_native();
        v21 = v1;
        v16 = *(v1 + 24);
        sub_100003020(&qword_1000A3E50, &qword_100080CF0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16);
        v1 = v21;

        sub_100018804((*(v1 + 56) + 32 * v14), &v17);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      sub_100018858(&v17, &unk_1000A3880, &qword_1000808A8);
    }
  }

  return v1;
}

uint64_t sub_100074274(void *a1)
{
  v3 = v1;
  v5 = sub_100003020(&qword_1000A5BE0, &qword_100082E98);
  sub_100006FBC();
  v7 = v6;
  sub_100018920();
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_1000032B8(a1, a1[3]);
  sub_1000752D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23[0]) = 0;
  sub_100075978();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  LOBYTE(v23[0]) = 1;
  sub_100075978();
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v23[0]) = 2;
  sub_100075978();
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v23[0]) = 3;
  sub_100075978();
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v23[0]) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  type metadata accessor for SevereNotificationContent(0);
  LOBYTE(v23[0]) = 7;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100075384();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v11 = *(v3 + 64);
  if (!v11)
  {
    return (*(v7 + 8))(v10, v5);
  }

  sub_1000136D8(v11, &v21, 0x6E6F697461636F4CLL, 0xE800000000000000);
  if (v22)
  {
    sub_100018804(&v21, v23);
    v12 = sub_10000DF6C(v23, &v21);
    if (sub_1000759C0(v12, v13, v14, &type metadata for String))
    {
      LOBYTE(v21) = 5;
      sub_100075978();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      sub_100006994(v23);
    }

    else
    {
      sub_100006994(v23);
    }
  }

  else
  {
    sub_100018858(&v21, &unk_1000A3880, &qword_1000808A8);
  }

  v15 = sub_1000136D8(v11, &v21, 0x55736C6961746544, 0xEA00000000004C52);
  if (v22)
  {
    sub_100018804(&v21, v23);
    v16 = sub_10000DF6C(v23, &v21);
    if (sub_1000759C0(v16, v17, v18, &type metadata for String))
    {
      LOBYTE(v21) = 6;
      sub_100075978();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    }

    sub_100006994(v23);
    return (*(v7 + 8))(v10, v5);
  }

  (*(v7 + 8))(v10, v5, v15);
  return sub_100018858(&v21, &unk_1000A3880, &qword_1000808A8);
}

uint64_t sub_1000745F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000100086030 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C61636974697263 && a2 == 0xE800000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x55736C6961746564 && a2 == 0xEA00000000004C52;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6974617269707865 && a2 == 0xEE00656D69546E6FLL)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100074894(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 2036625250;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6C61636974697263;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x55736C6961746564;
      break;
    case 7:
      result = 0x6974617269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000749A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000745F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000749D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007488C();
  *a1 = result;
  return result;
}

uint64_t sub_1000749F8(uint64_t a1)
{
  v2 = sub_1000752D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100074A34(uint64_t a1)
{
  v2 = sub_1000752D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100074AA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003020(&qword_1000A5BC8, &qword_100082E88);
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

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_10000DF6C(*(a1 + 56) + 32 * v10, v35);
    *&v34 = v13;
    *(&v34 + 1) = v12;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100018804(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100018804(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100018804(v31, v32);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_100018804(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t type metadata accessor for SevereNotificationContent(uint64_t a1)
{
  result = qword_1000A5C48;
  if (!qword_1000A5C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100074DB0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100074ED8(a1, v4);
}

unint64_t sub_100074DF4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100074FF8(a1, a2, v4);
}

unint64_t sub_100074E6C(uint64_t a1)
{
  Hasher.init(_seed:)();
  ResolvedPredictedLocation.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return sub_1000750AC(a1, v2);
}

unint64_t sub_100074ED8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100074F9C(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100014EB0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100074FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000750AC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ResolvedPredictedLocation(0);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_100075324(*(v2 + 48) + v12 * v10, v8, type metadata accessor for ResolvedPredictedLocation);
      if (static Location.== infix(_:_:)() & 1) != 0 && *&v8[*(v5 + 20)] == *(a1 + *(v5 + 20)) && (static Date.== infix(_:_:)())
      {
        v13 = static Date.== infix(_:_:)();
        sub_100075278(v8, type metadata accessor for ResolvedPredictedLocation);
        if (v13)
        {
          return v10;
        }
      }

      else
      {
        sub_100075278(v8, type metadata accessor for ResolvedPredictedLocation);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_100075278(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100018904();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1000752D0()
{
  result = qword_1000A5BD8;
  if (!qword_1000A5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BD8);
  }

  return result;
}

uint64_t sub_100075324(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100018904();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100075384()
{
  result = qword_1000A5BE8;
  if (!qword_1000A5BE8)
  {
    sub_10000325C(&qword_1000A3800, &unk_100080860);
    sub_100007EE4(&qword_1000A36D8, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SevereNotificationContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SevereNotificationContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x100075578);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000755C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003020(&qword_1000A3800, &unk_100080860);
    v9 = a1 + *(a3 + 40);

    return sub_100007374(v9, a2, v8);
  }
}

uint64_t sub_10007566C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003020(&qword_1000A3800, &unk_100080860);
    v8 = v5 + *(a4 + 40);

    return sub_100006BD4(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000756F8(uint64_t a1)
{
  sub_100075798(319);
  if (v1 <= 0x3F)
  {
    sub_1000757FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100075798(uint64_t a1)
{
  if (!qword_1000A5C58)
  {
    sub_10000325C(&qword_1000A5C60, &qword_100082ED0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A5C58);
    }
  }
}

void sub_1000757FC(uint64_t a1)
{
  if (!qword_1000A5C68)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A5C68);
    }
  }
}

unint64_t sub_100075858()
{
  result = qword_1000A5CB0;
  if (!qword_1000A5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5CB0);
  }

  return result;
}

unint64_t sub_1000758B0()
{
  result = qword_1000A5CB8;
  if (!qword_1000A5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5CB8);
  }

  return result;
}

unint64_t sub_100075908()
{
  result = qword_1000A5CC0;
  if (!qword_1000A5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5CC0);
  }

  return result;
}

id sub_1000759A8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000759C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_100075B40(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return sub_100002FE8(v4, a2);
}

uint64_t sub_100075BFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_10004E58C(v5, a2);
  sub_100002FE8(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100075C9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100002FE8(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100075D5C()
{
  v96 = type metadata accessor for Urgency();
  sub_100006FBC();
  v86 = v1;
  __chkstk_darwin(v2);
  sub_1000188C4();
  v85 = v3;
  v4 = sub_100003020(&qword_1000A3E28, &qword_1000817A0);
  v5 = sub_100006FF0(v4);
  __chkstk_darwin(v5);
  sub_1000188B0();
  v94 = v6;
  sub_100030F24();
  __chkstk_darwin(v7);
  sub_100018938();
  v100 = v8;
  sub_1000188E8();
  type metadata accessor for Severity();
  sub_100006FBC();
  v92 = v10;
  v93 = v9;
  __chkstk_darwin(v9);
  sub_1000188C4();
  v91 = v11;
  sub_1000188E8();
  v90 = type metadata accessor for Importance();
  sub_100006FBC();
  v84 = v12;
  __chkstk_darwin(v13);
  sub_1000188C4();
  v83 = v14;
  v15 = sub_100003020(&qword_1000A4758, &qword_100081798);
  v16 = sub_100006FF0(v15);
  __chkstk_darwin(v16);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v17);
  sub_100018938();
  v99 = v18;
  v19 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v20 = sub_100006FF0(v19);
  __chkstk_darwin(v20);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v21);
  sub_1000782A0();
  v98 = v22;
  sub_100030F24();
  __chkstk_darwin(v23);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v24);
  sub_100018938();
  v88 = v25;
  sub_1000188E8();
  v26 = type metadata accessor for Date();
  sub_100006FBC();
  v97 = v27;
  __chkstk_darwin(v28);
  sub_10000E970();
  v29 = type metadata accessor for Certainty();
  sub_100006FBC();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_10000E970();
  v35 = v34 - v33;
  v36 = sub_100003020(&qword_1000A4768, &unk_1000817B0);
  v37 = sub_100006FF0(v36);
  __chkstk_darwin(v37);
  sub_100015754();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  v43 = &v83 - v42;
  Hasher.init()();
  v95 = v0;
  WeatherAlert.certainty.getter();
  sub_10003C7D0(v43, v40, &qword_1000A4768, &unk_1000817B0);
  sub_100078348(v40);
  if (v44)
  {
    sub_1000783EC();
  }

  else
  {
    (*(v31 + 32))(v35, v40, v29);
    sub_100078404();
    sub_10007820C(&qword_1000A5CC8, &type metadata accessor for Certainty, &protocol conformance descriptor for Certainty);
    sub_100078428();
    dispatch thunk of Hashable.hash(into:)();
    (*(v31 + 8))(v35, v29);
  }

  sub_100018858(v43, &qword_1000A4768, &unk_1000817B0);
  WeatherAlert.countryCode.getter();
  v45 = v88;
  if (v46)
  {
    sub_100078404();
    String.hash(into:)();
  }

  else
  {
    sub_1000783EC();
  }

  WeatherAlert.description.getter();
  String.hash(into:)();

  WeatherAlert.effectiveTime.getter();
  sub_10007826C();
  sub_10007820C(v47, v48, &protocol conformance descriptor for Date);
  sub_1000782AC();
  v49 = *(v97 + 8);
  v50 = sub_100078320();
  v49(v50);
  WeatherAlert.expireTime.getter();
  sub_1000782AC();
  v51 = sub_100078320();
  v49(v51);
  WeatherAlert.eventEndTime.getter();
  sub_10003C7D0(v45, v87, &qword_1000A3800, &unk_100080860);
  v52 = sub_100078478();
  if (sub_100007374(v52, v53, v26) == 1)
  {
    sub_1000783EC();
  }

  else
  {
    sub_100078460();
    sub_10007846C();
    v54();
    sub_100078404();
    sub_1000782AC();
    v55 = sub_100078320();
    v49(v55);
  }

  sub_100018858(v45, &qword_1000A3800, &unk_100080860);
  WeatherAlert.eventOnsetTime.getter();
  sub_1000783A0();
  sub_10003C7D0(v56, v57, v58, &unk_100080860);
  v59 = sub_100078478();
  if (sub_100007374(v59, v60, v26) == 1)
  {
    sub_1000783EC();
  }

  else
  {
    sub_10007846C();
    v61();
    sub_100078404();
    sub_1000782AC();
    v62 = sub_100078320();
    v49(v62);
  }

  v63 = v90;
  sub_100018858(v98, &qword_1000A3800, &unk_100080860);
  v64 = v99;
  WeatherAlert.importance.getter();
  sub_10003C7D0(v64, v89, &qword_1000A4758, &qword_100081798);
  v65 = sub_100078478();
  if (sub_100007374(v65, v66, v63) == 1)
  {
    sub_1000783EC();
  }

  else
  {
    v67 = v84;
    v68 = v83;
    sub_1000783A0();
    v69();
    sub_100078404();
    sub_1000782E8();
    sub_10007820C(v70, v71, &protocol conformance descriptor for Importance);
    sub_100078428();
    dispatch thunk of Hashable.hash(into:)();
    (*(v67 + 8))(v68, v63);
  }

  sub_100018858(v99, &qword_1000A4758, &qword_100081798);
  WeatherAlert.issuedTime.getter();
  sub_1000782AC();
  v72 = sub_100078320();
  v49(v72);
  v73 = v91;
  WeatherAlert.severity.getter();
  sub_10007820C(&qword_1000A5CD8, &type metadata accessor for Severity, &protocol conformance descriptor for Severity);
  sub_100078428();
  v74 = v93;
  dispatch thunk of Hashable.hash(into:)();
  (*(v92 + 8))(v73, v74);
  WeatherAlert.source.getter();
  String.hash(into:)();

  v75 = v100;
  WeatherAlert.urgency.getter();
  sub_10003C7D0(v75, v94, &qword_1000A3E28, &qword_1000817A0);
  v76 = sub_100078478();
  v77 = v96;
  if (sub_100007374(v76, v78, v96) == 1)
  {
    sub_1000783EC();
  }

  else
  {
    v79 = v86;
    sub_100078460();
    v80 = v85;
    sub_10007846C();
    v81();
    sub_100078404();
    sub_10007820C(&qword_1000A5CE0, &type metadata accessor for Urgency, &protocol conformance descriptor for Urgency);
    sub_100078428();
    dispatch thunk of Hashable.hash(into:)();
    (*(v79 + 8))(v80, v77);
  }

  sub_100018858(v100, &qword_1000A3E28, &qword_1000817A0);
  v101 = Hasher.finalize()();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000766F0(uint64_t a1)
{
  v244 = a1;
  v1 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v2 = sub_100006FF0(v1);
  __chkstk_darwin(v2);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v3);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v4);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v5);
  sub_100018938();
  v228 = v6;
  sub_1000188E8();
  v229 = type metadata accessor for Date();
  sub_100006FBC();
  v238 = v7;
  __chkstk_darwin(v8);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v9);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v10);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v11);
  sub_100018938();
  v224 = v12;
  sub_1000188E8();
  type metadata accessor for UUID();
  sub_100006FBC();
  v236 = v14;
  v237 = v13;
  __chkstk_darwin(v13);
  sub_1000188C4();
  v235 = v15;
  sub_1000188E8();
  type metadata accessor for Location.Identifier();
  sub_100006FBC();
  v233 = v17;
  v234 = v16;
  __chkstk_darwin(v16);
  sub_1000188C4();
  v232 = v18;
  sub_1000188E8();
  v247 = type metadata accessor for WeatherAlert();
  sub_100006FBC();
  v245 = v19;
  __chkstk_darwin(v20);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v21);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v22);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v23);
  sub_1000782A0();
  v243 = v24;
  sub_100030F24();
  __chkstk_darwin(v25);
  sub_100018938();
  v241 = v26;
  v27 = sub_1000188E8();
  v231 = type metadata accessor for ResolvedPredictedLocation(v27);
  sub_100018904();
  __chkstk_darwin(v28);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v29);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v30);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v31);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v32);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v33);
  sub_100018938();
  v240 = v34;
  sub_1000188E8();
  v35 = type metadata accessor for Importance();
  sub_100006FBC();
  v246 = v36;
  __chkstk_darwin(v37);
  sub_1000188C4();
  v225 = v38;
  v39 = sub_100003020(&qword_1000A5CE8, &qword_100083018);
  sub_100018904();
  sub_100018920();
  __chkstk_darwin(v40);
  v42 = &v208 - v41;
  v227 = sub_100003020(&qword_1000A4758, &qword_100081798);
  sub_100018904();
  __chkstk_darwin(v43);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v44);
  sub_1000782A0();
  v239 = v45;
  sub_100030F24();
  v47 = __chkstk_darwin(v46);
  v49 = &v208 - v48;
  __chkstk_darwin(v47);
  v51 = &v208 - v50;
  type metadata accessor for Logger();
  sub_100006FBC();
  v248 = v52;
  v249 = v53;
  __chkstk_darwin(v52);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v54);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v55);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v56);
  sub_1000782A0();
  v242 = v57;
  sub_100030F24();
  __chkstk_darwin(v58);
  v60 = &v208 - v59;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.LocationIntelligence.Debug.Notifications.filterCloudChannelWeatherAlertsByTier.getter();
  SettingReader.read<A>(_:)();

  v61 = v251;
  static SettingReader.shared.getter();
  static Settings.LocationIntelligence.Debug.Notifications.filterCloudChannelWeatherAlertsByPredictedTimeWindow.getter();
  SettingReader.read<A>(_:)();

  v62 = v251;
  if (v61 == 1 && (v251 & 1) != 0)
  {
    goto LABEL_6;
  }

  static Logger.predictedLocationNotifications.getter();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v209 = v39;
    v66 = v62;
    v67 = v65;
    *v65 = 67109376;
    *(v65 + 4) = v61;
    *(v65 + 8) = 1024;
    *(v65 + 10) = v66;
    _os_log_impl(&_mh_execute_header, v63, v64, "Filtering disabled for weather alert; tierFilterEnabled=%{BOOL}d, timeWindowFilterEnabled=%{BOOL}d", v65, 0xEu);
    v68 = v67;
    v62 = v66;
    v39 = v209;
    sub_10000FA7C(v68);
  }

  (*(v249 + 8))(v60, v248);
  if (v61)
  {
LABEL_6:
    v220 = v62;
    WeatherAlert.importance.getter();
    v60 = v246;
    (*(v246 + 13))(v49, enum case for Importance.high(_:), v35);
    sub_100006BD4(v49, 0, 1, v35);
    v69 = *(v39 + 48);
    sub_10003C7D0(v51, v42, &qword_1000A4758, &qword_100081798);
    sub_10003C7D0(v49, &v42[v69], &qword_1000A4758, &qword_100081798);
    sub_100078348(v42);
    if (v72)
    {
      v70 = sub_100078320();
      sub_100018858(v70, v71, &qword_100081798);
      sub_100018858(v51, &qword_1000A4758, &qword_100081798);
      sub_100078348(&v42[v69]);
      if (v72)
      {
        sub_100018858(v42, &qword_1000A4758, &qword_100081798);
        v62 = v220;
        goto LABEL_21;
      }
    }

    else
    {
      v39 = v239;
      sub_10003C7D0(v42, v239, &qword_1000A4758, &qword_100081798);
      sub_100078348(&v42[v69]);
      if (!v72)
      {
        v102 = &v42[v69];
        v103 = v225;
        (*(v60 + 4))(v225, v102, v35);
        sub_1000782E8();
        sub_10007820C(v104, v105, &protocol conformance descriptor for Importance);
        v106 = dispatch thunk of static Equatable.== infix(_:_:)();
        v107 = *(v60 + 1);
        v60 += 8;
        v107(v103, v35);
        sub_1000783A0();
        sub_100018858(v108, v109, v110);
        sub_1000783A0();
        sub_100018858(v111, v112, v113);
        v107(v39, v35);
        sub_1000783A0();
        sub_100018858(v114, v115, v116);
        v62 = v220;
        if (v106)
        {
          goto LABEL_21;
        }

LABEL_15:
        v75 = v242;
        static Logger.predictedLocationNotifications.getter();
        v76 = v240;
        sub_1000324E0(v244, v240);
        v77 = v245;
        v78 = *(v245 + 16);
        v79 = v241;
        v80 = v250;
        v81 = v247;
        v78(v241, v250, v247);
        v82 = v243;
        v78(v243, v80, v81);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v250 = swift_slowAlloc();
          v251 = v250;
          *v85 = 141558787;
          *(v85 + 4) = 1752392040;
          *(v85 + 12) = 2081;
          v86 = v232;
          Location.identifier.getter();
          Location.Identifier.uniqueID.getter();
          sub_10007841C();
          v87(v86);
          sub_100032544(v76);
          v88 = sub_1000783AC();

          *(v85 + 14) = v88;
          *(v85 + 22) = 2080;
          v89 = v235;
          WeatherAlert.id.getter();
          sub_100078254();
          sub_10007820C(v90, v91, &protocol conformance descriptor for UUID);
          v92 = v237;
          dispatch thunk of CustomStringConvertible.description.getter();
          (*(v236 + 8))(v89, v92);
          v93 = *(v77 + 8);
          v93(v79, v81);
          v94 = sub_1000783AC();

          *(v85 + 24) = v94;
          *(v85 + 32) = 2082;
          v95 = v243;
          WeatherAlert.importance.getter();
          String.init<A>(describing:)();
          v93(v95, v81);
          v96 = sub_1000783AC();

          *(v85 + 34) = v96;
          _os_log_impl(&_mh_execute_header, v83, v84, "Determined that weather alert is not relevant because it is not high tier; location=%{private,mask.hash}s, alertID=%s, importance=%{public}s", v85, 0x2Au);
          v97 = v250;
          swift_arrayDestroy();
          sub_10000FA7C(v97);
          sub_10000FA7C(v85);

          sub_100078454();
          v99 = v242;
        }

        else
        {

          v100 = *(v77 + 8);
          v100(v82, v81);
          v100(v79, v81);
          sub_100032544(v76);
          sub_100078454();
          v99 = v75;
        }

        v98(v99, v248);
        return 0;
      }

      v73 = sub_100078320();
      sub_100018858(v73, v74, &qword_100081798);
      sub_100018858(v51, &qword_1000A4758, &qword_100081798);
      (*(v60 + 1))(v39, v35);
    }

    sub_100018858(v42, &qword_1000A5CE8, &qword_100083018);
    goto LABEL_15;
  }

LABEL_21:
  if (!v62)
  {
    return 1;
  }

  v117 = v228;
  v118 = v250;
  WeatherAlert.eventOnsetTime.getter();
  v119 = v229;
  if (sub_100007374(v117, 1, v229) == 1)
  {
    sub_100018858(v117, &qword_1000A3800, &unk_100080860);
    v120 = v247;
    v121 = v238;
    v122 = v244;
    sub_10007832C();
  }

  else
  {
    v121 = v238;
    sub_100078460();
    v123 = v224;
    v124(v224, v117, v119);
    v122 = v244;
    static Date.> infix(_:_:)();
    v125 = v245;
    v120 = v247;
    sub_10007832C();
    if (v126)
    {
      v127 = v217;
      static Logger.predictedLocationNotifications.getter();
      v128 = v213;
      sub_1000324E0(v122, v213);
      sub_10007846C();
      v129();
      v130 = v214;
      (*(v121 + 16))(v214, v123, v119);
      v131 = v122;
      v132 = v219;
      sub_1000324E0(v131, v219);
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v250 = swift_slowAlloc();
        v251 = v250;
        sub_100078284(7.2228e-34);
        v136 = v232;
        LODWORD(v246) = v134;
        Location.identifier.getter();
        Location.Identifier.uniqueID.getter();
        sub_10007841C();
        v137(v136);
        sub_100032544(v128);
        sub_1000782CC();
        sub_100078388();
        sub_100078378();
        v138 = v235;
        v139 = v221;
        v140 = v221;
        WeatherAlert.id.getter();
        sub_100078254();
        v143 = sub_10007820C(v141, v142, &protocol conformance descriptor for UUID);
        sub_100078484(v143);
        sub_100078300();
        v144(v138, v136);
        (*(v125 + 8))(v139, v247);
        sub_1000782CC();
        sub_100078388();
        *(v135 + 24) = v140;
        *(v135 + 32) = 2082;
        sub_10007826C();
        sub_10007820C(v145, v146, &protocol conformance descriptor for Date);
        sub_1000784A4();
        sub_100078440();
        v139(v130, v119);
        v147 = sub_10000D9FC(v130, v125 + 8, &v251);

        *(v135 + 34) = v147;
        *(v135 + 42) = 2082;
        v148 = v219;
        v149 = v219 + *(v231 + 28);
        sub_1000784A4();
        sub_100078314();
        sub_100032544(v148);
        sub_1000782CC();
        sub_100078388();
        *(v135 + 44) = v149;
        sub_1000783C8(&_mh_execute_header, v150, v151, "Determined that weather alert is not relevant because it starts after the predicted end date; location=%{private,mask.hash}s, alertID=%{public}s, alertOnsetDate=%{public}s, locationEndDate=%{public}s");
        sub_100078368();
        swift_arrayDestroy();
        sub_10000FA7C(v149);
        sub_10000FA7C(v135);

        sub_100078434();
        v152(v217);
        v139(v224, v119);
        return 0;
      }

      sub_100032544(v132);
      v203 = *(v121 + 8);
      v203(v130, v119);
      (*(v125 + 8))(v221, v247);
      sub_100032544(v128);
      sub_100078434();
      v204(v127);
      v205 = v123;
LABEL_40:
      v203(v205, v119);
      return 0;
    }

    (*(v121 + 8))(v123, v119);
  }

  v153 = v120;
  WeatherAlert.eventEndTime.getter();
  v154 = sub_100007374(v39, 1, v119);
  v155 = v226;
  if (v154 != 1)
  {
    sub_100078460();
    v156 = v223;
    v157(v223, v39, v119);
    if ((static Date.< infix(_:_:)() & 1) == 0)
    {
      (*(v121 + 8))(v156, v119);
      goto LABEL_34;
    }

    v158 = v215;
    static Logger.predictedLocationNotifications.getter();
    sub_1000324E0(v122, v218);
    (*(v245 + 16))(v60, v118, v153);
    (*(v121 + 16))(v155, v156, v119);
    sub_1000324E0(v122, v49);
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v250 = swift_slowAlloc();
      v251 = v250;
      sub_100078284(7.2228e-34);
      v162 = v232;
      LODWORD(v246) = v160;
      v163 = v218;
      Location.identifier.getter();
      Location.Identifier.uniqueID.getter();
      sub_100078314();
      sub_10007841C();
      v164(v162);
      sub_100032544(v163);
      sub_1000782CC();
      sub_100078388();
      sub_100078378();
      v165 = v60;
      v166 = v235;
      WeatherAlert.id.getter();
      sub_100078254();
      v169 = sub_10007820C(v167, v168, &protocol conformance descriptor for UUID);
      sub_100078484(v169);
      sub_100078300();
      v170(v166, v162);
      (*(v245 + 8))(v165, v153);
      sub_1000782CC();
      sub_100078388();
      *(v161 + 24) = v165;
      *(v161 + 32) = 2082;
      sub_10007826C();
      sub_10007820C(v171, v172, &protocol conformance descriptor for Date);
      v173 = v226;
      v174 = v226;
      sub_1000784A4();
      sub_100078440();
      v163(v173, v119);
      v175 = sub_10000D9FC(v174, v153, &v251);

      *(v161 + 34) = v175;
      *(v161 + 42) = 2082;
      v176 = v230;
      v177 = v230 + *(v231 + 24);
      sub_1000784A4();
      sub_100078314();
      sub_100032544(v176);
      sub_1000782CC();
      sub_100078388();
      *(v161 + 44) = v177;
      sub_1000783C8(&_mh_execute_header, v178, v179, "Determined that weather alert is not relevant because it ends before the predicted start date; location=%{private,mask.hash}s, alertID=%{public}s, alertEndDate=%{public}s, locationStartDate=%{public}s");
      sub_100078368();
      swift_arrayDestroy();
      sub_10000FA7C(v177);
      sub_10000FA7C(v161);

      sub_100078434();
      v180(v215);
      v163(v223, v119);
      return 0;
    }

    sub_100032544(v49);
    v203 = *(v121 + 8);
    v203(v155, v119);
    (*(v245 + 8))(v60, v153);
    sub_100032544(v218);
    sub_100078434();
    v206(v158);
    v205 = v223;
    goto LABEL_40;
  }

  sub_100018858(v39, &qword_1000A3800, &unk_100080860);
LABEL_34:
  v181 = v222;
  WeatherAlert.eventOnsetTime.getter();
  v101 = 1;
  v182 = sub_100007374(v181, 1, v119);
  sub_100018858(v181, &qword_1000A3800, &unk_100080860);
  if (v182 == 1)
  {
    v183 = v216;
    WeatherAlert.eventEndTime.getter();
    v184 = sub_100007374(v183, 1, v119);
    sub_100018858(v183, &qword_1000A3800, &unk_100080860);
    if (v184 == 1)
    {
      v185 = v211;
      static Logger.predictedLocationNotifications.getter();
      v186 = v210;
      sub_1000324E0(v122, v210);
      v187 = v245;
      v188 = v212;
      v189 = v153;
      (*(v245 + 16))(v212, v118, v153);
      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        v250 = swift_slowAlloc();
        v251 = v250;
        sub_100078284(7.2226e-34);
        v193 = v232;
        Location.identifier.getter();
        Location.Identifier.uniqueID.getter();
        sub_100078314();
        sub_10007841C();
        v194(v193);
        sub_100032544(v186);
        sub_1000782CC();
        sub_100078388();
        sub_100078378();
        v195 = v235;
        v196 = v212;
        WeatherAlert.id.getter();
        sub_100078254();
        sub_10007820C(v197, v198, &protocol conformance descriptor for UUID);
        v199 = v237;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_100078300();
        v200(v195, v199);
        (*(v187 + 8))(v196, v189);
        sub_1000782CC();
        sub_100078388();
        *(v192 + 24) = v195;
        _os_log_impl(&_mh_execute_header, v190, v191, "Determined that weather alert is relevant because it had no onset or end time; location=%{private,mask.hash}s, alertID=%{public}s", v192, 0x20u);
        sub_100078368();
        swift_arrayDestroy();
        sub_10000FA7C(v195);
        sub_10000FA7C(v192);

        sub_100078454();
        v202 = v211;
      }

      else
      {

        (*(v187 + 8))(v188, v189);
        sub_100032544(v186);
        sub_100078454();
        v202 = v185;
      }

      v201(v202, v248);
      return 1;
    }
  }

  return v101;
}

uint64_t sub_100077D84@<X0>(uint64_t a1@<X8>)
{
  v48[22] = a1;
  v1 = sub_100003020(&qword_1000A4758, &qword_100081798);
  sub_100006FF0(v1);
  sub_100018920();
  __chkstk_darwin(v2);
  v48[21] = v48 - v3;
  v4 = sub_100003020(&qword_1000A3E28, &qword_1000817A0);
  sub_100006FF0(v4);
  sub_100018920();
  __chkstk_darwin(v5);
  v48[20] = v48 - v6;
  v7 = sub_100003020(&qword_1000A4760, &qword_1000817A8);
  sub_100006FF0(v7);
  sub_100018920();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for Severity();
  v10 = sub_100006FF0(v9);
  __chkstk_darwin(v10);
  sub_10000E970();
  v11 = sub_100003020(&qword_1000A4768, &unk_1000817B0);
  sub_100006FF0(v11);
  sub_100018920();
  __chkstk_darwin(v12);
  v48[2] = v48 - v13;
  v14 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v15 = sub_100006FF0(v14);
  __chkstk_darwin(v15);
  sub_100015754();
  v48[5] = v16 - v17;
  __chkstk_darwin(v18);
  v48[6] = v48 - v19;
  v20 = type metadata accessor for Date();
  v21 = sub_100006FF0(v20);
  __chkstk_darwin(v21);
  sub_100015754();
  v48[7] = v22 - v23;
  v25 = __chkstk_darwin(v24);
  v48[8] = v48 - v26;
  __chkstk_darwin(v25);
  v48[9] = v48 - v27;
  v28 = sub_100003020(&qword_1000A3540, &unk_100080520);
  sub_100006FF0(v28);
  sub_100018920();
  __chkstk_darwin(v29);
  v31 = v48 - v30;
  v48[18] = v48 - v30;
  v32 = type metadata accessor for UUID();
  v33 = sub_100006FF0(v32);
  __chkstk_darwin(v33);
  sub_1000188C4();
  v48[19] = v34;
  WeatherAlert.id.getter();
  v35 = sub_100003020(&qword_1000A3548, &qword_100080FC0);
  sub_100006BD4(v31, 1, 1, v35);
  v36 = WeatherAlert.areaId.getter();
  v48[16] = v37;
  v48[17] = v36;
  v38 = WeatherAlert.areaName.getter();
  v48[14] = v39;
  v48[15] = v38;
  v40 = WeatherAlert.countryCode.getter();
  v48[12] = v41;
  v48[13] = v40;
  v42 = WeatherAlert.description.getter();
  v48[10] = v43;
  v48[11] = v42;
  WeatherAlert.expireTime.getter();
  WeatherAlert.issuedTime.getter();
  WeatherAlert.effectiveTime.getter();
  WeatherAlert.eventOnsetTime.getter();
  WeatherAlert.eventEndTime.getter();
  v44 = WeatherAlert.detailsUrl.getter();
  v48[3] = v45;
  v48[4] = v44;
  WeatherAlert.certainty.getter();
  v48[1] = WeatherAlert.phenomenon.getter();
  v48[0] = v46;
  WeatherAlert.responses.getter();
  WeatherAlert.severity.getter();
  WeatherAlert.significance.getter();
  WeatherAlert.source.getter();
  WeatherAlert.eventSource.getter();
  WeatherAlert.urgency.getter();
  WeatherAlert.importance.getter();
  return WeatherAlert.init(id:area:areaId:areaName:countryCode:description:expireTime:issuedTime:effectiveTime:eventOnsetTime:eventEndTime:detailsUrl:certainty:phenomenon:responses:severity:significance:source:eventSource:urgency:messages:importance:)();
}

uint64_t sub_10007820C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100078284(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_1000782AC()
{

  return dispatch thunk of Hashable.hash(into:)();
}

unint64_t sub_1000782CC()
{

  return sub_10000D9FC(v0, v1, (v2 - 96));
}

uint64_t sub_100078388()
{
}

unint64_t sub_1000783AC()
{

  return sub_10000D9FC(v0, v1, (v2 - 96));
}

void sub_1000783C8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 136);

  _os_log_impl(a1, v4, v8, a4, v5, 0x34u);
}

void sub_1000783EC()
{

  Hasher._combine(_:)(0);
}

void sub_100078404()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_100078484(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000784A4()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t type metadata accessor for PredictedLocationsService(uint64_t a1)
{
  result = qword_1000A5D08;
  if (!qword_1000A5D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100078554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&unk_1000A3930, &qword_100080900);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_100006BD4(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_100083088;
  v9[5] = v8;
  sub_10007AEA4(0, 0, v6, &unk_100083098, v9);
}

uint64_t sub_100078664(void *a1, void *a2)
{
  v5 = type metadata accessor for MachService();
  __chkstk_darwin(v5 - 8);
  sub_100006930(a1, v2 + qword_1000A5CF8);
  sub_100006930(a2, v2 + qword_1000A5D00);
  static MachServices.PredictedLocations.getter();
  sub_100005360();
  static OS_dispatch_queue.locationIntelligence.getter();
  v6 = XPCDaemonService.init(machService:targetQueue:)();
  sub_100006994(a2);
  sub_100006994(a1);
  return v6;
}

uint64_t sub_10007877C()
{
  sub_100006994((v0 + qword_1000A5CF8));
  v1 = (v0 + qword_1000A5D00);

  return sub_100006994(v1);
}

uint64_t sub_1000787BC(uint64_t a1)
{
  sub_100006994((a1 + qword_1000A5CF8));
  v2 = (a1 + qword_1000A5D00);

  return sub_100006994(v2);
}

uint64_t sub_100078810()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  *(v0 + 40) = sub_100058078();
  v3 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v3);
  sub_10007BE4C();
  v6 = sub_10007BC84(v4, v5, &protocol conformance descriptor for LocIntelActor.Actor);
  v7 = sub_10007BF3C(v6);
  sub_10007BEC0(v7, v8);
  v9 = sub_10004B174();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000788E0()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationNotifications.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Performing refresh of predicted locations in weatherd");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5CF8);
  v6 = swift_task_alloc();
  v7 = sub_10007BF24(v6);
  *v7 = v8;
  sub_10007BE64(v7);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsNotificationsManagerType.processNotificationsForPredictedLocations()(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1000789C8()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return _swift_task_switch(sub_10007BE24, v6, v5);
}

uint64_t sub_100078AF4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100078BB8, v4, v3);
}

uint64_t sub_100078BB8()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_100078810();
}

uint64_t sub_100078C50()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  *(v0 + 40) = sub_100058078();
  v3 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v3);
  sub_10007BE4C();
  v6 = sub_10007BC84(v4, v5, &protocol conformance descriptor for LocIntelActor.Actor);
  v7 = sub_10007BF3C(v6);
  sub_10007BEC0(v7, v8);
  v9 = sub_10004B174();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100078D20()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationNotifications.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Will schedule recurring refresh of predicted locations");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5CF8);
  v6 = swift_task_alloc();
  v7 = sub_10007BF24(v6);
  *v7 = v8;
  sub_10007BE64(v7);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsNotificationsManagerType.reschedulePredictedLocationNotifications()(v9, v10);
}

uint64_t sub_100078E08()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return _swift_task_switch(sub_100078F14, v6, v5);
}

uint64_t sub_100078F14()
{
  sub_100030C4C();

  sub_10007BED0();

  return v0();
}

uint64_t sub_100078F94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100079058, v4, v3);
}

uint64_t sub_100079058()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_100078C50();
}

uint64_t sub_1000790F0()
{
  sub_10004B23C();
  sub_100030E20();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10000FA6C();
  *v5 = v4;
  v6 = *(v3 + 24);
  *v5 = *v1;

  v7 = *(v3 + 40);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 40));
  sub_10004B1C0();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100079260()
{
  sub_100030C4C();
  v1[2] = v0;
  sub_100003020(&unk_1000A3930, &qword_100080900);
  v1[3] = sub_100058078();
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = sub_100058078();
  v1[7] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BE4C();
  v5 = sub_10007BC84(v3, v4, &protocol conformance descriptor for LocIntelActor.Actor);
  v7 = sub_10007BF3C(v5);

  return _swift_task_switch(sub_10007938C, v7, v6);
}

uint64_t sub_10007938C()
{
  sub_100030E20();

  static Logger.predictedLocationNotifications.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_100030F7C();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Performing demo refresh of predicted locations in weatherd after feature enablement", v3, 2u);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  (*(v5 + 8))(v4, v7);
  v9 = type metadata accessor for TaskPriority();
  sub_100006BD4(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v11 = v8;
  sub_1000799EC(0, 0, v6, &unk_100083128, v10);

  sub_10007B1B0(v6);

  sub_10007BED0();

  return v12();
}

uint64_t sub_100079508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000795C8, 0, 0);
}

uint64_t sub_1000795C8()
{
  sub_100030C4C();
  static Clock<>.continuous.getter();
  v0 = swift_task_alloc();
  v1 = sub_10007BF18(v0);
  *v1 = v2;
  v1[1] = sub_10007968C;

  return sub_10007B7EC(0xD02AB486CEDC0000, 0, 0, 0, 1);
}

uint64_t sub_10007968C()
{
  sub_100030C58();
  sub_100043668();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;
  *(v4 + 56) = v0;

  v5 = sub_100030CAC();
  v6(v5);
  if (v0)
  {
    v7 = sub_100079990;
  }

  else
  {
    v7 = sub_1000797E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000797E4()
{
  sub_100030C58();
  sub_1000032B8((*(v0 + 16) + qword_1000A5CF8), *(*(v0 + 16) + qword_1000A5CF8 + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = sub_10007BE64(v1);

  return dispatch thunk of PredictedLocationsNotificationsManagerType.processNotificationsForPredictedLocations()(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100079894()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  sub_10007BED0();

  return v3();
}

uint64_t sub_100079990()
{
  sub_100030C4C();

  sub_100030C70();

  return v0();
}

uint64_t sub_1000799EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003020(&unk_1000A3930, &qword_100080900);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_10007B140(a3, v21 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100007374(v10, 1, v11);

  if (v12 == 1)
  {
    sub_10007B1B0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100079C3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100079D00, v4, v3);
}

uint64_t sub_100079D00()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_100079260();
}

uint64_t sub_100079D98()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  *(v0 + 40) = sub_100058078();
  v3 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v3);
  sub_10007BE4C();
  v6 = sub_10007BC84(v4, v5, &protocol conformance descriptor for LocIntelActor.Actor);
  v7 = sub_10007BF3C(v6);
  sub_10007BEC0(v7, v8);
  v9 = sub_10004B174();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100079E68()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationNotifications.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Will cancel scheduled predicted location notifications");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5CF8);
  v6 = swift_task_alloc();
  v7 = sub_10007BF24(v6);
  *v7 = v8;
  sub_10007BE64(v7);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsNotificationsManagerType.unschedulePredictedLocationNotifications()(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100079F70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007A034, v4, v3);
}

uint64_t sub_10007A034()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_100079D98();
}

uint64_t sub_10007A0CC()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  *(v0 + 40) = sub_100058078();
  v3 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v3);
  sub_10007BE4C();
  v6 = sub_10007BC84(v4, v5, &protocol conformance descriptor for LocIntelActor.Actor);
  v7 = sub_10007BF3C(v6);
  sub_10007BEC0(v7, v8);
  v9 = sub_10004B174();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007A19C()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationIntentDonations.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Performing refresh of predicted locations in weatherd");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5D00);
  v6 = swift_task_alloc();
  v7 = sub_10007BF24(v6);
  *v7 = v8;
  sub_10007BE64(v7);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsIntentDonationManagerType.donateIntentsForPredictedLocations()(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10007A2A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007A368, v4, v3);
}

uint64_t sub_10007A368()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_10007A0CC();
}

uint64_t sub_10007A400()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  *(v0 + 40) = sub_100058078();
  v3 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v3);
  sub_10007BE4C();
  v6 = sub_10007BC84(v4, v5, &protocol conformance descriptor for LocIntelActor.Actor);
  v7 = sub_10007BF3C(v6);
  sub_10007BEC0(v7, v8);
  v9 = sub_10004B174();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007A4D0()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationIntentDonations.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Will schedule recurring refresh of predicted locations");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5D00);
  v6 = swift_task_alloc();
  v7 = sub_10007BF24(v6);
  *v7 = v8;
  sub_10007BE64(v7);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsIntentDonationManagerType.reschedulePredictedLocationsRefreshForIntentDonations()(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10007A5D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007A69C, v4, v3);
}

uint64_t sub_10007A69C()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_10007A400();
}

uint64_t sub_10007A734()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  *(v0 + 40) = sub_100058078();
  v3 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v3);
  sub_10007BE4C();
  v6 = sub_10007BC84(v4, v5, &protocol conformance descriptor for LocIntelActor.Actor);
  v7 = sub_10007BF3C(v6);
  sub_10007BEC0(v7, v8);
  v9 = sub_10004B174();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007A804()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationIntentDonations.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Will cancel scheduled intent donations");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5D00);
  v6 = swift_task_alloc();
  v7 = sub_10007BF24(v6);
  *v7 = v8;
  sub_10007BE64(v7);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsIntentDonationManagerType.cancelScheduledPredictedLocationsRefreshForIntentDonations()(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10007A90C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  sub_100030EB0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_100078554(a5, v8);
}

uint64_t sub_10007A974(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor, &protocol conformance descriptor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007AA38, v4, v3);
}

uint64_t sub_10007AA38()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_10007A734();
}

uint64_t sub_10007AAD4()
{
  sub_100030C58();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v3 = sub_100070AF8(v1);

  return v4(v3);
}

uint64_t sub_10007AB64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000435A4;

  return v6();
}

uint64_t sub_10007AC50()
{
  sub_10004B23C();
  sub_100030E20();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v1[1] = sub_1000435A4;
  sub_10004B1C0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10007AD00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100043300;

  return v7();
}

uint64_t sub_10007ADE8()
{
  sub_100030E20();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v1[1] = sub_1000435A4;
  v3 = sub_10007BF08();

  return v4(v3);
}

uint64_t sub_10007AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003020(&unk_1000A3930, &qword_100080900);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_10007B140(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100007374(v11, 1, v12) == 1)
  {
    sub_10007B1B0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_10007B1B0(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10007B1B0(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_10007B140(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&unk_1000A3930, &qword_100080900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B1B0(uint64_t a1)
{
  v2 = sub_100003020(&unk_1000A3930, &qword_100080900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007B218(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007B310;

  return v6(a1);
}

uint64_t sub_10007B310()
{
  sub_100030C4C();
  sub_100043668();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  sub_10007BED0();

  return v3();
}

uint64_t sub_10007B3F0()
{

  v0 = sub_100030EB0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10007B420()
{
  sub_100030C58();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v1[1] = sub_1000435A4;
  v3 = sub_10007BF08();

  return v4(v3);
}

uint64_t sub_10007B4C8()
{
  sub_100030C58();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v3 = sub_100070AF8(v1);

  return v4(v3);
}

uint64_t sub_10007B558()
{
  sub_100030C58();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v3 = sub_100070AF8(v1);

  return v4(v3);
}

uint64_t sub_10007B5E8()
{
  sub_100030C58();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v3 = sub_100070AF8(v1);

  return v4(v3);
}

uint64_t sub_10007B678()
{
  sub_100030C58();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v3 = sub_100070AF8(v1);

  return v4(v3);
}

uint64_t sub_10007B708()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007B748()
{
  sub_100030C58();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_10007BEE0(v3);
  *v4 = v5;
  v4[1] = sub_100043300;
  v6 = sub_10007BF08();

  return sub_100079508(v6, v7, v1, v2);
}

uint64_t sub_10007B7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10007B8EC, 0, 0);
}

uint64_t sub_10007B8EC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10007BC84(&qword_1000A5D58, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10007BC84(&qword_1000A5D60, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10007BA7C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10007BA7C()
{
  sub_100030E20();
  sub_100043668();
  v3 = v2;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[8];
  v7 = *v1;
  sub_10000FA6C();
  *v8 = v7;
  v3[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10007BC20, 0, 0);
  }

  else
  {

    sub_10007BED0();

    return v9();
  }
}

uint64_t sub_10007BC20()
{
  sub_100030C4C();

  sub_100030C70();

  return v0();
}

uint64_t sub_10007BC84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007BCCC()
{
  sub_100030C58();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v3 = sub_100070AF8(v1);

  return v4(v3);
}

uint64_t sub_10007BD5C()
{
  _Block_release(*(v0 + 16));

  v1 = sub_100030EB0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10007BD94()
{
  sub_100030C58();
  v0 = swift_task_alloc();
  v1 = sub_10007BEE0(v0);
  *v1 = v2;
  v3 = sub_100070AF8(v1);

  return v4(v3);
}

uint64_t sub_10007BEC0(uint64_t result, uint64_t a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_10007BEEC(uint64_t a1)
{
  *(v1 + 48) = a1;

  return type metadata accessor for LocIntelActor.Actor();
}

uint64_t sub_10007BF3C(uint64_t a1)
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

uint64_t sub_10007BF54()
{
}

uint64_t sub_10007BF6C()
{
  *(v1 + 16) = v0;

  return type metadata accessor for Logger();
}

void sub_10007BF84()
{
}

uint64_t sub_10007BF9C()
{
  v0 = type metadata accessor for Location();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100037B74();
  Location.coordinate.getter();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (Array<A>.contains(_:)())
  {
    v5 = 1;
  }

  else
  {
    sub_100037B5C();
    Location.coordinate.getter();
    v4(v3, v0);
    v5 = Array<A>.contains(_:)();
  }

  return v5 & 1;
}

uint64_t sub_10007C0F0()
{
  result = *(v0 + 16);
  if (result == 7)
  {
    static Settings.WeatherEnvironment.contentEnvironment.getter();
    sub_10007C610();
    Configurable.setting<A>(_:)();

    result = v2;
    *(v0 + 16) = v2;
  }

  return result;
}

uint64_t sub_10007C180()
{
  v1 = type metadata accessor for AppConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8((v0 + 24), *(v0 + 48));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  sub_10007C0F0();
  AppConfiguration.endpointConfig(for:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10007C37C()
{
  v0 = type metadata accessor for EndpointConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C180();
  EndpointConfiguration.analyticsURL.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10007C4C0()
{
  v0 = sub_10007C0F0();

  return ContentEnvironment.description.getter(v0);
}

uint64_t sub_10007C560()
{
  type metadata accessor for AppGroup();
  static AppGroup.weather.getter();
  v0 = AppGroup.identifier.getter();

  return v0;
}

uint64_t sub_10007C5B4()
{
  sub_100006994((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_10007C610()
{
  result = qword_1000A5E10;
  if (!qword_1000A5E10)
  {
    type metadata accessor for AnalyticsEndpoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5E10);
  }

  return result;
}

Swift::String __swiftcall GeocodeManagerGetCurrentCountryCode()()
{
  CurrentCountry = GeocodeManagerGetCurrentCountryCode()();
  result._object = v1;
  result._countAndFlagsBits = CurrentCountry;
  return result;
}

uint64_t Assembly.init()()
{
  return Assembly.init()();
}

{
  return Assembly.init()();
}

uint64_t type metadata accessor for Assembly()
{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:)()
{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

uint64_t RegistrationContainer.register<A>(_:name:factory:)()
{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t Promise.then<A>(on:closure:)()
{
  return Promise.then<A>(on:closure:)();
}

{
  return Promise.then<A>(on:closure:)();
}

uint64_t Promise.then<A, B>(on:disposeOn:closure:)()
{
  return Promise.then<A, B>(on:disposeOn:closure:)();
}

{
  return Promise.then<A, B>(on:disposeOn:closure:)();
}

uint64_t dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)()
{
  return dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)();
}

{
  return dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}