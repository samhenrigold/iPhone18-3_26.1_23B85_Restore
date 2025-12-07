uint64_t sub_100037704(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a5;
  *(v5 + 88) = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  *(v5 + 104) = swift_task_alloc();
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10004019C(&qword_1000A5660, type metadata accessor for DaemonActor, &unk_100086084);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100037824, v7, v6);
}

uint64_t sub_100037824()
{
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[11];
  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100087FE0;
  v3._countAndFlagsBits = 0xD000000000000089;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  v0[10] = &type metadata for Double;
  v0[7] = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 7), &qword_1000A5630, &unk_100083BF0);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  sub_100001CC0((v1 + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler), *(v1 + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler + 24));
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100037A70;

  return sub_100048AA4();
}

uint64_t sub_100037A70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100037B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_100002758(a3, v23 - v10, &qword_1000A4ED8, &qword_100084010);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000DCA0(v11, &qword_1000A4ED8, &qword_100084010);
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

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000DCA0(a3, &qword_1000A4ED8, &qword_100084010);

      return v21;
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

  sub_10000DCA0(a3, &qword_1000A4ED8, &qword_100084010);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id sub_100037EC8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PushManager(uint64_t a1)
{
  result = qword_1000A5600;
  if (!qword_1000A5600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000380F8(uint64_t a1)
{
  sub_10003821C(319, &qword_1000A5610, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10003821C(319, &qword_1000A5618, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003821C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for PreferenceKey();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100038318()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_100001D04(&qword_1000A5638, &qword_100085440);
  *v3 = v0;
  v3[1] = sub_100038420;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_1000386B0, v2, v4);
}

uint64_t sub_100038420()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100027E80;
  }

  else
  {

    v2 = sub_10003853C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100038558@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v5)
  {
    v2 = 1;
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
    v2 = 0;
  }

  v3 = type metadata accessor for Date();
  return (*(*(v3 - 8) + 56))(a1, v2, 1, v3);
}

uint64_t sub_1000386D0()
{
  v1 = sub_100001D04(&qword_1000A5640, &qword_100085448);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

char *sub_100038764(unint64_t a1, unint64_t *a2)
{
  v5 = *(sub_100001D04(&qword_1000A5640, &qword_100085448) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100029ACC(a1, a2, v6);
}

uint64_t sub_1000387F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100038808(uint64_t a1)
{
  v2[53] = a1;
  v2[54] = v1;
  v3 = type metadata accessor for MetricsData();
  v2[55] = v3;
  v2[56] = *(v3 - 8);
  v2[57] = swift_task_alloc();
  v4 = type metadata accessor for LintedMetricsEvent();
  v2[58] = v4;
  v2[59] = *(v4 - 8);
  v2[60] = swift_task_alloc();
  v5 = type metadata accessor for MetricsPipeline();
  v2[61] = v5;
  v2[62] = *(v5 - 8);
  v2[63] = swift_task_alloc();
  v6 = sub_100001D04(&qword_1000A5690, &qword_1000854D0);
  v2[64] = v6;
  v2[65] = *(v6 - 8);
  v2[66] = swift_task_alloc();
  v7 = type metadata accessor for MetricsFieldsContext();
  v2[67] = v7;
  v2[68] = *(v7 - 8);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v8 = sub_100001D04(&qword_1000A5698, &qword_1000854D8);
  v2[71] = v8;
  v2[72] = *(v8 - 8);
  v2[73] = swift_task_alloc();
  v9 = type metadata accessor for Bag();
  v2[74] = v9;
  v2[75] = *(v9 - 8);
  v2[76] = swift_task_alloc();
  v10 = type metadata accessor for MetricsSamplingLottery();
  v2[77] = v10;
  v2[78] = *(v10 - 8);
  v2[79] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[80] = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();

  return _swift_task_switch(sub_100038C10, v1, 0);
}

uint64_t sub_100038C10()
{
  if (static MetricsDiagnosticsAndUsage.diagnosticsSubmissionAllowed.getter())
  {
    v1 = v0[54];
    v2 = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager;
    v0[87] = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager;
    sub_100001CC0((v1 + v2), *(v1 + v2 + 24));
    v3 = swift_task_alloc();
    v0[88] = v3;
    *v3 = v0;
    v3[1] = sub_100038F1C;
    v4 = v0[86];

    return sub_100015738(v4);
  }

  else
  {
    if (qword_1000A4D60 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v0 + 2, v0[5]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 2);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100038F1C()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_10003902C, v1, 0);
}

uint64_t sub_10003902C()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 80) == 0x74736575716572 && *(v1 + 88) == 0xE700000000000000;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v3 = sub_10006C5C4(*(v0 + 688));
  }

  else
  {
    v3 = sub_10006C8B4(*(v0 + 688));
  }

  v4 = v3;
  if (qword_1000A4D60 != -1)
  {
    swift_once();
  }

  *(v0 + 712) = qword_1000A63B8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(v0 + 720) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 728) = *(v5 + 72);
  *(v0 + 824) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100088450;
  v6._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 320) = &type metadata for String;
  strcpy((v0 + 296), "assetRequest");
  *(v0 + 309) = 0;
  *(v0 + 310) = -5120;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 296, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 8250;
  v7._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 352) = &type metadata for Double;
  *(v0 + 328) = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 328, &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 56));
  MetricsSamplingLottery.init(eventName:percentage:duration:)();
  if ((MetricsSamplingLottery.shouldCollect.getter() & 1) == 0)
  {
    v37 = *(v0 + 632);
    v39 = *(v0 + 688);
    v20 = *(v0 + 624);
    v35 = *(v0 + 616);
    TaskLocal.get()();
    sub_100001CC0((v0 + 96), *(v0 + 120));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0xD000000000000030;
    v21._object = 0x8000000100088470;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v0 + 384) = &type metadata for String;
    strcpy((v0 + 360), "assetRequest");
    *(v0 + 373) = 0;
    *(v0 + 374) = -5120;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 360, &qword_1000A5630, &unk_100083BF0);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    (*(v20 + 8))(v37, v35);
    sub_10000DCA0(v39, &unk_1000A56A0, &unk_100083E10);
    sub_100001D4C((v0 + 96));

    v23 = *(v0 + 8);
LABEL_16:

    return v23();
  }

  v9 = *(v0 + 680);
  v10 = *(v0 + 672);
  v11 = *(v0 + 600);
  v36 = *(v0 + 688);
  v38 = *(v0 + 592);
  TaskLocal.get()();
  sub_100001CC0((v0 + 136), *(v0 + 160));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000028;
  v12._object = 0x80000001000884B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v0 + 416) = &type metadata for String;
  strcpy((v0 + 392), "assetRequest");
  *(v0 + 405) = 0;
  *(v0 + 406) = -5120;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 392, &qword_1000A5630, &unk_100083BF0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 136));
  sub_100002758(v36, v9, &unk_1000A56A0, &unk_100083E10);
  sub_100002758(v9, v10, &unk_1000A56A0, &unk_100083E10);
  v14 = *(v11 + 48);
  *(v0 + 736) = v14;
  *(v0 + 744) = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v11) = v14(v10, 1, v38);
  sub_10000DCA0(v10, &unk_1000A56A0, &unk_100083E10);
  if (v11 == 1)
  {
    v15 = (*(v0 + 432) + *(v0 + 696));
    TaskLocal.get()();
    sub_100001CC0((v0 + 176), *(v0 + 200));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 176));
    sub_100001CC0(v15, v15[3]);
    *(v0 + 752) = sub_1000168D4();
    v16 = sub_100001D04(&qword_1000A4FB8, &qword_100084008);
    v17 = sub_100040238(&qword_1000A56B0, &qword_1000A4FB8, &qword_100084008, &protocol conformance descriptor for Promise<A>);
    v18 = swift_task_alloc();
    *(v0 + 760) = v18;
    *v18 = v0;
    v18[1] = sub_100039BBC;
    v19 = *(v0 + 664);

    return dispatch thunk of Future.then()(v19, v16, v17);
  }

  v24 = *(v0 + 736);
  v25 = *(v0 + 656);
  v26 = *(v0 + 592);
  sub_100002758(*(v0 + 680), v25, &unk_1000A56A0, &unk_100083E10);
  if (v24(v25, 1, v26) == 1)
  {
    sub_10000DCA0(*(v0 + 656), &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 216));
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v27 = *(v0 + 688);
    v28 = *(v0 + 632);
    v29 = *(v0 + 624);
    v30 = *(v0 + 616);
    sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
    (*(v29 + 8))(v28, v30);
    sub_10000DCA0(v27, &unk_1000A56A0, &unk_100083E10);

    v23 = *(v0 + 8);
    goto LABEL_16;
  }

  (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 656), *(v0 + 592));
  v31 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v32 = swift_task_alloc();
  *(v0 + 768) = v32;
  *v32 = v0;
  v32[1] = sub_100039D18;
  v33 = *(v0 + 568);

  return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v33);
}

uint64_t sub_100039BBC()
{
  v2 = *v1;

  v3 = *(v2 + 432);
  if (v0)
  {

    v4 = sub_10003AFBC;
  }

  else
  {

    v4 = sub_10003ABB0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100039D18()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 568);
  v4 = *(*v0 + 432);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100039E84, v4, 0);
}

uint64_t sub_100039E84()
{
  if (*(v0 + 828) == 1)
  {
    v1 = *(v0 + 552);
    v2 = *(v0 + 544);
    v3 = *(v0 + 536);
    v4 = *(v0 + 528);
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);
    MetricsFieldsContext.init()();
    static MetricsFieldsContext.Property<A>.metricsSamplingLottery.getter();
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v5 + 8))(v4, v6);
    v7 = *(v2 + 8);
    *(v0 + 776) = v7;
    *(v0 + 784) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v1, v3);
    v8 = swift_task_alloc();
    *(v0 + 792) = v8;
    *v8 = v0;
    v8[1] = sub_10003A200;
    v9 = *(v0 + 608);
    v10 = *(v0 + 504);

    return sub_10006FE34(v10, v9);
  }

  else
  {
    v19 = *(v0 + 632);
    v20 = *(v0 + 688);
    v12 = *(v0 + 624);
    v17 = *(v0 + 680);
    v18 = *(v0 + 616);
    v13 = *(v0 + 600);
    v15 = *(v0 + 592);
    v16 = *(v0 + 608);
    TaskLocal.get()();
    sub_100001CC0((v0 + 256), *(v0 + 280));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    (*(v13 + 8))(v16, v15);
    sub_10000DCA0(v17, &unk_1000A56A0, &unk_100083E10);
    (*(v12 + 8))(v19, v18);
    sub_10000DCA0(v20, &unk_1000A56A0, &unk_100083E10);
    sub_100001D4C((v0 + 256));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10003A200()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = sub_10003A5CC;
  }

  else
  {
    v4 = sub_10003A32C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003A32C()
{
  v1 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[57];
  (*(v2 + 16))(v1, v0[76], v3);
  (*(v2 + 56))(v1, 0, 1, v3);
  sub_10006CB98(v1, v4);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  v5 = swift_task_alloc();
  v0[101] = v5;
  *v5 = v0;
  v5[1] = sub_10003A458;
  v6 = v0[70];
  v7 = v0[60];
  v8 = v0[57];

  return MetricsPipeline.process(_:using:)(v7, v8, v6);
}

uint64_t sub_10003A458()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v3 = v2[54];
    (*(v2[56] + 8))(v2[57], v2[55]);
    v4 = sub_10003A9AC;
    v5 = v3;
  }

  else
  {
    v7 = v2[59];
    v6 = v2[60];
    v8 = v2[57];
    v9 = v2[58];
    v10 = v2[55];
    v11 = v2[56];
    v12 = v2[54];
    (*(v11 + 8))(v8, v10);
    (*(v7 + 8))(v6, v9);
    v4 = sub_10003A7B0;
    v5 = v12;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10003A5CC()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  (*(v0 + 776))(*(v0 + 560), *(v0 + 536));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 688);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
  (*(v6 + 8))(v5, v7);
  sub_10000DCA0(v4, &unk_1000A56A0, &unk_100083E10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003A7B0()
{
  v1 = v0[97];
  v2 = v0[85];
  v12 = v0[79];
  v13 = v0[86];
  v3 = v0[78];
  v11 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[70];
  v8 = v0[67];
  (*(v0[62] + 8))(v0[63], v0[61]);
  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  sub_10000DCA0(v2, &unk_1000A56A0, &unk_100083E10);
  (*(v3 + 8))(v12, v11);
  sub_10000DCA0(v13, &unk_1000A56A0, &unk_100083E10);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003A9AC()
{
  v1 = v0[97];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[70];
  v6 = v0[67];
  (*(v0[62] + 8))(v0[63], v0[61]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v7 = v0[86];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[77];
  sub_10000DCA0(v0[85], &unk_1000A56A0, &unk_100083E10);
  (*(v9 + 8))(v8, v10);
  sub_10000DCA0(v7, &unk_1000A56A0, &unk_100083E10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003ABB0()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[75];
  v4 = v0[74];
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  (*(v3 + 56))(v2, 0, 1, v4);
  sub_100018BC0(v2, v1);
  v5 = v0[92];
  v6 = v0[82];
  v7 = v0[74];
  sub_100002758(v0[85], v6, &unk_1000A56A0, &unk_100083E10);
  if (v5(v6, 1, v7) == 1)
  {
    sub_10000DCA0(v0[82], &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    sub_100001CC0(v0 + 27, v0[30]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 27);
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v8 = v0[86];
    v9 = v0[79];
    v10 = v0[78];
    v11 = v0[77];
    sub_10000DCA0(v0[85], &unk_1000A56A0, &unk_100083E10);
    (*(v10 + 8))(v9, v11);
    sub_10000DCA0(v8, &unk_1000A56A0, &unk_100083E10);

    v12 = v0[1];

    return v12();
  }

  else
  {
    (*(v0[75] + 32))(v0[76], v0[82], v0[74]);
    v14 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v15 = swift_task_alloc();
    v0[96] = v15;
    *v15 = v0;
    v15[1] = sub_100039D18;
    v16 = v0[71];

    return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v16);
  }
}

uint64_t sub_10003AFBC()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[75];
  v4 = v0[74];
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  (*(v3 + 56))(v2, 1, 1, v4);
  sub_100018BC0(v2, v1);
  v5 = v0[92];
  v6 = v0[82];
  v7 = v0[74];
  sub_100002758(v0[85], v6, &unk_1000A56A0, &unk_100083E10);
  if (v5(v6, 1, v7) == 1)
  {
    sub_10000DCA0(v0[82], &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    sub_100001CC0(v0 + 27, v0[30]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 27);
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v8 = v0[86];
    v9 = v0[79];
    v10 = v0[78];
    v11 = v0[77];
    sub_10000DCA0(v0[85], &unk_1000A56A0, &unk_100083E10);
    (*(v10 + 8))(v9, v11);
    sub_10000DCA0(v8, &unk_1000A56A0, &unk_100083E10);

    v12 = v0[1];

    return v12();
  }

  else
  {
    (*(v0[75] + 32))(v0[76], v0[82], v0[74]);
    v14 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v15 = swift_task_alloc();
    v0[96] = v15;
    *v15 = v0;
    v15[1] = sub_100039D18;
    v16 = v0[71];

    return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v16);
  }
}

uint64_t sub_10003B3C8(uint64_t a1)
{
  v2[53] = a1;
  v2[54] = v1;
  v3 = type metadata accessor for MetricsData();
  v2[55] = v3;
  v2[56] = *(v3 - 8);
  v2[57] = swift_task_alloc();
  v4 = type metadata accessor for LintedMetricsEvent();
  v2[58] = v4;
  v2[59] = *(v4 - 8);
  v2[60] = swift_task_alloc();
  v5 = type metadata accessor for MetricsPipeline();
  v2[61] = v5;
  v2[62] = *(v5 - 8);
  v2[63] = swift_task_alloc();
  v6 = sub_100001D04(&qword_1000A5690, &qword_1000854D0);
  v2[64] = v6;
  v2[65] = *(v6 - 8);
  v2[66] = swift_task_alloc();
  v7 = type metadata accessor for MetricsFieldsContext();
  v2[67] = v7;
  v2[68] = *(v7 - 8);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v8 = sub_100001D04(&qword_1000A5698, &qword_1000854D8);
  v2[71] = v8;
  v2[72] = *(v8 - 8);
  v2[73] = swift_task_alloc();
  v9 = type metadata accessor for Bag();
  v2[74] = v9;
  v2[75] = *(v9 - 8);
  v2[76] = swift_task_alloc();
  v10 = type metadata accessor for MetricsSamplingLottery();
  v2[77] = v10;
  v2[78] = *(v10 - 8);
  v2[79] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[80] = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();

  return _swift_task_switch(sub_10003B7D0, v1, 0);
}

uint64_t sub_10003B7D0()
{
  if (static MetricsDiagnosticsAndUsage.diagnosticsSubmissionAllowed.getter())
  {
    v1 = v0[54];
    v2 = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager;
    v0[87] = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager;
    sub_100001CC0((v1 + v2), *(v1 + v2 + 24));
    v3 = swift_task_alloc();
    v0[88] = v3;
    *v3 = v0;
    v3[1] = sub_10003BADC;
    v4 = v0[86];

    return sub_100015738(v4);
  }

  else
  {
    if (qword_1000A4D60 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v0 + 2, v0[5]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 2);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10003BADC()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_10003BBEC, v1, 0);
}

uint64_t sub_10003BBEC()
{
  v1 = sub_100071560(*(v0 + 688));
  if (qword_1000A4D60 != -1)
  {
    swift_once();
  }

  *(v0 + 712) = qword_1000A63B8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(v0 + 720) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 728) = *(v2 + 72);
  *(v0 + 824) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100088450;
  v3._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  *(v0 + 320) = &type metadata for String;
  strcpy((v0 + 296), "pushReceived");
  *(v0 + 309) = 0;
  *(v0 + 310) = -5120;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 296, &qword_1000A5630, &unk_100083BF0);
  v4._countAndFlagsBits = 8250;
  v4._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 352) = &type metadata for Double;
  *(v0 + 328) = v1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 328, &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 56));
  MetricsSamplingLottery.init(eventName:percentage:duration:)();
  if ((MetricsSamplingLottery.shouldCollect.getter() & 1) == 0)
  {
    v34 = *(v0 + 632);
    v36 = *(v0 + 688);
    v17 = *(v0 + 624);
    v32 = *(v0 + 616);
    TaskLocal.get()();
    sub_100001CC0((v0 + 96), *(v0 + 120));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0xD000000000000030;
    v18._object = 0x8000000100088470;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(v0 + 384) = &type metadata for String;
    strcpy((v0 + 360), "pushReceived");
    *(v0 + 373) = 0;
    *(v0 + 374) = -5120;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 360, &qword_1000A5630, &unk_100083BF0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    (*(v17 + 8))(v34, v32);
    sub_10000DCA0(v36, &unk_1000A56A0, &unk_100083E10);
    sub_100001D4C((v0 + 96));

    v20 = *(v0 + 8);
LABEL_9:

    return v20();
  }

  v6 = *(v0 + 680);
  v7 = *(v0 + 672);
  v8 = *(v0 + 600);
  v33 = *(v0 + 688);
  v35 = *(v0 + 592);
  TaskLocal.get()();
  sub_100001CC0((v0 + 136), *(v0 + 160));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000028;
  v9._object = 0x80000001000884B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 416) = &type metadata for String;
  strcpy((v0 + 392), "pushReceived");
  *(v0 + 405) = 0;
  *(v0 + 406) = -5120;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 392, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 136));
  sub_100002758(v33, v6, &unk_1000A56A0, &unk_100083E10);
  sub_100002758(v6, v7, &unk_1000A56A0, &unk_100083E10);
  v11 = *(v8 + 48);
  *(v0 + 736) = v11;
  *(v0 + 744) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v8) = v11(v7, 1, v35);
  sub_10000DCA0(v7, &unk_1000A56A0, &unk_100083E10);
  if (v8 == 1)
  {
    v12 = (*(v0 + 432) + *(v0 + 696));
    TaskLocal.get()();
    sub_100001CC0((v0 + 176), *(v0 + 200));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 176));
    sub_100001CC0(v12, v12[3]);
    *(v0 + 752) = sub_1000168D4();
    v13 = sub_100001D04(&qword_1000A4FB8, &qword_100084008);
    v14 = sub_100040238(&qword_1000A56B0, &qword_1000A4FB8, &qword_100084008, &protocol conformance descriptor for Promise<A>);
    v15 = swift_task_alloc();
    *(v0 + 760) = v15;
    *v15 = v0;
    v15[1] = sub_10003C738;
    v16 = *(v0 + 664);

    return dispatch thunk of Future.then()(v16, v13, v14);
  }

  v21 = *(v0 + 736);
  v22 = *(v0 + 656);
  v23 = *(v0 + 592);
  sub_100002758(*(v0 + 680), v22, &unk_1000A56A0, &unk_100083E10);
  if (v21(v22, 1, v23) == 1)
  {
    sub_10000DCA0(*(v0 + 656), &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 216));
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v24 = *(v0 + 688);
    v25 = *(v0 + 632);
    v26 = *(v0 + 624);
    v27 = *(v0 + 616);
    sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
    (*(v26 + 8))(v25, v27);
    sub_10000DCA0(v24, &unk_1000A56A0, &unk_100083E10);

    v20 = *(v0 + 8);
    goto LABEL_9;
  }

  (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 656), *(v0 + 592));
  v28 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v29 = swift_task_alloc();
  *(v0 + 768) = v29;
  *v29 = v0;
  v29[1] = sub_10003C894;
  v30 = *(v0 + 568);

  return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v30);
}

uint64_t sub_10003C738()
{
  v2 = *v1;

  v3 = *(v2 + 432);
  if (v0)
  {

    v4 = sub_10003D554;
  }

  else
  {

    v4 = sub_10003D148;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003C894()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 568);
  v4 = *(*v0 + 432);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10003CA00, v4, 0);
}

uint64_t sub_10003CA00()
{
  if (*(v0 + 828) == 1)
  {
    v1 = *(v0 + 552);
    v2 = *(v0 + 544);
    v3 = *(v0 + 536);
    v4 = *(v0 + 528);
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);
    MetricsFieldsContext.init()();
    static MetricsFieldsContext.Property<A>.metricsSamplingLottery.getter();
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v5 + 8))(v4, v6);
    v7 = *(v2 + 8);
    *(v0 + 776) = v7;
    *(v0 + 784) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v1, v3);
    v8 = swift_task_alloc();
    *(v0 + 792) = v8;
    *v8 = v0;
    v8[1] = sub_10003CD7C;
    v9 = *(v0 + 608);
    v10 = *(v0 + 504);

    return sub_10006FE34(v10, v9);
  }

  else
  {
    v19 = *(v0 + 632);
    v20 = *(v0 + 688);
    v12 = *(v0 + 624);
    v17 = *(v0 + 680);
    v18 = *(v0 + 616);
    v13 = *(v0 + 600);
    v15 = *(v0 + 592);
    v16 = *(v0 + 608);
    TaskLocal.get()();
    sub_100001CC0((v0 + 256), *(v0 + 280));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    (*(v13 + 8))(v16, v15);
    sub_10000DCA0(v17, &unk_1000A56A0, &unk_100083E10);
    (*(v12 + 8))(v19, v18);
    sub_10000DCA0(v20, &unk_1000A56A0, &unk_100083E10);
    sub_100001D4C((v0 + 256));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10003CD7C()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = sub_1000403BC;
  }

  else
  {
    v4 = sub_10003CEA8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003CEA8()
{
  v1 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  (*(v2 + 16))(v1, v0[76], v3);
  (*(v2 + 56))(v1, 0, 1, v3);
  sub_100071820(v1);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  v4 = swift_task_alloc();
  v0[101] = v4;
  *v4 = v0;
  v4[1] = sub_10003CFD4;
  v5 = v0[70];
  v6 = v0[60];
  v7 = v0[57];

  return MetricsPipeline.process(_:using:)(v6, v7, v5);
}

uint64_t sub_10003CFD4()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v3 = v2[54];
    (*(v2[56] + 8))(v2[57], v2[55]);
    v4 = sub_100040364;
    v5 = v3;
  }

  else
  {
    v7 = v2[59];
    v6 = v2[60];
    v8 = v2[57];
    v9 = v2[58];
    v10 = v2[55];
    v11 = v2[56];
    v12 = v2[54];
    (*(v11 + 8))(v8, v10);
    (*(v7 + 8))(v6, v9);
    v4 = sub_100040368;
    v5 = v12;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10003D148()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[75];
  v4 = v0[74];
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  (*(v3 + 56))(v2, 0, 1, v4);
  sub_100018BC0(v2, v1);
  v5 = v0[92];
  v6 = v0[82];
  v7 = v0[74];
  sub_100002758(v0[85], v6, &unk_1000A56A0, &unk_100083E10);
  if (v5(v6, 1, v7) == 1)
  {
    sub_10000DCA0(v0[82], &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    sub_100001CC0(v0 + 27, v0[30]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 27);
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v8 = v0[86];
    v9 = v0[79];
    v10 = v0[78];
    v11 = v0[77];
    sub_10000DCA0(v0[85], &unk_1000A56A0, &unk_100083E10);
    (*(v10 + 8))(v9, v11);
    sub_10000DCA0(v8, &unk_1000A56A0, &unk_100083E10);

    v12 = v0[1];

    return v12();
  }

  else
  {
    (*(v0[75] + 32))(v0[76], v0[82], v0[74]);
    v14 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v15 = swift_task_alloc();
    v0[96] = v15;
    *v15 = v0;
    v15[1] = sub_10003C894;
    v16 = v0[71];

    return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v16);
  }
}

uint64_t sub_10003D554()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[75];
  v4 = v0[74];
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  (*(v3 + 56))(v2, 1, 1, v4);
  sub_100018BC0(v2, v1);
  v5 = v0[92];
  v6 = v0[82];
  v7 = v0[74];
  sub_100002758(v0[85], v6, &unk_1000A56A0, &unk_100083E10);
  if (v5(v6, 1, v7) == 1)
  {
    sub_10000DCA0(v0[82], &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    sub_100001CC0(v0 + 27, v0[30]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 27);
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v8 = v0[86];
    v9 = v0[79];
    v10 = v0[78];
    v11 = v0[77];
    sub_10000DCA0(v0[85], &unk_1000A56A0, &unk_100083E10);
    (*(v10 + 8))(v9, v11);
    sub_10000DCA0(v8, &unk_1000A56A0, &unk_100083E10);

    v12 = v0[1];

    return v12();
  }

  else
  {
    (*(v0[75] + 32))(v0[76], v0[82], v0[74]);
    v14 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v15 = swift_task_alloc();
    v0[96] = v15;
    *v15 = v0;
    v15[1] = sub_10003C894;
    v16 = v0[71];

    return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v16);
  }
}

uint64_t sub_10003D960(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003DA58;

  return v6(a1);
}

uint64_t sub_10003DA58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003DB50(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

char *sub_10003DBFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003DD08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003DC1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003DE4C(a1, a2, a3, *v3, &unk_1000A57A0, &unk_1000855D8, &type metadata accessor for JetPackAssetSQLiteRecord);
  *v3 = result;
  return result;
}

void *sub_10003DC60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003DE4C(a1, a2, a3, *v3, &qword_1000A5778, &qword_1000855A8, &type metadata accessor for AssetPushSubscriptionRecord);
  *v3 = result;
  return result;
}

void *sub_10003DCA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003DE4C(a1, a2, a3, *v3, &qword_1000A5780, &qword_1000855B0, &type metadata accessor for JetPackAsset);
  *v3 = result;
  return result;
}

void *sub_10003DCE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003E028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003DD08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001D04(&unk_1000A5650, &qword_100084490);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003DE4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001D04(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10003E028(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001D04(&qword_1000A5790, &qword_1000855C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001D04(&qword_1000A5798, &qword_1000855C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10003E15C(void *a1)
{
  v2 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  __chkstk_darwin(v2 - 8, v3);
  v55 = v53 - v4;
  v5 = sub_100001D04(&qword_1000A5670, &qword_100085460);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v53 - v7;
  v59 = type metadata accessor for PushMessage(0);
  v66 = *(v59 - 8);
  v10 = __chkstk_darwin(v59, v9);
  v54 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[1] = v11;
  __chkstk_darwin(v10, v12);
  v14 = v53 - v13;
  v15 = type metadata accessor for LogMessage.StringInterpolation();
  v17 = __chkstk_darwin(v15 - 8, v16);
  v56 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v60 = v14;
  v64 = qword_1000A63A0;
  TaskLocal.get()();
  v58 = v73;
  v57 = sub_100001CC0(v71, v72);
  v20 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v63 = *(*(type metadata accessor for LogMessage() - 8) + 72);
  v65 = v20;
  v21 = swift_allocObject();
  v62 = xmmword_1000839C0;
  *(v21 + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x80000001000880B0;
  v22._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v23 = a1;
  v24 = [a1 channelID];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = &type metadata for String;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v69 = 0;
  }

  v67 = v26;
  v68 = v28;
  v70 = v29;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(&v67, &qword_1000A5630, &unk_100083BF0);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v31 = sub_100001D4C(v71);
  v32 = v61;
  __chkstk_darwin(v31, v33);
  v53[-2] = v32;
  SendableWrapper.withValue<A>(_:)();
  v72 = type metadata accessor for SystemDateProvider();
  v73 = &protocol witness table for SystemDateProvider;
  sub_1000061A4(v71);
  v34 = v23;
  SystemDateProvider.init()();
  sub_10001DB90(v34, v71, v8);
  v35 = v59;
  if ((*(v66 + 48))(v8, 1, v59) == 1)
  {
    sub_10000DCA0(v8, &qword_1000A5670, &qword_100085460);
    TaskLocal.get()();
    sub_100001CC0(v71, v72);
    *(swift_allocObject() + 16) = v62;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return sub_100001D4C(v71);
  }

  else
  {
    v58 = 0;
    v37 = v60;
    sub_10003F7E0(v8, v60);
    TaskLocal.get()();
    sub_100001CC0(v71, v72);
    *(swift_allocObject() + 16) = v62;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    v39 = (v37 + *(v35 + 28));
    v41 = *v39;
    v40 = v39[1];
    v70 = &type metadata for String;
    v67 = v41;
    v68 = v40;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v67, &qword_1000A5630, &unk_100083BF0);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C(v71);
    if (MKBDeviceUnlockedSinceBoot() < 1)
    {
      TaskLocal.get()();
      sub_100001CC0(v71, v72);
      *(swift_allocObject() + 16) = v62;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      v50 = sub_100001D4C(v71);
      v51 = *&v32[OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeUnlockPushes];
      __chkstk_darwin(v50, v52);
      v45 = v60;
      v53[-2] = v60;
      os_unfair_lock_lock((v51 + 24));
      sub_10003F844((v51 + 16));
      os_unfair_lock_unlock((v51 + 24));
      sub_10002D634();
    }

    else
    {
      v43 = type metadata accessor for TaskPriority();
      v44 = v55;
      (*(*(v43 - 8) + 56))(v55, 1, 1, v43);
      v45 = v60;
      v46 = v54;
      sub_10003F860(v60, v54);
      v47 = (*(v66 + 80) + 40) & ~*(v66 + 80);
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v32;
      sub_10003F7E0(v46, v48 + v47);
      v49 = v32;
      sub_100023290(0, 0, v44, &unk_100085470, v48);
    }

    return sub_10003FC74(v45, type metadata accessor for PushMessage);
  }
}

uint64_t sub_10003E998(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v22 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  sub_100018718(v15, qword_1000A54E0);
  v16 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v21 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v22 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v9, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v21, v20, a1, v18, v19, 2u);

LABEL_15:

      return (*(v11 + 8))(v14, v10);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10003EC74(unint64_t a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  v4 = __chkstk_darwin(v2 - 8, v3);
  v34 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4, v6);
  v28 = &v26 - v8;
  if (!a1)
  {
    goto LABEL_23;
  }

  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v10 = 0;
  v33 = a1 & 0xC000000000000001;
  v26 = "Channel subscription failed: ";
  v27 = "al since last connected: ";
  v32 = xmmword_1000839C0;
  v29 = v9;
  v30 = a1;
  do
  {
    if (v33)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(a1 + 8 * v10 + 32);
    }

    v17 = v16;
    if ([v16 failureReason] == 1)
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0(v37, v38);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = v32;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v18._countAndFlagsBits = 0xD00000000000001ELL;
      v18._object = (v26 | 0x8000000000000000);
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v19 = [v17 channelID];
      if (v19)
      {
        v11 = v19;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        *(&v36 + 1) = &type metadata for String;
        *&v35 = v12;
        *(&v35 + 1) = v14;
        v9 = v29;
        a1 = v30;
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
      }

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(&v35, &qword_1000A5630, &unk_100083BF0);
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v15);
      LogMessage.init(stringInterpolation:)();
      Logger.debug(_:)();

      result = sub_100001D4C(v37);
    }

    else
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v31 = v39;
      sub_100001CC0(v37, v38);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = v32;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v20._object = (v27 | 0x8000000000000000);
      v20._countAndFlagsBits = 0xD00000000000001DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v21 = [v17 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      *(&v36 + 1) = &type metadata for String;
      *&v35 = v22;
      *(&v35 + 1) = v24;
      LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
      sub_10000DCA0(&v35, &qword_1000A5630, &unk_100083BF0);
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      result = sub_100001D4C(v37);
      v9 = v29;
      a1 = v30;
    }

    ++v10;
  }

  while (v9 != v10);
  return result;
}

uint64_t sub_10003F154(int a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  __chkstk_darwin(v3 - 8, v4);
  v34 = &v33 - v5;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8, v7);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  v13 = v40;
  v14 = v41;
  if ((v41 & 1) == 0)
  {
    sub_100001CC0(&v1[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider], *&v1[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider + 24]);
    dispatch thunk of DateProvider.now.getter();
    Date.timeIntervalSince1970.getter();
    v16 = v15;
    (*(v9 + 8))(v12, v8);
    v13 = v16 - v13;
  }

  v35 = v9;
  v36 = v8;
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(&v40, v42);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD00000000000002CLL;
  v17._object = 0x8000000100087F90;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v39 = &type metadata for Bool;
  LOBYTE(v38[0]) = v37 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v38, &qword_1000A5630, &unk_100083BF0);
  v18._object = 0x8000000100087FC0;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  if (v14)
  {
    v19 = 0;
    v38[1] = 0;
    v38[2] = 0;
    v20 = 0.0;
  }

  else
  {
    v19 = &type metadata for Double;
    v20 = v13;
  }

  *v38 = v20;
  v39 = v19;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v38, &qword_1000A5630, &unk_100083BF0);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  result = sub_100001D4C(&v40);
  if (v37)
  {
    sub_100001CC0(&v1[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider], *&v1[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider + 24]);
    dispatch thunk of DateProvider.now.getter();
    Date.timeIntervalSince1970.getter();
    v24 = v23;
    (*(v35 + 8))(v12, v36);
    result = sub_100024798(v24, 0);
    v25 = v13 <= 2592000.0 ? 1 : v14;
    if ((v25 & 1) == 0)
    {
      v26 = type metadata accessor for TaskPriority();
      v27 = v34;
      (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
      v28 = qword_1000A4DC8;
      v29 = v2;
      if (v28 != -1)
      {
        swift_once();
      }

      v30 = qword_1000A6450;
      v31 = sub_10004019C(&qword_1000A5660, type metadata accessor for DaemonActor, &unk_100086084);
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v31;
      *(v32 + 32) = v13;
      *(v32 + 40) = v29;

      sub_100037B80(0, 0, v27, &unk_100085458, v32);
    }
  }

  return result;
}

uint64_t sub_10003F6DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F71C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DAF8;

  return sub_100037704(v6, a1, v4, v5, v7);
}

uint64_t sub_10003F7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F8C4()
{
  v1 = type metadata accessor for PushMessage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v11 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v1 + 20);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);

  v9 = *(v1 + 36);
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v0 + v3 + v9, v6);
  }

  return _swift_deallocObject(v0, v3 + v11, v2 | 7);
}

uint64_t sub_10003FA8C(uint64_t a1)
{
  v4 = *(type metadata accessor for PushMessage(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000DAF8;

  return sub_10002D780(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10003FB84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003FBBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100040348;

  return sub_10003D960(a1, v4);
}

uint64_t sub_10003FC74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003FCD4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100040348;

  return sub_100030B00(a1, v5, v4);
}

unint64_t sub_10003FD80()
{
  result = qword_1000A5678;
  if (!qword_1000A5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5678);
  }

  return result;
}

uint64_t sub_10003FDD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 0)
  {
  }

  return result;
}

uint64_t sub_10003FDF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 0)
  {
  }

  return result;
}

unint64_t sub_10003FE0C()
{
  result = qword_1000A56B8;
  if (!qword_1000A56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56B8);
  }

  return result;
}

uint64_t sub_10003FE60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100040348;

  return sub_10003494C(a1, v5, v4);
}

unint64_t sub_10003FF0C()
{
  result = qword_1000A56C0;
  if (!qword_1000A56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56C0);
  }

  return result;
}

unint64_t sub_10003FF60()
{
  result = qword_1000A56D0;
  if (!qword_1000A56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56D0);
  }

  return result;
}

uint64_t sub_10003FFB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040010(void *a1)
{

  *a1 = v1;
}

uint64_t sub_10004004C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100040348;

  return sub_10002E420(a1, v4, v5, v7, v6);
}

uint64_t sub_100040154(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10004019C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100040238(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100018FD0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100040280(uint64_t *a1)
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

uint64_t sub_1000403C0(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for AssetPushSubscriptionRecord();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_1000404DC;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v3, v3);
}

uint64_t sub_1000404DC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000408A8;
  }

  else
  {
    v2 = sub_1000405F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000405F0()
{
  v1 = v0[12];
  sub_100001CC0(v0 + 2, v0[5]);
  v2 = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (!v1)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[9];
      v6 = *(v4 + 16);
      v5 = v4 + 16;
      v20 = v6;
      v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
      v8 = *(v5 + 56);
      v9 = _swiftEmptyArrayStorage;
      do
      {
        v10 = v0[10];
        v11 = v0[8];
        v20(v10, v7, v11);
        v12 = AssetPushSubscriptionRecord.id.getter();
        (*(v5 - 8))(v10, v11);
        if ((v12 & 0x100000000) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_10001ED90(0, *(v9 + 2) + 1, 1, v9);
          }

          v14 = *(v9 + 2);
          v13 = *(v9 + 3);
          if (v14 >= v13 >> 1)
          {
            v9 = sub_10001ED90((v13 > 1), v14 + 1, 1, v9);
          }

          *(v9 + 2) = v14 + 1;
          *&v9[4 * v14 + 32] = v12;
        }

        v7 += v8;
        --v3;
      }

      while (v3);

      v15 = *(v9 + 2);
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v9 = _swiftEmptyArrayStorage;
      v15 = _swiftEmptyArrayStorage[2];
      if (!v15)
      {
LABEL_22:

        DaemonResponse.init<>(_:)();
        sub_100001D4C(v0 + 2);

        v19 = v0[1];
        goto LABEL_19;
      }
    }

    sub_100001CC0(v0 + 2, v0[5]);
    result = dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
    v17 = v9 + 36;
    v18 = 1;
    while (v15 != v18)
    {
      if (v18 >= *(v9 + 2))
      {
        __break(1u);
        return result;
      }

      ++v18;
      v17 += 4;
      sub_100001CC0(v0 + 2, v0[5]);
      result = dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
    }

    goto LABEL_22;
  }

  sub_100001D4C(v0 + 2);

  v19 = v0[1];
LABEL_19:

  return v19();
}

uint64_t sub_1000408A8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100040920()
{
  result = qword_1000A5810;
  if (!qword_1000A5810)
  {
    type metadata accessor for DaemonPushClearRecordsRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5810);
  }

  return result;
}

uint64_t sub_100040978()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4D30 != -1)
  {
    swift_once();
  }

  v5 = sub_100018718(v0, qword_1000A6378);
  (*(v1 + 16))(v4, v5, v0);
  v6 = OSLogger.Subsystem.rawValue.getter();
  v8 = v7;
  result = (*(v1 + 8))(v4, v0);
  qword_1000A63C8 = v6;
  unk_1000A63D0 = v8;
  return result;
}

uint64_t sub_100040B28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OSSignposter();
  sub_100018750(v5, a2);
  sub_100018718(v5, a2);
  if (qword_1000A4D78 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100040BE0(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[23] = swift_task_alloc();
  sub_100001D04(&qword_1000A5770, &unk_100083BB0);
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for DaemonPushResetRecordRequest.Target();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v5 = swift_task_alloc();
  v2[28] = v5;
  *v5 = v2;
  v5[1] = sub_100040D60;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v4, v4);
}

uint64_t sub_100040D60()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10004151C;
  }

  else
  {
    v2 = sub_100040E74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100040E74()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  DaemonPushResetRecordRequest.target.getter();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for DaemonPushResetRecordRequest.Target.byId(_:))
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 216);
    (*(*(v0 + 208) + 96))(v6, *(v0 + 200));
    v7 = *v6;
    sub_100001CC0((v0 + 16), *(v0 + 40));
    dispatch thunk of AssetPushSubscriptionStore.find(id:)();
    if (!v5)
    {
      v8 = *(v0 + 192);
      v9 = type metadata accessor for AssetPushSubscriptionRecord();
      if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
      {
        _StringGuts.grow(_:)(45);

        *(v0 + 240) = v7;
      }

      else
      {
        sub_100001CC0((v0 + 16), *(v0 + 40));
        dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
        v8 = *(v0 + 192);
        _StringGuts.grow(_:)(55);
        v22._countAndFlagsBits = 0xD000000000000035;
        v22._object = 0x8000000100088E30;
        String.append(_:)(v22);
        *(v0 + 244) = v7;
      }

      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      DaemonResponse.init<>(_:)();
      sub_10000DCA0(v8, &qword_1000A5770, &unk_100083BB0);
LABEL_20:
      sub_100001D4C((v0 + 16));
LABEL_21:

      v29 = *(v0 + 8);

      return v29();
    }

    goto LABEL_12;
  }

  if (v4 == enum case for DaemonPushResetRecordRequest.Target.byChannelId(_:))
  {
    v10 = *(v0 + 232);
    v11 = *(v0 + 216);
    (*(*(v0 + 208) + 96))(v11, *(v0 + 200));
    v13 = *v11;
    v12 = v11[1];
    sub_100001CC0((v0 + 16), *(v0 + 40));
    v14 = dispatch thunk of AssetPushSubscriptionStore.find(channelID:)();
    if (!v10)
    {
      if (*(v14 + 16))
      {
        v21 = v14;
        sub_100001CC0((v0 + 16), *(v0 + 40));
        dispatch thunk of AssetPushSubscriptionStore.resetPending(channelID:)();
        _StringGuts.grow(_:)(65);
        v24._object = 0x8000000100088D70;
        v24._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v24);
        v25 = *(v21 + 16);

        *(v0 + 160) = v25;
        v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v26);

        v27._countAndFlagsBits = 0xD00000000000002ALL;
        v27._object = 0x8000000100088D90;
        String.append(_:)(v27);
      }

      else
      {

        _StringGuts.grow(_:)(50);
      }

      v28._countAndFlagsBits = v13;
      v28._object = v12;
      String.append(_:)(v28);

      DaemonResponse.init<>(_:)();
      goto LABEL_20;
    }

LABEL_12:
    sub_100001D4C((v0 + 16));
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0((v0 + 56), *(v0 + 80));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0xD00000000000002ELL;
    v16._object = 0x8000000100088D40;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    swift_getErrorValue();
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    *(v0 + 120) = v18;
    v19 = sub_1000061A4((v0 + 96));
    (*(*(v18 - 8) + 16))(v19, v17, v18);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 96, &qword_1000A5630, &unk_100083BF0);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 56));
    DaemonResponse.init(_:)();
    goto LABEL_21;
  }

  v15 = *(v0 + 200);

  return _diagnoseUnexpectedEnumCase<A>(type:)(v15, v15);
}

uint64_t sub_10004151C()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100088D40;
  v1._countAndFlagsBits = 0xD00000000000002ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[16];
  v3 = v0[17];
  v0[15] = v3;
  v4 = sub_1000061A4(v0 + 12);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

unint64_t sub_1000417B8()
{
  result = qword_1000A5838;
  if (!qword_1000A5838)
  {
    type metadata accessor for DaemonPushResetRecordRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5838);
  }

  return result;
}

unint64_t sub_100041824()
{
  result = qword_1000A5860;
  if (!qword_1000A5860)
  {
    type metadata accessor for DaemonPingRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5860);
  }

  return result;
}

uint64_t sub_10004187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a2;
  v4[32] = a4;
  v4[30] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[33] = swift_task_alloc();
  v5 = type metadata accessor for JetPackAssetSQLiteRecord();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v6 = type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
  v7 = swift_task_alloc();
  v4[37] = v7;
  *v7 = v4;
  v7[1] = sub_1000419BC;

  return BaseObjectGraph.inject<A>(_:)(v4 + 27, v6, v6);
}

uint64_t sub_1000419BC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_100042614;
  }

  else
  {
    v2 = sub_100041AD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100041AD0()
{
  v1 = v0[38];
  v0[39] = v0[27];
  DaemonCacheEvictRequest.cacheKey.getter();
  v2 = JetPackAssetDiskCacheSQLiteMetadataStore.findAll(cacheKey:)();
  if (v1)
  {

LABEL_3:

    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v0 + 2, v0[5]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v3._object = 0x8000000100088E70;
    v3._countAndFlagsBits = 0xD000000000000023;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = v0[24];
    v5 = v0[25];
    v0[15] = v5;
    v6 = sub_1000061A4(v0 + 12);
    (*(*(v5 - 8) + 16))(v6, v4, v5);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 12));
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C(v0 + 2);
    type metadata accessor for DaemonCacheEvictResponse();
    sub_100042E18(&qword_1000A5888, &type metadata accessor for DaemonCacheEvictResponse, &protocol conformance descriptor for DaemonCacheEvictResponse);
    sub_100042E18(&qword_1000A5890, &type metadata accessor for DaemonCacheEvictResponse, &protocol conformance descriptor for DaemonCacheEvictResponse);
    DaemonResponse.init(_:)();

    v8 = v0[1];

    return v8();
  }

  v10 = v2;
  v11 = v0[31];

  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  v13 = sub_10004300C(sub_100042C64, v12, v10);
  v0[40] = v13;

  v14 = v13[2];
  v0[41] = v14;
  if (!v14)
  {

    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v0 + 7, v0[10]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0xD00000000000003ALL;
    v17._object = 0x8000000100088EA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v18 = DaemonCacheEvictRequest.cacheKey.getter();
    v0[19] = &type metadata for String;
    v0[16] = v18;
    v0[17] = v19;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 16));
    v20._countAndFlagsBits = 0x614E656C6966202CLL;
    v20._object = 0xEC000000203A656DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v21 = DaemonCacheEvictRequest.fileName.getter();
    v0[23] = &type metadata for String;
    v0[20] = v21;
    v0[21] = v22;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 20));
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 7);
    sub_100042C84();
    swift_allocError();
    swift_willThrow();
    goto LABEL_3;
  }

  v15 = type metadata accessor for JetPackAssetDiskCache();
  v16 = swift_task_alloc();
  v0[42] = v16;
  *v16 = v0;
  v16[1] = sub_1000420CC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 29, v15, v15);
}

uint64_t sub_1000420CC()
{
  *(*v1 + 344) = v0;

  if (v0)
  {

    v2 = sub_1000428E4;
  }

  else
  {
    v2 = sub_1000421E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000421E8()
{
  v1 = 0;
  v2 = v0[35];
  v3 = v0[40] + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  do
  {
    if (v1 >= *(v0[40] + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v4 = v0[36];
    v5 = v0[34];
    (*(v2 + 16))(v4, v3 + *(v2 + 72) * v1, v5);
    v6 = JetPackAssetSQLiteRecord.id.getter();
    (*(v2 + 8))(v4, v5);
    if ((v6 & 0x100000000) == 0)
    {
      JetPackAssetDiskCache._evict(cacheID:)(v6);
      if (v7)
      {

        if (qword_1000A4D40 == -1)
        {
LABEL_7:
          TaskLocal.get()();
          sub_100001CC0(v0 + 2, v0[5]);
          sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1000839C0;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v8._object = 0x8000000100088E70;
          v8._countAndFlagsBits = 0xD000000000000023;
          LogMessage.StringInterpolation.appendLiteral(_:)(v8);
          swift_getErrorValue();
          v9 = v0[24];
          v10 = v0[25];
          v0[15] = v10;
          v11 = sub_1000061A4(v0 + 12);
          (*(*(v10 - 8) + 16))(v11, v9, v10);
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_100013EFC((v0 + 12));
          v12._countAndFlagsBits = 0;
          v12._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v12);
          LogMessage.init(stringInterpolation:)();
          Logger.error(_:)();

          sub_100001D4C(v0 + 2);
          type metadata accessor for DaemonCacheEvictResponse();
          sub_100042E18(&qword_1000A5888, &type metadata accessor for DaemonCacheEvictResponse, &protocol conformance descriptor for DaemonCacheEvictResponse);
          sub_100042E18(&qword_1000A5890, &type metadata accessor for DaemonCacheEvictResponse, &protocol conformance descriptor for DaemonCacheEvictResponse);
          DaemonResponse.init(_:)();
          goto LABEL_9;
        }

LABEL_13:
        swift_once();
        goto LABEL_7;
      }
    }

    ++v1;
  }

  while (v1 != v0[41]);
  v13 = v0[30];

  v14 = enum case for DaemonCacheEvictResponse.success(_:);
  v15 = type metadata accessor for DaemonCacheEvictResponse();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  sub_100001D04(&qword_1000A5898, &unk_100085708);
  swift_storeEnumTagMultiPayload();
LABEL_9:

  v16 = v0[1];

  return v16();
}

uint64_t sub_100042614()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100088E70;
  v1._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[24];
  v3 = v0[25];
  v0[15] = v3;
  v4 = sub_1000061A4(v0 + 12);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 12));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  type metadata accessor for DaemonCacheEvictResponse();
  sub_100042E18(&qword_1000A5888, &type metadata accessor for DaemonCacheEvictResponse, &protocol conformance descriptor for DaemonCacheEvictResponse);
  sub_100042E18(&qword_1000A5890, &type metadata accessor for DaemonCacheEvictResponse, &protocol conformance descriptor for DaemonCacheEvictResponse);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000428E4()
{

  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100088E70;
  v1._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[24];
  v3 = v0[25];
  v0[15] = v3;
  v4 = sub_1000061A4(v0 + 12);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 12));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  type metadata accessor for DaemonCacheEvictResponse();
  sub_100042E18(&qword_1000A5888, &type metadata accessor for DaemonCacheEvictResponse, &protocol conformance descriptor for DaemonCacheEvictResponse);
  sub_100042E18(&qword_1000A5890, &type metadata accessor for DaemonCacheEvictResponse, &protocol conformance descriptor for DaemonCacheEvictResponse);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100042BBC()
{
  v0 = JetPackAssetSQLiteRecord.fileName.getter();
  v2 = v1;
  v3 = DaemonCacheEvictRequest.fileName.getter();
  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_100042C84()
{
  result = qword_1000A58A0;
  if (!qword_1000A58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A58A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CacheEvictError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CacheEvictError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100042E18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_100042E6C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100042ED8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_100042F54()
{
  result = qword_1000A58D0;
  if (!qword_1000A58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A58D0);
  }

  return result;
}

void sub_100042FA8()
{
  v0._countAndFlagsBits = 1668315182;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  qword_1000A6438 = 0xD000000000000017;
  unk_1000A6440 = 0x8000000100086BE0;
}

void *sub_10004304C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v32 = a5;
  v43 = a4(0);
  v10 = __chkstk_darwin(v43, v9);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10, v12);
  v42 = &v32 - v15;
  v39 = *(a3 + 16);
  if (v39)
  {
    v16 = 0;
    v36 = (v14 + 8);
    v37 = (v14 + 32);
    v38 = v14 + 16;
    v41 = _swiftEmptyArrayStorage;
    v34 = a2;
    v35 = a3;
    v33 = a1;
    while (v16 < *(a3 + 16))
    {
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v18 = *(v14 + 72);
      v19 = a3;
      v20 = a3 + v17 + v18 * v16;
      v21 = v14;
      v22 = a1;
      v23 = v42;
      (*(v14 + 16))(v42, v20, v43);
      v24 = v23;
      a1 = v22;
      v25 = v22(v24);
      if (v5)
      {
        (*v36)(v42, v43);
        v31 = v41;

        return v31;
      }

      if (v25)
      {
        v26 = *v37;
        (*v37)(v40, v42, v43);
        v27 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32(0, v27[2] + 1, 1);
          v27 = v44;
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v32(v29 > 1, v30 + 1, 1);
          v27 = v44;
        }

        v27[2] = v30 + 1;
        v41 = v27;
        result = (v26)(v27 + v17 + v30 * v18, v40, v43);
        a3 = v35;
        a1 = v33;
      }

      else
      {
        result = (*v36)(v42, v43);
        a3 = v19;
      }

      ++v16;
      v14 = v21;
      if (v39 == v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
LABEL_14:

    return v41;
  }

  return result;
}

Swift::Int sub_100043358()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100085FF8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000433E0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100085FF8[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10004342C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005B2BC(*a1);
  *a2 = result;
  return result;
}

id sub_1000434E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = String._bridgeToObjectiveC()();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000435C4;
  v14[3] = &unk_10009F5B0;
  v11 = _Block_copy(v14);

  v12 = [v9 registerForTaskWithIdentifier:v10 usingQueue:a3 launchHandler:v11];

  _Block_release(v11);

  return v12;
}

void sub_1000435C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10004362C()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 taskRequestForIdentifier:v2];

  return v3;
}

id sub_1000436A0()
{
  v1 = String._bridgeToObjectiveC()();
  v5 = 0;
  v2 = [v0 cancelTaskRequestWithIdentifier:v1 error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

unint64_t sub_100043794()
{
  result = qword_1000A5920;
  if (!qword_1000A5920)
  {
    sub_100018FD0(&qword_1000A5928, qword_100085960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5920);
  }

  return result;
}

unint64_t sub_1000437FC()
{
  result = qword_1000A5930;
  if (!qword_1000A5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5930);
  }

  return result;
}

id sub_100043850(uint64_t a1)
{
  v4 = 0;
  if ([v1 submitTaskRequest:a1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000438FC(uint64_t a1)
{
  sub_1000064B4(v1 + 80, v4);
  v5 = 0;
  sub_10005A888(0xD00000000000001FLL, 0x80000001000890C0, v4, a1);
  sub_10005B484(v4);
  sub_10005ADC0(0xD000000000000023, 0x8000000100089320, a1, v1, &type metadata for PostInstallScheduledTaskHandler, &off_10009FAF8, sub_100060C4C);
  sub_1000064B4(v1 + 80, v4);
  v5 = 1;
  sub_10005AB24(0xD00000000000002BLL, 0x8000000100089350, v4, a1);
  sub_10005B4B4(v4);
  sub_10005ADC0(0xD00000000000002BLL, 0x8000000100089380, a1, v1, &type metadata for MaintenanceCleanupTaskHandler, &off_10009FB28, sub_100060C4C);
  sub_10005ADC0(0xD000000000000023, 0x8000000100089070, a1, v1, &type metadata for BagRefreshTaskHandler, &off_10009FB40, sub_100060C4C);
  sub_1000064B4(v1 + 80, v4);
  sub_1000064B4(v4, &v6);
  v5 = 2;
  sub_10005B020(0xD00000000000002DLL, 0x8000000100088F50, v4, a1);
  return sub_10005B4E4(v4);
}

uint64_t sub_100043ADC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  sub_100001CC0(a1, v11);
  sub_1000064B4(a4, v16);
  v13 = swift_allocObject();
  sub_10000626C(v16, v13 + 16);
  *(v13 + 56) = a5;
  v14 = *(v12 + 8);

  LOBYTE(a5) = v14(a2, a3, 0, sub_10005B5EC, v13, v11, v12);

  *a6 = a5 & 1;
  return result;
}

uint64_t sub_100043BD8(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v4 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8, v9);
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v22[1] = v28;
  sub_100001CC0(&aBlock, v27);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001000893E0;
  v10._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = [a1 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v30[3] = &type metadata for String;
  v30[0] = v12;
  v30[1] = v14;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v30, &qword_1000A5630, &unk_100083BF0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(&aBlock);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_1000064B4(v23, &aBlock);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  sub_10000626C(&aBlock, (v17 + 4));
  v17[9] = v24;
  v17[10] = a1;

  v18 = a1;
  v19 = sub_100023290(0, 0, v7, &unk_100085A90, v17);
  v28 = sub_10005B70C;
  v29 = v19;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v26 = sub_100081260;
  v27 = &unk_10009F650;
  v20 = _Block_copy(&aBlock);

  [v18 setExpirationHandler:v20];
  _Block_release(v20);
}

uint64_t sub_100043FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[78] = a6;
  v6[77] = a5;
  v6[76] = a4;
  type metadata accessor for LogMessage.StringInterpolation();
  v6[79] = swift_task_alloc();

  return _swift_task_switch(sub_10004404C, 0, 0);
}

uint64_t sub_10004404C()
{
  v1 = v0[76];
  v2 = v1[3];
  v3 = v1[4];
  sub_100001CC0(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[80] = v4;
  *v4 = v0;
  v4[1] = sub_100044178;
  v5 = v0[77];

  return v7(v5, v2, v3);
}

uint64_t sub_100044178()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_10004476C;
  }

  else
  {
    v2 = sub_10004428C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004428C()
{
  v1 = *(v0 + 608);
  [*(v0 + 624) setTaskCompleted];
  v2 = v1[3];
  v3 = v1[4];
  sub_100001CC0(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 656) = v4;
  *v4 = v0;
  v4[1] = sub_1000443CC;
  v5 = *(v0 + 616);

  return v7(v5, v2, v3);
}

uint64_t sub_1000443CC()
{
  v2 = *v1;
  *(v2 + 664) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100044F70, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100044508()
{
  v1 = *(v0 + 624);
  sub_100001CC0((v0 + 152), *(v0 + 176));
  swift_errorRetain();
  v2 = [v1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 domain];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  *(v0 + 80) = v12;
  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0;
  sub_10005B730();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100001D4C((v0 + 152));
  v13 = *(v0 + 608);
  [*(v0 + 624) setTaskCompleted];
  v14 = v13[3];
  v15 = v13[4];
  sub_100001CC0(v13, v14);
  v19 = (*(v15 + 16) + **(v15 + 16));
  v16 = swift_task_alloc();
  *(v0 + 656) = v16;
  *v16 = v0;
  v16[1] = sub_1000443CC;
  v17 = *(v0 + 616);

  return v19(v17, v14, v15);
}

uint64_t sub_10004476C()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 672) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 112), *(v0 + 136));
  *(v0 + 680) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 688) = *(v1 + 72);
  *(v0 + 60) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100089410;
  v2._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  *(v0 + 376) = v4;
  v5 = sub_1000061A4((v0 + 352));
  (*(*(v4 - 8) + 16))(v5, v3, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 352, &qword_1000A5630, &unk_100083BF0);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 112));
  v7 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v8 = swift_task_alloc();
  *(v0 + 696) = v8;
  *v8 = v0;
  v8[1] = sub_100044A1C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 152, v7, v7);
}

uint64_t sub_100044A1C()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_100044B30;
  }

  else
  {
    v2 = sub_100044508;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100044B30()
{
  TaskLocal.get()();
  sub_100001CC0((v0 + 192), *(v0 + 216));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100089440;
  v1._countAndFlagsBits = 0xD000000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  *(v0 + 408) = v3;
  v4 = sub_1000061A4((v0 + 384));
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 384, &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 192));
  v6 = *(v0 + 608);
  [*(v0 + 624) setTaskCompleted];
  v7 = v6[3];
  v8 = v6[4];
  sub_100001CC0(v6, v7);
  v12 = (*(v8 + 16) + **(v8 + 16));
  v9 = swift_task_alloc();
  *(v0 + 656) = v9;
  *v9 = v0;
  v9[1] = sub_1000443CC;
  v10 = *(v0 + 616);

  return v12(v10, v7, v8);
}

uint64_t sub_100044DE0()
{
  v1 = *(v0 + 624);
  sub_100001CC0((v0 + 272), *(v0 + 296));
  swift_errorRetain();
  v2 = [v1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 domain];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  *(v0 + 16) = v8;
  *(v0 + 24) = v10;
  *(v0 + 32) = v12;
  *(v0 + 40) = v3;
  *(v0 + 48) = v5;
  *(v0 + 56) = 1;
  sub_10005B730();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100001D4C((v0 + 272));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100044F70()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 712) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 232), *(v0 + 256));
  *(v0 + 720) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 728) = *(v1 + 72);
  *(v0 + 108) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100089480;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = *(v0 + 528);
  v4 = *(v0 + 536);
  *(v0 + 440) = v4;
  v5 = sub_1000061A4((v0 + 416));
  (*(*(v4 - 8) + 16))(v5, v3, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 416, &qword_1000A5630, &unk_100083BF0);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 232));
  v7 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v8 = swift_task_alloc();
  *(v0 + 736) = v8;
  *v8 = v0;
  v8[1] = sub_100045224;

  return BaseObjectGraph.inject<A>(_:)(v0 + 272, v7, v7);
}

uint64_t sub_100045224()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_100045338;
  }

  else
  {
    v2 = sub_100044DE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100045338()
{
  TaskLocal.get()();
  sub_100001CC0(v0 + 39, v0[42]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100089440;
  v1._countAndFlagsBits = 0xD000000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[69];
  v3 = v0[70];
  v0[59] = v3;
  v4 = sub_1000061A4(v0 + 56);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 56), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 39);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100045514(double a1, double a2)
{
  *(v3 + 240) = v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  *(v3 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_1000455A8, 0, 0);
}

uint64_t sub_1000455A8()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x80000001000890A0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  *(v0 + 120) = &type metadata for ScheduleTime;
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 96, &qword_1000A5630, &unk_100083BF0);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 16));
  if (v2 < 0.0 || v1 < 0.0 || v2 >= v1)
  {
    sub_10005B39C();
    swift_allocError();
    swift_willThrow();

    v19 = *(v0 + 8);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v5 + 16) = 0xD00000000000001FLL;
    *(v5 + 24) = 0x80000001000890C0;
    SendableWrapper.withValue<A>(_:)();
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);

    v8 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 initWithIdentifier:v9];

    v11 = v10;
    [v11 setPriority:2];
    [v11 setRequiresNetworkConnectivity:1];

    [v11 setScheduleAfter:v7];
    [v11 setTrySchedulingBefore:v6];
    TaskLocal.get()();
    sub_100001CC0((v0 + 56), *(v0 + 80));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0xD000000000000018;
    v12._object = 0x8000000100088F80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v0 + 152) = &type metadata for String;
    *(v0 + 128) = 0xD00000000000001FLL;
    *(v0 + 136) = 0x80000001000890C0;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 128, &qword_1000A5630, &unk_100083BF0);
    v13._countAndFlagsBits = 0xD000000000000010;
    v13._object = 0x8000000100088FA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    [v11 scheduleAfter];
    *(v0 + 184) = &type metadata for Double;
    *(v0 + 160) = v14;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 160, &qword_1000A5630, &unk_100083BF0);
    v15._countAndFlagsBits = 0xD000000000000016;
    v15._object = 0x8000000100088FC0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    [v11 trySchedulingBefore];
    *(v0 + 216) = &type metadata for Double;
    *(v0 + 192) = v16;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 192, &qword_1000A5630, &unk_100083BF0);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 56));
    *(swift_task_alloc() + 16) = v11;
    SendableWrapper.withValue<A>(_:)();

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_100045B2C(char a1, uint64_t a2)
{
  *(v3 + 584) = v2;
  *(v3 + 576) = a2;
  *(v3 + 684) = a1;
  v4 = type metadata accessor for Date();
  *(v3 + 592) = v4;
  *(v3 + 600) = *(v4 - 8);
  *(v3 + 608) = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  *(v3 + 632) = swift_task_alloc();

  return _swift_task_switch(sub_100045C64, 0, 0);
}

uint64_t sub_100045C64()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 684);
  *(v0 + 640) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 104), *(v0 + 128));
  *(v0 + 648) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 656) = *(v2 + 72);
  *(v0 + 680) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x8000000100089190;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  *(v0 + 408) = &type metadata for SchedulingPriority;
  v18 = v1;
  *(v0 + 384) = v1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 384, &qword_1000A5630, &unk_100083BF0);
  v4._object = 0x80000001000891C0;
  v4._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v7 = [v5 stringFromDate:isa];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v0 + 440) = &type metadata for String;
  *(v0 + 416) = v8;
  *(v0 + 424) = v10;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 416, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 104));
  if (jet_debug_tooling_os_variant_has_internal_content()() && v18 >= 5)
  {
    TaskLocal.get()();
    sub_100001CC0((v0 + 344), *(v0 + 368));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 344));

    v12 = *(v0 + 8);
    v13.n128_u64[0] = 0x404E000000000000;
    v14.n128_u64[0] = 0x405E000000000000;

    return v12(v13, v14);
  }

  else
  {
    sub_100001CC0((*(v0 + 584) + 40), *(*(v0 + 584) + 64));
    v16 = swift_task_alloc();
    *(v0 + 664) = v16;
    *v16 = v0;
    v16[1] = sub_1000460A8;
    v17 = *(v0 + 624);

    return sub_100015738(v17);
  }
}

uint64_t sub_1000460A8()
{
  v1 = *v0;
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 616);
  v7 = *v0;

  sub_100002758(v2, v3, &unk_1000A56A0, &unk_100083E10);
  v4 = swift_task_alloc();
  *(v1 + 672) = v4;
  *v4 = v7;
  v4[1] = sub_10004623C;
  v5 = *(v1 + 616);

  return sub_10000FD7C(v1 + 16, v5);
}

uint64_t sub_10004623C()
{

  return _swift_task_switch(sub_100046338, 0, 0);
}

uint64_t sub_100046338()
{
  sub_10000DCA0(*(v0 + 624), &unk_1000A56A0, &unk_100083E10);
  v1 = *(v0 + 24);
  if (*(v1 + 16) && (v2 = sub_100001E10(*(v0 + 684)), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = (v0 + 32);
  }

  v27 = *(v0 + 600);
  v28 = *(v0 + 592);
  v5 = *(v0 + 584);
  v26 = *(v0 + 608);
  v6 = *(v0 + 684);
  v7 = *v4;
  TaskLocal.get()();
  sub_100001CC0((v0 + 144), *(v0 + 168));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001000891E0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 472) = &type metadata for SchedulingPriority;
  *(v0 + 448) = v6;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 448, &qword_1000A5630, &unk_100083BF0);
  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 504) = &type metadata for Double;
  *(v0 + 480) = v7;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 480, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 144));
  sub_100001CC0((v5 + 80), *(v5 + 104));
  dispatch thunk of DateProvider.now.getter();
  Date.timeIntervalSince(_:)();
  v12 = v11;
  (*(v27 + 8))(v26, v28);
  if (fabs(v12) >= *(v0 + 72))
  {
    TaskLocal.get()();
    if (v12 >= 0.0)
    {
      sub_100001CC0((v0 + 184), *(v0 + 208));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v13._countAndFlagsBits = 0xD000000000000020;
      v13._object = 0x8000000100089200;
      LogMessage.StringInterpolation.appendLiteral(_:)(v13);
      *(v0 + 536) = &type metadata for Double;
      *(v0 + 512) = v12;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 512, &qword_1000A5630, &unk_100083BF0);
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v14);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 184));
      v7 = v7 - v12;
    }

    else
    {
      sub_100001CC0((v0 + 264), *(v0 + 288));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C((v0 + 264));
    }
  }

  else
  {
    TaskLocal.get()();
    sub_100001CC0((v0 + 304), *(v0 + 328));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_100001D4C((v0 + 304));
  }

  v15 = *(v0 + 40);
  if (v7 > v15)
  {
    v15 = v7;
  }

  sub_100046938((v0 + 16), v15);
  v17 = v16;
  v19 = v18;
  sub_10000D6E8(v0 + 16);
  TaskLocal.get()();
  sub_100001CC0((v0 + 224), *(v0 + 248));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x656C756465686353;
  v20._object = 0xED0000203A736920;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v0 + 568) = &type metadata for ScheduleTime;
  *(v0 + 544) = v17;
  *(v0 + 552) = v19;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 544, &qword_1000A5630, &unk_100083BF0);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 224));

  v22 = *(v0 + 8);
  v23.n128_u64[0] = v17;
  v24.n128_u64[0] = v19;

  return v22(v23, v24);
}

void sub_100046938(double *a1, double a2)
{
  v3 = *a1 * a2;
  v4 = a1[6];
  if (v4 > v3)
  {
    __break(1u);
  }

  else
  {
    sub_10005A7E4(a1, v4, v3);
    v7 = a1[4] * a2;
    v8 = v7 + a1[5];
    if (v8 < a2)
    {
      v8 = a2;
    }

    if (v7 <= v8)
    {
      sub_10005A7E4(v6, v7, v8);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1000469B4(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v4 + 184) = v5;
  *(v4 + 192) = *(v5 - 8);
  *(v4 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100046AC0, 0, 0);
}

uint64_t sub_100046AC0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  sub_100001CC0(v4 + 10, v4[13]);
  dispatch thunk of DateProvider.now.getter();
  Date.timeIntervalSince(_:)();
  v0[26] = v5;
  v6 = *(v2 + 8);
  v6(v1, v3);
  sub_100001CC0(v4 + 10, v4[13]);
  dispatch thunk of DateProvider.now.getter();
  Date.timeIntervalSince(_:)();
  v0[27] = v7;
  v6(v1, v3);
  sub_100001CC0(v4 + 5, v4[8]);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_100046C28;
  v9 = v0[22];

  return sub_100015738(v9);
}

uint64_t sub_100046C28()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  sub_100002758(v2, v3, &unk_1000A56A0, &unk_100083E10);
  v4 = swift_task_alloc();
  *(v1 + 232) = v4;
  *v4 = v7;
  v4[1] = sub_100046DBC;
  v5 = *(v1 + 168);

  return sub_10000FD7C(v1 + 16, v5);
}

uint64_t sub_100046DBC()
{

  return _swift_task_switch(sub_100046EB8, 0, 0);
}

uint64_t sub_100046EB8()
{
  v1 = *(v0 + 216);
  sub_10000DCA0(*(v0 + 176), &unk_1000A56A0, &unk_100083E10);
  v2 = *(v0 + 40);
  if (v2 - *(v0 + 72) <= v1)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 216);
    if (*(v0 + 208) > v3)
    {
      v3 = *(v0 + 208);
    }
  }

  else
  {
    if (qword_1000A4D50 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0((v0 + 104), *(v0 + 128));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 104));
    sub_100046938((v0 + 16), v2);
  }

  v5 = sub_1000470F0(*(v0 + 240), v0 + 16, v3, v4);
  v7 = v6;
  sub_10000D6E8(v0 + 16);

  v8 = *(v0 + 8);
  v9.n128_f64[0] = v5;
  v10.n128_u64[0] = v7;

  return v8(v9, v10);
}

double sub_1000470F0(unsigned int a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8, v9);
  if (a1 >= 1)
  {
    v10 = round(pow(*(a2 + 72), a1) * 10.0) / 10.0 * 3600.0;
    if (*(a2 + 80) >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(a2 + 80);
    }

    if (qword_1000A4D50 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v19, v19[3]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0xD00000000000001ELL;
    v12._object = 0x8000000100089150;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v18 = &type metadata for Int32;
    LODWORD(v17[0]) = a1;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v17, &qword_1000A5630, &unk_100083BF0);
    v13._object = 0x8000000100089170;
    v13._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v18 = &type metadata for Double;
    *v17 = v11;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v17, &qword_1000A5630, &unk_100083BF0);
    v14._countAndFlagsBits = 544175136;
    v14._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v18 = &type metadata for ScheduleTime;
    *v17 = a3;
    *&v17[1] = a4;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v17, &qword_1000A5630, &unk_100083BF0);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v19);
    return v11 + a3;
  }

  return a3;
}

uint64_t sub_1000473EC()
{
  v1[13] = v0;
  v2 = type metadata accessor for Date();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_100001D04(&qword_1000A5948, &qword_100085A68);
  v1[18] = swift_task_alloc();
  Schedule = type metadata accessor for AssetNextSchedule();
  v1[19] = Schedule;
  v1[20] = *(Schedule - 8);
  v1[21] = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100047590, 0, 0);
}

uint64_t sub_100047590()
{
  sub_100001CC0((v0[13] + 40), *(v0[13] + 64));
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_100047638;
  v2 = v0[23];

  return sub_100015738(v2);
}

uint64_t sub_100047638()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  sub_100002758(v2, v3, &unk_1000A56A0, &unk_100083E10);
  v4 = swift_task_alloc();
  *(v1 + 200) = v4;
  *v4 = v7;
  v4[1] = sub_1000477CC;
  v5 = *(v1 + 176);

  return sub_10000FD7C(v1 + 16, v5);
}

uint64_t sub_1000477CC()
{

  return _swift_task_switch(sub_1000478C8, 0, 0);
}

uint64_t sub_1000478C8()
{
  v1 = *(v0 + 104);
  sub_10000DCA0(*(v0 + 184), &unk_1000A56A0, &unk_100083E10);
  sub_100001CC0(v1, v1[3]);
  sub_10000D6E8(v0 + 16);
  result = *(v0 + 80);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  dispatch thunk of AssetPushSubscriptionStore.findNextSchedule(maxDownloadAttempts:)();
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = (*(v4 + 48))(v5, 1, v3);
  *(v0 + 256) = v6;
  if (v6 == 1)
  {
    sub_10000DCA0(v5, &qword_1000A5948, &qword_100085A68);
    v7 = *(v0 + 256) == 1;

    v8 = *(v0 + 8);

    return v8(0, 0, v7);
  }

  else
  {
    (*(v4 + 32))(*(v0 + 168), v5, v3);
    AssetNextSchedule.fromDate.getter();
    AssetNextSchedule.toDate.getter();
    v9 = AssetNextSchedule.highestDownloadAttempt.getter();
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_100047B88;
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);

    return sub_1000469B4(v12, v11, v9);
  }
}

uint64_t sub_100047B88(double a1, double a2)
{
  v6 = *v3;
  v7 = *v3;
  *(v6 + 216) = a1;
  *(v6 + 224) = a2;
  *(v6 + 232) = v2;

  v8 = *(v6 + 136);
  v9 = *(v6 + 128);
  v10 = *(v6 + 120);
  v11 = *(v6 + 112);
  if (v2)
  {
    v12 = *(v10 + 8);
    v12(v9, *(v6 + 112));
    v12(v8, v11);

    return _swift_task_switch(sub_100047FC4, 0, 0);
  }

  else
  {
    v13 = *(v10 + 8);
    v13(v9, *(v6 + 112));
    v13(v8, v11);
    v14 = swift_task_alloc();
    *(v6 + 240) = v14;
    *v14 = v7;
    v14[1] = sub_100047DCC;

    return sub_100045514(a1, a2);
  }
}

uint64_t sub_100047DCC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100048084;
  }

  else
  {
    v2 = sub_100047EE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100047EE0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v3 = *(v0 + 256) == 1;

  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_100047FC4()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100048084()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100048144(double a1)
{
  *(v2 + 392) = v1;
  *(v2 + 384) = a1;
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  *(v2 + 400) = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  *(v2 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_100048210, 0, 0);
}

uint64_t sub_100048210()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  *(v0 + 416) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 104), *(v0 + 128));
  *(v0 + 424) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v3 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 432) = *(v3 + 72);
  *(v0 + 448) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000100089010;
  v4._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 248) = &type metadata for Double;
  *(v0 + 224) = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 224, &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 104));
  v6 = type metadata accessor for Bag();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_task_alloc();
  *(v0 + 440) = v7;
  *v7 = v0;
  v7[1] = sub_1000484C0;
  v8 = *(v0 + 400);

  return sub_10000FD7C(v0 + 16, v8);
}

uint64_t sub_1000484C0()
{

  return _swift_task_switch(sub_1000485BC, 0, 0);
}

uint64_t sub_1000485BC()
{
  v1 = *(v0 + 384);
  if (*(v0 + 40) <= v1)
  {
    v5 = swift_task_alloc();
    *(v5 + 16) = 0xD000000000000023;
    *(v5 + 24) = 0x8000000100089070;
    SendableWrapper.withValue<A>(_:)();
    v6 = *(v0 + 384);

    sub_100046938((v0 + 16), v6);
    v8 = v7;
    v10 = v9;
    sub_10000D6E8(v0 + 16);
    v11 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithIdentifier:v12];

    v14 = v13;
    [v14 setPriority:2];
    [v14 setRequiresNetworkConnectivity:1];

    [v14 setScheduleAfter:v8];
    [v14 setTrySchedulingBefore:v10];
    TaskLocal.get()();
    sub_100001CC0((v0 + 184), *(v0 + 208));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0xD000000000000018;
    v15._object = 0x8000000100088F80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v0 + 312) = &type metadata for String;
    *(v0 + 288) = 0xD000000000000023;
    *(v0 + 296) = 0x8000000100089070;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 288, &qword_1000A5630, &unk_100083BF0);
    v16._countAndFlagsBits = 0xD000000000000010;
    v16._object = 0x8000000100088FA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    [v14 scheduleAfter];
    *(v0 + 344) = &type metadata for Double;
    *(v0 + 320) = v17;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 320, &qword_1000A5630, &unk_100083BF0);
    v18._countAndFlagsBits = 0xD000000000000016;
    v18._object = 0x8000000100088FC0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    [v14 trySchedulingBefore];
    *(v0 + 376) = &type metadata for Double;
    *(v0 + 352) = v19;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 352, &qword_1000A5630, &unk_100083BF0);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 184));
    *(swift_task_alloc() + 16) = v14;
    SendableWrapper.withValue<A>(_:)();
  }

  else
  {
    sub_10000D6E8(v0 + 16);
    TaskLocal.get()();
    sub_100001CC0((v0 + 144), *(v0 + 168));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v2._countAndFlagsBits = 0xD00000000000001ELL;
    v2._object = 0x8000000100089050;
    LogMessage.StringInterpolation.appendLiteral(_:)(v2);
    *(v0 + 280) = &type metadata for Double;
    *(v0 + 256) = v1;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 256, &qword_1000A5630, &unk_100083BF0);
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 144));
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100048AA4()
{
  v1[35] = v0;
  type metadata accessor for LogMessage.StringInterpolation();
  v1[36] = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_100048B78, 0, 0);
}

uint64_t sub_100048B78()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  *(v0 + 312) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 104), *(v0 + 128));
  *(v0 + 320) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 328) = *(v2 + 72);
  *(v0 + 376) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 104));
  *(v0 + 336) = *(v1 + 120);
  v3 = swift_task_alloc();
  *(v3 + 16) = 0xD00000000000002DLL;
  *(v3 + 24) = 0x8000000100088F50;
  SendableWrapper.withValue<A>(_:)();
  *(v0 + 344) = 0;
  v4 = *(v0 + 280);

  v5 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithIdentifier:v6];
  *(v0 + 352) = v7;

  v8 = v7;
  [v8 setPriority:2];
  [v8 setRequiresNetworkConnectivity:1];

  sub_100001CC0((v4 + 40), *(v4 + 64));
  v9 = swift_task_alloc();
  *(v0 + 360) = v9;
  *v9 = v0;
  v9[1] = sub_100048EB8;
  v10 = *(v0 + 304);

  return sub_100015738(v10);
}

uint64_t sub_100048EB8()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v7 = *v0;

  sub_100002758(v2, v3, &unk_1000A56A0, &unk_100083E10);
  v4 = swift_task_alloc();
  *(v1 + 368) = v4;
  *v4 = v7;
  v4[1] = sub_10004904C;
  v5 = *(v1 + 296);

  return sub_10000FD7C(v1 + 16, v5);
}

uint64_t sub_10004904C()
{

  return _swift_task_switch(sub_100049148, 0, 0);
}

uint64_t sub_100049148()
{
  v1 = *(v0 + 352);
  v10 = (*(v0 + 376) + 32) & ~*(v0 + 376);
  sub_10000DCA0(*(v0 + 304), &unk_1000A56A0, &unk_100083E10);
  [v1 setScheduleAfter:{*(v0 + 64), v10}];
  [v1 setTrySchedulingBefore:*(v0 + 40)];
  sub_10000D6E8(v0 + 16);
  TaskLocal.get()();
  sub_100001CC0((v0 + 144), *(v0 + 168));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0xD000000000000018;
  v2._object = 0x8000000100088F80;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  *(v0 + 208) = &type metadata for String;
  *(v0 + 184) = 0xD00000000000002DLL;
  *(v0 + 192) = 0x8000000100088F50;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 184, &qword_1000A5630, &unk_100083BF0);
  v3._object = 0x8000000100088FA0;
  v3._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  [v1 scheduleAfter];
  *(v0 + 240) = &type metadata for Double;
  *(v0 + 216) = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0xD000000000000016;
  v5._object = 0x8000000100088FC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  [v1 trySchedulingBefore];
  *(v0 + 248) = v6;
  *(v0 + 272) = &type metadata for Double;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 144));
  *(swift_task_alloc() + 16) = v1;
  SendableWrapper.withValue<A>(_:)();

  v8 = *(v0 + 8);

  return v8();
}

void *sub_100049484(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8, v7);
  v8 = a1[3];
  v9 = a1[4];
  sub_100001CC0(a1, v8);
  result = (*(v9 + 16))(a2, a3, v8, v9);
  if (result)
  {

    if (qword_1000A4D50 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v16, v16[3]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0x206B736154;
    v11._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v15[3] = &type metadata for String;
    v15[0] = a2;
    v15[1] = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v15, &qword_1000A5630, &unk_100083BF0);
    v12._object = 0x8000000100088FE0;
    v12._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v16);
    v13 = a1[3];
    v14 = a1[4];
    sub_100001CC0(a1, v13);
    return (*(v14 + 24))(a2, a3, v13, v14);
  }

  return result;
}

uint64_t sub_100049730(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616E65746E69616DLL;
  v4 = 0xEB0000000065636ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F636552737061;
    v4 = 0xEC0000007463656ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C756465686373;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x616E65746E69616DLL;
  v8 = 0xEB0000000065636ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F636552737061;
    v8 = 0xEC0000007463656ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C756465686373;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100049854()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004990C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000499B0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100049A64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DDEC(*a1);
  *a2 = result;
  return result;
}

void sub_100049A94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEB0000000065636ELL;
  v5 = 0x616E65746E69616DLL;
  if (v2 != 1)
  {
    v5 = 0x6E6F636552737061;
    v4 = 0xEC0000007463656ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C756465686373;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100049B14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 184) = a6;
  *(v7 + 192) = v6;
  *(v7 + 336) = a4;
  *(v7 + 168) = a3;
  *(v7 + 176) = a5;
  *(v7 + 152) = a1;
  *(v7 + 160) = a2;
  v8 = type metadata accessor for OSSignpostID();
  *(v7 + 200) = v8;
  *(v7 + 208) = *(v8 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100049BEC, 0, 0);
}

uint64_t sub_100049BEC()
{
  if (qword_1000A4DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_100018718(v1, qword_1000A58D8);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  v4 = OS_os_log.signpostsEnabled.getter();
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(v0 + 160);
  if (*(v0 + 336))
  {
LABEL_7:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return BaseObjectGraph.inject<A>(_:)(v4, v5, v6);
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 144);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v9, v7, "", v8, 2u);

LABEL_12:

  v10 = *(v0 + 224);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  (*(v12 + 16))(*(v0 + 216), v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 232) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v13 = type metadata accessor for AssetSQLiteDatabase();
  v14 = swift_task_alloc();
  *(v0 + 240) = v14;
  *v14 = v0;
  v14[1] = sub_100049E30;
  v4 = v0 + 136;
  v5 = v13;
  v6 = v13;

  return BaseObjectGraph.inject<A>(_:)(v4, v5, v6);
}

uint64_t sub_100049E30()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10004A7B0;
  }

  else
  {
    v2 = sub_100049F44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100049F44()
{
  v0[32] = v0[17];
  v1 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_10004A008;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10004A008()
{
  v2 = *v1;
  *(v2 + 272) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004A864, 0, 0);
  }

  else
  {
    v3 = sub_100001D04(&qword_1000A5760, &qword_100085560);
    v4 = swift_task_alloc();
    *(v2 + 280) = v4;
    *v4 = v2;
    v4[1] = sub_10004A1AC;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v3, v3);
  }
}

uint64_t sub_10004A1AC()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004A920, 0, 0);
  }

  else
  {
    v3 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v4 = swift_task_alloc();
    *(v2 + 296) = v4;
    *v4 = v2;
    v4[1] = sub_10004A350;

    return BaseObjectGraph.inject<A>(_:)(v2 + 96, v3, v3);
  }
}

uint64_t sub_10004A350()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_10004A9E4;
  }

  else
  {
    v2 = sub_10004A464;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004A464()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v6 = *(v0 + 176);
  sub_100001CC0((v0 + 96), *(v0 + 120));
  type metadata accessor for PushManager(0);
  sub_100038628();
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v0 + 16;
  *(v3 + 56) = v0 + 56;
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_10004A5AC;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v4, &unk_100085E30, v3, &type metadata for () + 8);
}

uint64_t sub_10004A5AC()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_10004AAB0;
  }

  else
  {

    v2 = sub_10004A6C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004A6C8()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 336);

  sub_100001D4C((v0 + 96));
  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));
  sub_1000591F0(v3, v2, v4, v1, &qword_1000A4DA8, qword_1000A58D8, sub_100049B08);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10004A7B0()
{
  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8, sub_100049B08);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004A864()
{

  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8, sub_100049B08);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004A920()
{

  sub_100001D4C((v0 + 16));
  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8, sub_100049B08);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004A9E4()
{

  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));
  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8, sub_100049B08);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004AAB0()
{

  sub_100001D4C((v0 + 96));
  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));
  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8, sub_100049B08);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004AB90(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[230] = a7;
  v7[229] = a6;
  v7[228] = a5;
  v7[227] = a4;
  v7[231] = type metadata accessor for AssetRequestMetricsEvent(0);
  v7[232] = swift_task_alloc();
  v7[233] = swift_task_alloc();
  sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v7[234] = swift_task_alloc();
  v7[235] = swift_task_alloc();
  v7[236] = swift_task_alloc();
  v7[237] = swift_task_alloc();
  v7[238] = swift_task_alloc();
  v7[239] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v7[240] = v9;
  v7[241] = *(v9 - 8);
  v7[242] = swift_task_alloc();
  v7[243] = swift_task_alloc();
  v7[244] = swift_task_alloc();
  v7[245] = swift_task_alloc();
  v7[246] = swift_task_alloc();
  v10 = type metadata accessor for JetPackAsset.Metadata();
  v7[247] = v10;
  v7[248] = *(v10 - 8);
  v7[249] = swift_task_alloc();
  v7[250] = swift_task_alloc();
  v11 = type metadata accessor for JetPackAsset();
  v7[251] = v11;
  v7[252] = *(v11 - 8);
  v7[253] = swift_task_alloc();
  v12 = type metadata accessor for JetPackAssetRequestSourcePolicy();
  v7[254] = v12;
  v7[255] = *(v12 - 8);
  v7[256] = swift_task_alloc();
  v13 = type metadata accessor for URLJetPackAssetRequest();
  v7[257] = v13;
  v7[258] = *(v13 - 8);
  v7[259] = swift_task_alloc();
  sub_100001D04(&qword_1000A4EF0, &unk_100083C10);
  v7[260] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v7[261] = v14;
  v7[262] = *(v14 - 8);
  v7[263] = swift_task_alloc();
  v7[264] = swift_task_alloc();
  v15 = type metadata accessor for AssetPushSubscriptionRecord();
  v7[265] = v15;
  v7[266] = *(v15 - 8);
  v7[267] = swift_task_alloc();
  v7[268] = swift_task_alloc();
  v7[269] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v7[270] = swift_task_alloc();
  v18 = (a2 + *a2);
  v16 = swift_task_alloc();
  v7[271] = v16;
  *v16 = v7;
  v16[1] = sub_10004B08C;

  return v18();
}

uint64_t sub_10004B08C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2176) = a1;
  *(v3 + 2184) = v1;

  if (v1)
  {
    v4 = sub_1000511E0;
  }

  else
  {
    v4 = sub_10004B1A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004B1A4()
{
  v1 = *(v0 + 2176);
  v2 = qword_1000A4D50;

  if (v2 != -1)
  {
    swift_once();
    v1 = *(v0 + 2176);
  }

  *(v0 + 2192) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 696), *(v0 + 720));
  *(v0 + 2200) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v3 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 2208) = *(v3 + 72);
  *(v0 + 196) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000100089520;
  v4._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = *(v1 + 16);
  *(v0 + 1392) = &type metadata for Int;
  *(v0 + 1368) = v5;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1368, &qword_1000A5630, &unk_100083BF0);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 696));
  v7 = *(v1 + 16);

  if (v7)
  {
    type metadata accessor for LocalPreferences();
    *(v0 + 2216) = static LocalPreferences.currentApplication.getter();
    v8 = sub_100001D04(&unk_1000A5730, &unk_100084200);
    v9 = swift_task_alloc();
    *(v0 + 2224) = v9;
    *v9 = v0;
    v9[1] = sub_10004B5E4;

    return BaseObjectGraph.inject<A>(_:)(v0 + 456, v8, v8);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10004B5E4()
{
  v2 = *v1;
  *(v2 + 2232) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005157C, 0, 0);
  }

  else
  {
    v3 = sub_100001D04(&qword_1000A4E90, &unk_100085E40);
    v4 = swift_task_alloc();
    *(v2 + 2240) = v4;
    *v4 = v2;
    v4[1] = sub_10004B790;

    return BaseObjectGraph.inject<A>(_:)(v2 + 496, v3, v3);
  }
}

uint64_t sub_10004B790()
{
  *(*v1 + 2248) = v0;

  if (v0)
  {

    v2 = sub_100051750;
  }

  else
  {
    v2 = sub_10004B8AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004B8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 2176);
  *(v3 + 1776) = &_swiftEmptySetSingleton;
  v5 = *(v4 + 16);
  *(v3 + 2256) = v5;
  if (v5)
  {
    v6 = 0;
    *(v3 + 284) = *(*(v3 + 2128) + 80);
    *(v3 + 372) = enum case for JetPackAssetRequestSourcePolicy.remoteOnly(_:);
    v7 = _swiftEmptyArrayStorage;
    v85 = *(v3 + 2248);
    while (1)
    {
      *(v3 + 2272) = v7;
      *(v3 + 2264) = v6;
      v8 = *(v3 + 2176);
      if (v6 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v9 = *(v3 + 2152);
      v10 = *(v3 + 2128);
      v11 = *(v3 + 2120);
      v12 = *(v10 + 16);
      v10 += 16;
      v13 = v8 + ((*(v3 + 284) + 32) & ~*(v3 + 284)) + *(v10 + 56) * v6;
      *(v3 + 2280) = v12;
      *(v3 + 2288) = v10 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v9, v13, v11);
      v14 = AssetPushSubscriptionRecord.assetURLString.getter();
      *(v3 + 2296) = v14;
      *(v3 + 2304) = v15;
      if (!v15)
      {
        goto LABEL_27;
      }

      v16 = v14;
      v17 = v15;
      v18 = *(v3 + 2096);
      v19 = *(v3 + 2088);
      v20 = *(v3 + 2080);
      URL.init(string:)();
      if ((*(v18 + 48))(v20, 1, v19) == 1)
      {
        break;
      }

      (*(*(v3 + 2096) + 32))(*(v3 + 2112), *(v3 + 2080), *(v3 + 2088));
      v22 = AssetPushSubscriptionRecord.bundleID.getter();
      *(v3 + 2312) = v22;
      *(v3 + 2320) = v23;
      if (!v23)
      {
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));
        goto LABEL_26;
      }

      v24 = v22;
      v25 = v23;
      *(v3 + 2328) = AssetPushSubscriptionRecord.usageID.getter();
      *(v3 + 2336) = v26;
      if (!v26)
      {
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));
        goto LABEL_25;
      }

      v27 = AssetPushSubscriptionRecord.id.getter();
      *(v3 + 2344) = v27;
      if ((v27 & 0x100000000) != 0)
      {
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));

LABEL_25:

LABEL_26:

LABEL_27:
        v38 = AssetPushSubscriptionRecord.id.getter();
        if ((v38 & 0x100000000) != 0)
        {
          v88 = 0x296C696E28;
          v89 = 0xE500000000000000;
        }

        else
        {
          *(v3 + 108) = v38;
          v88 = dispatch thunk of CustomStringConvertible.description.getter();
          v89 = v39;
        }

        v40 = *(v3 + 2128);
        v90 = *(v3 + 2120);
        v92 = *(v3 + 2152);
        TaskLocal.get()();
        sub_100001CC0((v3 + 576), *(v3 + 600));
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v41._countAndFlagsBits = 0xD00000000000002FLL;
        v41._object = 0x8000000100089550;
        LogMessage.StringInterpolation.appendLiteral(_:)(v41);
        *(v3 + 1424) = &type metadata for String;
        *(v3 + 1400) = v88;
        *(v3 + 1408) = v89;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v3 + 1400, &qword_1000A5630, &unk_100083BF0);
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v42);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        (*(v40 + 8))(v92, v90);
        v4 = sub_100001D4C((v3 + 576));
        goto LABEL_31;
      }

      if (v24 == 0xD000000000000014 && v25 == 0x8000000100089650 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v28 = *(v3 + 520), v91 = *(v3 + 528), sub_100001CC0((v3 + 496), v28), ((*(v91 + 8))(v24, v25, v28) & 1) != 0))
      {
        if ((sub_10006DD60(v16, v17, *(v3 + 1776)) & 1) == 0)
        {
          v87 = *(v3 + 372);
          v68 = *(v3 + 2104);
          v69 = *(v3 + 2096);
          v70 = *(v3 + 2088);
          v86 = *(v3 + 2112);
          v71 = *(v3 + 2048);
          v72 = *(v3 + 2040);
          v84 = *(v3 + 2032);
          *(v3 + 2352) = AssetPushSubscriptionRecord.downloadAttempts.getter();
          *(v3 + 2360) = AssetPushSubscriptionRecord.priority.getter();
          v73 = *(v69 + 16);
          *(v3 + 2368) = v73;
          *(v3 + 2376) = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v73(v68, v86, v70);
          (*(v72 + 104))(v71, v87, v84);

          URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
          static OSLogger.jetPackAssets.getter();
          sub_100001CC0((v3 + 1056), *(v3 + 1080));
          *(swift_allocObject() + 16) = xmmword_1000839C0;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v74._countAndFlagsBits = 0xD000000000000017;
          v74._object = 0x80000001000896C0;
          LogMessage.StringInterpolation.appendLiteral(_:)(v74);
          *(v3 + 1360) = v70;
          sub_1000061A4((v3 + 1336));
          URLJetPackAssetRequest.url.getter();
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10000DCA0(v3 + 1336, &qword_1000A5630, &unk_100083BF0);
          v75._countAndFlagsBits = 0;
          v75._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v75);
          LogMessage.init(stringInterpolation:)();
          Logger.info(_:)();

          sub_100001D4C((v3 + 1056));
          v76 = type metadata accessor for AssetSQLiteDatabase();
          v77 = swift_task_alloc();
          *(v3 + 2384) = v77;
          *v77 = v3;
          v77[1] = sub_10004CB18;
          v4 = v3 + 1800;
          a2 = v76;
          a3 = v76;

          return BaseObjectGraph.inject<A>(_:)(v4, a2, a3);
        }

        TaskLocal.get()();
        sub_100001CC0((v3 + 736), *(v3 + 760));
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v29._countAndFlagsBits = 0xD00000000000002DLL;
        v29._object = 0x80000001000897B0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v29);
        *(v3 + 1200) = &type metadata for String;
        *(v3 + 1176) = v16;
        *(v3 + 1184) = v17;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v3 + 1176, &qword_1000A5630, &unk_100083BF0);
        v30._object = 0x80000001000897E0;
        v30._countAndFlagsBits = 0xD000000000000014;
        LogMessage.StringInterpolation.appendLiteral(_:)(v30);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        sub_100001D4C((v3 + 736));
        sub_100001CC0((v3 + 456), *(v3 + 480));
        dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
        if (v85)
        {
          v78 = *(v3 + 2152);
          v79 = *(v3 + 2128);
          v80 = *(v3 + 2120);
          v81 = *(v3 + 2112);
          v82 = *(v3 + 2096);
          v83 = *(v3 + 2088);

          (*(v82 + 8))(v81, v83);
          (*(v79 + 8))(v78, v80);

          sub_100001D4C((v3 + 496));
          sub_100001D4C((v3 + 456));

          v66 = *(v3 + 8);
          goto LABEL_54;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10001EE94(0, *(*(v3 + 2272) + 16) + 1, 1, *(v3 + 2272));
        }

        v32 = *(v7 + 2);
        v31 = *(v7 + 3);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v7 = sub_10001EE94((v31 > 1), v32 + 1, 1, v7);
        }

        v34 = *(v3 + 2152);
        v35 = *(v3 + 2128);
        v36 = *(v3 + 2120);
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));
        v4 = (*(v35 + 8))(v34, v36);
        v85 = 0;
      }

      else
      {

        TaskLocal.get()();
        sub_100001CC0((v3 + 976), *(v3 + 1000));
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v43._countAndFlagsBits = 0xD000000000000013;
        v43._object = 0x8000000100089670;
        LogMessage.StringInterpolation.appendLiteral(_:)(v43);
        *(v3 + 1456) = &type metadata for String;
        *(v3 + 1432) = v24;
        *(v3 + 1440) = v25;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v3 + 1432, &qword_1000A5630, &unk_100083BF0);
        v44._countAndFlagsBits = 0xD000000000000024;
        v44._object = 0x8000000100089690;
        LogMessage.StringInterpolation.appendLiteral(_:)(v44);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v3 + 976));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10001EE94(0, *(v7 + 2) + 1, 1, v7);
        }

        v32 = *(v7 + 2);
        v45 = *(v7 + 3);
        v33 = v32 + 1;
        if (v32 >= v45 >> 1)
        {
          v7 = sub_10001EE94((v45 > 1), v32 + 1, 1, v7);
        }

        v46 = *(v3 + 2152);
        v47 = *(v3 + 2128);
        v48 = *(v3 + 2120);
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));
        v4 = (*(v47 + 8))(v46, v48);
      }

      *(v7 + 2) = v33;
      v37 = &v7[32 * v32];
      *(v37 + 4) = 0;
      *(v37 + 5) = 0;
      *(v37 + 6) = 0;
      *(v37 + 7) = 1;
LABEL_31:
      v6 = *(v3 + 2264) + 1;
      if (v6 == *(v3 + 2256))
      {
        goto LABEL_39;
      }
    }

    v21 = *(v3 + 2080);

    sub_10000DCA0(v21, &qword_1000A4EF0, &unk_100083C10);
    goto LABEL_27;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_39:

  v49 = *(v7 + 2);
  if (v49)
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v4 = v7;
    v54 = v7 + 56;
    while (1)
    {
      v55 = *(v54 - 3);
      v56 = __OFADD__(v53, v55);
      v53 += v55;
      if (v56)
      {
        break;
      }

      v57 = *(v54 - 2);
      v56 = __OFADD__(v52, v57);
      v52 += v57;
      if (v56)
      {
        goto LABEL_63;
      }

      v58 = *(v54 - 1);
      v56 = __OFADD__(v51, v58);
      v51 += v58;
      if (v56)
      {
        goto LABEL_64;
      }

      v56 = __OFADD__(v50, *v54);
      v50 += *v54;
      if (v56)
      {
        goto LABEL_65;
      }

      v54 += 4;
      if (!--v49)
      {
        goto LABEL_48;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return BaseObjectGraph.inject<A>(_:)(v4, a2, a3);
  }

  else
  {
    v53 = 0;
    v52 = 0;
    v51 = 0;
    v50 = 0;
LABEL_48:

    TaskLocal.get()();
    sub_100001CC0((v3 + 656), *(v3 + 680));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v59._countAndFlagsBits = 0xD000000000000034;
    v59._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v59);
    *(v3 + 1488) = &type metadata for Int;
    *(v3 + 1464) = v53;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v3 + 1464, &qword_1000A5630, &unk_100083BF0);
    v60._countAndFlagsBits = 0x7070696B73202C20;
    v60._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v60);
    *(v3 + 1552) = &type metadata for Int;
    *(v3 + 1528) = v50;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v3 + 1528, &qword_1000A5630, &unk_100083BF0);
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v61);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v3 + 656));
    if (v52 >= 1)
    {
      TaskLocal.get()();
      sub_100001CC0((v3 + 856), *(v3 + 880));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v62._countAndFlagsBits = 0xD00000000000003ALL;
      v62._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v62);
      *(v3 + 1616) = &type metadata for Int;
      *(v3 + 1592) = v52;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v3 + 1592, &qword_1000A5630, &unk_100083BF0);
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v63);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v3 + 856));
    }

    if (v51 < 1)
    {
    }

    else
    {
      TaskLocal.get()();
      sub_100001CC0((v3 + 776), *(v3 + 800));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v64._countAndFlagsBits = 0xD00000000000004CLL;
      v64._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v64);
      *(v3 + 1232) = &type metadata for Int;
      *(v3 + 1208) = v51;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v3 + 1208, &qword_1000A5630, &unk_100083BF0);
      v65._countAndFlagsBits = 0;
      v65._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v65);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v3 + 776));
    }

    sub_100001D4C((v3 + 496));
    sub_100001D4C((v3 + 456));

    v66 = *(v3 + 8);
LABEL_54:

    return v66();
  }
}

uint64_t sub_10004CB18()
{
  *(*v1 + 2392) = v0;

  if (v0)
  {
    v2 = sub_10004CE54;
  }

  else
  {
    v2 = sub_10004CC2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004CC2C()
{
  v1 = v0[290];
  v2 = v0[289];
  v3 = v0[277];
  v4 = v0[259];
  v5 = v0[227];
  v0[300] = v0[225];
  v6 = swift_task_alloc();
  v0[301] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = 1;
  *(v6 + 56) = v3;
  v7 = swift_task_alloc();
  v0[302] = v7;
  *v7 = v0;
  v7[1] = sub_10004CD38;
  v8 = v0[253];
  v9 = v0[251];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v8, &unk_1000861F0, v6, v9);
}

uint64_t sub_10004CD38()
{
  *(*v1 + 2424) = v0;

  if (v0)
  {
    v2 = sub_10004DD74;
  }

  else
  {

    v2 = sub_10004D650;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004CE54()
{
  *(v0 + 2464) = *(v0 + 2392);
  v64 = *(v0 + 2368);
  v74 = *(v0 + 2152);
  v76 = *(v0 + 2280);
  v71 = *(v0 + 2136);
  v72 = *(v0 + 2120);
  v63 = *(v0 + 2112);
  v1 = *(v0 + 2088);
  v69 = *(v0 + 1824);
  (*(*(v0 + 2064) + 8))(*(v0 + 2072), *(v0 + 2056));
  TaskLocal.get()();
  sub_100001CC0((v0 + 376), *(v0 + 400));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x80000001000896E0;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  *(v0 + 1648) = v1;
  v3 = sub_1000061A4((v0 + 1624));
  v64(v3, v63, v1);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1624, &qword_1000A5630, &unk_100083BF0);
  v4._countAndFlagsBits = 0x3A726F727245202ELL;
  v4._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 1680);
  v6 = *(v0 + 1688);
  *(v0 + 1264) = v6;
  v7 = sub_1000061A4((v0 + 1240));
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1240, &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 376));
  v76(v71, v74, v72);
  v9 = *(v69 + 40);
  sub_1000064B4(v69, v0 + 1096);
  v10 = AssetPushSubscriptionRecord.assetURLString.getter();
  if (!v11)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
LABEL_13:
    sub_100001D4C((v0 + 1096));
    goto LABEL_18;
  }

  v12 = v10;
  v13 = v11;
  v14 = AssetPushSubscriptionRecord.bundleID.getter();
  if (!v15)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
LABEL_12:

    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  v18 = AssetPushSubscriptionRecord.usageID.getter();
  if (!v19)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));

    goto LABEL_12;
  }

  v75 = v19;
  v77 = v18;
  v79 = v16;
  v20 = AssetPushSubscriptionRecord.priority.getter();
  if ((v20 & 0x100000000) != 0 || (v21 = sub_10005B2BC(v20), v21 == 6))
  {
    v21 = 0;
  }

  v73 = v21;
  v22 = *(v0 + 1928);
  v23 = *(v0 + 1920);
  v24 = *(v0 + 1880);
  AssetPushSubscriptionRecord.serverDate.getter();
  v25 = *(v22 + 48);
  if (v25(v24, 1, v23) == 1)
  {
    v26 = *(v0 + 1880);
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
    sub_10000DCA0(v26, &qword_1000A56E0, &unk_100083BE0);
    v27 = 0.0;
    v28 = 1;
  }

  else
  {
    v29 = *(v0 + 1920);
    v30 = *(v0 + 1872);
    v70 = *(*(v0 + 1928) + 32);
    (v70)(*(v0 + 1944), *(v0 + 1880), v29);
    AssetPushSubscriptionRecord.scheduleToDate.getter();
    v31 = v25(v30, 1, v29);
    v32 = *(v0 + 2136);
    v33 = *(v0 + 2128);
    v34 = *(v0 + 2120);
    if (v31 == 1)
    {
      v35 = *(v0 + 1872);
      (*(*(v0 + 1928) + 8))(*(v0 + 1944), *(v0 + 1920));
      (*(v33 + 8))(v32, v34);
      sub_10000DCA0(v35, &qword_1000A56E0, &unk_100083BE0);
      v27 = 0.0;
      v28 = 1;
    }

    else
    {
      v36 = *(v0 + 1952);
      v65 = *(v0 + 1944);
      v66 = *(v0 + 1936);
      v67 = *(v0 + 2120);
      v68 = *(v0 + 2136);
      v37 = *(v0 + 1928);
      v38 = *(v0 + 1920);
      v70();
      sub_100001CC0((v0 + 1096), *(v0 + 1120));
      dispatch thunk of DateProvider.now.getter();
      Date.timeIntervalSince(_:)();
      v40 = v39;
      v41 = *(v37 + 8);
      v41(v36, v38);
      Date.timeIntervalSince(_:)();
      v43 = v42;
      v41(v66, v38);
      v41(v65, v38);
      (*(v33 + 8))(v68, v67);
      v28 = 0;
      v27 = v40 / v43;
    }
  }

  v44 = *(v0 + 1832);
  *(v0 + 2472) = v28;
  *(v0 + 112) = v12;
  *(v0 + 120) = v13;
  *(v0 + 128) = v79;
  *(v0 + 136) = v17;
  *(v0 + 144) = v77;
  *(v0 + 152) = v75;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = v73;
  *(v0 + 177) = 0;
  *(v0 + 178) = v9;
  *(v0 + 179) = *(v0 + 102);
  *(v0 + 183) = *(v0 + 106);
  *(v0 + 184) = v27;
  *(v0 + 192) = *(v0 + 2472);
  sub_100001D4C((v0 + 1096));
  sub_100001CC0(v44, v44[3]);
  v45 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v45;
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = *(v0 + 192);
  v46 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v46;
  sub_10005BD64();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();
  sub_10005BDB8(v0 + 112);
LABEL_18:
  v47 = *(v0 + 1840);
  AssetPushSubscriptionRecord.serverDate.getter();
  v48 = *sub_100001CC0(v47, v47[3]);
  *(v0 + 1040) = type metadata accessor for MetricsPipelineManager(0);
  *(v0 + 1048) = &off_1000A0070;
  *(v0 + 1016) = v48;

  if (v9)
  {
    if (v9 == 1)
    {
      v49 = 0xEB0000000065636ELL;
      v50 = 0x616E65746E69616DLL;
    }

    else
    {
      v49 = 0xEC0000007463656ELL;
      v50 = 0x6E6F636552737061;
    }
  }

  else
  {
    v49 = 0xE900000000000064;
    v50 = 0x656C756465686373;
  }

  v51 = *(v0 + 2360);
  v52 = *(v0 + 2352);
  v78 = *(v0 + 2312);
  v80 = *(v0 + 2328);
  v53 = *(v0 + 2304);
  v54 = *(v0 + 2296);
  v55 = *(v0 + 1856);
  v56 = *(v0 + 1848);
  if ((v51 & &_mh_execute_header) != 0)
  {
    v57 = 0;
  }

  else
  {
    v57 = v51;
  }

  if ((v52 & &_mh_execute_header) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = v52;
  }

  sub_100002758(*(v0 + 1888), v55 + *(v56 + 48), &qword_1000A56E0, &unk_100083BE0);
  *v55 = v78;
  *(v55 + 16) = v80;
  *(v55 + 32) = v54;
  *(v55 + 40) = v53;
  *(v55 + 48) = 0u;
  *(v55 + 64) = 0u;
  *(v55 + 80) = v50;
  *(v55 + 88) = v49;
  *(v55 + 96) = 0;
  *(v55 + 104) = v58;
  v59 = v55 + *(v56 + 52);
  *v59 = v57;
  *(v59 + 8) = BYTE4(v51) & 1;
  sub_100001CC0((v0 + 1016), *(v0 + 1040));
  v60 = swift_task_alloc();
  *(v0 + 2448) = v60;
  *v60 = v0;
  v60[1] = sub_10005192C;
  v61 = *(v0 + 1856);

  return sub_100038808(v61);
}

uint64_t sub_10004D650()
{
  v1 = *(v0 + 2280);
  v2 = *(v0 + 2152);
  v3 = *(v0 + 2144);
  v4 = *(v0 + 2120);
  v5 = *(v0 + 2000);
  v6 = *(v0 + 1984);
  v87 = *(v0 + 1976);
  v7 = *(v0 + 1824);

  v1(v3, v2, v4);
  JetPackAsset.metadata.getter();
  v8 = JetPackAsset.Metadata.assetVersion.getter();
  v10 = v9;
  v11 = v87;
  v88 = *(v6 + 8);
  v88(v5, v11);
  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = *(v7 + 40);
  sub_1000064B4(v7, v0 + 616);
  v15 = AssetPushSubscriptionRecord.assetURLString.getter();
  if (!v16)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));
LABEL_19:

    sub_100001D4C((v0 + 616));
    goto LABEL_24;
  }

  v17 = v15;
  v18 = v16;
  v19 = AssetPushSubscriptionRecord.bundleID.getter();
  if (!v20)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));
LABEL_18:

    goto LABEL_19;
  }

  v21 = v19;
  v22 = v20;
  v23 = AssetPushSubscriptionRecord.usageID.getter();
  if (!v24)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));

    goto LABEL_18;
  }

  v78 = v24;
  v79 = v23;
  v80 = v21;
  v81 = v17;
  v83 = v12;
  v85 = v14;
  v25 = AssetPushSubscriptionRecord.priority.getter();
  if ((v25 & 0x100000000) != 0 || (v26 = sub_10005B2BC(v25), v26 == 6))
  {
    v26 = 0;
  }

  v77 = v26;
  v27 = *(v0 + 1928);
  v28 = *(v0 + 1920);
  v29 = *(v0 + 1912);
  AssetPushSubscriptionRecord.serverDate.getter();
  v30 = *(v27 + 48);
  if (v30(v29, 1, v28) == 1)
  {
    v31 = *(v0 + 1912);
    (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));
    sub_10000DCA0(v31, &qword_1000A56E0, &unk_100083BE0);
    v32 = 0.0;
    v33 = 1;
  }

  else
  {
    v34 = *(v0 + 1920);
    v35 = *(v0 + 1904);
    v76 = *(*(v0 + 1928) + 32);
    (v76)(*(v0 + 1968), *(v0 + 1912), v34);
    AssetPushSubscriptionRecord.scheduleToDate.getter();
    v36 = v30(v35, 1, v34);
    v37 = *(v0 + 2144);
    v38 = *(v0 + 2128);
    v39 = *(v0 + 2120);
    if (v36 == 1)
    {
      v40 = *(v0 + 1904);
      (*(*(v0 + 1928) + 8))(*(v0 + 1968), *(v0 + 1920));
      (*(v38 + 8))(v37, v39);
      sub_10000DCA0(v40, &qword_1000A56E0, &unk_100083BE0);
      v32 = 0.0;
      v33 = 1;
    }

    else
    {
      v41 = *(v0 + 1952);
      v74 = *(v0 + 2144);
      v75 = *(v0 + 2120);
      v42 = *(v0 + 1928);
      v72 = *(v0 + 1920);
      v73 = *(v0 + 1960);
      v43 = *(v0 + 1968);
      v76();
      sub_100001CC0((v0 + 616), *(v0 + 640));
      dispatch thunk of DateProvider.now.getter();
      Date.timeIntervalSince(_:)();
      v45 = v44;
      v46 = *(v42 + 8);
      v46(v41, v72);
      Date.timeIntervalSince(_:)();
      v48 = v47;
      v46(v73, v72);
      v46(v43, v72);
      (*(v38 + 8))(v74, v75);
      v33 = 0;
      v32 = v45 / v48;
    }
  }

  v49 = *(v0 + 1832);
  *(v0 + 2480) = v33;
  *(v0 + 288) = v81;
  *(v0 + 296) = v18;
  *(v0 + 304) = v80;
  *(v0 + 312) = v22;
  *(v0 + 320) = v79;
  *(v0 + 328) = v78;
  *(v0 + 336) = v83;
  *(v0 + 344) = v13;
  *(v0 + 352) = v77;
  *(v0 + 353) = 1;
  *(v0 + 354) = v85;
  *(v0 + 355) = *(v0 + 97);
  *(v0 + 359) = *(v0 + 101);
  *(v0 + 360) = v32;
  *(v0 + 368) = *(v0 + 2480);
  sub_100001D4C((v0 + 616));
  sub_100001CC0(v49, v49[3]);
  v50 = *(v0 + 336);
  *(v0 + 232) = *(v0 + 320);
  *(v0 + 248) = v50;
  *(v0 + 264) = *(v0 + 352);
  *(v0 + 280) = *(v0 + 368);
  v51 = *(v0 + 304);
  *(v0 + 200) = *(v0 + 288);
  *(v0 + 216) = v51;
  sub_10005BD64();
  v14 = v85;
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();
  sub_10005BDB8(v0 + 288);
LABEL_24:
  v52 = *(v0 + 1992);
  v53 = *(v0 + 1976);
  v54 = *(v0 + 1840);
  JetPackAsset.metadata.getter();
  v55 = JetPackAsset.Metadata.assetVersion.getter();
  v86 = v56;
  v88(v52, v53);
  AssetPushSubscriptionRecord.serverDate.getter();
  v57 = *sub_100001CC0(v54, v54[3]);
  *(v0 + 560) = type metadata accessor for MetricsPipelineManager(0);
  *(v0 + 568) = &off_1000A0070;
  *(v0 + 536) = v57;

  v58 = v55;
  if (v14)
  {
    if (v14 == 1)
    {
      v89 = 0xEB0000000065636ELL;
      v59 = 0x616E65746E69616DLL;
    }

    else
    {
      v89 = 0xEC0000007463656ELL;
      v59 = 0x6E6F636552737061;
    }
  }

  else
  {
    v89 = 0xE900000000000064;
    v59 = 0x656C756465686373;
  }

  v60 = *(v0 + 2360);
  v61 = *(v0 + 2352);
  v82 = *(v0 + 2312);
  v84 = *(v0 + 2328);
  v62 = *(v0 + 2304);
  v63 = *(v0 + 2296);
  v64 = *(v0 + 1864);
  v65 = *(v0 + 1848);
  if ((v60 & &_mh_execute_header) != 0)
  {
    v66 = 0;
  }

  else
  {
    v66 = v60;
  }

  if ((v61 & &_mh_execute_header) != 0)
  {
    v67 = 0;
  }

  else
  {
    v67 = v61;
  }

  sub_100002758(*(v0 + 1896), v64 + *(v65 + 48), &qword_1000A56E0, &unk_100083BE0);
  *v64 = v82;
  *(v64 + 16) = v84;
  *(v64 + 32) = v63;
  *(v64 + 40) = v62;
  *(v64 + 48) = v58;
  *(v64 + 56) = v86;
  *(v64 + 64) = xmmword_100083B40;
  *(v64 + 80) = v59;
  *(v64 + 88) = v89;
  *(v64 + 96) = 1;
  *(v64 + 104) = v67;
  v68 = v64 + *(v65 + 52);
  *v68 = v66;
  *(v68 + 8) = BYTE4(v60) & 1;
  sub_100001CC0((v0 + 536), *(v0 + 560));

  v69 = swift_task_alloc();
  *(v0 + 2432) = v69;
  *v69 = v0;
  v69[1] = sub_10004E584;
  v70 = *(v0 + 1864);

  return sub_100038808(v70);
}

uint64_t sub_10004DD74()
{

  *(v0 + 2464) = *(v0 + 2424);
  v64 = *(v0 + 2368);
  v74 = *(v0 + 2152);
  v76 = *(v0 + 2280);
  v71 = *(v0 + 2136);
  v72 = *(v0 + 2120);
  v63 = *(v0 + 2112);
  v1 = *(v0 + 2088);
  v69 = *(v0 + 1824);
  (*(*(v0 + 2064) + 8))(*(v0 + 2072), *(v0 + 2056));
  TaskLocal.get()();
  sub_100001CC0((v0 + 376), *(v0 + 400));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x80000001000896E0;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  *(v0 + 1648) = v1;
  v3 = sub_1000061A4((v0 + 1624));
  v64(v3, v63, v1);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1624, &qword_1000A5630, &unk_100083BF0);
  v4._countAndFlagsBits = 0x3A726F727245202ELL;
  v4._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 1680);
  v6 = *(v0 + 1688);
  *(v0 + 1264) = v6;
  v7 = sub_1000061A4((v0 + 1240));
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1240, &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 376));
  v76(v71, v74, v72);
  v9 = *(v69 + 40);
  sub_1000064B4(v69, v0 + 1096);
  v10 = AssetPushSubscriptionRecord.assetURLString.getter();
  if (!v11)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
LABEL_13:
    sub_100001D4C((v0 + 1096));
    goto LABEL_18;
  }

  v12 = v10;
  v13 = v11;
  v14 = AssetPushSubscriptionRecord.bundleID.getter();
  if (!v15)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
LABEL_12:

    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  v18 = AssetPushSubscriptionRecord.usageID.getter();
  if (!v19)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));

    goto LABEL_12;
  }

  v75 = v19;
  v77 = v18;
  v79 = v16;
  v20 = AssetPushSubscriptionRecord.priority.getter();
  if ((v20 & 0x100000000) != 0 || (v21 = sub_10005B2BC(v20), v21 == 6))
  {
    v21 = 0;
  }

  v73 = v21;
  v22 = *(v0 + 1928);
  v23 = *(v0 + 1920);
  v24 = *(v0 + 1880);
  AssetPushSubscriptionRecord.serverDate.getter();
  v25 = *(v22 + 48);
  if (v25(v24, 1, v23) == 1)
  {
    v26 = *(v0 + 1880);
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
    sub_10000DCA0(v26, &qword_1000A56E0, &unk_100083BE0);
    v27 = 0.0;
    v28 = 1;
  }

  else
  {
    v29 = *(v0 + 1920);
    v30 = *(v0 + 1872);
    v70 = *(*(v0 + 1928) + 32);
    (v70)(*(v0 + 1944), *(v0 + 1880), v29);
    AssetPushSubscriptionRecord.scheduleToDate.getter();
    v31 = v25(v30, 1, v29);
    v32 = *(v0 + 2136);
    v33 = *(v0 + 2128);
    v34 = *(v0 + 2120);
    if (v31 == 1)
    {
      v35 = *(v0 + 1872);
      (*(*(v0 + 1928) + 8))(*(v0 + 1944), *(v0 + 1920));
      (*(v33 + 8))(v32, v34);
      sub_10000DCA0(v35, &qword_1000A56E0, &unk_100083BE0);
      v27 = 0.0;
      v28 = 1;
    }

    else
    {
      v36 = *(v0 + 1952);
      v65 = *(v0 + 1944);
      v66 = *(v0 + 1936);
      v67 = *(v0 + 2120);
      v68 = *(v0 + 2136);
      v37 = *(v0 + 1928);
      v38 = *(v0 + 1920);
      v70();
      sub_100001CC0((v0 + 1096), *(v0 + 1120));
      dispatch thunk of DateProvider.now.getter();
      Date.timeIntervalSince(_:)();
      v40 = v39;
      v41 = *(v37 + 8);
      v41(v36, v38);
      Date.timeIntervalSince(_:)();
      v43 = v42;
      v41(v66, v38);
      v41(v65, v38);
      (*(v33 + 8))(v68, v67);
      v28 = 0;
      v27 = v40 / v43;
    }
  }

  v44 = *(v0 + 1832);
  *(v0 + 2472) = v28;
  *(v0 + 112) = v12;
  *(v0 + 120) = v13;
  *(v0 + 128) = v79;
  *(v0 + 136) = v17;
  *(v0 + 144) = v77;
  *(v0 + 152) = v75;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = v73;
  *(v0 + 177) = 0;
  *(v0 + 178) = v9;
  *(v0 + 179) = *(v0 + 102);
  *(v0 + 183) = *(v0 + 106);
  *(v0 + 184) = v27;
  *(v0 + 192) = *(v0 + 2472);
  sub_100001D4C((v0 + 1096));
  sub_100001CC0(v44, v44[3]);
  v45 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v45;
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = *(v0 + 192);
  v46 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v46;
  sub_10005BD64();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();
  sub_10005BDB8(v0 + 112);
LABEL_18:
  v47 = *(v0 + 1840);
  AssetPushSubscriptionRecord.serverDate.getter();
  v48 = *sub_100001CC0(v47, v47[3]);
  *(v0 + 1040) = type metadata accessor for MetricsPipelineManager(0);
  *(v0 + 1048) = &off_1000A0070;
  *(v0 + 1016) = v48;

  if (v9)
  {
    if (v9 == 1)
    {
      v49 = 0xEB0000000065636ELL;
      v50 = 0x616E65746E69616DLL;
    }

    else
    {
      v49 = 0xEC0000007463656ELL;
      v50 = 0x6E6F636552737061;
    }
  }

  else
  {
    v49 = 0xE900000000000064;
    v50 = 0x656C756465686373;
  }

  v51 = *(v0 + 2360);
  v52 = *(v0 + 2352);
  v78 = *(v0 + 2312);
  v80 = *(v0 + 2328);
  v53 = *(v0 + 2304);
  v54 = *(v0 + 2296);
  v55 = *(v0 + 1856);
  v56 = *(v0 + 1848);
  if ((v51 & &_mh_execute_header) != 0)
  {
    v57 = 0;
  }

  else
  {
    v57 = v51;
  }

  if ((v52 & &_mh_execute_header) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = v52;
  }

  sub_100002758(*(v0 + 1888), v55 + *(v56 + 48), &qword_1000A56E0, &unk_100083BE0);
  *v55 = v78;
  *(v55 + 16) = v80;
  *(v55 + 32) = v54;
  *(v55 + 40) = v53;
  *(v55 + 48) = 0u;
  *(v55 + 64) = 0u;
  *(v55 + 80) = v50;
  *(v55 + 88) = v49;
  *(v55 + 96) = 0;
  *(v55 + 104) = v58;
  v59 = v55 + *(v56 + 52);
  *v59 = v57;
  *(v59 + 8) = BYTE4(v51) & 1;
  sub_100001CC0((v0 + 1016), *(v0 + 1040));
  v60 = swift_task_alloc();
  *(v0 + 2448) = v60;
  *v60 = v0;
  v60[1] = sub_10005192C;
  v61 = *(v0 + 1856);

  return sub_100038808(v61);
}

uint64_t sub_10004E584()
{
  *(*v1 + 2440) = v0;

  if (v0)
  {
    v2 = sub_10004FBA8;
  }

  else
  {
    v2 = sub_10004E698;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004E698()
{
  v1 = v0[237];
  sub_10000DBEC(v0[233]);
  sub_10000DCA0(v1, &qword_1000A56E0, &unk_100083BE0);
  v117 = v0[305];
  v2 = v0[288];
  v3 = v0[287];
  v4 = v0[259];
  v5 = v0[258];
  v6 = v0[257];
  v7 = v0[253];
  v8 = v0[252];
  v9 = v0[251];
  sub_100001D4C(v0 + 67);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v101 = v0 + 222;
  sub_10006A688(v0 + 219, v3, v2);

  sub_100001CC0(v0 + 57, v0[60]);
  v10 = v117;
  dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
  v11 = Hasher._combine(_:) + 4;
  v118 = v0;
  if (v10)
  {
    TaskLocal.get()();
    sub_100001CC0(v0 + 112, v0[115]);
    v11 = Hasher._combine(_:) + 4;
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v0 + 112);
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      v69 = 0;
      v14 = 1;
      v15 = 1;
      goto LABEL_68;
    }

    v12 = 0;
    v13 = v0[284];
    v14 = 1;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      v69 = 0;
      v14 = 1;
      goto LABEL_68;
    }

    v12 = 0;
    v13 = v0[284];
    v14 = 1;
  }

LABEL_6:
  v16 = 0x8000000100089650;
  v17 = "App with bundle ID ";
  v18 = "com.apple.jetpackctl";
  v19 = "ully refreshed asset at URL: ";
  v20 = "ownload attempts: ";
  v21 = *(v11 + 156);
  v22 = v14;
  v23 = v15;
LABEL_7:
  v102 = v20;
  v103 = v19;
  v104 = v18;
  v105 = v17;
  v107 = v16;
  v111 = v21;
  v25 = *(v13 + 2);
  v24 = *(v13 + 3);
  if (v25 >= v24 >> 1)
  {
    v26 = sub_10001EE94((v24 > 1), v25 + 1, 1, v13);
  }

  else
  {
    v26 = v13;
  }

  v27 = v0[269];
  v28 = v0[266];
  v29 = v0[265];
  (*(v0[262] + 8))(v0[264], v0[261]);
  (*(v28 + 8))(v27, v29);
  *(v26 + 2) = v25 + 1;
  v30 = &v26[32 * v25];
  *(v30 + 4) = v22;
  *(v30 + 5) = 0;
  *(v30 + 6) = v23;
  *(v30 + 7) = v12;
LABEL_10:
  v31 = v0[283] + 1;
  if (v31 != v0[282])
  {
    v109 = v26;
    do
    {
      v0[284] = v26;
      v0[283] = v31;
      v36 = v0[272];
      if (v31 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_59;
      }

      v37 = v0[269];
      v38 = v0[266];
      v39 = v0[265];
      v40 = *(v38 + 16);
      v38 += 16;
      v41 = v36 + ((*(v0 + 284) + 32) & ~*(v0 + 284)) + *(v38 + 56) * v31;
      v0[285] = v40;
      v0[286] = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v40(v37, v41, v39);
      v42 = AssetPushSubscriptionRecord.assetURLString.getter();
      v0[287] = v42;
      v0[288] = v43;
      if (v43)
      {
        v44 = v42;
        v45 = v43;
        v46 = v0[262];
        v47 = v0[261];
        v48 = v0[260];
        URL.init(string:)();
        if ((*(v46 + 48))(v48, 1, v47) == 1)
        {
          v49 = v0[260];

          sub_10000DCA0(v49, &qword_1000A4EF0, &unk_100083C10);
        }

        else
        {
          (*(v0[262] + 32))(v0[264], v0[260], v0[261]);
          v50 = AssetPushSubscriptionRecord.bundleID.getter();
          v0[289] = v50;
          v0[290] = v51;
          if (v51)
          {
            v52 = v50;
            v53 = v51;
            v0[291] = AssetPushSubscriptionRecord.usageID.getter();
            v0[292] = v54;
            if (v54)
            {
              v55 = AssetPushSubscriptionRecord.id.getter();
              v0[293] = v55;
              if ((v55 & 0x100000000) == 0)
              {
                if ((v52 != 0xD000000000000014 || v53 != v107) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v57 = v0[65];
                  v116 = v0[66];
                  sub_100001CC0(v0 + 62, v57);
                  if (((*(v116 + 8))(v52, v53, v57) & 1) == 0)
                  {

                    TaskLocal.get()();
                    sub_100001CC0(v0 + 122, v0[125]);
                    *(swift_allocObject() + 16) = v111;
                    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v58._countAndFlagsBits = 0xD000000000000013;
                    v58._object = (v104 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v58);
                    v0[182] = &type metadata for String;
                    v0[179] = v52;
                    v0[180] = v53;
                    LogMessage.StringInterpolation.appendInterpolation(safe:)();
                    sub_10000DCA0((v0 + 179), &qword_1000A5630, &unk_100083BF0);
                    v59._countAndFlagsBits = 0xD000000000000024;
                    v59._object = (v105 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v59);
                    LogMessage.init(stringInterpolation:)();
                    Logger.info(_:)();

                    sub_100001D4C(v0 + 122);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v109 = sub_10001EE94(0, *(v109 + 2) + 1, 1, v109);
                    }

                    v61 = *(v109 + 2);
                    v60 = *(v109 + 3);
                    if (v61 >= v60 >> 1)
                    {
                      v109 = sub_10001EE94((v60 > 1), v61 + 1, 1, v109);
                    }

                    v62 = v0[269];
                    v63 = v0[266];
                    v64 = v0[265];
                    (*(v0[262] + 8))(v0[264], v0[261]);
                    (*(v63 + 8))(v62, v64);
                    v26 = v109;
                    *(v109 + 2) = v61 + 1;
                    v65 = &v109[32 * v61];
                    *(v65 + 4) = 0;
                    *(v65 + 5) = 0;
                    *(v65 + 6) = 0;
                    *(v65 + 7) = 1;
                    goto LABEL_10;
                  }
                }

                if ((sub_10006DD60(v44, v45, *v101) & 1) == 0)
                {
                  goto LABEL_63;
                }

                TaskLocal.get()();
                sub_100001CC0(v0 + 92, v0[95]);
                *(swift_allocObject() + 16) = v111;
                LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v66._countAndFlagsBits = 0xD00000000000002DLL;
                v66._object = (v102 | 0x8000000000000000);
                LogMessage.StringInterpolation.appendLiteral(_:)(v66);
                v0[150] = &type metadata for String;
                v0[147] = v44;
                v0[148] = v45;
                LogMessage.StringInterpolation.appendInterpolation(safe:)();
                sub_10000DCA0((v0 + 147), &qword_1000A5630, &unk_100083BF0);
                v67._object = (v103 | 0x8000000000000000);
                v67._countAndFlagsBits = 0xD000000000000014;
                LogMessage.StringInterpolation.appendLiteral(_:)(v67);
                LogMessage.init(stringInterpolation:)();
                Logger.error(_:)();

                sub_100001D4C(v0 + 92);
                sub_100001CC0(v0 + 57, v0[60]);
                dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v13 = v109;
                v14 = 0;
                v15 = 0;
                v22 = 0;
                v23 = 0;
                v12 = 1;
                v21 = v111;
                v11 = (Hasher._combine(_:) + 4);
                v69 = 1;
                v17 = v105;
                v16 = v107;
                v19 = v103;
                v18 = v104;
                v20 = v102;
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_7;
                }

LABEL_68:
                v12 = v69;
                v13 = sub_10001EE94(0, *(v0[284] + 16) + 1, 1, v0[284]);
                goto LABEL_6;
              }

              (*(v0[262] + 8))(v0[264], v0[261]);
            }

            else
            {
              (*(v0[262] + 8))(v0[264], v0[261]);
            }
          }

          else
          {
            (*(v0[262] + 8))(v0[264], v0[261]);
          }
        }
      }

      v56 = AssetPushSubscriptionRecord.id.getter();
      if ((v56 & 0x100000000) != 0)
      {
        v112 = 0x296C696E28;
        v113 = 0xE500000000000000;
      }

      else
      {
        *(v0 + 27) = v56;
        v112 = dispatch thunk of CustomStringConvertible.description.getter();
        v113 = v32;
      }

      v33 = v118[266];
      v114 = v118[265];
      v115 = v118[269];
      TaskLocal.get()();
      sub_100001CC0(v118 + 72, v118[75]);
      v0 = v118;
      *(swift_allocObject() + 16) = v111;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34._countAndFlagsBits = 0xD00000000000002FLL;
      v34._object = 0x8000000100089550;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v118[178] = &type metadata for String;
      v118[175] = v112;
      v118[176] = v113;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v118 + 175), &qword_1000A5630, &unk_100083BF0);
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v33 + 8))(v115, v114);
      sub_100001D4C(v118 + 72);
      v31 = v118[283] + 1;
      v26 = v109;
    }

    while (v31 != v118[282]);
  }

  v70 = v26;
  v71 = *(v26 + 2);
  if (v71)
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = v70 + 56;
    while (1)
    {
      v77 = *(v76 - 3);
      v78 = __OFADD__(v75, v77);
      v75 += v77;
      if (v78)
      {
        break;
      }

      v79 = *(v76 - 2);
      v78 = __OFADD__(v74, v79);
      v74 += v79;
      if (v78)
      {
        goto LABEL_60;
      }

      v80 = *(v76 - 1);
      v78 = __OFADD__(v73, v80);
      v73 += v80;
      if (v78)
      {
        goto LABEL_61;
      }

      v78 = __OFADD__(v72, *v76);
      v72 += *v76;
      if (v78)
      {
        goto LABEL_62;
      }

      v76 += 4;
      if (!--v71)
      {
        goto LABEL_50;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v110 = *(v0 + 93);
    v91 = v0[263];
    v92 = v0[262];
    v93 = v0[261];
    v108 = v0[264];
    v94 = v0[256];
    v95 = v0[255];
    v106 = v0[254];
    v0[294] = AssetPushSubscriptionRecord.downloadAttempts.getter();
    v0[295] = AssetPushSubscriptionRecord.priority.getter();
    v96 = *(v92 + 16);
    v0[296] = v96;
    v0[297] = (v92 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v96(v91, v108, v93);
    (*(v95 + 104))(v94, v110, v106);

    URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
    static OSLogger.jetPackAssets.getter();
    sub_100001CC0(v0 + 132, v0[135]);
    *(swift_allocObject() + 16) = v111;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v97._countAndFlagsBits = 0xD000000000000017;
    v97._object = 0x80000001000896C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v97);
    v0[170] = v93;
    sub_1000061A4(v0 + 167);
    URLJetPackAssetRequest.url.getter();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 167), &qword_1000A5630, &unk_100083BF0);
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v98);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 132);
    v99 = type metadata accessor for AssetSQLiteDatabase();
    v100 = swift_task_alloc();
    v0[298] = v100;
    *v100 = v0;
    v100[1] = sub_10004CB18;

    return BaseObjectGraph.inject<A>(_:)(v0 + 225, v99, v99);
  }

  else
  {
    v75 = 0;
    v74 = 0;
    v73 = 0;
    v72 = 0;
LABEL_50:

    TaskLocal.get()();
    sub_100001CC0(v118 + 82, v118[85]);
    v81 = v118;
    *(swift_allocObject() + 16) = v111;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v82._countAndFlagsBits = 0xD000000000000034;
    v82._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v82);
    v118[186] = &type metadata for Int;
    v118[183] = v75;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v118 + 183), &qword_1000A5630, &unk_100083BF0);
    v83._countAndFlagsBits = 0x7070696B73202C20;
    v83._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v83);
    v118[194] = &type metadata for Int;
    v118[191] = v72;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v118 + 191), &qword_1000A5630, &unk_100083BF0);
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v84);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v118 + 82);
    if (v74 >= 1)
    {
      TaskLocal.get()();
      sub_100001CC0(v118 + 107, v118[110]);
      v81 = v118;
      *(swift_allocObject() + 16) = v111;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v85._countAndFlagsBits = 0xD00000000000003ALL;
      v85._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v85);
      v118[202] = &type metadata for Int;
      v118[199] = v74;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v118 + 199), &qword_1000A5630, &unk_100083BF0);
      v86._countAndFlagsBits = 0;
      v86._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v86);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C(v118 + 107);
    }

    if (v73 < 1)
    {
    }

    else
    {
      TaskLocal.get()();
      sub_100001CC0(v118 + 97, v118[100]);
      v81 = v118;
      *(swift_allocObject() + 16) = v111;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v87._countAndFlagsBits = 0xD00000000000004CLL;
      v87._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v87);
      v118[154] = &type metadata for Int;
      v118[151] = v73;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v118 + 151), &qword_1000A5630, &unk_100083BF0);
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v88);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C(v118 + 97);
    }

    sub_100001D4C(v81 + 62);
    sub_100001D4C(v81 + 57);

    v89 = v81[1];

    return v89();
  }
}

uint64_t sub_10004FBA8()
{
  v106 = v0 + 222;
  v115 = v0[237];
  sub_10000DBEC(v0[233]);
  TaskLocal.get()();
  sub_100001CC0(v0 + 52, v0[55]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x8000000100086D40;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[213];
  v3 = v0[214];
  v0[166] = v3;
  v4 = sub_1000061A4(v0 + 163);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 163), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v115, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v0 + 52);
  v6 = v0[288];
  v7 = v0[287];
  v8 = v0[259];
  v9 = v0[258];
  v10 = v0[257];
  v11 = v0[253];
  v12 = v0[252];
  v13 = v0[251];
  sub_100001D4C(v0 + 67);
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  sub_10006A688(v0 + 219, v7, v6);

  sub_100001CC0(v0 + 57, v0[60]);
  dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
  v116 = v0;
  v14 = 0;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    v16 = 1;
    goto LABEL_64;
  }

  v15 = v0[284];
  v16 = 1;
LABEL_3:
  v17 = v14;
  v18 = 0x8000000100089650;
  v19 = "App with bundle ID ";
  v20 = "com.apple.jetpackctl";
  v21 = "ully refreshed asset at URL: ";
  v22 = "ownload attempts: ";
  v23 = v16;
LABEL_4:
  v100 = v21;
  v101 = v22;
  v102 = v20;
  v103 = v19;
  v104 = v18;
  v25 = *(v15 + 2);
  v24 = *(v15 + 3);
  if (v25 >= v24 >> 1)
  {
    v26 = sub_10001EE94((v24 > 1), v25 + 1, 1, v15);
  }

  else
  {
    v26 = v15;
  }

  v27 = v0[269];
  v28 = v0[266];
  v29 = v0[265];
  (*(v0[262] + 8))(v0[264], v0[261]);
  (*(v28 + 8))(v27, v29);
  *(v26 + 2) = v25 + 1;
  v30 = &v26[32 * v25];
  *(v30 + 4) = v23;
  *(v30 + 5) = 0;
  *(v30 + 6) = 0;
  *(v30 + 7) = v17;
LABEL_7:
  v31 = v0[283] + 1;
  if (v31 != v0[282])
  {
    v108 = v26;
    do
    {
      v0[284] = v26;
      v0[283] = v31;
      v36 = v0[272];
      if (v31 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      v37 = v0[269];
      v38 = v0[266];
      v39 = v0[265];
      v40 = *(v38 + 16);
      v38 += 16;
      v41 = v36 + ((*(v0 + 284) + 32) & ~*(v0 + 284)) + *(v38 + 56) * v31;
      v0[285] = v40;
      v0[286] = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v40(v37, v41, v39);
      v42 = AssetPushSubscriptionRecord.assetURLString.getter();
      v0[287] = v42;
      v0[288] = v43;
      if (v43)
      {
        v44 = v42;
        v45 = v43;
        v46 = v0[262];
        v47 = v0[261];
        v48 = v0[260];
        URL.init(string:)();
        if ((*(v46 + 48))(v48, 1, v47) == 1)
        {
          v49 = v0[260];

          sub_10000DCA0(v49, &qword_1000A4EF0, &unk_100083C10);
        }

        else
        {
          (*(v0[262] + 32))(v0[264], v0[260], v0[261]);
          v50 = AssetPushSubscriptionRecord.bundleID.getter();
          v0[289] = v50;
          v0[290] = v51;
          if (v51)
          {
            v52 = v50;
            v53 = v51;
            v0[291] = AssetPushSubscriptionRecord.usageID.getter();
            v0[292] = v54;
            if (v54)
            {
              v55 = AssetPushSubscriptionRecord.id.getter();
              v0[293] = v55;
              if ((v55 & 0x100000000) == 0)
              {
                if ((v52 != 0xD000000000000014 || v53 != v104) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v57 = v0[65];
                  v114 = v0[66];
                  sub_100001CC0(v0 + 62, v57);
                  if (((*(v114 + 8))(v52, v53, v57) & 1) == 0)
                  {

                    TaskLocal.get()();
                    sub_100001CC0(v0 + 122, v0[125]);
                    *(swift_allocObject() + 16) = xmmword_1000839C0;
                    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v58._countAndFlagsBits = 0xD000000000000013;
                    v58._object = (v102 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v58);
                    v0[182] = &type metadata for String;
                    v0[179] = v52;
                    v0[180] = v53;
                    LogMessage.StringInterpolation.appendInterpolation(safe:)();
                    sub_10000DCA0((v0 + 179), &qword_1000A5630, &unk_100083BF0);
                    v59._countAndFlagsBits = 0xD000000000000024;
                    v59._object = (v103 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v59);
                    LogMessage.init(stringInterpolation:)();
                    Logger.info(_:)();

                    sub_100001D4C(v0 + 122);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v108 = sub_10001EE94(0, *(v108 + 2) + 1, 1, v108);
                    }

                    v61 = *(v108 + 2);
                    v60 = *(v108 + 3);
                    if (v61 >= v60 >> 1)
                    {
                      v108 = sub_10001EE94((v60 > 1), v61 + 1, 1, v108);
                    }

                    v62 = v0[269];
                    v63 = v0[266];
                    v64 = v0[265];
                    (*(v0[262] + 8))(v0[264], v0[261]);
                    (*(v63 + 8))(v62, v64);
                    v26 = v108;
                    *(v108 + 2) = v61 + 1;
                    v65 = &v108[32 * v61];
                    *(v65 + 4) = 0;
                    *(v65 + 5) = 0;
                    *(v65 + 6) = 0;
                    *(v65 + 7) = 1;
                    goto LABEL_7;
                  }
                }

                if ((sub_10006DD60(v44, v45, *v106) & 1) == 0)
                {
                  goto LABEL_60;
                }

                TaskLocal.get()();
                sub_100001CC0(v0 + 92, v0[95]);
                *(swift_allocObject() + 16) = xmmword_1000839C0;
                LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v66._countAndFlagsBits = 0xD00000000000002DLL;
                v66._object = (v101 | 0x8000000000000000);
                LogMessage.StringInterpolation.appendLiteral(_:)(v66);
                v0[150] = &type metadata for String;
                v0[147] = v44;
                v0[148] = v45;
                LogMessage.StringInterpolation.appendInterpolation(safe:)();
                sub_10000DCA0((v0 + 147), &qword_1000A5630, &unk_100083BF0);
                v21 = v100;
                v67._object = (v100 | 0x8000000000000000);
                v67._countAndFlagsBits = 0xD000000000000014;
                LogMessage.StringInterpolation.appendLiteral(_:)(v67);
                LogMessage.init(stringInterpolation:)();
                Logger.error(_:)();

                sub_100001D4C(v0 + 92);
                sub_100001CC0(v0 + 57, v0[60]);
                dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v15 = v108;
                v16 = 0;
                v23 = 0;
                v17 = 1;
                v14 = 1;
                v19 = v103;
                v18 = v104;
                v22 = v101;
                v20 = v102;
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_4;
                }

LABEL_64:
                v15 = sub_10001EE94(0, *(v0[284] + 16) + 1, 1, v0[284]);
                goto LABEL_3;
              }

              (*(v0[262] + 8))(v0[264], v0[261]);
            }

            else
            {
              (*(v0[262] + 8))(v0[264], v0[261]);
            }
          }

          else
          {
            (*(v0[262] + 8))(v0[264], v0[261]);
          }
        }
      }

      v56 = AssetPushSubscriptionRecord.id.getter();
      if ((v56 & 0x100000000) != 0)
      {
        v110 = 0x296C696E28;
        v111 = 0xE500000000000000;
      }

      else
      {
        *(v0 + 27) = v56;
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v32;
      }

      v33 = v116[266];
      v112 = v116[265];
      v113 = v116[269];
      TaskLocal.get()();
      sub_100001CC0(v116 + 72, v116[75]);
      v0 = v116;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34._countAndFlagsBits = 0xD00000000000002FLL;
      v34._object = 0x8000000100089550;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v116[178] = &type metadata for String;
      v116[175] = v110;
      v116[176] = v111;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v116 + 175), &qword_1000A5630, &unk_100083BF0);
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v33 + 8))(v113, v112);
      sub_100001D4C(v116 + 72);
      v31 = v116[283] + 1;
      v26 = v108;
    }

    while (v31 != v116[282]);
  }

  v69 = v26;
  v70 = *(v26 + 2);
  if (v70)
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = v69 + 56;
    while (1)
    {
      v76 = *(v75 - 3);
      v77 = __OFADD__(v74, v76);
      v74 += v76;
      if (v77)
      {
        break;
      }

      v78 = *(v75 - 2);
      v77 = __OFADD__(v73, v78);
      v73 += v78;
      if (v77)
      {
        goto LABEL_57;
      }

      v79 = *(v75 - 1);
      v77 = __OFADD__(v72, v79);
      v72 += v79;
      if (v77)
      {
        goto LABEL_58;
      }

      v77 = __OFADD__(v71, *v75);
      v71 += *v75;
      if (v77)
      {
        goto LABEL_59;
      }

      v75 += 4;
      if (!--v70)
      {
        goto LABEL_47;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v109 = *(v0 + 93);
    v90 = v0[263];
    v91 = v0[262];
    v92 = v0[261];
    v107 = v0[264];
    v93 = v0[256];
    v94 = v0[255];
    v105 = v0[254];
    v0[294] = AssetPushSubscriptionRecord.downloadAttempts.getter();
    v0[295] = AssetPushSubscriptionRecord.priority.getter();
    v95 = *(v91 + 16);
    v0[296] = v95;
    v0[297] = (v91 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v95(v90, v107, v92);
    (*(v94 + 104))(v93, v109, v105);

    URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
    static OSLogger.jetPackAssets.getter();
    sub_100001CC0(v0 + 132, v0[135]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v96._countAndFlagsBits = 0xD000000000000017;
    v96._object = 0x80000001000896C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v96);
    v0[170] = v92;
    sub_1000061A4(v0 + 167);
    URLJetPackAssetRequest.url.getter();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 167), &qword_1000A5630, &unk_100083BF0);
    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v97);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 132);
    v98 = type metadata accessor for AssetSQLiteDatabase();
    v99 = swift_task_alloc();
    v0[298] = v99;
    *v99 = v0;
    v99[1] = sub_10004CB18;

    return BaseObjectGraph.inject<A>(_:)(v0 + 225, v98, v98);
  }

  else
  {
    v74 = 0;
    v73 = 0;
    v72 = 0;
    v71 = 0;
LABEL_47:

    TaskLocal.get()();
    sub_100001CC0(v116 + 82, v116[85]);
    v80 = v116;
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v81._countAndFlagsBits = 0xD000000000000034;
    v81._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v81);
    v116[186] = &type metadata for Int;
    v116[183] = v74;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v116 + 183), &qword_1000A5630, &unk_100083BF0);
    v82._countAndFlagsBits = 0x7070696B73202C20;
    v82._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v82);
    v116[194] = &type metadata for Int;
    v116[191] = v71;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v116 + 191), &qword_1000A5630, &unk_100083BF0);
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v83);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v116 + 82);
    if (v73 >= 1)
    {
      TaskLocal.get()();
      sub_100001CC0(v116 + 107, v116[110]);
      v80 = v116;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v84._countAndFlagsBits = 0xD00000000000003ALL;
      v84._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v84);
      v116[202] = &type metadata for Int;
      v116[199] = v73;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v116 + 199), &qword_1000A5630, &unk_100083BF0);
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v85);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C(v116 + 107);
    }

    if (v72 < 1)
    {
    }

    else
    {
      TaskLocal.get()();
      sub_100001CC0(v116 + 97, v116[100]);
      v80 = v116;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v86._countAndFlagsBits = 0xD00000000000004CLL;
      v86._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v86);
      v116[154] = &type metadata for Int;
      v116[151] = v72;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v116 + 151), &qword_1000A5630, &unk_100083BF0);
      v87._countAndFlagsBits = 0;
      v87._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v87);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C(v116 + 97);
    }

    sub_100001D4C(v80 + 62);
    sub_100001D4C(v80 + 57);

    v88 = v80[1];

    return v88();
  }
}

uint64_t sub_1000511E0()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 142, v0[145]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000894E0;
  v1._countAndFlagsBits = 0xD000000000000033;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[216];
  v3 = v0[217];
  v0[162] = v3;
  v4 = sub_1000061A4(v0 + 159);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 159), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 142);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10005157C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100051750()
{

  sub_100001D4C((v0 + 456));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005192C()
{
  *(*v1 + 2456) = v0;

  if (v0)
  {
    v2 = sub_100053008;
  }

  else
  {
    v2 = sub_100051A40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100051A40()
{
  v97 = v0 + 222;
  v2 = v0[236];
  sub_10000DBEC(v0[232]);
  sub_10000DCA0(v2, &qword_1000A56E0, &unk_100083BE0);
  v3 = v0[307];
  sub_100001D4C(v0 + 127);

  sub_100001CC0(v0 + 57, v0[60]);
  dispatch thunk of AssetPushSubscriptionStore.incrementDownloadCounter(id:)();
  v113 = v0;
  if (!v3)
  {
    v7 = v0[269];
    v8 = AssetPushSubscriptionRecord.downloadAttempts.getter();
    if ((v8 & &_mh_execute_header) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      TaskLocal.get()();
      sub_100001CC0(v0 + 102, v0[105]);
      v4 = Hasher._combine(_:) + 4;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      v1 = 1;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v11._countAndFlagsBits = 0xD000000000000042;
      v11._object = 0x8000000100089760;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v0[198] = &type metadata for Int32;
      *(v0 + 390) = v10;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v0 + 195), &qword_1000A5630, &unk_100083BF0);
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C(v0 + 102);
      v7 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v5 = 0;
        v6 = v0[284];
        v1 = 1;
        goto LABEL_10;
      }
    }

    v65 = 0;
    goto LABEL_72;
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 112, v0[115]);
  v4 = Hasher._combine(_:) + 4;
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 112);
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    v65 = 0;
    v1 = 1;
    v7 = 1;
    goto LABEL_72;
  }

  v5 = 0;
  v6 = v0[284];
  v1 = 1;
  v7 = 1;
LABEL_10:
  v13 = 0x8000000100089650;
  v14 = "App with bundle ID ";
  v15 = "com.apple.jetpackctl";
  v16 = "ully refreshed asset at URL: ";
  v17 = "ownload attempts: ";
  v18 = *(v4 + 156);
  v19 = v1;
  v20 = v7;
LABEL_11:
  v98 = v17;
  v99 = v16;
  v100 = v15;
  v101 = v14;
  v103 = v13;
  v107 = v18;
  v22 = *(v6 + 2);
  v21 = *(v6 + 3);
  if (v22 >= v21 >> 1)
  {
    v6 = sub_10001EE94((v21 > 1), v22 + 1, 1, v6);
  }

  v23 = v0[269];
  v24 = v0[266];
  v25 = v0[265];
  (*(v0[262] + 8))(v0[264], v0[261]);
  (*(v24 + 8))(v23, v25);
  *(v6 + 2) = v22 + 1;
  v26 = &v6[32 * v22];
  *(v26 + 4) = 0;
  *(v26 + 5) = v19;
  *(v26 + 6) = v20;
  *(v26 + 7) = v5;
LABEL_14:
  v27 = v0[283] + 1;
  if (v27 != v0[282])
  {
    v105 = v6;
    do
    {
      v0[284] = v6;
      v0[283] = v27;
      v32 = v0[272];
      if (v27 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v33 = v0[269];
      v34 = v0[266];
      v35 = v0[265];
      v36 = *(v34 + 16);
      v34 += 16;
      v37 = v32 + ((*(v0 + 284) + 32) & ~*(v0 + 284)) + *(v34 + 56) * v27;
      v0[285] = v36;
      v0[286] = v34 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v36(v33, v37, v35);
      v38 = AssetPushSubscriptionRecord.assetURLString.getter();
      v0[287] = v38;
      v0[288] = v39;
      if (v39)
      {
        v40 = v38;
        v41 = v39;
        v42 = v0[262];
        v43 = v0[261];
        v44 = v0[260];
        URL.init(string:)();
        if ((*(v42 + 48))(v44, 1, v43) == 1)
        {
          v45 = v0[260];

          sub_10000DCA0(v45, &qword_1000A4EF0, &unk_100083C10);
        }

        else
        {
          (*(v0[262] + 32))(v0[264], v0[260], v0[261]);
          v46 = AssetPushSubscriptionRecord.bundleID.getter();
          v0[289] = v46;
          v0[290] = v47;
          if (v47)
          {
            v48 = v46;
            v49 = v47;
            v0[291] = AssetPushSubscriptionRecord.usageID.getter();
            v0[292] = v50;
            if (v50)
            {
              v51 = AssetPushSubscriptionRecord.id.getter();
              v0[293] = v51;
              if ((v51 & 0x100000000) == 0)
              {
                if ((v48 != 0xD000000000000014 || v49 != v103) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v53 = v0[65];
                  v112 = v0[66];
                  sub_100001CC0(v0 + 62, v53);
                  if (((*(v112 + 8))(v48, v49, v53) & 1) == 0)
                  {

                    TaskLocal.get()();
                    sub_100001CC0(v0 + 122, v0[125]);
                    *(swift_allocObject() + 16) = v107;
                    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v54._countAndFlagsBits = 0xD000000000000013;
                    v54._object = (v100 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
                    v0[182] = &type metadata for String;
                    v0[179] = v48;
                    v0[180] = v49;
                    LogMessage.StringInterpolation.appendInterpolation(safe:)();
                    sub_10000DCA0((v0 + 179), &qword_1000A5630, &unk_100083BF0);
                    v55._countAndFlagsBits = 0xD000000000000024;
                    v55._object = (v101 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v55);
                    LogMessage.init(stringInterpolation:)();
                    Logger.info(_:)();

                    sub_100001D4C(v0 + 122);
                    v6 = v105;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v6 = sub_10001EE94(0, *(v105 + 2) + 1, 1, v105);
                    }

                    v57 = *(v6 + 2);
                    v56 = *(v6 + 3);
                    if (v57 >= v56 >> 1)
                    {
                      v6 = sub_10001EE94((v56 > 1), v57 + 1, 1, v6);
                    }

                    v58 = v0[269];
                    v59 = v0[266];
                    v60 = v0[265];
                    (*(v0[262] + 8))(v0[264], v0[261]);
                    (*(v59 + 8))(v58, v60);
                    *(v6 + 2) = v57 + 1;
                    v61 = &v6[32 * v57];
                    *(v61 + 4) = 0;
                    *(v61 + 5) = 0;
                    *(v61 + 6) = 0;
                    *(v61 + 7) = 1;
                    goto LABEL_14;
                  }
                }

                if ((sub_10006DD60(v40, v41, *v97) & 1) == 0)
                {
                  goto LABEL_66;
                }

                TaskLocal.get()();
                sub_100001CC0(v0 + 92, v0[95]);
                *(swift_allocObject() + 16) = v107;
                LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v62._countAndFlagsBits = 0xD00000000000002DLL;
                v62._object = (v98 | 0x8000000000000000);
                LogMessage.StringInterpolation.appendLiteral(_:)(v62);
                v0[150] = &type metadata for String;
                v0[147] = v40;
                v0[148] = v41;
                LogMessage.StringInterpolation.appendInterpolation(safe:)();
                sub_10000DCA0((v0 + 147), &qword_1000A5630, &unk_100083BF0);
                v63._object = (v99 | 0x8000000000000000);
                v63._countAndFlagsBits = 0xD000000000000014;
                LogMessage.StringInterpolation.appendLiteral(_:)(v63);
                LogMessage.init(stringInterpolation:)();
                Logger.error(_:)();

                sub_100001D4C(v0 + 92);
                sub_100001CC0(v0 + 57, v0[60]);
                dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
                v6 = v105;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v1 = 0;
                v7 = 0;
                v19 = 0;
                v20 = 0;
                v5 = 1;
                v18 = v107;
                v65 = 1;
                v14 = v101;
                v13 = v103;
                v16 = v99;
                v15 = v100;
                v17 = v98;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
LABEL_72:
                  v5 = v65;
                  v6 = sub_10001EE94(0, *(v0[284] + 16) + 1, 1, v0[284]);
                  v4 = (Hasher._combine(_:) + 4);
                  goto LABEL_10;
                }

                goto LABEL_11;
              }

              (*(v0[262] + 8))(v0[264], v0[261]);
            }

            else
            {
              (*(v0[262] + 8))(v0[264], v0[261]);
            }
          }

          else
          {
            (*(v0[262] + 8))(v0[264], v0[261]);
          }
        }
      }

      v52 = AssetPushSubscriptionRecord.id.getter();
      if ((v52 & 0x100000000) != 0)
      {
        v108 = 0x296C696E28;
        v109 = 0xE500000000000000;
      }

      else
      {
        *(v0 + 27) = v52;
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v28;
      }

      v29 = v113[266];
      v110 = v113[265];
      v111 = v113[269];
      TaskLocal.get()();
      sub_100001CC0(v113 + 72, v113[75]);
      v0 = v113;
      *(swift_allocObject() + 16) = v107;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v30._countAndFlagsBits = 0xD00000000000002FLL;
      v30._object = 0x8000000100089550;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v113[178] = &type metadata for String;
      v113[175] = v108;
      v113[176] = v109;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v113 + 175), &qword_1000A5630, &unk_100083BF0);
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v29 + 8))(v111, v110);
      sub_100001D4C(v113 + 72);
      v27 = v113[283] + 1;
      v6 = v105;
    }

    while (v27 != v113[282]);
  }

  v66 = *(v6 + 2);
  v67 = v6;
  if (v66)
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = v67 + 56;
    while (1)
    {
      v73 = *(v72 - 3);
      v74 = __OFADD__(v71, v73);
      v71 += v73;
      if (v74)
      {
        break;
      }

      v75 = *(v72 - 2);
      v74 = __OFADD__(v70, v75);
      v70 += v75;
      if (v74)
      {
        goto LABEL_63;
      }

      v76 = *(v72 - 1);
      v74 = __OFADD__(v69, v76);
      v69 += v76;
      if (v74)
      {
        goto LABEL_64;
      }

      v74 = __OFADD__(v68, *v72);
      v68 += *v72;
      if (v74)
      {
        goto LABEL_65;
      }

      v72 += 4;
      if (!--v66)
      {
        goto LABEL_53;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v106 = *(v0 + 93);
    v87 = v0[263];
    v88 = v0[262];
    v89 = v0[261];
    v104 = v0[264];
    v90 = v0[256];
    v91 = v0[255];
    v102 = v0[254];
    v0[294] = AssetPushSubscriptionRecord.downloadAttempts.getter();
    v0[295] = AssetPushSubscriptionRecord.priority.getter();
    v92 = *(v88 + 16);
    v0[296] = v92;
    v0[297] = (v88 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v92(v87, v104, v89);
    (*(v91 + 104))(v90, v106, v102);

    URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
    static OSLogger.jetPackAssets.getter();
    sub_100001CC0(v0 + 132, v0[135]);
    *(swift_allocObject() + 16) = v107;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v93._countAndFlagsBits = 0xD000000000000017;
    v93._object = 0x80000001000896C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v93);
    v0[170] = v89;
    sub_1000061A4(v0 + 167);
    URLJetPackAssetRequest.url.getter();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 167), &qword_1000A5630, &unk_100083BF0);
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v94);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 132);
    v95 = type metadata accessor for AssetSQLiteDatabase();
    v96 = swift_task_alloc();
    v0[298] = v96;
    *v96 = v0;
    v96[1] = sub_10004CB18;

    return BaseObjectGraph.inject<A>(_:)(v0 + 225, v95, v95);
  }

  else
  {
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
LABEL_53:

    TaskLocal.get()();
    sub_100001CC0(v113 + 82, v113[85]);
    v77 = v113;
    *(swift_allocObject() + 16) = v107;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v78._countAndFlagsBits = 0xD000000000000034;
    v78._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v78);
    v113[186] = &type metadata for Int;
    v113[183] = v71;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v113 + 183), &qword_1000A5630, &unk_100083BF0);
    v79._countAndFlagsBits = 0x7070696B73202C20;
    v79._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v79);
    v113[194] = &type metadata for Int;
    v113[191] = v68;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v113 + 191), &qword_1000A5630, &unk_100083BF0);
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v80);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v113 + 82);
    if (v70 >= 1)
    {
      TaskLocal.get()();
      sub_100001CC0(v113 + 107, v113[110]);
      v77 = v113;
      *(swift_allocObject() + 16) = v107;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v81._countAndFlagsBits = 0xD00000000000003ALL;
      v81._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v81);
      v113[202] = &type metadata for Int;
      v113[199] = v70;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v113 + 199), &qword_1000A5630, &unk_100083BF0);
      v82._countAndFlagsBits = 0;
      v82._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v82);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C(v113 + 107);
    }

    if (v69 < 1)
    {
    }

    else
    {
      TaskLocal.get()();
      sub_100001CC0(v113 + 97, v113[100]);
      v77 = v113;
      *(swift_allocObject() + 16) = v107;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v83._countAndFlagsBits = 0xD00000000000004CLL;
      v83._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v83);
      v113[154] = &type metadata for Int;
      v113[151] = v69;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v113 + 151), &qword_1000A5630, &unk_100083BF0);
      v84._countAndFlagsBits = 0;
      v84._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v84);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C(v113 + 97);
    }

    sub_100001D4C(v77 + 62);
    sub_100001D4C(v77 + 57);

    v85 = v77[1];

    return v85();
  }
}

uint64_t sub_100053008()
{
  v98 = v0 + 222;
  v113 = v0[236];
  sub_10000DBEC(v0[232]);
  TaskLocal.get()();
  sub_100001CC0(v0 + 117, v0[120]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v2._object = 0x8000000100086D40;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = v0[207];
  v4 = v0[208];
  v0[190] = v4;
  v5 = sub_1000061A4(v0 + 187);
  (*(*(v4 - 8) + 16))(v5, v3, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 187), &qword_1000A5630, &unk_100083BF0);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v113, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v0 + 117);
  sub_100001D4C(v0 + 127);

  sub_100001CC0(v0 + 57, v0[60]);
  dispatch thunk of AssetPushSubscriptionStore.incrementDownloadCounter(id:)();
  v114 = v0;
  v7 = v0[269];
  v8 = AssetPushSubscriptionRecord.downloadAttempts.getter();
  if ((v8 & &_mh_execute_header) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_67;
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 102, v0[105]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  v1 = 1;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000042;
  v11._object = 0x8000000100089760;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v0[198] = &type metadata for Int32;
  *(v0 + 390) = v10;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 195), &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 102);
  v7 = 0;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
LABEL_67:
    v66 = 0;
    goto LABEL_68;
  }

  v13 = 0;
  v14 = v0[284];
  v1 = 1;
LABEL_7:
  v15 = 0x8000000100089650;
  v16 = "App with bundle ID ";
  v17 = "com.apple.jetpackctl";
  v18 = "ully refreshed asset at URL: ";
  v19 = "ownload attempts: ";
  v20 = v1;
  v21 = v7;
LABEL_8:
  v99 = v19;
  v100 = v18;
  v101 = v17;
  v102 = v16;
  v104 = v15;
  v23 = *(v14 + 2);
  v22 = *(v14 + 3);
  if (v23 >= v22 >> 1)
  {
    v14 = sub_10001EE94((v22 > 1), v23 + 1, 1, v14);
  }

  v24 = v0[269];
  v25 = v0[266];
  v26 = v0[265];
  (*(v0[262] + 8))(v0[264], v0[261]);
  (*(v25 + 8))(v24, v26);
  *(v14 + 2) = v23 + 1;
  v27 = &v14[32 * v23];
  *(v27 + 4) = 0;
  *(v27 + 5) = v20;
  *(v27 + 6) = v21;
  *(v27 + 7) = v13;
LABEL_11:
  v28 = v0[283] + 1;
  if (v28 != v0[282])
  {
    v106 = v14;
    do
    {
      v0[284] = v14;
      v0[283] = v28;
      v33 = v0[272];
      if (v28 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_59;
      }

      v34 = v0[269];
      v35 = v0[266];
      v36 = v0[265];
      v37 = *(v35 + 16);
      v35 += 16;
      v38 = v33 + ((*(v0 + 284) + 32) & ~*(v0 + 284)) + *(v35 + 56) * v28;
      v0[285] = v37;
      v0[286] = v35 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v34, v38, v36);
      v39 = AssetPushSubscriptionRecord.assetURLString.getter();
      v0[287] = v39;
      v0[288] = v40;
      if (v40)
      {
        v41 = v39;
        v42 = v40;
        v43 = v0[262];
        v44 = v0[261];
        v45 = v0[260];
        URL.init(string:)();
        if ((*(v43 + 48))(v45, 1, v44) == 1)
        {
          v46 = v0[260];

          sub_10000DCA0(v46, &qword_1000A4EF0, &unk_100083C10);
        }

        else
        {
          (*(v0[262] + 32))(v0[264], v0[260], v0[261]);
          v47 = AssetPushSubscriptionRecord.bundleID.getter();
          v0[289] = v47;
          v0[290] = v48;
          if (v48)
          {
            v49 = v47;
            v50 = v48;
            v0[291] = AssetPushSubscriptionRecord.usageID.getter();
            v0[292] = v51;
            if (v51)
            {
              v52 = AssetPushSubscriptionRecord.id.getter();
              v0[293] = v52;
              if ((v52 & 0x100000000) == 0)
              {
                if ((v49 != 0xD000000000000014 || v50 != v104) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v54 = v0[65];
                  v112 = v0[66];
                  sub_100001CC0(v0 + 62, v54);
                  if (((*(v112 + 8))(v49, v50, v54) & 1) == 0)
                  {

                    TaskLocal.get()();
                    sub_100001CC0(v0 + 122, v0[125]);
                    *(swift_allocObject() + 16) = xmmword_1000839C0;
                    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v55._countAndFlagsBits = 0xD000000000000013;
                    v55._object = (v101 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v55);
                    v0[182] = &type metadata for String;
                    v0[179] = v49;
                    v0[180] = v50;
                    LogMessage.StringInterpolation.appendInterpolation(safe:)();
                    sub_10000DCA0((v0 + 179), &qword_1000A5630, &unk_100083BF0);
                    v56._countAndFlagsBits = 0xD000000000000024;
                    v56._object = (v102 | 0x8000000000000000);
                    LogMessage.StringInterpolation.appendLiteral(_:)(v56);
                    LogMessage.init(stringInterpolation:)();
                    Logger.info(_:)();

                    sub_100001D4C(v0 + 122);
                    v14 = v106;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v14 = sub_10001EE94(0, *(v106 + 2) + 1, 1, v106);
                    }

                    v58 = *(v14 + 2);
                    v57 = *(v14 + 3);
                    if (v58 >= v57 >> 1)
                    {
                      v14 = sub_10001EE94((v57 > 1), v58 + 1, 1, v14);
                    }

                    v59 = v0[269];
                    v60 = v0[266];
                    v61 = v0[265];
                    (*(v0[262] + 8))(v0[264], v0[261]);
                    (*(v60 + 8))(v59, v61);
                    *(v14 + 2) = v58 + 1;
                    v62 = &v14[32 * v58];
                    *(v62 + 4) = 0;
                    *(v62 + 5) = 0;
                    *(v62 + 6) = 0;
                    *(v62 + 7) = 1;
                    goto LABEL_11;
                  }
                }

                if ((sub_10006DD60(v41, v42, *v98) & 1) == 0)
                {
                  goto LABEL_63;
                }

                TaskLocal.get()();
                sub_100001CC0(v0 + 92, v0[95]);
                *(swift_allocObject() + 16) = xmmword_1000839C0;
                LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v63._countAndFlagsBits = 0xD00000000000002DLL;
                v63._object = (v99 | 0x8000000000000000);
                LogMessage.StringInterpolation.appendLiteral(_:)(v63);
                v0[150] = &type metadata for String;
                v0[147] = v41;
                v0[148] = v42;
                LogMessage.StringInterpolation.appendInterpolation(safe:)();
                sub_10000DCA0((v0 + 147), &qword_1000A5630, &unk_100083BF0);
                v64._object = (v100 | 0x8000000000000000);
                v64._countAndFlagsBits = 0xD000000000000014;
                LogMessage.StringInterpolation.appendLiteral(_:)(v64);
                LogMessage.init(stringInterpolation:)();
                Logger.error(_:)();

                sub_100001D4C(v0 + 92);
                sub_100001CC0(v0 + 57, v0[60]);
                dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
                v14 = v106;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v1 = 0;
                v7 = 0;
                v20 = 0;
                v21 = 0;
                v13 = 1;
                v66 = 1;
                v16 = v102;
                v15 = v104;
                v18 = v100;
                v17 = v101;
                v19 = v99;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
LABEL_68:
                  v13 = v66;
                  v14 = sub_10001EE94(0, *(v0[284] + 16) + 1, 1, v0[284]);
                  goto LABEL_7;
                }

                goto LABEL_8;
              }

              (*(v0[262] + 8))(v0[264], v0[261]);
            }

            else
            {
              (*(v0[262] + 8))(v0[264], v0[261]);
            }
          }

          else
          {
            (*(v0[262] + 8))(v0[264], v0[261]);
          }
        }
      }

      v53 = AssetPushSubscriptionRecord.id.getter();
      if ((v53 & 0x100000000) != 0)
      {
        v108 = 0x296C696E28;
        v109 = 0xE500000000000000;
      }

      else
      {
        *(v0 + 27) = v53;
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v29;
      }

      v30 = v114[266];
      v110 = v114[265];
      v111 = v114[269];
      TaskLocal.get()();
      sub_100001CC0(v114 + 72, v114[75]);
      v0 = v114;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v31._countAndFlagsBits = 0xD00000000000002FLL;
      v31._object = 0x8000000100089550;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v114[178] = &type metadata for String;
      v114[175] = v108;
      v114[176] = v109;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v114 + 175), &qword_1000A5630, &unk_100083BF0);
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v30 + 8))(v111, v110);
      sub_100001D4C(v114 + 72);
      v28 = v114[283] + 1;
      v14 = v106;
    }

    while (v28 != v114[282]);
  }

  v67 = *(v14 + 2);
  v68 = v14;
  if (v67)
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = v68 + 56;
    while (1)
    {
      v74 = *(v73 - 3);
      v75 = __OFADD__(v72, v74);
      v72 += v74;
      if (v75)
      {
        break;
      }

      v76 = *(v73 - 2);
      v75 = __OFADD__(v71, v76);
      v71 += v76;
      if (v75)
      {
        goto LABEL_60;
      }

      v77 = *(v73 - 1);
      v75 = __OFADD__(v70, v77);
      v70 += v77;
      if (v75)
      {
        goto LABEL_61;
      }

      v75 = __OFADD__(v69, *v73);
      v69 += *v73;
      if (v75)
      {
        goto LABEL_62;
      }

      v73 += 4;
      if (!--v67)
      {
        goto LABEL_50;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v107 = *(v0 + 93);
    v88 = v0[263];
    v89 = v0[262];
    v90 = v0[261];
    v105 = v0[264];
    v91 = v0[256];
    v92 = v0[255];
    v103 = v0[254];
    v0[294] = AssetPushSubscriptionRecord.downloadAttempts.getter();
    v0[295] = AssetPushSubscriptionRecord.priority.getter();
    v93 = *(v89 + 16);
    v0[296] = v93;
    v0[297] = (v89 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v93(v88, v105, v90);
    (*(v92 + 104))(v91, v107, v103);

    URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
    static OSLogger.jetPackAssets.getter();
    sub_100001CC0(v0 + 132, v0[135]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v94._countAndFlagsBits = 0xD000000000000017;
    v94._object = 0x80000001000896C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v94);
    v0[170] = v90;
    sub_1000061A4(v0 + 167);
    URLJetPackAssetRequest.url.getter();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 167), &qword_1000A5630, &unk_100083BF0);
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v95);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 132);
    v96 = type metadata accessor for AssetSQLiteDatabase();
    v97 = swift_task_alloc();
    v0[298] = v97;
    *v97 = v0;
    v97[1] = sub_10004CB18;

    return BaseObjectGraph.inject<A>(_:)(v0 + 225, v96, v96);
  }

  else
  {
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
LABEL_50:

    TaskLocal.get()();
    sub_100001CC0(v114 + 82, v114[85]);
    v78 = v114;
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v79._countAndFlagsBits = 0xD000000000000034;
    v79._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v79);
    v114[186] = &type metadata for Int;
    v114[183] = v72;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v114 + 183), &qword_1000A5630, &unk_100083BF0);
    v80._countAndFlagsBits = 0x7070696B73202C20;
    v80._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v80);
    v114[194] = &type metadata for Int;
    v114[191] = v69;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v114 + 191), &qword_1000A5630, &unk_100083BF0);
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v81);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v114 + 82);
    if (v71 >= 1)
    {
      TaskLocal.get()();
      sub_100001CC0(v114 + 107, v114[110]);
      v78 = v114;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v82._countAndFlagsBits = 0xD00000000000003ALL;
      v82._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v82);
      v114[202] = &type metadata for Int;
      v114[199] = v71;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v114 + 199), &qword_1000A5630, &unk_100083BF0);
      v83._countAndFlagsBits = 0;
      v83._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v83);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C(v114 + 107);
    }

    if (v70 < 1)
    {
    }

    else
    {
      TaskLocal.get()();
      sub_100001CC0(v114 + 97, v114[100]);
      v78 = v114;
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v84._countAndFlagsBits = 0xD00000000000004CLL;
      v84._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v84);
      v114[154] = &type metadata for Int;
      v114[151] = v70;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v114 + 151), &qword_1000A5630, &unk_100083BF0);
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v85);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C(v114 + 97);
    }

    sub_100001D4C(v78 + 62);
    sub_100001D4C(v78 + 57);

    v86 = v78[1];

    return v86();
  }
}

uint64_t sub_100054714()
{
  v1 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1000547D0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_1000547D0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100054990;
  }

  else
  {
    v2 = sub_1000548E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000548E4()
{
  v1 = v0[8];
  sub_100001CC0(v0 + 2, v0[5]);
  v2 = dispatch thunk of AssetPushSubscriptionStore.findPendingSubscriptionsToRefresh()();
  v3 = sub_100001D4C(v0 + 2);
  v4 = v0[1];
  if (!v1)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_1000549A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000549C8, 0, 0);
}

uint64_t sub_1000549C8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100054A80;
  v2 = *(v0 + 16);

  return sub_100049B14(v2, "DefaultRefreshAssetsTaskHandler.handleTask", 42, 2, &unk_100085F00, v2);
}

uint64_t sub_100054A80()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100054BB4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100054BCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100040348;

  return sub_100054C78(a1);
}

uint64_t sub_100054C78(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_100054D38;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_100054D38()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100060C40, 0, 0);
  }

  else
  {
    v3 = type metadata accessor for AssetSQLiteDatabase();
    v4 = swift_task_alloc();
    *(v2 + 88) = v4;
    *v4 = v2;
    v4[1] = sub_100054ED0;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v3, v3);
  }
}

uint64_t sub_100054ED0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100060C3C;
  }

  else
  {
    v2 = sub_100054FE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100054FE4()
{
  v0[13] = v0[7];
  v1 = swift_task_alloc();
  v0[14] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1000550C0;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v2, &unk_100085EF0, v1, &type metadata for () + 8);
}

uint64_t sub_1000550C0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100060C18;
  }

  else
  {

    v2 = sub_100060C38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000551DC(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_10005529C;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_10005529C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100055548, 0, 0);
  }

  else
  {
    v3 = type metadata accessor for AssetSQLiteDatabase();
    v4 = swift_task_alloc();
    *(v2 + 88) = v4;
    *v4 = v2;
    v4[1] = sub_100055434;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v3, v3);
  }
}

uint64_t sub_100055434()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100055758;
  }

  else
  {
    v2 = sub_100055560;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100055560()
{
  v0[13] = v0[7];
  v1 = swift_task_alloc();
  v0[14] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_10005563C;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v2, &unk_100085EC0, v1, &type metadata for () + 8);
}

uint64_t sub_10005563C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100055828;
  }

  else
  {

    v2 = sub_1000557BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100055758()
{
  sub_100001D4C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000557BC()
{

  sub_100001D4C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100055828()
{

  sub_100001D4C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005589C(uint64_t a1)
{
  v1[23] = a1;
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v2 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v3 = swift_task_alloc();
  v1[26] = v3;
  *v3 = v1;
  v3[1] = sub_1000559A0;

  return BaseObjectGraph.inject<A>(_:)(v1 + 13, v2, v2);
}

uint64_t sub_1000559A0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100056134;
  }

  else
  {
    v2 = sub_100055AB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100055AB4()
{
  v1 = sub_100001CC0(v0 + 13, v0[16]);
  sub_100001CC0(v1 + 5, v1[8]);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_100055B64;
  v3 = v0[25];

  return sub_100015738(v3);
}

uint64_t sub_100055B64()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v7 = *v0;

  sub_100002758(v2, v3, &unk_1000A56A0, &unk_100083E10);
  v4 = swift_task_alloc();
  *(v1 + 232) = v4;
  *v4 = v7;
  v4[1] = sub_100055CF8;
  v5 = *(v1 + 192);

  return sub_10000FD7C(v1 + 16, v5);
}

uint64_t sub_100055CF8()
{

  return _swift_task_switch(sub_100055DF4, 0, 0);
}

uint64_t sub_100055DF4()
{
  sub_10000DCA0(*(v0 + 200), &unk_1000A56A0, &unk_100083E10);
  v1 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  v2[1] = sub_100055EC8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 144, v1, v1);
}

uint64_t sub_100055EC8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    sub_10000D6E8(v2 + 16);
    v3 = sub_1000561A0;
  }

  else
  {
    v3 = sub_100055FE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100055FE4()
{
  sub_100001CC0(v0 + 18, v0[21]);
  sub_10000D6E8((v0 + 2));
  result = v0[10];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = v0[31];
  v3 = dispatch thunk of AssetPushSubscriptionStore.findOverduePendingSubscriptionsToRefresh(maxDownloadAttempts:)();
  if (v2)
  {
    sub_100001D4C(v0 + 18);
    sub_100001D4C(v0 + 13);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v5 = v3;
    sub_100001D4C(v0 + 18);
    sub_100001D4C(v0 + 13);

    v6 = v0[1];

    return v6(v5);
  }
}

uint64_t sub_100056134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000561A0()
{
  sub_100001D4C((v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100056214(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100056234, 0, 0);
}

uint64_t sub_100056234()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000562EC;
  v2 = *(v0 + 16);

  return sub_100049B14(v2, "MaintenanceRefreshAssetsTaskHandler.handleTask", 46, 2, &unk_100085EA0, v2);
}

uint64_t sub_1000562EC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100060C6C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100056438(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for AssetPushSubscriptionRecord();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for JetPackAsset();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for JetPackAssetStandardCachePolicy();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for JetPackAssetDiskCache();
  v7 = swift_task_alloc();
  v2[20] = v7;
  *v7 = v2;
  v7[1] = sub_10005660C;

  return BaseObjectGraph.inject<A>(_:)(v2 + 7, v6, v6);
}

uint64_t sub_10005660C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10005705C;
  }

  else
  {
    v2 = sub_100056720;
  }

  return _swift_task_switch(v2, 0, 0);
}