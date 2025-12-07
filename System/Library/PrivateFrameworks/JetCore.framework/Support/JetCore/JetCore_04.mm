uint64_t sub_1000744A4()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_100075958;
  }

  else
  {
    v5 = sub_1000745E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000745E0()
{
  v1 = *(v0 + 416);
  sub_100001CC0((v0 + 136), *(v0 + 160));
  sub_1000438FC(v1);
  os_unfair_lock_lock((v0 + 300));
  *(v0 + 296) = 3;
  os_unfair_lock_unlock((v0 + 300));
  v2 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
  v3 = swift_task_alloc();
  *(v0 + 456) = v3;
  *v3 = v0;
  v3[1] = sub_1000746D4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 176, v2, v2);
}

uint64_t sub_1000746D4()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_100075C50;
  }

  else
  {
    v5 = sub_100074810;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100074810()
{
  sub_100001CC0(v0 + 22, v0[25]);
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_1000748AC;

  return sub_100028A34();
}

uint64_t sub_1000748AC(uint64_t a1)
{
  v2 = *v1;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);

  return _swift_task_switch(sub_1000749E0, v4, v3);
}

uint64_t sub_1000749E0()
{
  os_unfair_lock_lock((v0 + 300));
  *(v0 + 296) = 2;
  os_unfair_lock_unlock((v0 + 300));
  v1 = type metadata accessor for AssetSQLiteDatabase();
  v2 = swift_task_alloc();
  *(v0 + 480) = v2;
  *v2 = v0;
  v2[1] = sub_100074AA8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 336, v1, v1);
}

uint64_t sub_100074AA8()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_100075F50;
  }

  else
  {
    v5 = sub_100074BE4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100074BE4()
{
  v0[62] = v0[42];
  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  v1[1] = sub_100074CA0;
  v2 = v0[43];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v1, &unk_100086948, v2, &type metadata for () + 8);
}

uint64_t sub_100074CA0()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_100076258;
  }

  else
  {
    v5 = sub_100074DDC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100074DDC()
{
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));

  sub_100001D4C((v0 + 176));
  sub_100001D4C((v0 + 136));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  dispatch thunk of XPCListener.activate()();
  sub_100080644("Daemon.run.task", 15, 2, *(v0 + 408), &qword_1000A4DE8, qword_1000A60F0, sub_100072D5C);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007500C()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {

    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_100075394;
  }

  else
  {
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_100075134;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100075134()
{
  sub_10000626C((v0 + 96), v0 + 56);
  v1 = *(v0 + 545);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(v0 + 544) = v1;
  sub_1000804E0();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100001D4C((v0 + 56));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  dispatch thunk of XPCListener.activate()();
  sub_100080644("Daemon.run.task", 15, 2, *(v0 + 408), &qword_1000A4DE8, qword_1000A60F0, sub_100072D5C);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100075394(uint64_t a1)
{
  *(v1 + 96) = 0u;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0u;
  default argument 0 of CoreAnalyticsLogger.init(provider:decorator:)();
  *(v1 + 80) = type metadata accessor for CoreAnalyticsLogger();
  *(v1 + 88) = &protocol witness table for CoreAnalyticsLogger;
  sub_1000061A4((v1 + 56));
  CoreAnalyticsLogger.init(provider:decorator:)();
  if (*(v1 + 120))
  {
    sub_10000DCA0(v1 + 96, &qword_1000A61F8, &qword_100086938);
  }

  v2 = *(v1 + 545);
  sub_100001CC0((v1 + 56), *(v1 + 80));
  *(v1 + 544) = v2;
  sub_1000804E0();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100001D4C((v1 + 56));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  dispatch thunk of XPCListener.activate()();
  sub_100080644("Daemon.run.task", 15, 2, *(v1 + 408), &qword_1000A4DE8, qword_1000A60F0, sub_100072D5C);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100075660()
{
  v1 = *(v0 + 432);
  *(v0 + 545) = 1;
  *(v0 + 520) = v1;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010008A660;
  v2._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v3._countAndFlagsBits = 0x726F727245202C27;
  v3._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  *(v0 + 272) = v5;
  v6 = sub_1000061A4((v0 + 248));
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v8 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v9 = swift_task_alloc();
  *(v0 + 528) = v9;
  *v9 = v0;
  v9[1] = sub_10007500C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v8, v8);
}

uint64_t sub_100075958()
{
  v1 = *(v0 + 448);
  *(v0 + 545) = 4;
  *(v0 + 520) = v1;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010008A660;
  v2._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v3._countAndFlagsBits = 0x726F727245202C27;
  v3._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  *(v0 + 272) = v5;
  v6 = sub_1000061A4((v0 + 248));
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v8 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v9 = swift_task_alloc();
  *(v0 + 528) = v9;
  *v9 = v0;
  v9[1] = sub_10007500C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v8, v8);
}

uint64_t sub_100075C50()
{
  sub_100001D4C((v0 + 136));
  v1 = *(v0 + 464);
  *(v0 + 545) = 3;
  *(v0 + 520) = v1;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010008A660;
  v2._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v3._countAndFlagsBits = 0x726F727245202C27;
  v3._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  *(v0 + 272) = v5;
  v6 = sub_1000061A4((v0 + 248));
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v8 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v9 = swift_task_alloc();
  *(v0 + 528) = v9;
  *v9 = v0;
  v9[1] = sub_10007500C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v8, v8);
}

uint64_t sub_100075F50()
{
  sub_100001D4C((v0 + 176));
  sub_100001D4C((v0 + 136));
  v1 = *(v0 + 488);
  *(v0 + 545) = 2;
  *(v0 + 520) = v1;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010008A660;
  v2._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v3._countAndFlagsBits = 0x726F727245202C27;
  v3._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  *(v0 + 272) = v5;
  v6 = sub_1000061A4((v0 + 248));
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v8 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v9 = swift_task_alloc();
  *(v0 + 528) = v9;
  *v9 = v0;
  v9[1] = sub_10007500C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v8, v8);
}

uint64_t sub_100076258()
{

  sub_100001D4C((v0 + 176));
  sub_100001D4C((v0 + 136));
  v1 = *(v0 + 512);
  *(v0 + 545) = 2;
  *(v0 + 520) = v1;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010008A660;
  v2._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v3._countAndFlagsBits = 0x726F727245202C27;
  v3._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  *(v0 + 272) = v5;
  v6 = sub_1000061A4((v0 + 248));
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v8 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v9 = swift_task_alloc();
  *(v0 + 528) = v9;
  *v9 = v0;
  v9[1] = sub_10007500C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v8, v8);
}

uint64_t sub_100076588()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100076624;

  return sub_10007671C(v1);
}

uint64_t sub_100076624()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10007671C(uint64_t a1)
{
  v3 = *v1;
  v2[11] = a1;
  v2[12] = v3;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000767D0, 0, 0);
}

uint64_t sub_1000767D0()
{
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  *(v0 + 112) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 120) = *(v1 + 72);
  *(v0 + 176) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v2 = type metadata accessor for AssetSQLiteDatabase();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1000769B0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 72, v2, v2);
}

uint64_t sub_1000769B0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100076D24;
  }

  else
  {
    v2 = sub_100076AC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100076AC4()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[18] = v0[9];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_100076BA0;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v4, &unk_100086960, v3, &type metadata for () + 8);
}

uint64_t sub_100076BA0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100076ECC;
  }

  else
  {

    v2 = sub_100076CBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100076CBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100076D24()
{
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008A6E0;
  v1._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_1000061A4(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 2), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100076ECC()
{

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008A6E0;
  v1._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_1000061A4(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 2), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100077084(uint64_t a1, uint64_t a2)
{
  v2[16] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[17] = swift_task_alloc();
  v3 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v4 = swift_task_alloc();
  v2[18] = v4;
  *v4 = v2;
  v4[1] = sub_100077170;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_100077170()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007771C, 0, 0);
  }

  else
  {
    v3 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v4 = swift_task_alloc();
    *(v2 + 160) = v4;
    *v4 = v2;
    v4[1] = sub_100077314;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v3, v3);
  }
}

uint64_t sub_100077314()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100077780;
  }

  else
  {
    v2 = sub_100077428;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100077428()
{
  v2 = *(v0 + 168);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  v3 = dispatch thunk of AssetPushSubscriptionStore.findAllPending()();
  if (v2)
  {
    sub_100001D4C((v0 + 56));
    sub_100001D4C((v0 + 16));

    v6 = *(v0 + 8);
    goto LABEL_4;
  }

  v4 = v3;
  v5 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  v8 = dispatch thunk of AssetPushSubscriptionStore.findAllPendingToReattempt()();
  v9 = *(v4 + 16);

  if (v9 >> 31)
  {
    __break(1u);
    goto LABEL_12;
  }

  v1 = *(v8 + 16);

  if (v1 >> 31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(v0 + 176) = v9;
  *(v0 + 180) = v1;
  sub_100080A64();
  v5 = &type metadata for PingLog;
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();
  if (qword_1000A4DE0 != -1)
  {
LABEL_13:
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x800000010008A710;
  v10._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  *(v0 + 120) = v5;
  *(v0 + 96) = v9;
  *(v0 + 100) = v1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 96, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));

  v6 = *(v0 + 8);
LABEL_4:

  return v6();
}

uint64_t sub_10007771C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100077780()
{
  sub_100001D4C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100077818(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_100077898(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for OSSignposter();
  sub_100018750(v8, a2);
  v9 = sub_100018718(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_100018718(v8, a4);
  v11 = *(*(v8 - 8) + 16);

  return v11(v9, v10, v8);
}

uint64_t sub_100077960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v59 = a3;
  v64 = a4;
  v5 = type metadata accessor for XPCReceivedMessage();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  v8 = __chkstk_darwin(v5, v7);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v60 = &v48 - v10;
  v11 = type metadata accessor for JetPackAssetDaemonMessage();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  v14 = __chkstk_darwin(v11, v13);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v48 - v16;
  if (qword_1000A4E00 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A6108, qword_1000A6120);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_1000811A0(&qword_1000A6240, &type metadata accessor for JetPackAssetDaemonMessage, &protocol conformance descriptor for JetPackAssetDaemonMessage);
  XPCReceivedMessage.decode<A>(as:)();
  v18 = a1;
  v55 = v11;
  v19 = v60;
  v20 = v61;
  v21 = *(v61 + 16);
  v22 = a1;
  v23 = v62;
  v21(v60, v22, v62);
  v24 = XPCReceivedMessage.bundleIdentifier.getter();
  v53 = v25;
  v54 = v24;
  v26 = XPCReceivedMessage.auditToken.getter();
  v51 = v27;
  v52 = v26;
  v49 = v29;
  v50 = v28;
  (*(v20 + 8))(v19, v23);
  v30 = v56;
  v21(v56, v18, v23);
  v31 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v32 = swift_allocObject();
  (*(v20 + 32))(v32 + v31, v30, v23);
  v62 = v18;
  if (qword_1000A4DC0 != -1)
  {
    swift_once();
  }

  v61 = qword_1000A6448;
  v33 = v63;
  v34 = *(v63 + 16);
  v35 = v57;
  v48 = v17;
  v36 = v17;
  v37 = v55;
  v34(v57, v36, v55);
  v38 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v39 = (v12 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v59;
  *(v40 + 16) = v58;
  *(v40 + 24) = v41;
  (*(v33 + 32))(v40 + v38, v35, v37);
  v42 = (v40 + v39);
  v43 = v53;
  *v42 = v54;
  v42[1] = v43;
  v44 = v51;
  v42[2] = v52;
  v42[3] = v44;
  v45 = v49;
  v42[4] = v50;
  v42[5] = v45;
  v46 = (v40 + ((v39 + 55) & 0xFFFFFFFFFFFFFFF8));
  *v46 = sub_100080C98;
  v46[1] = v32;

  XPCReceivedMessage.handoffReply(to:_:)();

  return (*(v33 + 8))(v48, v37);
}

uint64_t sub_100077F28(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v11 = type metadata accessor for JetPackAssetDaemonMessage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a3, v11);
  v34 = a6;

  v31 = a1;

  v33 = a2;

  sub_100068984(a4, v35);
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  v21 = qword_1000A6450;
  v22 = sub_1000811A0(&qword_1000A5660, type metadata accessor for DaemonActor, &unk_100086084);
  v23 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = v21;
  *(v25 + 3) = v22;
  v26 = v34;
  *(v25 + 4) = v32;
  *(v25 + 5) = v26;
  v27 = v33;
  *(v25 + 6) = v31;
  *(v25 + 7) = v27;
  (*(v12 + 32))(&v25[v23], v15, v11);
  v28 = &v25[v24];
  v29 = a4[1];
  *v28 = *a4;
  *(v28 + 1) = v29;
  *(v28 + 2) = a4[2];

  sub_100023290(0, 0, v19, &unk_100086A00, v25);
}

uint64_t sub_1000781F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v14;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v9 = type metadata accessor for JetPackAssetDaemonMessage();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000811A0(&qword_1000A5660, type metadata accessor for DaemonActor, &unk_100086084);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[21] = v11;
  v8[22] = v10;

  return _swift_task_switch(sub_100078354, v11, v10);
}

uint64_t sub_100078354()
{
  (*(v0[19] + 16))(v0[20], v0[16], v0[18]);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_100078410;
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];

  return sub_100078620((v0 + 2), v2, v3, v4, v5);
}

uint64_t sub_100078410()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_100078530, v3, v2);
}

uint64_t sub_100078530()
{
  v1 = *(v0 + 96);
  v7 = *(v0 + 40);
  v2 = *(v0 + 40);
  v3 = sub_100001CC0((v0 + 16), v2);
  *(v0 + 80) = v7;
  v4 = sub_1000061A4((v0 + 56));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v1(v0 + 56);
  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100078620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[264] = a5;
  v5[263] = a3;
  v5[262] = a2;
  v5[261] = a1;
  AssetRequest = type metadata accessor for DaemonGetAssetRequest();
  v5[265] = AssetRequest;
  v5[266] = *(AssetRequest - 8);
  v5[267] = swift_task_alloc();
  v7 = type metadata accessor for DaemonCacheEvictRequest();
  v5[268] = v7;
  v5[269] = *(v7 - 8);
  v5[270] = swift_task_alloc();
  v8 = type metadata accessor for DaemonPushResetRecordRequest();
  v5[271] = v8;
  v5[272] = *(v8 - 8);
  v5[273] = swift_task_alloc();
  v9 = type metadata accessor for DaemonPushDeleteRecordRequest();
  v5[274] = v9;
  v5[275] = *(v9 - 8);
  v5[276] = swift_task_alloc();
  v10 = type metadata accessor for DaemonPushSubscriptionRequest();
  v5[277] = v10;
  v5[278] = *(v10 - 8);
  v5[279] = swift_task_alloc();
  v11 = type metadata accessor for DaemonPushInfoRequest();
  v5[280] = v11;
  v5[281] = *(v11 - 8);
  v5[282] = swift_task_alloc();
  sub_100001D04(&qword_1000A6258, &qword_100086A10);
  v5[283] = swift_task_alloc();
  v5[284] = swift_task_alloc();
  TestAssetRequest = type metadata accessor for DaemonReadTestAssetRequest();
  v5[285] = TestAssetRequest;
  v5[286] = *(TestAssetRequest - 8);
  v5[287] = swift_task_alloc();
  refreshed = type metadata accessor for DaemonRefreshTestAssetRequest();
  v5[288] = refreshed;
  v5[289] = *(refreshed - 8);
  v5[290] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v5[291] = swift_task_alloc();
  v14 = type metadata accessor for DaemonPingRequest();
  v5[292] = v14;
  v5[293] = *(v14 - 8);
  v5[294] = swift_task_alloc();
  v15 = type metadata accessor for JetPackAssetDaemonMessage();
  v5[295] = v15;
  v5[296] = *(v15 - 8);
  v5[297] = swift_task_alloc();
  v16 = type metadata accessor for OSSignpostID();
  v5[298] = v16;
  v5[299] = *(v16 - 8);
  v5[300] = swift_task_alloc();
  v5[301] = swift_task_alloc();
  v17 = type metadata accessor for DaemonRequestTypeKind();
  v5[302] = v17;
  v5[303] = *(v17 - 8);
  v5[304] = swift_task_alloc();
  v5[305] = swift_task_alloc();

  return _swift_task_switch(sub_100078B68, 0, 0);
}

uint64_t sub_100078B68()
{
  v1 = v0;
  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[303];
  v5 = v1[302];
  JetPackAssetDaemonMessage.request.getter();
  sub_100001CC0(v1 + 80, v1[83]);
  swift_getDynamicType();
  sub_100001D4C(v1 + 80);
  dispatch thunk of static DaemonRequestType.kind.getter();
  (*(v4 + 104))(v3, enum case for DaemonRequestTypeKind.debugging(_:), v5);
  v6 = static DaemonRequestTypeKind.== infix(_:_:)();
  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v2, v5);
  if (v6)
  {
    v8 = v1[263];
    if ((*v8 != 0xD000000000000014 || 0x8000000100089650 != v8[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v65 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      v65[3] = sub_100001D04(&qword_1000A6248, &qword_1000869F0);
      v65[4] = sub_100040238(&qword_1000A6250, &qword_1000A6248, &qword_1000869F0, &protocol conformance descriptor for DaemonResponse<A>);
      sub_1000061A4(v65);
      DaemonResponse.init(reason:)();
      goto LABEL_31;
    }
  }

  if (qword_1000A4E08 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_100018718(v9, qword_1000A6130);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v10 = OSSignposter.logHandle.getter();
  v11 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v13, "RequestHandler.handleClientMessage", "", v12, 2u);
  }

  v14 = v1[301];
  v15 = v1[300];
  v16 = v1[299];
  v17 = v1[298];
  v18 = v1[297];
  v19 = v1[296];
  v20 = v1[295];
  v21 = v1[262];

  (*(v16 + 16))(v15, v14, v17);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v22 = OSSignpostIntervalState.init(id:isOpen:)();
  v1[306] = v22;
  (*(v16 + 8))(v14, v17);
  (*(v19 + 16))(v18, v21, v20);
  v23 = (*(v19 + 88))(v18, v20);
  if (v23 == enum case for JetPackAssetDaemonMessage.ping(_:))
  {
    v185 = v22;
    v24 = v1[297];
    v25 = v1[294];
    v26 = v1[293];
    v27 = v1[292];
    (*(v1[296] + 96))(v24, v1[295]);
    (*(v26 + 32))(v25, v24, v27);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v28 = v1[263];
    v29 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0x20676E696E6E7552;
    v30._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    v1[199] = sub_100001D04(&qword_1000A6310, &unk_100086A90);
    v1[196] = &type metadata for PingRequestHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 196), &qword_1000A5630, &unk_100083BF0);
    v31._object = 0x800000010008A980;
    v31._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    *(v1 + 86) = *v28;
    v1[175] = &type metadata for String;
    sub_100068984(v28, (v1 + 8));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 172), &qword_1000A5630, &unk_100083BF0);
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v32);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v29[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
    v29[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30, &protocol conformance descriptor for DaemonResponse<A>);
    sub_1000061A4(v29);
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v33 = v1[294];
    v34 = v1[293];
    v184 = v1[292];
    TaskLocal.get()();
    sub_100001CC0(v1 + 90, v1[93]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v35._countAndFlagsBits = 0xD000000000000016;
    v35._object = 0x800000010008AAC0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    v36 = DaemonPingRequest.messageText.getter();
    v1[123] = &type metadata for String;
    v1[120] = v36;
    v1[121] = v37;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 120), &qword_1000A5630, &unk_100083BF0);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C(v1 + 90);
    _StringGuts.grow(_:)(25);

    v39._countAndFlagsBits = DaemonPingRequest.messageText.getter();
    String.append(_:)(v39);

    DaemonResponse.init<>(_:)();
    (*(v34 + 8))(v33, v184);
LABEL_15:
    sub_100080644("RequestHandler.handleClientMessage", 34, 2, v185, &qword_1000A4E08, qword_1000A6130, sub_10007786C);

LABEL_31:
    (*(v1[296] + 8))(v1[262], v1[295]);

    v66 = v1[1];

    return v66();
  }

  if (v23 == enum case for JetPackAssetDaemonMessage.refreshTestAsset(_:))
  {
    v40 = v1[297];
    v41 = v1[290];
    v42 = v1[289];
    v43 = v1[288];
    (*(v1[296] + 96))(v40, v1[295]);
    (*(v42 + 32))(v41, v40, v43);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v44 = v1[263];
    v45 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v46._countAndFlagsBits = 0x20676E696E6E7552;
    v46._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v46);
    v1[235] = sub_100001D04(&qword_1000A6308, &qword_100086A88);
    v1[232] = &type metadata for RefreshTestAssetHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 232), &qword_1000A5630, &unk_100083BF0);
    v47._object = 0x800000010008A980;
    v47._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);
    *(v1 + 114) = *v44;
    v1[231] = &type metadata for String;
    sub_100068984(v44, (v1 + 14));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 228), &qword_1000A5630, &unk_100083BF0);
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v48);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v45[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
    v45[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30, &protocol conformance descriptor for DaemonResponse<A>);
    v49 = sub_1000061A4(v45);
    v50 = swift_task_alloc();
    v1[307] = v50;
    *v50 = v1;
    v50[1] = sub_10007BC38;

    return sub_100019AB4(v49);
  }

  if (v23 == enum case for JetPackAssetDaemonMessage.readTestAsset(_:))
  {
    v52 = v1[297];
    v53 = v1[287];
    v54 = v1[286];
    v55 = v1[285];
    (*(v1[296] + 96))(v52, v1[295]);
    (*(v54 + 32))(v53, v52, v55);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v56 = v1[263];
    v57 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v58._countAndFlagsBits = 0x20676E696E6E7552;
    v58._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v58);
    v1[239] = sub_100001D04(&qword_1000A62F8, &qword_100086A80);
    v1[236] = &type metadata for ReadTestAssetHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 236), &qword_1000A5630, &unk_100083BF0);
    v59._object = 0x800000010008A980;
    v59._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v59);
    *(v1 + 62) = *v56;
    v1[127] = &type metadata for String;
    sub_100068984(v56, (v1 + 26));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 124), &qword_1000A5630, &unk_100083BF0);
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v60);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v57[3] = sub_100001D04(&qword_1000A5A58, &unk_100086100);
    v57[4] = sub_100040238(&qword_1000A6300, &qword_1000A5A58, &unk_100086100, &protocol conformance descriptor for DaemonResponse<A>);
    v61 = sub_1000061A4(v57);
    v62 = swift_task_alloc();
    v1[308] = v62;
    *v62 = v1;
    v62[1] = sub_10007BF04;
    v63 = v1[287];
    v64 = v1[263];

    return sub_100061244(v61, v63, v64);
  }

  if (v23 == enum case for JetPackAssetDaemonMessage.scheduleTask(_:))
  {
    (*(v1[296] + 8))(v1[297], v1[295]);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v67 = v1[263];
    v68 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    v1[309] = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v69 = *(type metadata accessor for LogMessage() - 8);
    v1[310] = *(v69 + 72);
    *(v1 + 696) = *(v69 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v70._countAndFlagsBits = 0x20676E696E6E7552;
    v70._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v70);
    v1[207] = sub_100001D04(&qword_1000A62D0, &qword_100086A70);
    v1[204] = &type metadata for ScheduleTaskRequestHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 204), &qword_1000A5630, &unk_100083BF0);
    v71._object = 0x800000010008A980;
    v71._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v71);
    *(v1 + 104) = *v67;
    v1[211] = &type metadata for String;
    sub_100068984(v67, (v1 + 32));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 208), &qword_1000A5630, &unk_100083BF0);
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v72);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v73 = sub_100001D04(&qword_1000A62D8, &qword_100086A78);
    v1[311] = v73;
    v68[3] = v73;
    v68[4] = sub_100040238(&qword_1000A62E0, &qword_1000A62D8, &qword_100086A78, &protocol conformance descriptor for DaemonResponse<A>);
    v1[312] = sub_1000061A4(v68);
    v74 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
    v75 = swift_task_alloc();
    v1[313] = v75;
    *v75 = v1;
    v75[1] = sub_10007C1D0;
    v76 = v1 + 100;
LABEL_38:

    return BaseObjectGraph.inject<A>(_:)(v76, v74, v74);
  }

  if (v23 == enum case for JetPackAssetDaemonMessage.postInstall(_:))
  {
    (*(v1[296] + 8))(v1[297], v1[295]);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v77 = v1[263];
    v78 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    v1[319] = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v79 = *(type metadata accessor for LogMessage() - 8);
    v1[320] = *(v79 + 72);
    *(v1 + 697) = *(v79 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v80._countAndFlagsBits = 0x20676E696E6E7552;
    v80._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v80);
    v1[179] = sub_100001D04(&qword_1000A62C8, &qword_100086A68);
    v1[176] = &type metadata for PostInstallRequestHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 176), &qword_1000A5630, &unk_100083BF0);
    v81._object = 0x800000010008A980;
    v81._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v81);
    *(v1 + 90) = *v77;
    v1[183] = &type metadata for String;
    sub_100068984(v77, (v1 + 44));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 180), &qword_1000A5630, &unk_100083BF0);
    v82._countAndFlagsBits = 0;
    v82._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v82);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v78[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
    v78[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30, &protocol conformance descriptor for DaemonResponse<A>);
    v1[321] = sub_1000061A4(v78);
    v83 = swift_task_alloc();
    v1[322] = v83;
    *v83 = v1;
    v83[1] = sub_10007CEA0;
    v84 = v1[264];

    return sub_10005CDC0(v84);
  }

  else
  {
    if (v23 == enum case for JetPackAssetDaemonMessage.bagRefresh(_:))
    {
      (*(v1[296] + 8))(v1[297], v1[295]);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v85 = v1[263];
      v86 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      v1[326] = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v87 = *(type metadata accessor for LogMessage() - 8);
      v1[327] = *(v87 + 72);
      *(v1 + 698) = *(v87 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v88._countAndFlagsBits = 0x20676E696E6E7552;
      v88._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v88);
      v1[147] = sub_100001D04(&qword_1000A62C0, &qword_100086A60);
      v1[144] = &type metadata for BagRefreshRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 144), &qword_1000A5630, &unk_100083BF0);
      v89._object = 0x800000010008A980;
      v89._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v89);
      *(v1 + 74) = *v85;
      v1[151] = &type metadata for String;
      sub_100068984(v85, (v1 + 50));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 148), &qword_1000A5630, &unk_100083BF0);
      v90._countAndFlagsBits = 0;
      v90._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v90);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v86[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
      v86[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30, &protocol conformance descriptor for DaemonResponse<A>);
      v1[328] = sub_1000061A4(v86);
      v74 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
      v91 = swift_task_alloc();
      v1[329] = v91;
      *v91 = v1;
      v91[1] = sub_10007D9CC;
      v76 = v1 + 115;
      goto LABEL_38;
    }

    if (v23 == enum case for JetPackAssetDaemonMessage.pushInfo(_:))
    {
      v92 = v1[297];
      v93 = v1[282];
      v94 = v1[281];
      v95 = v1[280];
      (*(v1[296] + 96))(v92, v1[295]);
      (*(v94 + 32))(v93, v92, v95);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v96 = v1[263];
      v97 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v98._countAndFlagsBits = 0x20676E696E6E7552;
      v98._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v98);
      v1[135] = sub_100001D04(&qword_1000A62B0, &qword_100086A58);
      v1[132] = &type metadata for PushInfoRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 132), &qword_1000A5630, &unk_100083BF0);
      v99._object = 0x800000010008A980;
      v99._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v99);
      *(v1 + 68) = *v96;
      v1[139] = &type metadata for String;
      sub_100068984(v96, (v1 + 62));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 136), &qword_1000A5630, &unk_100083BF0);
      v100._countAndFlagsBits = 0;
      v100._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v100);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v97[3] = sub_100001D04(&qword_1000A5130, &unk_1000842C0);
      v97[4] = sub_100040238(&qword_1000A62B8, &qword_1000A5130, &unk_1000842C0, &protocol conformance descriptor for DaemonResponse<A>);
      v101 = sub_1000061A4(v97);
      v102 = swift_task_alloc();
      v1[333] = v102;
      *v102 = v1;
      v102[1] = sub_10007E52C;
      v103 = v1[282];
      v104 = v1[264];
      v105 = v1[263];

      return sub_10001AF24(v101, v103, v105, v104);
    }

    else if (v23 == enum case for JetPackAssetDaemonMessage.pushSubscription(_:))
    {
      v106 = v1[297];
      v107 = v1[279];
      v108 = v1[278];
      v109 = v1[277];
      (*(v1[296] + 96))(v106, v1[295]);
      (*(v108 + 32))(v107, v106, v109);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v110 = v1[263];
      v111 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v112._countAndFlagsBits = 0x20676E696E6E7552;
      v112._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v112);
      v1[131] = sub_100001D04(&qword_1000A62A8, &qword_100086A50);
      v1[128] = &type metadata for PushSubscriptionRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 128), &qword_1000A5630, &unk_100083BF0);
      v113._object = 0x800000010008A980;
      v113._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v113);
      *(v1 + 100) = *v110;
      v1[203] = &type metadata for String;
      sub_100068984(v110, (v1 + 68));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 200), &qword_1000A5630, &unk_100083BF0);
      v114._countAndFlagsBits = 0;
      v114._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v114);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v111[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
      v111[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30, &protocol conformance descriptor for DaemonResponse<A>);
      v115 = sub_1000061A4(v111);
      v116 = swift_task_alloc();
      v1[334] = v116;
      *v116 = v1;
      v116[1] = sub_10007E7F8;
      v117 = v1[279];
      v118 = v1[264];
      v119 = v1[263];

      return sub_1000126D4(v115, v117, v119, v118);
    }

    else if (v23 == enum case for JetPackAssetDaemonMessage.pushDelete(_:))
    {
      v120 = v1[297];
      v121 = v1[276];
      v122 = v1[275];
      v123 = v1[274];
      (*(v1[296] + 96))(v120, v1[295]);
      (*(v122 + 32))(v121, v120, v123);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v124 = v1[263];
      v125 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v126._countAndFlagsBits = 0x20676E696E6E7552;
      v126._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v126);
      v1[191] = sub_100001D04(&qword_1000A62A0, &qword_100086A48);
      v1[188] = &type metadata for PushDeleteSubscriptionRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 188), &qword_1000A5630, &unk_100083BF0);
      v127._object = 0x800000010008A980;
      v127._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v127);
      *(v1 + 80) = *v124;
      v1[163] = &type metadata for String;
      sub_100068984(v124, (v1 + 74));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 160), &qword_1000A5630, &unk_100083BF0);
      v128._countAndFlagsBits = 0;
      v128._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v128);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v125[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
      v125[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30, &protocol conformance descriptor for DaemonResponse<A>);
      v129 = sub_1000061A4(v125);
      v130 = swift_task_alloc();
      v1[335] = v130;
      *v130 = v1;
      v130[1] = sub_10007EAC4;
      v131 = v1[276];

      return sub_1000191FC(v129, v131);
    }

    else if (v23 == enum case for JetPackAssetDaemonMessage.pushReset(_:))
    {
      v132 = v1[297];
      v133 = v1[273];
      v134 = v1[272];
      v135 = v1[271];
      (*(v1[296] + 96))(v132, v1[295]);
      (*(v134 + 32))(v133, v132, v135);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v136 = v1[263];
      v137 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v138._countAndFlagsBits = 0x20676E696E6E7552;
      v138._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v138);
      v1[143] = sub_100001D04(&qword_1000A6298, &qword_100086A40);
      v1[140] = &type metadata for PushResetSubscriptionRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 140), &qword_1000A5630, &unk_100083BF0);
      v139._object = 0x800000010008A980;
      v139._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v139);
      *(v1 + 110) = *v136;
      v1[223] = &type metadata for String;
      sub_100068984(v136, (v1 + 2));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 220), &qword_1000A5630, &unk_100083BF0);
      v140._countAndFlagsBits = 0;
      v140._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v140);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v137[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
      v137[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30, &protocol conformance descriptor for DaemonResponse<A>);
      v141 = sub_1000061A4(v137);
      v142 = swift_task_alloc();
      v1[336] = v142;
      *v142 = v1;
      v142[1] = sub_10007ED90;
      v143 = v1[273];

      return sub_100040BE0(v141, v143);
    }

    else
    {
      if (v23 == enum case for JetPackAssetDaemonMessage.pushClear(_:))
      {
        (*(v1[296] + 8))(v1[297], v1[295]);
        if (qword_1000A4E00 != -1)
        {
          swift_once();
        }

        v144 = v1[263];
        v145 = v1[261];
        sub_100001CC0(qword_1000A6108, qword_1000A6120);
        v1[337] = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v146 = *(type metadata accessor for LogMessage() - 8);
        v1[338] = *(v146 + 72);
        *(v1 + 699) = *(v146 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v147._countAndFlagsBits = 0x20676E696E6E7552;
        v147._object = 0xE800000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v147);
        v1[187] = sub_100001D04(&qword_1000A6280, &qword_100086A28);
        v1[184] = &type metadata for PushClearSubscriptionsRequestHandler;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 184), &qword_1000A5630, &unk_100083BF0);
        v148._object = 0x800000010008A980;
        v148._countAndFlagsBits = 0xD000000000000014;
        LogMessage.StringInterpolation.appendLiteral(_:)(v148);
        *(v1 + 76) = *v144;
        v1[155] = &type metadata for String;
        sub_100068984(v144, (v1 + 56));
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 152), &qword_1000A5630, &unk_100083BF0);
        v149._countAndFlagsBits = 0;
        v149._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v149);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        v150 = sub_100001D04(&qword_1000A6288, &qword_100086A30);
        v1[339] = v150;
        v145[3] = v150;
        v145[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30, &protocol conformance descriptor for DaemonResponse<A>);
        v1[340] = sub_1000061A4(v145);
        v74 = type metadata accessor for AssetSQLiteDatabase();
        v151 = swift_task_alloc();
        v1[341] = v151;
        *v151 = v1;
        v151[1] = sub_10007F05C;
        v76 = v1 + 260;
        goto LABEL_38;
      }

      if (v23 == enum case for JetPackAssetDaemonMessage.cacheEvict(_:))
      {
        v152 = v1[297];
        v153 = v1[270];
        v154 = v1[269];
        v155 = v1[268];
        (*(v1[296] + 96))(v152, v1[295]);
        (*(v154 + 32))(v153, v152, v155);
        if (qword_1000A4E00 != -1)
        {
          swift_once();
        }

        v156 = v1[263];
        v157 = v1[261];
        sub_100001CC0(qword_1000A6108, qword_1000A6120);
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v158._countAndFlagsBits = 0x20676E696E6E7552;
        v158._object = 0xE800000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v158);
        v1[243] = sub_100001D04(&qword_1000A6270, &qword_100086A20);
        v1[240] = &type metadata for CacheEvictRequestHandler;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 240), &qword_1000A5630, &unk_100083BF0);
        v159._object = 0x800000010008A980;
        v159._countAndFlagsBits = 0xD000000000000014;
        LogMessage.StringInterpolation.appendLiteral(_:)(v159);
        *(v1 + 106) = *v156;
        v1[215] = &type metadata for String;
        sub_100068984(v156, (v1 + 38));
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 212), &qword_1000A5630, &unk_100083BF0);
        v160._countAndFlagsBits = 0;
        v160._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v160);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        v157[3] = sub_100001D04(&qword_1000A5898, &unk_100085708);
        v157[4] = sub_100040238(&qword_1000A6278, &qword_1000A5898, &unk_100085708, &protocol conformance descriptor for DaemonResponse<A>);
        v161 = sub_1000061A4(v157);
        v162 = swift_task_alloc();
        v1[346] = v162;
        *v162 = v1;
        v162[1] = sub_10007FBBC;
        v163 = v1[270];
        v164 = v1[264];
        v165 = v1[263];

        return sub_10004187C(v161, v163, v165, v164);
      }

      else
      {
        if (v23 != enum case for JetPackAssetDaemonMessage.get(_:))
        {
          v185 = v22;
          if (qword_1000A4E00 != -1)
          {
            swift_once();
          }

          v180 = v1[297];
          v181 = v1[296];
          v182 = v1[295];
          v183 = v1[261];
          sub_100001CC0(qword_1000A6108, qword_1000A6120);
          sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1000839C0;
          LogMessage.init(stringLiteral:)();
          Logger.error(_:)();

          v183[3] = sub_100001D04(&qword_1000A6248, &qword_1000869F0);
          v183[4] = sub_100040238(&qword_1000A6250, &qword_1000A6248, &qword_1000869F0, &protocol conformance descriptor for DaemonResponse<A>);
          sub_1000061A4(v183);
          DaemonResponse.init(reason:)();
          (*(v181 + 8))(v180, v182);
          goto LABEL_15;
        }

        v166 = v1[297];
        v167 = v1[267];
        v168 = v1[266];
        v169 = v1[265];
        (*(v1[296] + 96))(v166, v1[295]);
        (*(v168 + 32))(v167, v166, v169);
        if (qword_1000A4E00 != -1)
        {
          swift_once();
        }

        v170 = v1[263];
        v171 = v1[261];
        sub_100001CC0(qword_1000A6108, qword_1000A6120);
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v172._countAndFlagsBits = 0x20676E696E6E7552;
        v172._object = 0xE800000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v172);
        v1[171] = sub_100001D04(&qword_1000A6260, &qword_100086A18);
        v1[168] = &type metadata for GetAssetRequestHandler;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 168), &qword_1000A5630, &unk_100083BF0);
        v173._object = 0x800000010008A980;
        v173._countAndFlagsBits = 0xD000000000000014;
        LogMessage.StringInterpolation.appendLiteral(_:)(v173);
        *(v1 + 108) = *v170;
        v1[219] = &type metadata for String;
        sub_100068984(v170, (v1 + 20));
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 216), &qword_1000A5630, &unk_100083BF0);
        v174._countAndFlagsBits = 0;
        v174._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v174);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        v171[3] = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
        v171[4] = sub_100040238(&qword_1000A6268, &qword_1000A5AC8, &unk_1000861B8, &protocol conformance descriptor for DaemonResponse<A>);
        v175 = sub_1000061A4(v171);
        v176 = swift_task_alloc();
        v1[347] = v176;
        *v176 = v1;
        v176[1] = sub_10007FE88;
        v177 = v1[267];
        v178 = v1[264];
        v179 = v1[263];

        return sub_100061EC8(v175, v177, v179, v178);
      }
    }
  }
}

uint64_t sub_10007BC38()
{

  return _swift_task_switch(sub_10007BD34, 0, 0);
}

uint64_t sub_10007BD34()
{
  v1 = v0[306];
  (*(v0[289] + 8))(v0[290], v0[288]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10007BF04()
{

  return _swift_task_switch(sub_10007C000, 0, 0);
}

uint64_t sub_10007C000()
{
  v1 = v0[306];
  (*(v0[286] + 8))(v0[287], v0[285]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10007C1D0()
{
  *(*v1 + 2512) = v0;

  if (v0)
  {
    v2 = sub_10007C4B0;
  }

  else
  {
    v2 = sub_10007C2E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007C2E4()
{
  sub_100001CC0(v0 + 100, v0[103]);
  v1 = swift_task_alloc();
  v0[315] = v1;
  *v1 = v0;
  v1[1] = sub_10007C380;

  return sub_1000473EC();
}

uint64_t sub_10007C380(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 2528) = a1;
  *(v6 + 2536) = a2;
  *(v6 + 2544) = v3;

  if (v3)
  {
    v7 = sub_10007CADC;
  }

  else
  {
    *(v6 + 2800) = a3;
    v7 = sub_10007C86C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007C4B0()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 95, v0[98]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008AAA0;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[247];
  v3 = v0[248];
  v0[227] = v3;
  v4 = sub_1000061A4(v0 + 224);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 224), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 95);
  type metadata accessor for DaemonScheduleTaskResponse();
  sub_1000811A0(&qword_1000A62E8, &type metadata accessor for DaemonScheduleTaskResponse, &protocol conformance descriptor for DaemonScheduleTaskResponse);
  sub_1000811A0(&qword_1000A62F0, &type metadata accessor for DaemonScheduleTaskResponse, &protocol conformance descriptor for DaemonScheduleTaskResponse);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007C86C()
{
  if (*(v0 + 2800))
  {
    v1 = 1;
  }

  else
  {
    DaemonScheduleTime.init(scheduleAfter:scheduleBefore:)();
    v1 = 0;
  }

  v2 = *(v0 + 2272);
  v3 = *(v0 + 2264);
  v4 = type metadata accessor for DaemonScheduleTime();
  (*(*(v4 - 8) + 56))(v2, v1, 1, v4);
  sub_1000811E8(v2, v3);
  DaemonScheduleTaskResponse.init(schedule:)();
  sub_10000DCA0(v2, &qword_1000A6258, &qword_100086A10);
  swift_storeEnumTagMultiPayload();
  sub_100001D4C((v0 + 800));
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10007CADC()
{
  sub_100001D4C(v0 + 100);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 95, v0[98]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008AAA0;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[247];
  v3 = v0[248];
  v0[227] = v3;
  v4 = sub_1000061A4(v0 + 224);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 224), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 95);
  type metadata accessor for DaemonScheduleTaskResponse();
  sub_1000811A0(&qword_1000A62E8, &type metadata accessor for DaemonScheduleTaskResponse, &protocol conformance descriptor for DaemonScheduleTaskResponse);
  sub_1000811A0(&qword_1000A62F0, &type metadata accessor for DaemonScheduleTaskResponse, &protocol conformance descriptor for DaemonScheduleTaskResponse);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007CEA0()
{
  v2 = *v1;
  v2[323] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007D140, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[324] = v3;
    *v3 = v2;
    v3[1] = sub_10007D02C;
    v4 = v2[264];

    return sub_1000551DC(v4);
  }
}

uint64_t sub_10007D02C()
{
  *(*v1 + 2600) = v0;

  if (v0)
  {
    v2 = sub_10007D670;
  }

  else
  {
    v2 = sub_10007D49C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007D140()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 105, v0[108]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008AA40;
  v1._countAndFlagsBits = 0xD000000000000037;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[244];
  v3 = v0[245];
  v0[195] = v3;
  v4 = sub_1000061A4(v0 + 192);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 192), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 105);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007D49C()
{
  DaemonResponse.init<>(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10007D670()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 105, v0[108]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008AA40;
  v1._countAndFlagsBits = 0xD000000000000037;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[244];
  v3 = v0[245];
  v0[195] = v3;
  v4 = sub_1000061A4(v0 + 192);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 192), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 105);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007D9CC()
{
  *(*v1 + 2640) = v0;

  if (v0)
  {
    v2 = sub_10007DC90;
  }

  else
  {
    v2 = sub_10007DAE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007DAE0()
{
  sub_100001CC0(v0 + 115, v0[118]);
  v1 = swift_task_alloc();
  v0[331] = v1;
  *v1 = v0;
  v1[1] = sub_10007DB7C;

  return sub_10001760C();
}

uint64_t sub_10007DB7C()
{
  *(*v1 + 2656) = v0;

  if (v0)
  {
    v2 = sub_10007E1C8;
  }

  else
  {
    v2 = sub_10007DFEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007DC90()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 110, v0[113]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008A9F0;
  v1._countAndFlagsBits = 0xD00000000000002ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[250];
  v3 = v0[251];
  v0[167] = v3;
  v4 = sub_1000061A4(v0 + 164);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_10000DCA0((v0 + 164), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 110);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007DFEC()
{
  DaemonResponse.init<>(_:)();
  sub_100001D4C(v0 + 115);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10007E1C8()
{
  sub_100001D4C(v0 + 115);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 110, v0[113]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008A9F0;
  v1._countAndFlagsBits = 0xD00000000000002ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[250];
  v3 = v0[251];
  v0[167] = v3;
  v4 = sub_1000061A4(v0 + 164);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_10000DCA0((v0 + 164), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 110);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007E52C()
{

  return _swift_task_switch(sub_10007E628, 0, 0);
}

uint64_t sub_10007E628()
{
  v1 = v0[306];
  (*(v0[281] + 8))(v0[282], v0[280]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10007E7F8()
{

  return _swift_task_switch(sub_10007E8F4, 0, 0);
}

uint64_t sub_10007E8F4()
{
  v1 = v0[306];
  (*(v0[278] + 8))(v0[279], v0[277]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10007EAC4()
{

  return _swift_task_switch(sub_10007EBC0, 0, 0);
}

uint64_t sub_10007EBC0()
{
  v1 = v0[306];
  (*(v0[275] + 8))(v0[276], v0[274]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10007ED90()
{

  return _swift_task_switch(sub_10007EE8C, 0, 0);
}

uint64_t sub_10007EE8C()
{
  v1 = v0[306];
  (*(v0[272] + 8))(v0[273], v0[271]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10007F05C()
{
  *(*v1 + 2736) = v0;

  if (v0)
  {
    v2 = sub_10007F340;
  }

  else
  {
    v2 = sub_10007F170;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007F170()
{
  v0[343] = v0[260];
  v1 = swift_task_alloc();
  v0[344] = v1;
  *v1 = v0;
  v1[1] = sub_10007F22C;
  v2 = v0[340];
  v3 = v0[339];
  v4 = v0[264];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v2, &unk_100086A38, v4, v3);
}

uint64_t sub_10007F22C()
{
  *(*v1 + 2760) = v0;

  if (v0)
  {
    v2 = sub_10007F858;
  }

  else
  {
    v2 = sub_10007F69C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007F340()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 85, v0[88]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008A9A0;
  v1._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[253];
  v3 = v0[254];
  v0[159] = v3;
  v4 = sub_1000061A4(v0 + 156);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 156), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 85);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007F69C()
{

  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10007F858()
{

  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 85, v0[88]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010008A9A0;
  v1._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[253];
  v3 = v0[254];
  v0[159] = v3;
  v4 = sub_1000061A4(v0 + 156);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 156), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 85);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007FBBC()
{

  return _swift_task_switch(sub_10007FCB8, 0, 0);
}

uint64_t sub_10007FCB8()
{
  v1 = v0[306];
  (*(v0[269] + 8))(v0[270], v0[268]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10007FE88()
{

  return _swift_task_switch(sub_10007FF84, 0, 0);
}

uint64_t sub_10007FF84()
{
  v1 = v0[306];
  (*(v0[266] + 8))(v0[267], v0[265]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130, sub_10007786C);

  (*(v0[296] + 8))(v0[262], v0[295]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100080160()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_1000801C4()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v0 - 8, v1);
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010008A7C0;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  v5 = &type metadata for String;
  strcpy(v4, "jetpackassetd");
  v4[7] = -4864;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v4, &qword_1000A5630, &unk_100083BF0);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  LogMessage.init(stringInterpolation:)();
  Logger.warning(_:)();

  exit(0);
}

uint64_t sub_1000803B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000803E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100080420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100040348;

  return sub_100073EFC(a1, v4, v5, v6);
}

unint64_t sub_1000804E0()
{
  result = qword_1000A6200;
  if (!qword_1000A6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6200);
  }

  return result;
}

void sub_100080534()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1000A4DF8 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1000A6460 object:0];
}

uint64_t sub_100080644(const char *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v27 = a3;
  v28 = a1;
  v9 = type metadata accessor for OSSignpostError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a5 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for OSSignposter();
  sub_100018718(v19, a6);
  v20 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v21 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v10 + 88))(v13, v9) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(v10 + 8))(v13, v9);
        v23 = "";
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v21, v25, v28, v23, v24, 2u);

LABEL_15:

      return (*(v15 + 8))(v18, v14);
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10008091C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100040348;

  return sub_100076568(a1, v1);
}

uint64_t sub_1000809B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100040348;

  return sub_100077084(a1, v4);
}

unint64_t sub_100080A64()
{
  result = qword_1000A6208;
  if (!qword_1000A6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6208);
  }

  return result;
}

uint64_t sub_100080AB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100080AF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = v2;
}

unint64_t sub_100080B28()
{
  result = qword_1000A6238;
  if (!qword_1000A6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6238);
  }

  return result;
}

uint64_t sub_100080B7C(uint64_t *a1, int a2)
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

uint64_t sub_100080BC4(uint64_t result, int a2, int a3)
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

uint64_t sub_100080C10()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100080C98(void *a1)
{
  type metadata accessor for XPCReceivedMessage();
  sub_100001CC0(a1, a1[3]);
  return XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_100080D20()
{
  v1 = type metadata accessor for JetPackAssetDaemonMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100080E20()
{
  v1 = *(type metadata accessor for JetPackAssetDaemonMessage() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = (v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_100077F28(v4, v5, v0 + v2, (v0 + v3), v7, v8);
}

uint64_t sub_100080EC0()
{
  v1 = type metadata accessor for JetPackAssetDaemonMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 48, v3 | 7);
}

uint64_t sub_100080FB4(uint64_t a1)
{
  v3 = *(type metadata accessor for JetPackAssetDaemonMessage() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000DAF8;

  return sub_1000781F8(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_100081104(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DAF8;

  return sub_1000403C0(a1);
}

uint64_t sub_1000811A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000811E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A6258, &qword_100086A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

uint64_t Bag.subscript.getter()
{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}