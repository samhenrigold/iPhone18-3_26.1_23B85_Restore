uint64_t sub_10005A714()
{
  (*(v0 + 176))(*(v0 + 136), *(v0 + 112));

  v1 = *(v0 + 8);
  v2 = *(v0 + 217);

  return v1(v2);
}

uint64_t sub_10005A7C8()
{
  v0[24] = v0[21];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[6];
  v5 = *(v2 + 8);
  v0[25] = v5;
  v0[26] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return _swift_task_switch(sub_10005A858, v4, 0);
}

uint64_t sub_10005A858()
{
  (*(v0 + 200))(*(v0 + 136), *(v0 + 112));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10005A90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = *v3;
  v5 = type metadata accessor for ForwardDeletionRules();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10005AA8C, v3, 0);
}

uint64_t sub_10005AA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = v3;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = v3[6];
    v7 = v3[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v28);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v11, "updateForwardDeletionSchedule", "bundleId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v3[18];
  v13 = v3[15];
  v14 = v3[16];
  (*(v14 + 16))(v3[17], v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[19] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v15 = v3[12];
  v26 = v3[11];
  v27 = v3[13];
  v16 = v3[9];
  v25 = v3[8];
  v17 = v3[6];
  v18 = v3[7];
  v19 = type metadata accessor for OSLogger();
  sub_10002FD14(v19, qword_10016B5B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x800000010013AE80;
  v20._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  v3[5] = &type metadata for String;
  v3[2] = v17;
  v3[3] = v18;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 2), &qword_10016AB10, &unk_100130B10);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v22 = sub_100026F50((v16 + 112), *(v16 + 136));
  (*(v15 + 16))(v27, v25, v26);
  v23 = *v22;
  v3[20] = *v22;

  return _swift_task_switch(sub_10005AE6C, v23, 0);
}

uint64_t sub_10005AE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  *v6 = v3;
  v6[1] = sub_10005AF68;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005AF68(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 160);
  if (v1)
  {
    v6 = sub_10005B1A8;
  }

  else
  {
    v6 = sub_10005B09C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005B09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[20];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[22];
  v9 = v3[23];
  v10 = v3[13];
  *(v4 + 216) = v7;
  sub_10005B39C(v8, v10);

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;
      v3[24] = v9;
      v14 = v3[9];
      (*(v3[12] + 8))(v3[13], v3[11]);
      v15 = sub_10005B2E4;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v17 = v3[12];
  v16 = v3[13];
  v18 = v3[11];
  v14 = v3[9];
  *(v4 + 216) = v12;
  (*(v17 + 8))(v16, v18);
  v15 = sub_10005B22C;
LABEL_10:
  a1 = v15;
  a2 = v14;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10005B1A8()
{
  v0[24] = v0[23];
  v1 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return _swift_task_switch(sub_10005B2E4, v1, 0);
}

uint64_t sub_10005B22C()
{
  sub_100070154("updateForwardDeletionSchedule", 29, 2, *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005B2E4()
{
  sub_100070154("updateForwardDeletionSchedule", 29, 2, *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005B39C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for Setter();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v38 = *(v40 - 8);
  v5 = __chkstk_darwin(v40);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - v8;
  __chkstk_darwin(v7);
  v34 = &v31 - v10;
  v11 = type metadata accessor for Table();
  v39 = *(v11 - 8);
  __chkstk_darwin(v11);
  v37 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Update();
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin(v13);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A3E8 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v11, qword_1001733F0);
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v15._countAndFlagsBits = QueryType.name.getter();
  v16 = Connection.tableExists(_:)(v15);

  if (!v16)
  {
    if (qword_10016A3D8 == -1)
    {
LABEL_8:
      v17 = type metadata accessor for OSLogger();
      sub_10002FD14(v17, qword_10016B5B0);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();
    }

LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  if (ForwardDeletionRules.isEmpty.getter())
  {
    if (qword_10016A3D8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  ForwardDeletionRules.retentionInterval.getter();
  v46 = v19;
  if (qword_10016A410 != -1)
  {
    swift_once();
  }

  v32 = v3;
  v33 = a1;
  v20 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v31 = sub_10002FD14(v20, qword_100173468);
  static Expression<A>.< infix<A>(_:_:)();
  v46 = ForwardDeletionRules.bundleIds.getter();
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v21 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v21, qword_1001734B0);
  sub_100026F94(&qword_10016AB28, &qword_100131390);
  sub_10002B95C(&qword_10016ADC0, &qword_10016AB28, &qword_100131390, &protocol conformance descriptor for [A]);
  v22 = v35;
  Collection<>.contains(_:)();

  v23 = v34;
  static Expression<A>.&& infix(_:_:)();
  v24 = *(v38 + 8);
  v25 = v22;
  v26 = v40;
  v24(v25, v40);
  v24(v9, v26);
  v27 = v37;
  QueryType.where(_:)();
  v24(v23, v26);
  ForwardDeletionRules.retentionInterval.getter();
  v46 = v28;
  v29 = v43;
  <- infix<A>(_:_:)();
  v30 = v36;
  QueryType.update(_:_:)();
  (*(v44 + 8))(v29, v32);
  (*(v39 + 8))(v27, v11);
  Connection.run(_:)();
  return (*(v41 + 8))(v30, v42);
}

uint64_t sub_10005BB70(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = *v2;
  type metadata accessor for LogMessage.StringInterpolation();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005BC94, v2, 0);
}

uint64_t sub_10005BC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = v3;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = v3[6];
    v7 = v3[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v24);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v11, "unscheduleForwardDeletion", "bundleId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v3[14];
  v13 = v3[11];
  v14 = v3[12];
  (*(v14 + 16))(v3[13], v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[15] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v15 = v3[7];
  v16 = v3[8];
  v17 = v3[6];
  v18 = type metadata accessor for OSLogger();
  sub_10002FD14(v18, qword_10016B5B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x800000010013AB40;
  v19._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v3[5] = &type metadata for String;
  v3[2] = v17;
  v3[3] = v15;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 2), &qword_10016AB10, &unk_100130B10);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v21 = sub_100026F50((v16 + 112), *(v16 + 136));
  v22 = *v21;
  v3[16] = *v21;

  return _swift_task_switch(sub_10005C05C, v22, 0);
}

uint64_t sub_10005C05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  *v6 = v3;
  v6[1] = sub_10005C158;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005C158(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_10005C378;
  }

  else
  {
    v6 = sub_10005C28C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005C28C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[16];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[18];
  v9 = v3[19];
  v10 = v3[6];
  v11 = v3[7];
  *(v4 + 216) = v7;
  sub_10005C538(v8, v10, v11);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;

      v3[20] = v9;
      a2 = v3[8];
      a1 = sub_10005C490;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v15 = v3[8];
  *(v4 + 216) = v13;

  a1 = sub_10005C3E8;
  a2 = v15;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10005C378()
{

  v0[20] = v0[19];
  v1 = v0[8];

  return _swift_task_switch(sub_10005C490, v1, 0);
}

uint64_t sub_10005C3E8()
{
  sub_100070154("unscheduleForwardDeletion", 25, 2, *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C490()
{
  sub_100070154("unscheduleForwardDeletion", 25, 2, *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v34 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v32[1] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = v32 - v6;
  v8 = type metadata accessor for Delete();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Table();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v32 - v16;
  if (qword_10016A3E8 != -1)
  {
    swift_once();
  }

  v18 = sub_10002FD14(v11, qword_1001733F0);
  (*(v12 + 16))(v17, v18, v11);
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v40 = v17;
  v19._countAndFlagsBits = QueryType.name.getter();
  v39 = a1;
  v20 = Connection.tableExists(_:)(v19);

  if (v20)
  {
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v21 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    sub_10002FD14(v21, qword_1001734B0);
    v41[0] = v34;
    v41[1] = v36;
    static Expression<A>.== infix<A>(_:_:)();
    v22 = v40;
    QueryType.where(_:)();
    (*(v33 + 8))(v7, v35);
    QueryType.delete()();
    v23 = *(v12 + 8);
    v23(v15, v11);
    v24 = v42;
    v25 = Connection.run(_:)();
    if (v24)
    {
      (*(v37 + 8))(v10, v38);
      return (v23)(v22, v11);
    }

    else
    {
      v28 = v25;
      v42 = 0;
      (*(v37 + 8))(v10, v38);
      if (qword_10016A3D8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for OSLogger();
      sub_10002FD14(v29, qword_10016B5B0);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v30._countAndFlagsBits = 0x20646574656C6544;
      v30._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v41[3] = &type metadata for Int;
      v41[0] = v28;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v41, &qword_10016AB10, &unk_100130B10);
      v31._object = 0x800000010013AB90;
      v31._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      return (v23)(v40, v11);
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for OSLogger();
    sub_10002FD14(v27, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    return (*(v12 + 8))(v40, v11);
  }
}

uint64_t sub_10005CC18()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10005CD0C, v0, 0);
}

uint64_t sub_10005CD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "expiredForwardDeletionRulesBundleIds", "", v7, 2u);
  }

  v9 = v3[12];
  v10 = v3[13];
  v11 = v3[10];
  v12 = v3[11];
  v13 = v3[8];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[14] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = sub_100026F50((v13 + 112), *(v13 + 136));
  sub_100026EEC(v13 + 152, (v3 + 2));
  v15 = *v14;
  v3[15] = *v14;

  return _swift_task_switch(sub_10005CEE0, v15, 0);
}

uint64_t sub_10005CEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  *v6 = v3;
  v6[1] = sub_10005CFDC;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005CFDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v5 = *(v3 + 120);
  if (v1)
  {
    v6 = sub_10005D208;
  }

  else
  {
    v6 = sub_10005D110;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005D110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[17];
  v9 = v3[18];
  v10 = v3[9];
  *(v4 + 216) = v7;
  sub_10005D3B8(v8, v10, v3 + 7);

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;
      v3[20] = v9;
      v14 = v3[8];
      sub_100026FDC(v3 + 2);
      v15 = sub_10005D31C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v14 = v3[8];
  *(v4 + 216) = v12;
  v3[19] = v3[7];
  sub_100026FDC(v3 + 2);
  v15 = sub_10005D27C;
LABEL_10:
  a1 = v15;
  a2 = v14;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10005D208()
{
  v0[20] = v0[18];
  v1 = v0[8];
  sub_100026FDC(v0 + 2);

  return _swift_task_switch(sub_10005D31C, v1, 0);
}

uint64_t sub_10005D27C()
{
  sub_100070154("expiredForwardDeletionRulesBundleIds", 36, 2, v0[14]);

  v1 = v0[1];
  v2 = v0[19];

  return v1(v2);
}

uint64_t sub_10005D31C()
{
  sub_100070154("expiredForwardDeletionRulesBundleIds", 36, 2, *(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005D3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v53 = a3;
  v5 = type metadata accessor for Date();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v48 = *(v7 - 8);
  __chkstk_darwin(v7);
  v45 = &v41 - v8;
  v49 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Table();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  if (qword_10016A3E8 != -1)
  {
    swift_once();
  }

  v18 = sub_10002FD14(v11, qword_1001733F0);
  v54 = v12;
  (*(v12 + 16))(v17, v18, v11);
  v19 = sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v55 = v17;
  v20._countAndFlagsBits = QueryType.name.getter();
  v52 = a1;
  v21 = Connection.tableExists(_:)(v20);

  if (v21)
  {
    v43 = v3;
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v22 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v23 = sub_10002FD14(v22, qword_1001734B0);
    v56[3] = v22;
    v56[4] = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
    v24 = sub_100042BAC(v56);
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    sub_10006F960(&qword_10016AD68, &protocol conformance descriptor for Table);
    v42 = v15;
    SchemaType.select(_:_:)();
    sub_100026FDC(v56);
    if (qword_10016A418 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v7, qword_100173480);
    v25 = v54;
    if (qword_10016A410 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v7, qword_100173468);
    v26 = v45;
    static Expression<A>.+ infix<A>(_:_:)();
    v27 = v46;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v29 = v28;
    (*(v50 + 8))(v27, v51);
    v56[0] = v29;
    static Expression<A>.<= infix<A>(_:_:)();
    (*(v48 + 8))(v26, v7);
    v57[3] = v11;
    v57[4] = v19;
    sub_100042BAC(v57);
    v30 = v42;
    QueryType.where(_:)();
    (*(v47 + 8))(v10, v49);
    v31 = *(v25 + 8);
    v31(v30, v11);
    v32 = v43;
    Connection.prepare(_:)();
    if (v32)
    {
      v31(v55, v11);
      return sub_100026FDC(v57);
    }

    else
    {
      v35 = sub_100026FDC(v57);
      v36 = __chkstk_darwin(v35);
      *(&v41 - 2) = v44;
      __chkstk_darwin(v36);
      *(&v41 - 2) = sub_1000700D0;
      *(&v41 - 1) = v37;
      v38 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v39 = v55;
      v40 = v38;

      result = (v31)(v39, v11);
      *v53 = v40;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for OSLogger();
    sub_10002FD14(v34, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    result = (*(v54 + 8))(v55, v11);
    *v53 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10005DC4C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v5 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v5, qword_1001734B0);
  result = Row.get<A>(_:)();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_10005DCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[41] = a7;
  v8[42] = v7;
  v8[39] = a5;
  v8[40] = a6;
  v8[37] = a3;
  v8[38] = a4;
  v8[35] = a1;
  v8[36] = a2;
  v9 = type metadata accessor for OnConflict();
  v8[43] = v9;
  v8[44] = *(v9 - 8);
  v8[45] = swift_task_alloc();
  v10 = type metadata accessor for Insert();
  v8[46] = v10;
  v8[47] = *(v10 - 8);
  v8[48] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v8[49] = swift_task_alloc();
  v11 = type metadata accessor for OSSignpostID();
  v8[50] = v11;
  v8[51] = *(v11 - 8);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();

  return _swift_task_switch(sub_10005DEB4, v7, 0);
}

uint64_t sub_10005DEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = v3;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = *(v3 + 280);
    v7 = *(v3 + 288);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v26);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v11, "registerDataOwnership", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = *(v3 + 424);
  v13 = *(v3 + 400);
  v14 = *(v3 + 408);
  (*(v14 + 16))(*(v3 + 416), v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 432) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v15 = *(v3 + 336);
  v16 = *(v3 + 296);
  v17 = type metadata accessor for OSLogger();
  *(v3 + 440) = v17;
  *(v3 + 448) = sub_10002FD14(v17, qword_10016B5B0);
  *(v3 + 456) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v18 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 464) = *(v18 + 72);
  *(v3 + 512) = *(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x800000010013AF60;
  v19._countAndFlagsBits = 0xD00000000000001FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v21 = *v16;
  v20 = v16[1];
  *(v3 + 128) = &type metadata for String;
  *(v3 + 104) = v21;
  *(v3 + 112) = v20;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 104, &qword_10016AB10, &unk_100130B10);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v23 = sub_100026F50((v15 + 112), *(v15 + 136));
  sub_10004F224(v16, v3 + 16);
  v24 = *v23;
  *(v3 + 472) = v24;

  return _swift_task_switch(sub_10005E2BC, v24, 0);
}

uint64_t sub_10005E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 480) = v6;
  *v6 = v3;
  v6[1] = sub_10005E3B8;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005E3B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v5 = *(v3 + 472);
  if (v1)
  {
    v6 = sub_10005EC94;
  }

  else
  {
    v6 = sub_10005E4EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005E4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[59];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 216) = v7;
    if (qword_10016A3F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v8 = v3[62];
  v9 = type metadata accessor for Table();
  sub_10002FD14(v9, qword_100173408);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v8)
  {

    v25 = *(v4 + 216);
    v6 = __OFSUB__(v25, 1);
    v26 = v25 - 1;
    if (!v6)
    {
      *(v4 + 216) = v26;

      v3[63] = v8;
      v27 = v3[42];
      sub_100042AFC((v3 + 2));

      v28 = sub_10005ED2C;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_25;
  }

  v10 = v3[44];
  v11 = v3[45];
  v12 = v3[43];

  (*(v10 + 104))(v11, enum case for OnConflict.ignore(_:), v12);
  sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_100131210;
  if (qword_10016A420 != -1)
  {
LABEL_25:
    swift_once();
  }

  v14 = v3[35];
  v13 = v3[36];
  v15 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v15, qword_100173498);
  v3[25] = v14;
  v3[26] = v13;
  <- infix<A>(_:_:)();
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v15, qword_1001734B0);
  v16 = v3[3];
  v39 = v3[2];
  v3[27] = v39;
  v3[28] = v16;

  <- infix<A>(_:_:)();
  v40 = v16;

  if (qword_10016A448 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v15, qword_100173510);
  v17 = v3[5];
  v3[29] = v3[4];
  v3[30] = v17;

  <- infix<A>(_:_:)();

  if (qword_10016A438 != -1)
  {
    swift_once();
  }

  v41 = v4;
  v19 = v3[38];
  v18 = v3[39];
  sub_10002FD14(v15, qword_1001734E0);
  v3[31] = v19;
  v3[32] = v18;
  <- infix<A>(_:_:)();
  if (qword_10016A440 != -1)
  {
    swift_once();
  }

  v20 = v3[44];
  v21 = v3[45];
  v22 = v3[43];
  v24 = v3[40];
  v23 = v3[41];
  sub_10002FD14(v15, qword_1001734F8);
  v3[33] = v24;
  v3[34] = v23;
  <- infix<A>(_:_:)();
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  QueryType.insert(or:_:)();

  (*(v20 + 8))(v21, v22);
  v29 = Connection.run(_:)();
  (*(v3[47] + 8))(v3[48], v3[46]);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._object = 0x800000010013AF80;
  v30._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  v3[20] = &type metadata for String;
  v3[17] = v39;
  v3[18] = v40;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 17), &qword_10016AB10, &unk_100130B10);
  v31._countAndFlagsBits = 0x746C75736572202CLL;
  v31._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  v3[24] = &type metadata for Int64;
  v3[21] = v29;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 21), &qword_10016AB10, &unk_100130B10);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v36 = *(v41 + 216);
  v6 = __OFSUB__(v36, 1);
  v37 = v36 - 1;
  if (v6)
  {
    __break(1u);
    return _swift_task_switch(v33, v34, v35);
  }

  v27 = v3[42];
  *(v41 + 216) = v37;

  sub_100042AFC((v3 + 2));

  v28 = sub_10005EBD0;
LABEL_17:
  v33 = v28;
  v34 = v27;
  v35 = 0;

  return _swift_task_switch(v33, v34, v35);
}

uint64_t sub_10005EBD0()
{
  sub_100070154("registerDataOwnership", 21, 2, *(v0 + 432));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005EC94()
{

  v0[63] = v0[62];
  v1 = v0[42];
  sub_100042AFC((v0 + 2));

  return _swift_task_switch(sub_10005ED2C, v1, 0);
}

uint64_t sub_10005ED2C()
{
  sub_100070154("registerDataOwnership", 21, 2, *(v0 + 432));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[41] = a7;
  v8[42] = v7;
  v8[39] = a5;
  v8[40] = a6;
  v8[37] = a3;
  v8[38] = a4;
  v8[35] = a1;
  v8[36] = a2;
  v9 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v8[43] = v9;
  v8[44] = *(v9 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v8[51] = v10;
  v8[52] = *(v10 - 8);
  v8[53] = swift_task_alloc();
  v11 = type metadata accessor for Delete();
  v8[54] = v11;
  v8[55] = *(v11 - 8);
  v8[56] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v8[57] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v8[58] = v12;
  v8[59] = *(v12 - 8);
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();

  return _swift_task_switch(sub_10005F050, v7, 0);
}

uint64_t sub_10005F050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = v3;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = *(v3 + 280);
    v7 = *(v3 + 288);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v26);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v11, "deregisterDataOwnership", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = *(v3 + 488);
  v13 = *(v3 + 464);
  v14 = *(v3 + 472);
  (*(v14 + 16))(*(v3 + 480), v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 496) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v15 = *(v3 + 336);
  v16 = *(v3 + 288);
  v25 = *(v3 + 296);
  v17 = *(v3 + 280);
  v18 = type metadata accessor for OSLogger();
  *(v3 + 504) = v18;
  *(v3 + 512) = sub_10002FD14(v18, qword_10016B5B0);
  *(v3 + 520) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 528) = *(v19 + 72);
  *(v3 + 576) = *(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x800000010013AA80;
  v20._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v3 + 128) = &type metadata for String;
  *(v3 + 104) = v17;
  *(v3 + 112) = v16;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 104, &qword_10016AB10, &unk_100130B10);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v22 = sub_100026F50((v15 + 112), *(v15 + 136));
  sub_10004F224(v25, v3 + 16);
  v23 = *v22;
  *(v3 + 536) = v23;

  return _swift_task_switch(sub_10005F460, v23, 0);
}

uint64_t sub_10005F460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 544) = v6;
  *v6 = v3;
  v6[1] = sub_10005F55C;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005F55C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 552) = a1;
  *(v4 + 560) = v1;

  v5 = *(v3 + 536);
  if (v1)
  {
    v6 = sub_10005FFAC;
  }

  else
  {
    v6 = sub_10005F694;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005F694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[67];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(v4 + 216) = v7;
  if (qword_10016A3F0 != -1)
  {
LABEL_24:
    swift_once();
  }

  sub_10002FD14(v3[51], qword_100173408);
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v8._countAndFlagsBits = QueryType.name.getter();
  v9 = Connection.tableExists(_:)(v8);

  if (!v9)
  {
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();
    goto LABEL_18;
  }

  if (qword_10016A420 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v61 = v4;
    v11 = v3[35];
    v10 = v3[36];
    v12 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    sub_10002FD14(v12, qword_100173498);
    v3[25] = v11;
    v3[26] = v10;
    static Expression<A>.== infix<A>(_:_:)();
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v13 = v3[46];
    v14 = v3[44];
    v15 = v3[45];
    v16 = v3[43];
    sub_10002FD14(v12, qword_1001734B0);
    v17 = v12;
    v18 = v3[3];
    v56 = v3[2];
    v3[27] = v56;
    v3[28] = v18;

    static Expression<A>.== infix<A>(_:_:)();
    v57 = v18;

    static Expression<A>.&& infix(_:_:)();
    v19 = *(v14 + 8);
    v19(v15, v16);
    v19(v13, v16);
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    v20 = v3[47];
    v21 = v3[46];
    v22 = v3[43];
    sub_10002FD14(v17, qword_100173510);
    v23 = v17;
    v24 = v3[5];
    v3[29] = v3[4];
    v3[30] = v24;

    static Expression<A>.== infix<A>(_:_:)();

    static Expression<A>.&& infix(_:_:)();
    v19(v21, v22);
    v19(v20, v22);
    v25 = v19;
    v26 = v23;
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    v27 = v3[48];
    v28 = v3[47];
    v29 = v3[43];
    v31 = v3[40];
    v30 = v3[41];
    sub_10002FD14(v26, qword_1001734F8);
    v3[31] = v31;
    v3[32] = v30;
    static Expression<A>.== infix<A>(_:_:)();
    static Expression<A>.&& infix(_:_:)();
    v25(v28, v29);
    v25(v27, v29);
    v59 = v25;
    v32 = v26;
    if (qword_10016A438 != -1)
    {
      swift_once();
      v32 = v26;
    }

    v60 = v3[70];
    v33 = v3[53];
    v58 = v3[52];
    v34 = v3[50];
    v35 = v3[51];
    v36 = v3[48];
    v37 = v3[49];
    v38 = v3[43];
    v40 = v3[38];
    v39 = v3[39];
    sub_10002FD14(v32, qword_1001734E0);
    v3[33] = v40;
    v3[34] = v39;
    static Expression<A>.== infix<A>(_:_:)();
    static Expression<A>.&& infix(_:_:)();
    v59(v36, v38);
    v59(v37, v38);
    QueryType.where(_:)();
    v59(v34, v38);
    QueryType.delete()();
    (*(v58 + 8))(v33, v35);
    v41 = Connection.run(_:)();
    if (v60)
    {
      break;
    }

    v49 = v41;
    (*(v3[55] + 8))(v3[56], v3[54]);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v50._countAndFlagsBits = 0x20646574656C6544;
    v50._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v50);
    v3[20] = &type metadata for Int;
    v3[17] = v49;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v3 + 17), &qword_10016AB10, &unk_100130B10);
    v51._countAndFlagsBits = 0x73656972746E6520;
    v51._object = 0xED000020726F6620;
    LogMessage.StringInterpolation.appendLiteral(_:)(v51);
    v3[24] = &type metadata for String;
    v3[21] = v56;
    v3[22] = v57;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v3 + 21), &qword_10016AB10, &unk_100130B10);
    v52._object = 0x800000010013AAE0;
    v52._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v52);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
    v4 = v61;
LABEL_18:

    v53 = *(v4 + 216);
    v6 = __OFSUB__(v53, 1);
    v54 = v53 - 1;
    if (!v6)
    {
      v47 = v3[42];
      *(v4 + 216) = v54;

      sub_100042AFC((v3 + 2));

      v48 = sub_10005FE94;
      goto LABEL_20;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  (*(v3[55] + 8))(v3[56], v3[54]);

  v45 = *(v61 + 216);
  v6 = __OFSUB__(v45, 1);
  v46 = v45 - 1;
  if (v6)
  {
    __break(1u);
    return _swift_task_switch(v42, v43, v44);
  }

  *(v61 + 216) = v46;

  v3[71] = v60;
  v47 = v3[42];
  sub_100042AFC((v3 + 2));

  v48 = sub_100060044;
LABEL_20:
  v42 = v48;
  v43 = v47;
  v44 = 0;

  return _swift_task_switch(v42, v43, v44);
}

uint64_t sub_10005FE94()
{
  sub_100070154("deregisterDataOwnership", 23, 2, *(v0 + 496));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005FFAC()
{

  v0[71] = v0[70];
  v1 = v0[42];
  sub_100042AFC((v0 + 2));

  return _swift_task_switch(sub_100060044, v1, 0);
}

uint64_t sub_100060044()
{
  sub_100070154("deregisterDataOwnership", 23, 2, *(v0 + 496));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006015C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100060298, v2, 0);
}

uint64_t sub_100060298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = v3;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = v3[5];
    v7 = v3[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v25);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v11, "dataOwnedByBundleId", "bundleId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v3[14];
  v13 = v3[11];
  v14 = v3[12];
  (*(v14 + 16))(v3[13], v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[15] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v15 = v3[9];
  v16 = v3[10];
  v18 = v3[6];
  v17 = v3[7];
  v19 = v3[5];
  v20 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v20, qword_1001734B0);
  v3[2] = v19;
  v3[3] = v18;
  static Expression<A>.== infix<A>(_:_:)();
  v21 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  v22 = sub_100026F50((v17 + 112), *(v17 + 136));
  sub_10002BA04(v16, v15, &qword_10016ADF8, &unk_1001312B0);
  v23 = *v22;
  v3[16] = *v22;

  return _swift_task_switch(sub_1000605B8, v23, 0);
}

uint64_t sub_1000605B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  *v6 = v3;
  v6[1] = sub_1000606B4;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000606B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_1000608FC;
  }

  else
  {
    v6 = sub_1000607E8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000607E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[16];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[18];
  v9 = v3[19];
  v11 = v3[8];
  v10 = v3[9];
  *(v4 + 216) = v7;
  sub_10006AAD8(v8, v10, v11, v3 + 4);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      v3[21] = v9;
      v15 = v3[7];
      sub_10002BA6C(v3[9], &qword_10016ADF8, &unk_1001312B0);
      v16 = sub_100060A54;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v17 = v3[9];
  v15 = v3[7];
  *(v4 + 216) = v13;
  v3[20] = v3[4];
  sub_10002BA6C(v17, &qword_10016ADF8, &unk_1001312B0);
  v16 = sub_100060980;
LABEL_10:
  a1 = v16;
  a2 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000608FC()
{
  v0[21] = v0[19];
  v1 = v0[7];
  sub_10002BA6C(v0[9], &qword_10016ADF8, &unk_1001312B0);

  return _swift_task_switch(sub_100060A54, v1, 0);
}

uint64_t sub_100060980()
{
  v1 = v0[15];
  sub_10002BA6C(v0[10], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("dataOwnedByBundleId", 19, 2, v1);

  v2 = v0[1];
  v3 = v0[20];

  return v2(v3);
}

uint64_t sub_100060A54()
{
  v1 = v0[15];
  sub_10002BA6C(v0[10], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("dataOwnedByBundleId", 19, 2, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100060B24(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100060C60, v2, 0);
}

uint64_t sub_100060C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = v3;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = v3[5];
    v7 = v3[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v25);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v11, "dataOwnedByRequestId", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v3[14];
  v13 = v3[11];
  v14 = v3[12];
  (*(v14 + 16))(v3[13], v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[15] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v15 = v3[9];
  v16 = v3[10];
  v18 = v3[6];
  v17 = v3[7];
  v19 = v3[5];
  v20 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v20, qword_100173498);
  v3[2] = v19;
  v3[3] = v18;
  static Expression<A>.== infix<A>(_:_:)();
  v21 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  v22 = sub_100026F50((v17 + 112), *(v17 + 136));
  sub_10002BA04(v16, v15, &qword_10016ADF8, &unk_1001312B0);
  v23 = *v22;
  v3[16] = *v22;

  return _swift_task_switch(sub_100060F80, v23, 0);
}

uint64_t sub_100060F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  *v6 = v3;
  v6[1] = sub_10006107C;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10006107C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_1000612C4;
  }

  else
  {
    v6 = sub_1000611B0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000611B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[16];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[18];
  v9 = v3[19];
  v11 = v3[8];
  v10 = v3[9];
  *(v4 + 216) = v7;
  sub_10006AAD8(v8, v10, v11, v3 + 4);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      v3[21] = v9;
      v15 = v3[7];
      sub_10002BA6C(v3[9], &qword_10016ADF8, &unk_1001312B0);
      v16 = sub_10006141C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v17 = v3[9];
  v15 = v3[7];
  *(v4 + 216) = v13;
  v3[20] = v3[4];
  sub_10002BA6C(v17, &qword_10016ADF8, &unk_1001312B0);
  v16 = sub_100061348;
LABEL_10:
  a1 = v16;
  a2 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000612C4()
{
  v0[21] = v0[19];
  v1 = v0[7];
  sub_10002BA6C(v0[9], &qword_10016ADF8, &unk_1001312B0);

  return _swift_task_switch(sub_10006141C, v1, 0);
}

uint64_t sub_100061348()
{
  v1 = v0[15];
  sub_10002BA6C(v0[10], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("dataOwnedByRequestId", 20, 2, v1);

  v2 = v0[1];
  v3 = v0[20];

  return v2(v3);
}

uint64_t sub_10006141C()
{
  v1 = v0[15];
  sub_10002BA6C(v0[10], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("dataOwnedByRequestId", 20, 2, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000614EC()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for OSSignpostID();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100061624, v0, 0);
}

uint64_t sub_100061624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "fullDataOwnershipIndex", "", v7, 2u);
  }

  v9 = v3[9];
  v10 = v3[10];
  v11 = v3[7];
  v12 = v3[8];
  v14 = v3[5];
  v13 = v3[6];
  v15 = v3[3];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[11] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v16 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = sub_100026F50((v15 + 112), *(v15 + 136));
  sub_10002BA04(v13, v14, &qword_10016ADF8, &unk_1001312B0);
  v18 = *v17;
  v3[12] = *v17;

  return _swift_task_switch(sub_100061860, v18, 0);
}

uint64_t sub_100061860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  *v6 = v3;
  v6[1] = sub_10006195C;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10006195C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {
    v6 = sub_100061BA8;
  }

  else
  {
    v6 = sub_100061A90;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100061A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[12];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[14];
  v9 = v3[15];
  v11 = v3[4];
  v10 = v3[5];
  *(v4 + 216) = v7;
  sub_10006AAD8(v8, v10, v11, v3 + 2);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      v3[17] = v9;
      v15 = v3[3];
      sub_10002BA6C(v3[5], &qword_10016ADF8, &unk_1001312B0);
      v16 = sub_100061D00;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v17 = v3[5];
  v15 = v3[3];
  *(v4 + 216) = v13;
  v3[16] = v3[2];
  sub_10002BA6C(v17, &qword_10016ADF8, &unk_1001312B0);
  v16 = sub_100061C2C;
LABEL_10:
  a1 = v16;
  a2 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100061BA8()
{
  v0[17] = v0[15];
  v1 = v0[3];
  sub_10002BA6C(v0[5], &qword_10016ADF8, &unk_1001312B0);

  return _swift_task_switch(sub_100061D00, v1, 0);
}

uint64_t sub_100061C2C()
{
  v1 = v0[11];
  sub_10002BA6C(v0[6], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("fullDataOwnershipIndex", 22, 2, v1);

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

uint64_t sub_100061D00()
{
  v1 = v0[11];
  sub_10002BA6C(v0[6], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("fullDataOwnershipIndex", 22, 2, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100061DD0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  *(v2 + 24) = *v1;
  v3 = type metadata accessor for OSSignpostID();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100061EC8, v1, 0);
}

uint64_t sub_100061EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "updateStatistics", "", v7, 2u);
  }

  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[2];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[8] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = sub_100026F50((v13 + 112), *(v13 + 136));
  v15 = *v14;
  v3[9] = *v14;

  return _swift_task_switch(sub_10006208C, v15, 0);
}

uint64_t sub_10006208C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  *v6 = v3;
  v6[1] = sub_100062188;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100062188(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v3[13] = v1;
    v4 = v3[2];
    v5 = sub_100062428;
  }

  else
  {
    v4 = v3[9];
    v5 = sub_1000622B0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000622B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v3 + 88);
  v9 = *(v3 + 96);
  v10 = *(v3 + 112);
  *(v4 + 216) = v7;
  sub_1000624C4(v8, v10);

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;
      *(v3 + 104) = v9;
      a2 = *(v3 + 16);
      v14 = sub_100062428;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  a2 = *(v3 + 16);
  *(v4 + 216) = v12;
  v14 = sub_10006238C;
LABEL_10:
  a1 = v14;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10006238C()
{
  sub_100070154("updateStatistics", 16, 2, *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100062428()
{
  sub_100070154("updateStatistics", 16, 2, *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000624C4(uint64_t a1, int a2)
{
  v74 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  v69 = *(v76 - 8);
  __chkstk_darwin(v76);
  v65 = &v57 - v6;
  v62 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v57 - v7;
  v8 = type metadata accessor for Update();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Setter();
  v77 = *(v75 - 8);
  v10 = __chkstk_darwin(v75);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v57 - v12;
  v13 = type metadata accessor for Insert();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v64 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  v78 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  v18 = sub_100026F94(&qword_10016B738, &unk_1001313D0);
  v79 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = type metadata accessor for Table();
  v83 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v72 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v81 = &v57 - v24;
  v87 = sub_100026F94(&qword_10016AE38, &unk_1001333A0);
  v80 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = &v57 - v25;
  if (qword_10016A3F8 != -1)
  {
    swift_once();
  }

  v26 = sub_10002FD14(v21, qword_100173420);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v2)
  {
  }

  v58 = v21;

  sub_10006F094(a1);
  v57 = 0;
  static Connection.ServiceColumns.rowId.getter();
  v28 = v81;
  v29 = v58;
  (*(v83 + 16))(v81, v26, v58);
  sub_10002B95C(&qword_10016B740, &qword_10016AE38, &unk_1001333A0, &protocol conformance descriptor for Expression<A>);
  ExpressionType<>.min.getter();
  sub_10006F960(&qword_10016AD68, &protocol conformance descriptor for Table);
  SchemaType.select<A>(_:)();
  (*(v78 + 8))(v17, v15);
  v30 = v57;
  Connection.scalar<A>(_:)();
  if (v30)
  {
    (*(v79 + 8))(v20, v18);
    (*(v83 + 8))(v28, v29);
    return (*(v80 + 8))(v82, v87);
  }

  v31 = v29;
  v78 = a1;
  (*(v79 + 8))(v20, v18);
  if (v85 == 1)
  {
    v32 = v83;
    v33 = v76;
    v34 = v74;
    if (qword_10016A450 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v33, qword_100173528);
    v84 = v34 == 0;
    v85 = 0;
    <- infix<A>(_:_:)();
    sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
    *(swift_allocObject() + 16) = xmmword_100131210;
    if (qword_10016A458 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v33, qword_100173540);
    v84 = v34 == 1;
    v85 = 0;
    <- infix<A>(_:_:)();
    if (qword_10016A460 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v33, qword_100173558);
    v84 = v34 == 2;
    v85 = 0;
    <- infix<A>(_:_:)();
    if (qword_10016A468 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v33, qword_100173570);
    v84 = v34 == 3;
    v85 = 0;
    <- infix<A>(_:_:)();
    if (qword_10016A470 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v33, qword_100173588);
    v84 = v34 == 4;
    v85 = 0;
    <- infix<A>(_:_:)();
    if (qword_10016A478 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v33, qword_1001735A0);
    v84 = v34 == 5;
    v85 = 0;
    <- infix<A>(_:_:)();
    sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
    v35 = v64;
    v36 = v73;
    QueryType.insert(_:_:)();

    (*(v77 + 8))(v36, v75);
    v43 = Connection.run(_:)();
    (*(v67 + 8))(v35, v68);
    v44 = v82;
    goto LABEL_47;
  }

  v57 = 0;
  v37 = v60;
  v44 = v82;
  static Expression<A>.== infix<A>(_:_:)();
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v38 = v31;
  v39 = v81;
  QueryType.filter(_:)();
  (*(v61 + 8))(v37, v62);
  v40 = v76;
  if (v74 > 2u)
  {
    v41 = v66;
    if (v74 == 3)
    {
      if (qword_10016A468 != -1)
      {
        swift_once();
      }

      v42 = qword_100173570;
    }

    else if (v74 == 4)
    {
      if (qword_10016A470 != -1)
      {
        swift_once();
      }

      v42 = qword_100173588;
    }

    else
    {
      if (qword_10016A478 != -1)
      {
        swift_once();
      }

      v42 = qword_1001735A0;
    }
  }

  else
  {
    v41 = v66;
    if (v74)
    {
      if (v74 == 1)
      {
        if (qword_10016A458 != -1)
        {
          swift_once();
        }

        v42 = qword_100173540;
      }

      else
      {
        if (qword_10016A460 != -1)
        {
          swift_once();
        }

        v42 = qword_100173558;
      }
    }

    else
    {
      if (qword_10016A450 != -1)
      {
        swift_once();
      }

      v42 = qword_100173528;
    }
  }

  v45 = sub_10002FD14(v40, v42);
  v46 = v69;
  v47 = v65;
  (*(v69 + 16))(v65, v45, v40);
  v84 = 1;
  v48 = v63;
  static Expression<A>.+= infix<A>(_:_:)();
  (*(v46 + 8))(v47, v40);
  v49 = v72;
  QueryType.update(_:_:)();
  (*(v77 + 8))(v48, v75);
  v32 = v83;
  v50 = *(v83 + 8);
  v50(v49, v38);
  v51 = v57;
  v43 = Connection.run(_:)();
  if (!v51)
  {
    (*(v70 + 8))(v41, v71);
LABEL_47:
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for OSLogger();
    sub_10002FD14(v54, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._object = 0x800000010013AFC0;
    v55._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v55);
    v86 = &type metadata for Int64;
    v84 = v43;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v84, &qword_10016AB10, &unk_100130B10);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v56);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v32 + 8))(v81, v58);
    v52 = *(v80 + 8);
    v53 = v44;
    return v52(v53, v87);
  }

  (*(v70 + 8))(v41, v71);
  v50(v39, v38);
  v52 = *(v80 + 8);
  v53 = v44;
  return v52(v53, v87);
}

uint64_t sub_100063610(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100063704, v1, 0);
}

uint64_t sub_100063704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "updateErrorStatistics", "", v7, 2u);
  }

  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[5];
  v12 = v3[6];
  v13 = v3[3];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[9] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = sub_100026F50((v13 + 112), *(v13 + 136));
  v15 = *v14;
  v3[10] = *v14;

  return _swift_task_switch(sub_1000638C8, v15, 0);
}

uint64_t sub_1000638C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  *v6 = v3;
  v6[1] = sub_1000639C4;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000639C4(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v3[14] = v1;
    v4 = v3[3];
    v5 = sub_100063C64;
  }

  else
  {
    v4 = v3[10];
    v5 = sub_100063AEC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100063AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[10];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[2];
  *(v4 + 216) = v7;
  sub_100063D00(v8, v10);

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;
      v3[14] = v9;
      a2 = v3[3];
      v14 = sub_100063C64;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  a2 = v3[3];
  *(v4 + 216) = v12;
  v14 = sub_100063BC8;
LABEL_10:
  a1 = v14;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100063BC8()
{
  sub_100070154("updateErrorStatistics", 21, 2, *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100063C64()
{
  sub_100070154("updateErrorStatistics", 21, 2, *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100063D00(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Insert();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v37 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A400 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Table();
  v13 = sub_10002FD14(v12, qword_100173438);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v2)
  {
  }

  v31 = v13;
  v32 = v12;
  v28 = v6;

  v15 = sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  type metadata accessor for Setter();
  v30 = v15;
  v16 = swift_allocObject();
  v34 = xmmword_10012FA10;
  *(v16 + 16) = xmmword_10012FA10;
  if (qword_10016A488 != -1)
  {
    swift_once();
  }

  v29 = 0;
  v33 = a1;
  sub_10002FD14(v7, qword_1001735D0);
  v40[0] = 1;
  <- infix<A>(_:_:)();
  if (qword_10016A480 != -1)
  {
    swift_once();
  }

  v17 = sub_10002FD14(v7, qword_1001735B8);
  v41 = v7;
  v42 = sub_10002B95C(&qword_10016B720, &qword_10016B6E8, &qword_100131368, &protocol conformance descriptor for Expression<A>);
  v18 = sub_100042BAC(v40);
  v19 = v36;
  (*(v36 + 16))(v18, v17, v7);
  *(swift_allocObject() + 16) = v34;
  v43 = 1;
  static Expression<A>.+ infix<A>(_:_:)();
  <- infix<A>(_:_:)();
  (*(v19 + 8))(v9, v7);
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v20 = v37;
  QueryType.upsert(_:onConflictOf:set:)();

  sub_100026FDC(v40);
  v21 = v29;
  v22 = Connection.run(_:)();
  if (!v21)
  {
    v23 = v22;
    (*(v38 + 8))(v20, v39);
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for OSLogger();
    sub_10002FD14(v24, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = v34;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._object = 0x800000010013B000;
    v25._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    v41 = &type metadata for Int;
    v40[0] = v35;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v40, &qword_10016AB10, &unk_100130B10);
    v26._countAndFlagsBits = 0x746C75736572202CLL;
    v26._object = 0xEA0000000000203ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    v41 = &type metadata for Int64;
    v40[0] = v23;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v40, &qword_10016AB10, &unk_100130B10);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
  }

  return (*(v38 + 8))(v20, v39);
}

uint64_t sub_1000643EC()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000644E0, v0, 0);
}

uint64_t sub_1000644E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "clearStatistics", "", v7, 2u);
  }

  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[2];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[8] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = sub_100026F50((v13 + 112), *(v13 + 136));
  v15 = *v14;
  v3[9] = *v14;

  return _swift_task_switch(sub_1000646A4, v15, 0);
}

uint64_t sub_1000646A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  *v6 = v3;
  v6[1] = sub_1000647A0;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000647A0(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v3[13] = v1;
    v4 = v3[2];
    v5 = sub_100064A3C;
  }

  else
  {
    v4 = v3[9];
    v5 = sub_1000648C8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000648C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[9];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[12];
  *(v4 + 216) = v7;
  sub_100064AD8();

  v9 = *(v4 + 216);
  v6 = __OFSUB__(v9, 1);
  v10 = v9 - 1;
  v11 = v6;
  if (v8)
  {
    if ((v11 & 1) == 0)
    {
      *(v4 + 216) = v10;
      v3[13] = v8;
      a2 = v3[2];
      v12 = sub_100064A3C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v11)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  a2 = v3[2];
  *(v4 + 216) = v10;
  v12 = sub_1000649A0;
LABEL_10:
  a1 = v12;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000649A0()
{
  sub_100070154("clearStatistics", 15, 2, *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064A3C()
{
  sub_100070154("clearStatistics", 15, 2, *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064AD8()
{
  v14 = type metadata accessor for Delete();
  v13 = *(v14 - 8);
  v1 = __chkstk_darwin(v14);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v12 - v4;
  if (qword_10016A3F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Table();
  sub_10002FD14(v6, qword_100173420);
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v7._countAndFlagsBits = QueryType.name.getter();
  v8 = Connection.tableExists(_:)(v7);

  if (v8)
  {
    QueryType.delete()();
    Connection.run(_:)();
    if (v0)
    {
      return (*(v13 + 8))(v5, v14);
    }

    (*(v13 + 8))(v5, v14);
  }

  if (qword_10016A400 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v6, qword_100173438);
  v9._countAndFlagsBits = QueryType.name.getter();
  v10 = Connection.tableExists(_:)(v9);

  if (v10)
  {
    QueryType.delete()();
    Connection.run(_:)();
    if (!v0)
    {
      return (*(v13 + 8))(v3, v14);
    }

    v5 = v3;
    return (*(v13 + 8))(v5, v14);
  }

  return result;
}

uint64_t sub_100064D70(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100064E64, v1, 0);
}

uint64_t sub_100064E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "databaseStatistics", "", v7, 2u);
  }

  v9 = v3[20];
  v10 = v3[21];
  v11 = v3[18];
  v12 = v3[19];
  v13 = v3[16];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[22] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = sub_100026F50((v13 + 112), *(v13 + 136));
  sub_100026EEC(v13 + 112, (v3 + 10));
  v15 = *v14;
  v3[23] = *v14;

  return _swift_task_switch(sub_100065038, v15, 0);
}

uint64_t sub_100065038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 192) = v6;
  *v6 = v3;
  v6[1] = sub_100065134;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100065134(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 184);
  if (v1)
  {
    v6 = sub_100065358;
  }

  else
  {
    v6 = sub_100065268;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100065268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 184);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v3 + 200);
  v9 = *(v3 + 208);
  *(v4 + 216) = v7;
  sub_100065518(v8, v3 + 80, (v3 + 16));

  v10 = *(v4 + 216);
  v6 = __OFSUB__(v10, 1);
  v11 = v10 - 1;
  v12 = v6;
  if (v9)
  {
    if ((v12 & 1) == 0)
    {
      *(v4 + 216) = v11;
      *(v3 + 216) = v9;
      v13 = *(v3 + 128);
      sub_100026FDC((v3 + 80));
      v14 = sub_10006547C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v12)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v13 = *(v3 + 128);
  *(v4 + 216) = v11;
  sub_100026FDC((v3 + 80));
  v14 = sub_1000653CC;
LABEL_10:
  a1 = v14;
  a2 = v13;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100065358()
{
  v0[27] = v0[26];
  v1 = v0[16];
  sub_100026FDC(v0 + 10);

  return _swift_task_switch(sub_10006547C, v1, 0);
}

uint64_t sub_1000653CC()
{
  v1 = *(v0 + 120);
  sub_100070154("databaseStatistics", 18, 2, *(v0 + 176));

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10006547C()
{
  sub_100070154("databaseStatistics", 18, 2, *(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100065518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v102 = a2;
  v99 = a3;
  v5 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  v6 = *(v5 - 8);
  v100 = v5;
  v101 = v6;
  v7 = __chkstk_darwin(v5);
  v88 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v89 = &v84 - v10;
  v11 = __chkstk_darwin(v9);
  v90 = &v84 - v12;
  v13 = __chkstk_darwin(v11);
  v92 = &v84 - v14;
  v15 = __chkstk_darwin(v13);
  v94 = &v84 - v16;
  __chkstk_darwin(v15);
  v96 = &v84 - v17;
  v18 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v19 = __chkstk_darwin(v18 - 8);
  v91 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v93 = &v84 - v22;
  v23 = __chkstk_darwin(v21);
  v95 = &v84 - v24;
  v25 = __chkstk_darwin(v23);
  v97 = &v84 - v26;
  v27 = __chkstk_darwin(v25);
  v98 = &v84 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v84 - v30;
  __chkstk_darwin(v29);
  v105 = &v84 - v32;
  if (qword_10016A3F0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Table();
  sub_10002FD14(v33, qword_100173408);
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v34._countAndFlagsBits = QueryType.name.getter();
  v35 = Connection.tableExists(_:)(v34);

  if (!v35)
  {
    if (qword_10016A3F8 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v33, qword_100173420);
    v36._countAndFlagsBits = QueryType.name.getter();
    v37 = Connection.tableExists(_:)(v36);

    if (!v37)
    {
      if (qword_10016A400 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v33, qword_100173438);
      v38._countAndFlagsBits = QueryType.name.getter();
      v39 = Connection.tableExists(_:)(v38);

      if (!v39)
      {
        v43 = v99;
        v99[2] = 0u;
        v43[3] = 0u;
        *v43 = 0u;
        v43[1] = 0u;
        return result;
      }
    }
  }

  v41 = v105;
  result = sub_100066630(a1, v105);
  if (!v3)
  {
    v42 = sub_100066CB8(a1, v102);
    v102 = 0;
    v44 = v42;
    sub_10002BA04(v41, v31, &qword_10016AD38, &qword_1001332F0);
    v45 = type metadata accessor for Row();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    v87 = v45;
    if (v47(v31, 1) == 1)
    {
      sub_10002BA6C(v31, &qword_10016AD38, &qword_1001332F0);
      v48 = v87;
    }

    else
    {
      v85 = a1;
      v86 = v47;
      if (qword_10016A450 != -1)
      {
        swift_once();
      }

      v62 = v100;
      sub_10002FD14(v100, qword_100173528);
      sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
      sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360, &protocol conformance descriptor for A?);
      v63 = v96;
      ExpressionType<>.sum.getter();
      v64 = v102;
      Row.get<A>(_:)();
      v102 = v64;
      if (v64)
      {

        (*(v101 + 8))(v63, v62);
        sub_10002BA6C(v41, &qword_10016AD38, &qword_1001332F0);
        v65 = *(v46 + 8);
        v66 = v31;
        goto LABEL_41;
      }

      (*(v101 + 8))(v63, v62);
      v75 = v31;
      v48 = v87;
      (*(v46 + 8))(v75, v87);
      v47 = v86;
      if (v104 != 1)
      {
        v50 = v103;
        v49 = v98;
        goto LABEL_16;
      }
    }

    v49 = v98;
    v50 = 0;
LABEL_16:
    sub_10002BA04(v41, v49, &qword_10016AD38, &qword_1001332F0);
    if ((v47)(v49, 1, v48) == 1)
    {
      v85 = v50;
      v96 = v44;
      sub_10002BA6C(v49, &qword_10016AD38, &qword_1001332F0);
      goto LABEL_18;
    }

    v86 = v47;
    if (qword_10016A458 != -1)
    {
      swift_once();
    }

    v67 = v100;
    sub_10002FD14(v100, qword_100173540);
    sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
    sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360, &protocol conformance descriptor for A?);
    v68 = v94;
    ExpressionType<>.sum.getter();
    v69 = v98;
    v70 = v102;
    Row.get<A>(_:)();
    v102 = v70;
    if (!v70)
    {
      v85 = v50;
      v96 = v44;
      (*(v101 + 8))(v68, v67);
      v48 = v87;
      (*(v46 + 8))(v69, v87);
      v41 = v105;
      v47 = v86;
      if (v104 != 1)
      {
        v98 = v103;
        v51 = v100;
LABEL_19:
        v52 = v97;
        sub_10002BA04(v41, v97, &qword_10016AD38, &qword_1001332F0);
        if ((v47)(v52, 1, v48) == 1)
        {
          sub_10002BA6C(v52, &qword_10016AD38, &qword_1001332F0);
        }

        else
        {
          if (qword_10016A460 != -1)
          {
            swift_once();
          }

          sub_10002FD14(v51, qword_100173558);
          sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
          sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360, &protocol conformance descriptor for A?);
          v72 = v92;
          ExpressionType<>.sum.getter();
          v73 = v97;
          v74 = v102;
          Row.get<A>(_:)();
          v102 = v74;
          if (v74)
          {
            goto LABEL_59;
          }

          (*(v101 + 8))(v72, v51);
          (*(v46 + 8))(v73, v48);
          v41 = v105;
          if (v104 != 1)
          {
            v97 = v103;
            v53 = v95;
            goto LABEL_22;
          }
        }

        v53 = v95;
        v97 = 0;
LABEL_22:
        sub_10002BA04(v41, v53, &qword_10016AD38, &qword_1001332F0);
        if ((v47)(v53, 1, v48) == 1)
        {
          sub_10002BA6C(v53, &qword_10016AD38, &qword_1001332F0);
          goto LABEL_24;
        }

        if (qword_10016A468 != -1)
        {
          swift_once();
        }

        sub_10002FD14(v51, qword_100173570);
        sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
        sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360, &protocol conformance descriptor for A?);
        v72 = v90;
        ExpressionType<>.sum.getter();
        v73 = v95;
        v76 = v102;
        Row.get<A>(_:)();
        v102 = v76;
        if (!v76)
        {
          (*(v101 + 8))(v72, v51);
          (*(v46 + 8))(v73, v48);
          v41 = v105;
          if (v104 != 1)
          {
            v55 = v103;
            v54 = v93;
            goto LABEL_25;
          }

LABEL_24:
          v54 = v93;
          v55 = 0;
LABEL_25:
          sub_10002BA04(v41, v54, &qword_10016AD38, &qword_1001332F0);
          if ((v47)(v54, 1, v48) == 1)
          {
            sub_10002BA6C(v54, &qword_10016AD38, &qword_1001332F0);
            goto LABEL_27;
          }

          v95 = v55;
          if (qword_10016A470 != -1)
          {
            swift_once();
          }

          sub_10002FD14(v51, qword_100173588);
          sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
          sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360, &protocol conformance descriptor for A?);
          v72 = v89;
          ExpressionType<>.sum.getter();
          v73 = v93;
          v77 = v102;
          Row.get<A>(_:)();
          v102 = v77;
          if (!v77)
          {
            (*(v101 + 8))(v72, v51);
            (*(v46 + 8))(v73, v48);
            v41 = v105;
            if (v104 != 1)
            {
              v56 = v103;
              v55 = v95;
LABEL_28:
              v57 = v41;
              v58 = v91;
              sub_10002BA04(v57, v91, &qword_10016AD38, &qword_1001332F0);
              if ((v47)(v58, 1, v48) == 1)
              {
                sub_10002BA6C(v58, &qword_10016AD38, &qword_1001332F0);
                v59 = v102;
              }

              else
              {
                if (qword_10016A478 != -1)
                {
                  swift_once();
                }

                v78 = v100;
                sub_10002FD14(v100, qword_1001735A0);
                sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
                sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360, &protocol conformance descriptor for A?);
                v79 = v88;
                ExpressionType<>.sum.getter();
                v80 = v91;
                v59 = v102;
                Row.get<A>(_:)();
                if (v59)
                {

                  (*(v101 + 8))(v79, v78);
                  sub_10002BA6C(v105, &qword_10016AD38, &qword_1001332F0);
                  return (*(v46 + 8))(v80, v87);
                }

                (*(v101 + 8))(v79, v78);
                (*(v46 + 8))(v80, v87);
                if (v104 != 1)
                {
                  v60 = v103;
LABEL_31:
                  v61 = sub_10006FA34();
                  result = sub_10002BA6C(v105, &qword_10016AD38, &qword_1001332F0);
                  if (v59)
                  {
                  }

                  v81 = v99;
                  v82 = v85;
                  *v99 = v96;
                  v81[1] = v82;
                  v83 = v97;
                  v81[2] = v98;
                  v81[3] = v83;
                  v81[4] = v55;
                  v81[5] = v56;
                  v81[6] = v60;
                  v81[7] = v61;
                  return result;
                }
              }

              v60 = 0;
              goto LABEL_31;
            }

            v55 = v95;
LABEL_27:
            v56 = 0;
            goto LABEL_28;
          }
        }

LABEL_59:

        (*(v101 + 8))(v72, v51);
        sub_10002BA6C(v105, &qword_10016AD38, &qword_1001332F0);
        v65 = *(v46 + 8);
        v66 = v73;
        v71 = v48;
        return v65(v66, v71);
      }

LABEL_18:
      v51 = v100;
      v98 = 0;
      goto LABEL_19;
    }

    (*(v101 + 8))(v68, v67);
    sub_10002BA6C(v105, &qword_10016AD38, &qword_1001332F0);
    v65 = *(v46 + 8);
    v66 = v69;
LABEL_41:
    v71 = v87;
    return v65(v66, v71);
  }

  return result;
}

uint64_t sub_100066630@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (qword_10016A3F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Table();
  sub_10002FD14(v6, qword_100173420);
  v7 = sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v8._countAndFlagsBits = QueryType.name.getter();
  v9 = Connection.tableExists(_:)(v8);

  if (v9)
  {
    result = sub_10006F094(a1);
    if (!v3)
    {
      if (qword_10016A450 != -1)
      {
        swift_once();
      }

      v11 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
      sub_10002FD14(v11, qword_100173528);
      v20[3] = v11;
      v22 = sub_10002B95C(&qword_10016B6F8, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
      v20[4] = v22;
      sub_100042BAC(v20);
      sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
      sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360, &protocol conformance descriptor for A?);
      ExpressionType<>.sum.getter();
      sub_100026F94(&qword_10016AD50, &qword_100130C90);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100131210;
      if (qword_10016A458 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v11, qword_100173540);
      v13 = v22;
      *(v12 + 56) = v11;
      *(v12 + 64) = v13;
      sub_100042BAC((v12 + 32));
      ExpressionType<>.sum.getter();
      if (qword_10016A460 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v11, qword_100173558);
      v14 = v22;
      *(v12 + 96) = v11;
      *(v12 + 104) = v14;
      sub_100042BAC((v12 + 72));
      ExpressionType<>.sum.getter();
      if (qword_10016A468 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v11, qword_100173570);
      v15 = v22;
      *(v12 + 136) = v11;
      *(v12 + 144) = v15;
      sub_100042BAC((v12 + 112));
      ExpressionType<>.sum.getter();
      if (qword_10016A470 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v11, qword_100173588);
      v16 = v22;
      *(v12 + 176) = v11;
      *(v12 + 184) = v16;
      sub_100042BAC((v12 + 152));
      ExpressionType<>.sum.getter();
      if (qword_10016A478 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v11, qword_1001735A0);
      v17 = v22;
      *(v12 + 216) = v11;
      *(v12 + 224) = v17;
      sub_100042BAC((v12 + 192));
      ExpressionType<>.sum.getter();
      v21[3] = v6;
      v21[4] = v7;
      sub_100042BAC(v21);
      sub_10006F960(&qword_10016AD68, &protocol conformance descriptor for Table);
      SchemaType.select(_:_:)();

      sub_100026FDC(v20);
      Connection.pluck(_:)();
      return sub_100026FDC(v21);
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for OSLogger();
    sub_10002FD14(v18, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    v19 = type metadata accessor for Row();
    return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  return result;
}

void *sub_100066CB8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for Table();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  if (qword_10016A3F0 != -1)
  {
    swift_once();
  }

  v14 = sub_10002FD14(v7, qword_100173408);
  (*(v8 + 16))(v13, v14, v7);
  v15 = sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v57 = v7;
  v53 = v15;
  v16._countAndFlagsBits = QueryType.name.getter();
  v17 = Connection.tableExists(_:)(v16);

  if (v17)
  {
    v50 = a1;
    v45 = a2;
    v46 = v4;
    v54 = v13;
    v52 = v3;
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    v18 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v19 = sub_10002FD14(v18, qword_1001734F8);
    v55[3] = v18;
    v20 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
    v55[4] = v20;
    v21 = sub_100042BAC(v55);
    v22 = *(*(v18 - 8) + 16);
    v49 = v19;
    v23 = v19;
    v24 = v22;
    v22(v21, v23, v18);
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
    v25 = swift_allocObject();
    v48 = xmmword_100130B20;
    *(v25 + 16) = xmmword_100130B20;
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v51 = v8;
    v26 = sub_10002FD14(v18, qword_1001734B0);
    *(v25 + 56) = v18;
    *(v25 + 64) = v20;
    v27 = sub_100042BAC((v25 + 32));
    v24(v27, v26, v18);
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    v28 = sub_10002FD14(v18, qword_100173510);
    v47 = v28;
    *(v25 + 96) = v18;
    *(v25 + 104) = v20;
    v29 = sub_100042BAC((v25 + 72));
    v24(v29, v28, v18);
    sub_10006F960(&qword_10016AD68, &protocol conformance descriptor for Table);
    v30 = v24;
    v31 = v57;
    SchemaType.select(_:_:)();

    sub_100026FDC(v55);
    v32 = swift_allocObject();
    *(v32 + 16) = v48;
    *(v32 + 56) = v18;
    *(v32 + 64) = v20;
    v33 = sub_100042BAC((v32 + 32));
    v30(v33, v49, v18);
    *(v32 + 96) = v18;
    *(v32 + 104) = v20;
    v34 = sub_100042BAC((v32 + 72));
    v30(v34, v47, v18);
    v56[3] = v31;
    v56[4] = v53;
    sub_100042BAC(v56);
    QueryType.group(_:)();

    v35 = *(v51 + 8);
    v35(v11, v31);
    v36 = v52;
    Connection.prepare(_:)();
    if (v36)
    {
      v35(v54, v31);
      return sub_100026FDC(v56);
    }

    else
    {
      v39 = sub_100026FDC(v56);
      v40 = __chkstk_darwin(v39);
      v41 = v46;
      *(&v44 - 2) = v45;
      *(&v44 - 1) = v41;
      __chkstk_darwin(v40);
      *(&v44 - 2) = sub_100070450;
      *(&v44 - 1) = v42;
      v43 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v35(v54, v57);
      return v43;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for OSLogger();
    sub_10002FD14(v38, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    (*(v8 + 8))(v13, v57);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1000673E4(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v2[24] = *v1;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_100067504, v1, 0);
}

uint64_t sub_100067504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = v3;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = v3[22];
  v5 = type metadata accessor for OSSignposter();
  sub_10002FD14(v5, qword_10016B5C8);
  sub_10007048C(v4, (v3 + 2));
  static OSSignpostID.exclusive.getter();
  v6 = OSSignposter.logHandle.getter();
  v7 = static os_signpost_type_t.begin.getter();
  sub_1000704E8(v4);
  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = v3[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(*v8, *(v8 + 8), &v25);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v7, v11, "scheduleNotification", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v3[29];
  v13 = v3[26];
  v14 = v3[27];
  (*(v14 + 16))(v3[28], v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[30] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v15 = v3[22];
  v16 = v3[23];
  v17 = type metadata accessor for OSLogger();
  sub_10002FD14(v17, qword_10016B5B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x800000010013AF00;
  v18._countAndFlagsBits = 0xD00000000000001DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v20 = *v15;
  v19 = v15[1];
  v3[21] = &type metadata for String;
  v3[18] = v20;
  v3[19] = v19;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 18), &qword_10016AB10, &unk_100130B10);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v22 = sub_100026F50((v16 + 112), *(v16 + 136));
  v23 = *v22;
  v3[31] = *v22;
  sub_10007048C(v15, (v3 + 10));

  return _swift_task_switch(sub_1000678C8, v23, 0);
}

uint64_t sub_1000678C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 256) = v6;
  *v6 = v3;
  v6[1] = sub_1000679C4;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000679C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  v5 = *(v3 + 248);
  if (v1)
  {
    v6 = sub_100067BDC;
  }

  else
  {
    v6 = sub_100067AF8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100067AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[31];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[33];
  v9 = v3[34];
  v10 = v3[22];
  *(v4 + 216) = v7;
  sub_100067D9C(v8, v10);

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;
      v3[35] = v9;
      v14 = v3[23];
      sub_1000704E8(v3[22]);
      v15 = sub_100067CF4;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v16 = v3[22];
  v14 = v3[23];
  *(v4 + 216) = v12;
  sub_1000704E8(v16);
  v15 = sub_100067C4C;
LABEL_10:
  a1 = v15;
  a2 = v14;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100067BDC()
{
  v0[35] = v0[34];
  v1 = v0[23];
  sub_1000704E8(v0[22]);

  return _swift_task_switch(sub_100067CF4, v1, 0);
}

uint64_t sub_100067C4C()
{
  sub_100070154("scheduleNotification", 20, 2, *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100067CF4()
{
  sub_100070154("scheduleNotification", 20, 2, *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100067D9C(uint64_t a1, uint64_t *a2)
{
  v33 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v26[1] = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OnConflict();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Insert();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A408 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Table();
  sub_10002FD14(v12, qword_100173450);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (!v2)
  {
    v26[0] = a1;

    v14 = v29;
    (*(v29 + 104))(v8, enum case for OnConflict.replace(_:), v6);
    v32[3] = &type metadata for ScheduledNotification;
    v32[4] = sub_10007053C();
    v15 = swift_allocObject();
    v32[0] = v15;
    v16 = v33;
    v17 = *(v33 + 1);
    v15[1] = *v33;
    v15[2] = v17;
    v18 = *(v16 + 48);
    v15[3] = *(v16 + 32);
    v15[4] = v18;
    sub_10007048C(v16, v30);
    sub_10006F770(_swiftEmptyArrayStorage);
    sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
    QueryType.insert(or:encodable:userInfo:otherSetters:)();
    (*(v14 + 8))(v8, v6);

    sub_100026FDC(v32);
    v19 = Connection.run(_:)();
    (*(v27 + 8))(v11, v28);
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for OSLogger();
    sub_10002FD14(v20, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._object = 0x800000010013AF20;
    v21._countAndFlagsBits = 0xD00000000000001CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v23 = *v33;
    v22 = v33[1];
    v31 = &type metadata for String;
    v30[0] = v23;
    v30[1] = v22;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v30, &qword_10016AB10, &unk_100130B10);
    v24._countAndFlagsBits = 0x746C75736572202CLL;
    v24._object = 0xEA0000000000203ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    v31 = &type metadata for Int64;
    v30[0] = v19;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v30, &qword_10016AB10, &unk_100130B10);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
  }
}

uint64_t sub_100068334(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a4;
  *(v6 + 192) = a3;
  *(v6 + 40) = a1;
  *(v6 + 80) = *v5;
  v7 = type metadata accessor for OSSignpostID();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100068440, v5, 0);
}

uint64_t sub_100068440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = v3;
  v4 = *(v3 + 64);
  if (v4)
  {
    if (qword_10016A3E0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for OSSignposter();
    sub_10002FD14(v5, qword_10016B5C8);

    static OSSignpostID.exclusive.getter();
    v6 = OSSignposter.logHandle.getter();
    v7 = static os_signpost_type_t.begin.getter();
    v8 = OS_os_log.signpostsEnabled.getter();
    if (v8)
    {
      v11 = *(v3 + 40);
      if (*(v3 + 192))
      {
        if (!HIDWORD(v11))
        {
          if ((*(v3 + 40) & 0xFFFFF800) == 0xD800)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          if (v11 >> 16 <= 0x10)
          {
            v12 = (v3 + 32);

            goto LABEL_19;
          }

          goto LABEL_32;
        }
      }

      else
      {

        if (v11)
        {
          v12 = *(v3 + 40);
LABEL_19:
          v15 = *(v3 + 56);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v29 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_10006CB64(v15, v4, &v29);
          v18 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v7, v18, v12, "requestId=%s", v16, 0xCu);
          sub_100026FDC(v17);

          goto LABEL_20;
        }

        __break(1u);
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_14:

LABEL_20:
    v19 = *(v3 + 112);
    v20 = *(v3 + 120);
    v21 = *(v3 + 88);
    v22 = *(v3 + 96);
    goto LABEL_27;
  }

  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  v8 = OS_os_log.signpostsEnabled.getter();
  if (v8)
  {
    v14 = *(v3 + 40);
    if (*(v3 + 192))
    {
      if (v14 >> 32)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ((*(v3 + 40) & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        return _swift_task_switch(v8, v9, v10);
      }

      if (v14 >> 16 > 0x10)
      {
        goto LABEL_34;
      }

      v14 = (v3 + 24);
    }

    else if (!v14)
    {
      __break(1u);
      goto LABEL_14;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v6, v24, v14, "", v23, 2u);
  }

  v20 = *(v3 + 104);
  v19 = *(v3 + 112);
  v21 = *(v3 + 88);
  v22 = *(v3 + 96);
  v4 = *(v3 + 64);
LABEL_27:
  (*(v22 + 16))(v19, v20, v21);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v25 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v22 + 8))(v20, v21);
  *(v3 + 128) = v4;
  *(v3 + 136) = v25;
  v26 = sub_100026F50((*(v3 + 72) + 112), *(*(v3 + 72) + 136));
  v27 = *v26;
  *(v3 + 144) = *v26;

  v8 = sub_100068818;
  v9 = v27;
  v10 = 0;

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100068818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 152) = v6;
  *v6 = v3;
  v6[1] = sub_100068914;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100068914(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v5 = *(v3 + 144);
  if (v1)
  {
    v6 = sub_100068B44;
  }

  else
  {
    v6 = sub_100068A48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100068A48(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[18];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[20];
  v9 = v3[21];
  v10 = v3[7];
  v11 = v3[8];
  *(v4 + 216) = v7;
  sub_10006BA30(v8, v10, v11, v3 + 2);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;

      v3[23] = v9;
      a2 = v3[9];
      a1 = sub_100068C58;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v15 = v3[9];
  *(v4 + 216) = v13;

  v3[22] = v3[2];
  a1 = sub_100068BB4;
  a2 = v15;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100068B44()
{

  v0[23] = v0[21];
  v1 = v0[9];

  return _swift_task_switch(sub_100068C58, v1, 0);
}

uint64_t sub_100068BB4()
{
  sub_100070154(*(v0 + 40), *(v0 + 48), *(v0 + 192), *(v0 + 136));

  v1 = *(v0 + 8);
  v2 = *(v0 + 176);

  return v1(v2);
}

uint64_t sub_100068C58()
{
  sub_100070154(*(v0 + 40), *(v0 + 48), *(v0 + 192), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100068CF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a4;
  *(v6 + 176) = a3;
  *(v6 + 32) = a1;
  *(v6 + 72) = *v5;
  v7 = type metadata accessor for OSSignpostID();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100068E04, v5, 0);
}

uint64_t sub_100068E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = v3;
  v4 = *(v3 + 56);
  if (v4)
  {
    if (qword_10016A3E0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for OSSignposter();
    sub_10002FD14(v5, qword_10016B5C8);

    static OSSignpostID.exclusive.getter();
    v6 = OSSignposter.logHandle.getter();
    v7 = static os_signpost_type_t.begin.getter();
    v8 = OS_os_log.signpostsEnabled.getter();
    if (v8)
    {
      v11 = *(v3 + 32);
      if (*(v3 + 176))
      {
        if (!HIDWORD(v11))
        {
          if ((*(v3 + 32) & 0xFFFFF800) == 0xD800)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          if (v11 >> 16 <= 0x10)
          {
            v12 = (v3 + 24);

            goto LABEL_19;
          }

          goto LABEL_32;
        }
      }

      else
      {

        if (v11)
        {
          v12 = *(v3 + 32);
LABEL_19:
          v15 = *(v3 + 48);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v29 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_10006CB64(v15, v4, &v29);
          v18 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v7, v18, v12, "requestId=%s", v16, 0xCu);
          sub_100026FDC(v17);

          goto LABEL_20;
        }

        __break(1u);
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_14:

LABEL_20:
    v19 = *(v3 + 104);
    v20 = *(v3 + 112);
    v21 = *(v3 + 80);
    v22 = *(v3 + 88);
    goto LABEL_27;
  }

  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  v8 = OS_os_log.signpostsEnabled.getter();
  if (v8)
  {
    v14 = *(v3 + 32);
    if (*(v3 + 176))
    {
      if (v14 >> 32)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ((*(v3 + 32) & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        return _swift_task_switch(v8, v9, v10);
      }

      if (v14 >> 16 > 0x10)
      {
        goto LABEL_34;
      }

      v14 = (v3 + 16);
    }

    else if (!v14)
    {
      __break(1u);
      goto LABEL_14;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v6, v24, v14, "", v23, 2u);
  }

  v20 = *(v3 + 96);
  v19 = *(v3 + 104);
  v21 = *(v3 + 80);
  v22 = *(v3 + 88);
  v4 = *(v3 + 56);
LABEL_27:
  (*(v22 + 16))(v19, v20, v21);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v25 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v22 + 8))(v20, v21);
  *(v3 + 120) = v4;
  *(v3 + 128) = v25;
  v26 = sub_100026F50((*(v3 + 64) + 112), *(*(v3 + 64) + 136));
  v27 = *v26;
  *(v3 + 136) = *v26;

  v8 = sub_1000691DC;
  v9 = v27;
  v10 = 0;

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000691DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  *v6 = v3;
  v6[1] = sub_1000692D8;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000692D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 136);
  if (v1)
  {
    v6 = sub_1000694FC;
  }

  else
  {
    v6 = sub_10006940C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006940C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[17];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[19];
  v9 = v3[20];
  v10 = v3[6];
  v11 = v3[7];
  *(v4 + 216) = v7;
  sub_10006C01C(v8, v10, v11);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;

      v3[21] = v9;
      a2 = v3[8];
      a1 = sub_10006960C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v15 = v3[8];
  *(v4 + 216) = v13;

  a1 = sub_10006956C;
  a2 = v15;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000694FC()
{

  v0[21] = v0[20];
  v1 = v0[8];

  return _swift_task_switch(sub_10006960C, v1, 0);
}

uint64_t sub_10006956C()
{
  sub_100070154(*(v0 + 32), *(v0 + 40), *(v0 + 176), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006960C()
{
  sub_100070154(*(v0 + 32), *(v0 + 40), *(v0 + 176), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000696AC()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000697A0, v0, 0);
}

uint64_t sub_1000697A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "bundleAgnosticDataOwnershipIndex", "", v7, 2u);
  }

  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[5];
  v12 = v3[6];
  v13 = v3[3];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[9] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = sub_100026F50((v13 + 112), *(v13 + 136));
  v15 = *v14;
  v3[10] = *v14;

  return _swift_task_switch(sub_100069964, v15, 0);
}

uint64_t sub_100069964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  *v6 = v3;
  v6[1] = sub_100069A60;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100069A60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 80);
  if (v1)
  {
    v6 = sub_100069C78;
  }

  else
  {
    v6 = sub_100069B94;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100069B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[10];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[4];
  *(v4 + 216) = v7;
  sub_100069DD8(v8, v10, v3 + 2);

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;
      v3[15] = v9;
      a2 = v3[3];
      v14 = sub_100069D3C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  a2 = v3[3];
  *(v4 + 216) = v12;
  v3[14] = v3[2];
  v14 = sub_100069C9C;
LABEL_10:
  a1 = v14;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100069C9C()
{
  sub_100070154("bundleAgnosticDataOwnershipIndex", 32, 2, v0[9]);

  v1 = v0[1];
  v2 = v0[14];

  return v1(v2);
}

uint64_t sub_100069D3C()
{
  sub_100070154("bundleAgnosticDataOwnershipIndex", 32, 2, *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100069DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v6 = type metadata accessor for Table();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  if (qword_10016A3F0 != -1)
  {
    swift_once();
  }

  v12 = sub_10002FD14(v6, qword_100173408);
  (*(v7 + 16))(v11, v12, v6);
  v13 = sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v45 = v11;
  v14._countAndFlagsBits = QueryType.name.getter();
  v15 = Connection.tableExists(_:)(v14);

  if (v15)
  {
    v38 = a2;
    v39 = a1;
    v40 = v7;
    sub_100026F94(&qword_10016B6C0, &qword_100131340);
    v16 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100131220;
    v21 = v20 + v19;
    if (qword_10016A420 != -1)
    {
      swift_once();
    }

    v41 = v3;
    v22 = sub_10002FD14(v16, qword_100173498);
    v23 = *(v17 + 16);
    v23(v21, v22, v16);
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    v24 = sub_10002FD14(v16, qword_1001734F8);
    v23(v21 + v18, v24, v16);
    if (qword_10016A438 != -1)
    {
      swift_once();
    }

    v25 = sub_10002FD14(v16, qword_1001734E0);
    v23(v21 + 2 * v18, v25, v16);
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    v26 = sub_10002FD14(v16, qword_100173510);
    v23(v21 + 3 * v18, v26, v16);
    sub_10006A624(v20);
    sub_10006F960(&qword_10016AD68, &protocol conformance descriptor for Table);
    v27 = v42;
    v28 = v45;
    SchemaType.select(_:)();

    sub_10006A624(v20);

    v44[3] = v6;
    v44[4] = v13;
    sub_100042BAC(v44);
    QueryType.group(_:)();

    v29 = *(v40 + 8);
    v29(v27, v6);
    v30 = v41;
    Connection.prepare(_:)();
    if (v30)
    {
      v29(v28, v6);
      return sub_100026FDC(v44);
    }

    else
    {
      v33 = sub_100026FDC(v44);
      v34 = __chkstk_darwin(v33);
      *(&v37 - 2) = v38;
      __chkstk_darwin(v34);
      *(&v37 - 2) = sub_100070430;
      *(&v37 - 1) = v35;
      v36 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      result = (v29)(v45, v6);
      *v43 = v36;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for OSLogger();
    sub_10002FD14(v32, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    result = (*(v7 + 8))(v45, v6);
    *v43 = _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_10006A4E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EA6C(0, v1, 0);
    v3 = a1 + 56;
    do
    {

      sub_100026F94(&qword_10016B728, &unk_1001313B0);
      sub_100026F94(&qword_10016B730, &qword_1001321B0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10007EA6C((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[4 * v5];
      v6[4] = v8;
      v6[5] = v9;
      v6[6] = v10;
      v6[7] = v11;
      v3 += 32;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10006A624(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_10007EA8C(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v8 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v17 = *(v9 + 56);
    do
    {
      v8(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_10007EA8C((v12 > 1), v13 + 1, 1);
        v7 = v21;
      }

      v19 = v2;
      v20 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
      v14 = sub_100042BAC(&v18);
      v8(v14, v5, v2);
      v7[2] = v13 + 1;
      sub_10002C604(&v18, &v7[5 * v13 + 4]);
      (*(v9 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

double sub_10006A820@<D0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v5 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v5, qword_100173498);
  Row.get<A>(_:)();
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v7 = v21;
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_100173510);
    Row.get<A>(_:)();
    *(&v17 + 1) = &type metadata for ClientInfo.MuteEntitlementChecker;
    *&v14 = 0;
    *(&v14 + 1) = 0xE000000000000000;
    v15 = v13;
    *&v18 = sub_10006F9E0();
    *(&v18 + 1) = sub_10008AF60;
    v19 = 0;
    if (qword_10016A438 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734E0);
    Row.get<A>(_:)();
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734F8);
    Row.get<A>(_:)();
    *a2 = v20;
    *(a2 + 8) = v7;
    v8 = v17;
    *(a2 + 48) = v16;
    *(a2 + 64) = v8;
    *(a2 + 80) = v18;
    v9 = v19;
    result = *&v14;
    v10 = v15;
    *(a2 + 16) = v14;
    *(a2 + 32) = v10;
    *(a2 + 96) = v9;
    *(a2 + 104) = v13;
    *(a2 + 120) = v11;
    *(a2 + 128) = v12;
  }

  return result;
}

uint64_t sub_10006AAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = a2;
  v66 = a4;
  v7 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  __chkstk_darwin(v7 - 8);
  v61 = &v54 - v8;
  v62 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = &v54 - v9;
  v10 = type metadata accessor for Table();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v65 = &v54 - v16;
  __chkstk_darwin(v15);
  v18 = &v54 - v17;
  if (qword_10016A3F0 != -1)
  {
    swift_once();
  }

  v19 = sub_10002FD14(v10, qword_100173408);
  v70 = v11;
  v58 = *(v11 + 16);
  v58(v18, v19, v10);
  v57 = sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v20._countAndFlagsBits = QueryType.name.getter();
  v63 = a1;
  v21 = Connection.tableExists(_:)(v20);

  if (v21)
  {
    v54 = a3;
    v55 = v4;
    v64 = v18;
    if (qword_10016A420 != -1)
    {
      swift_once();
    }

    v22 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v23 = sub_10002FD14(v22, qword_100173498);
    v68 = v22;
    v24 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
    v69 = v24;
    v25 = sub_100042BAC(v67);
    v26 = *(*(v22 - 8) + 16);
    v26(v25, v23, v22);
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100131220;
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v28 = sub_10002FD14(v22, qword_1001734B0);
    *(v27 + 56) = v22;
    *(v27 + 64) = v24;
    v29 = sub_100042BAC((v27 + 32));
    v26(v29, v28, v22);
    if (qword_10016A438 != -1)
    {
      swift_once();
    }

    v30 = sub_10002FD14(v22, qword_1001734E0);
    *(v27 + 96) = v22;
    *(v27 + 104) = v24;
    v31 = sub_100042BAC((v27 + 72));
    v26(v31, v30, v22);
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    v32 = sub_10002FD14(v22, qword_1001734F8);
    *(v27 + 136) = v22;
    *(v27 + 144) = v24;
    v33 = sub_100042BAC((v27 + 112));
    v26(v33, v32, v22);
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    v34 = sub_10002FD14(v22, qword_100173510);
    *(v27 + 176) = v22;
    *(v27 + 184) = v24;
    v35 = sub_100042BAC((v27 + 152));
    v26(v35, v34, v22);
    sub_10006F960(&qword_10016AD68, &protocol conformance descriptor for Table);
    v36 = v65;
    SchemaType.select(_:_:)();

    sub_100026FDC(v67);
    v37 = v61;
    sub_10002BA04(v59, v61, &qword_10016ADF8, &unk_1001312B0);
    v38 = v60;
    v39 = v62;
    if ((*(v60 + 48))(v37, 1, v62) == 1)
    {
      sub_10002BA6C(v37, &qword_10016ADF8, &unk_1001312B0);
      v40 = v55;
      v41 = v66;
      v42 = v70;
      v43 = v57;
    }

    else
    {
      v46 = v56;
      (*(v38 + 32))(v56, v37, v39);
      v43 = v57;
      QueryType.where(_:)();
      (*(v38 + 8))(v46, v39);
      v42 = v70;
      (*(v70 + 8))(v36, v10);
      (*(v42 + 32))(v36, v14, v10);
      v40 = v55;
      v41 = v66;
    }

    v68 = v10;
    v69 = v43;
    v47 = sub_100042BAC(v67);
    v58(v47, v36, v10);
    Connection.prepare(_:)();
    if (v40)
    {
      v48 = *(v42 + 8);
      v48(v36, v10);
      v48(v64, v10);
      return sub_100026FDC(v67);
    }

    else
    {
      v49 = sub_100026FDC(v67);
      v50 = __chkstk_darwin(v49);
      *(&v54 - 2) = v54;
      __chkstk_darwin(v50);
      *(&v54 - 2) = sub_10006F9A4;
      *(&v54 - 1) = v51;
      v52 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v53 = *(v70 + 8);
      v53(v65, v10);
      result = (v53)(v64, v10);
      *v41 = v52;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for OSLogger();
    sub_10002FD14(v44, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    result = (*(v70 + 8))(v18, v10);
    *v66 = _swiftEmptyArrayStorage;
  }

  return result;
}

double sub_10006B490@<D0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v5 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v5, qword_100173498);
  Row.get<A>(_:)();
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v7 = v20;
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734B0);
    Row.get<A>(_:)();
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_100173510);
    Row.get<A>(_:)();
    *(&v16 + 1) = &type metadata for ClientInfo.MuteEntitlementChecker;
    v13 = v12;
    v14 = v11;
    *&v17 = sub_10006F9E0();
    *(&v17 + 1) = sub_10008AF60;
    v18 = 0;
    if (qword_10016A438 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734E0);
    Row.get<A>(_:)();
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734F8);
    Row.get<A>(_:)();
    *a2 = v19;
    *(a2 + 8) = v7;
    v8 = v16;
    *(a2 + 48) = v15;
    *(a2 + 64) = v8;
    *(a2 + 80) = v17;
    v9 = v18;
    result = *&v13;
    v10 = v14;
    *(a2 + 16) = v13;
    *(a2 + 32) = v10;
    *(a2 + 96) = v9;
    *(a2 + 104) = v12;
    *(a2 + 120) = v11;
  }

  return result;
}

uint64_t sub_10006B7D0@<X0>(void *a1@<X1>, void *a2@<X3>, void *a3@<X8>)
{
  sub_100026F50(a1, a1[3]);
  if (qword_10016A440 != -1)
  {
    swift_once();
  }

  v6 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v6, qword_1001734F8);
  result = Row.get<A>(_:)();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v6, qword_1001734B0);
    Row.get<A>(_:)();
    v15 = v12;
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v6, qword_100173510);
    Row.get<A>(_:)();
    v14[7] = &type metadata for ClientInfo.MuteEntitlementChecker;
    v14[0] = v15;
    v14[1] = v13;
    v14[2] = v10;
    v14[3] = v11;
    v14[8] = sub_10006F9E0();
    v14[9] = sub_10008AF60;
    v14[10] = 0;
    sub_1000528EC(v14[11], v14[12], v14);
    v9 = v8;

    result = sub_100042AFC(v14);
    *a3 = v9;
  }

  return result;
}

uint64_t sub_10006BA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a3;
  v33 = a2;
  v40 = a4;
  v5 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v33 - v6;
  v7 = type metadata accessor for Table();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v39 = &v33 - v13;
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  if (qword_10016A408 != -1)
  {
    swift_once();
  }

  v16 = sub_10002FD14(v7, qword_100173450);
  v17 = *(v8 + 16);
  v17(v15, v16, v7);
  v18 = sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v41 = v15;
  v19._countAndFlagsBits = QueryType.name.getter();
  v38 = a1;
  v20 = Connection.tableExists(_:)(v19);

  if (v20)
  {
    v21 = v37;
    if (v37)
    {
      v22 = v41;
      if (qword_10016A420 != -1)
      {
        swift_once();
      }

      v23 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
      sub_10002FD14(v23, qword_100173498);
      v24 = v34;
      v42[0] = v33;
      v42[1] = v21;
      static Expression<A>.== infix<A>(_:_:)();
      QueryType.where(_:)();
      (*(v35 + 8))(v24, v36);
    }

    else
    {
      v22 = v41;
      v17(v11, v41, v7);
    }

    v27 = v39;
    (*(v8 + 32))(v39, v11, v7);
    v42[3] = v7;
    v42[4] = v18;
    v28 = sub_100042BAC(v42);
    v17(v28, v27, v7);
    v29 = v42[6];
    Connection.prepare(_:)();
    if (v29)
    {
      v30 = *(v8 + 8);
      v30(v27, v7);
      v30(v22, v7);
      return sub_100026FDC(v42);
    }

    else
    {
      sub_100026FDC(v42);
      v31 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v32 = *(v8 + 8);
      v32(v27, v7);
      result = (v32)(v22, v7);
      *v40 = v31;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for OSLogger();
    sub_10002FD14(v25, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    result = (*(v8 + 8))(v41, v7);
    *v40 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10006C01C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for Delete();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v41 - v13;
  v14 = type metadata accessor for Table();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v41 - v19;
  if (qword_10016A408 != -1)
  {
    swift_once();
  }

  v21 = sub_10002FD14(v14, qword_100173450);
  v50 = v15;
  (*(v15 + 16))(v20, v21, v14);
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v22._countAndFlagsBits = QueryType.name.getter();
  v45 = a1;
  v23 = Connection.tableExists(_:)(v22);

  if (v23)
  {
    v24 = v46;
    if (v46)
    {
      v25 = v47;
      if (qword_10016A420 != -1)
      {
        swift_once();
      }

      v26 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
      sub_10002FD14(v26, qword_100173498);
      v51 = v44;
      v52 = v24;
      static Expression<A>.== infix<A>(_:_:)();
      QueryType.where(_:)();
      (*(v42 + 8))(v8, v43);
      QueryType.delete()();
      v27 = v50;
      (*(v50 + 8))(v18, v14);
    }

    else
    {
      QueryType.delete()();
      v27 = v50;
      v25 = v47;
    }

    v30 = v48;
    v29 = v49;
    (*(v48 + 32))(v25, v12, v49);
    v31 = v54;
    v32 = Connection.run(_:)();
    if (v31)
    {
      (*(v30 + 8))(v25, v29);
      return (*(v27 + 8))(v20, v14);
    }

    v34 = v32;
    v54 = 0;
    v35 = v46;
    if (v46)
    {
      v51 = 544370534;
      v52 = 0xE400000000000000;
      v36 = v44;
      String.append(_:)(*(&v35 - 1));
      v45 = v51;
      v46 = v52;
    }

    else
    {
      v45 = 7105633;
      v46 = 0xE300000000000000;
    }

    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for OSLogger();
    sub_10002FD14(v37, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._countAndFlagsBits = 0x20646574656C6544;
    v38._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    v53 = &type metadata for Int;
    v51 = v34;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v51, &qword_10016AB10, &unk_100130B10);
    v39._object = 0x800000010013ACD0;
    v39._countAndFlagsBits = 0xD000000000000026;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    v53 = &type metadata for String;
    v51 = v45;
    v52 = v46;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v51, &qword_10016AB10, &unk_100130B10);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v48 + 8))(v47, v49);
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for OSLogger();
    sub_10002FD14(v28, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();
  }

  return (*(v50 + 8))(v20, v14);
}

uint64_t sub_10006C7F8()
{
  sub_100026FDC((v0 + 112));
  sub_100026FDC((v0 + 152));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006C85C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  result = a2(a1, &v5);
  if (v2)
  {
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    result = swift_allocError();
    *v4 = v5;
  }

  return result;
}

uint64_t sub_10006C8C4()
{
  sub_10006F770(_swiftEmptyArrayStorage);
  sub_1000700F0();
  Row.decode<A>(userInfo:)();

  if (v0)
  {
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    result = swift_allocError();
    *v2 = v0;
  }

  return result;
}

unint64_t sub_10006C968(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10006C9CC(a1, v2);
}

unint64_t sub_10006C9CC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10006CB64(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10006CC30(v11, 0, 0, 1, a1, a2);
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
    sub_10002FE08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100026FDC(v11);
  return v7;
}

unint64_t sub_10006CC30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10006CD3C(a5, a6);
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

void *sub_10006CD3C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10006CD88(a1, a2);
  sub_10006CEB8(&off_100164138);
  return v3;
}

void *sub_10006CD88(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10006CFA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10006CFA4(v10, 0);
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

uint64_t sub_10006CEB8(uint64_t result)
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

  result = sub_10006D018(result, v11, 1, v3);
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

void *sub_10006CFA4(uint64_t a1, uint64_t a2)
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

  sub_100026F94(&qword_10016B690, &qword_1001312A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10006D018(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016B690, &qword_1001312A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10006D110@<X0>(uint64_t a1@<X0>, void *(*a2)(void *__return_ptr, uint64_t, uint64_t *)@<X1>, void *a3@<X8>)
{
  result = a2(v9, a1, &v8);
  if (v3)
  {
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    result = swift_allocError();
    *v6 = v8;
  }

  else
  {
    v7 = v9[1];
    *a3 = v9[0];
    a3[1] = v7;
  }

  return result;
}

void *sub_10006D194@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t *)@<X1>, void *a3@<X8>)
{
  result = a2(&v8, a1, &v7);
  if (v3)
  {
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    result = swift_allocError();
    *v6 = v7;
  }

  else
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_10006D218()
{
  v0 = sub_100026F94(&qword_10016AE30, &unk_100130D50);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v3 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v9 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v9, qword_1001734B0);
  v10 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 1, 1, v10);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10002BA6C(v5, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v8, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A418 != -1)
  {
    swift_once();
  }

  v14 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v14, qword_100173480);
  v12(v8, 1, 1, v10);
  v15 = *(v14 - 8);
  v20 = v10;
  v16 = *(v15 + 56);
  v19 = v12;
  v16(v2, 1, 1, v14);
  v18[1] = v13;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v8, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A410 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v14, qword_100173468);
  v19(v8, 1, 1, v20);
  v16(v2, 1, 1, v14);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016AE30, &unk_100130D50);
  return sub_10002BA6C(v8, &qword_10016ADF8, &unk_1001312B0);
}

uint64_t sub_10006D688(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v8 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v9 = sub_10002FD14(v8, qword_100173498);
  v10 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v38 = v11 + 56;
  v39 = v10;
  v13 = v12;
  (v12)(v7, 1, 1);
  v36 = *(v8 - 8);
  v14 = v36 + 56;
  v41 = *(v36 + 56);
  v41(v4, 1, 1, v8);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v35 = v9;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v4, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v15 = sub_10002FD14(v8, qword_1001734B0);
  v13(v7, 1, 1, v39);
  v41(v4, 1, 1, v8);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v34 = v15;
  v16 = v4;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v4, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  v37 = a1;
  if (qword_10016A448 != -1)
  {
    swift_once();
  }

  v17 = sub_10002FD14(v8, qword_100173510);
  v18 = v39;
  v13(v7, 1, 1, v39);
  v41(v4, 1, 1, v8);
  v32 = v14;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v33 = v17;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v4, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A438 != -1)
  {
    swift_once();
  }

  v19 = sub_10002FD14(v8, qword_1001734E0);
  v13(v7, 1, 1, v18);
  v41(v4, 1, 1, v8);
  v30 = v13;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v31 = v19;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v4, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A440 != -1)
  {
    swift_once();
  }

  v20 = sub_10002FD14(v8, qword_1001734F8);
  v30(v7, 1, 1, v18);
  v41(v16, 1, 1, v8);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v16, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  v40[3] = v8;
  v21 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  v40[4] = v21;
  v22 = sub_100042BAC(v40);
  v23 = *(v36 + 16);
  v23(v22, v35, v8);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100131220;
  *(v24 + 56) = v8;
  *(v24 + 64) = v21;
  v25 = sub_100042BAC((v24 + 32));
  v23(v25, v34, v8);
  *(v24 + 96) = v8;
  *(v24 + 104) = v21;
  v26 = sub_100042BAC((v24 + 72));
  v23(v26, v33, v8);
  *(v24 + 136) = v8;
  *(v24 + 144) = v21;
  v27 = sub_100042BAC((v24 + 112));
  v23(v27, v31, v8);
  *(v24 + 176) = v8;
  *(v24 + 184) = v21;
  v28 = sub_100042BAC((v24 + 152));
  v23(v28, v20, v8);
  TableBuilder.primaryKey(_:_:)();

  return sub_100026FDC(v40);
}

uint64_t sub_10006DDD8()
{
  v0 = sub_100026F94(&qword_10016B718, &qword_1001313A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  if (qword_10016A450 != -1)
  {
    swift_once();
  }

  v15 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FD14(v15, qword_100173528);
  v6 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v13 = v7 + 56;
  v14 = v8;
  v8(v5, 1, 1, v6);
  v9 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  v12 = *(*(v9 - 8) + 56);
  v12(v2, 1, 1, v9);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v5, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A458 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v15, qword_100173540);
  v14(v5, 1, 1, v6);
  v12(v2, 1, 1, v9);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v5, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A460 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v15, qword_100173558);
  v14(v5, 1, 1, v6);
  v12(v2, 1, 1, v9);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v5, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A468 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v15, qword_100173570);
  v14(v5, 1, 1, v6);
  v12(v2, 1, 1, v9);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v5, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A470 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v15, qword_100173588);
  v14(v5, 1, 1, v6);
  v12(v2, 1, 1, v9);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v5, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A478 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v15, qword_1001735A0);
  v14(v5, 1, 1, v6);
  v12(v2, 1, 1, v9);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016B718, &qword_1001313A0);
  return sub_10002BA6C(v5, &qword_10016ADF8, &unk_1001312B0);
}

uint64_t sub_10006E494()
{
  v0 = sub_100026F94(&qword_10016B718, &qword_1001313A0);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  v3 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  if (qword_10016A480 != -1)
  {
    swift_once();
  }

  v6 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  v7 = sub_10002FD14(v6, qword_1001735B8);
  v8 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v13[1] = v9 + 56;
  v14 = v10;
  v10(v5, 1, 1, v8);
  v15 = *(v6 - 8);
  v13[0] = *(v15 + 56);
  (v13[0])(v2, 1, 1, v6);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v16 = v7;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v5, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A488 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v6, qword_1001735D0);
  v14(v5, 1, 1, v8);
  (v13[0])(v2, 1, 1, v6);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v5, &qword_10016ADF8, &unk_1001312B0);
  v17[3] = v6;
  v17[4] = sub_10002B95C(&qword_10016B720, &qword_10016B6E8, &qword_100131368, &protocol conformance descriptor for Expression<A>);
  v11 = sub_100042BAC(v17);
  (*(v15 + 16))(v11, v16, v6);
  TableBuilder.primaryKey(_:_:)();
  return sub_100026FDC(v17);
}

uint64_t sub_10006E838()
{
  v0 = sub_100026F94(&qword_10016AE30, &unk_100130D50);
  __chkstk_darwin(v0 - 8);
  v37 = &v30 - v1;
  v2 = sub_100026F94(&qword_10016B718, &qword_1001313A0);
  __chkstk_darwin(v2 - 8);
  v34 = &v30 - v3;
  v4 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v10 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v11 = sub_10002FD14(v10, qword_100173498);
  v12 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v13 = *(v12 - 8);
  v41 = *(v13 + 56);
  v39 = v13 + 56;
  v41(v9, 1, 1, v12);
  v36 = *(v10 - 8);
  v38 = *(v36 + 56);
  v38(v6, 1, 1, v10);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v35 = v11;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v6, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A430 != -1)
  {
    swift_once();
  }

  v14 = sub_10002FD14(v10, qword_1001734C8);
  v41(v9, 1, 1, v12);
  v38(v6, 1, 1, v10);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v33 = v14;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v6, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A438 != -1)
  {
    swift_once();
  }

  v15 = sub_10002FD14(v10, qword_1001734E0);
  v41(v9, 1, 1, v12);
  v38(v6, 1, 1, v10);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v38 = v15;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v6, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  v16 = v12;
  if (qword_10016A490 != -1)
  {
    swift_once();
  }

  v17 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  v18 = sub_10002FD14(v17, qword_1001735E8);
  v41(v9, 1, 1, v12);
  v31 = *(v17 - 8);
  v19 = v34;
  (*(v31 + 56))(v34, 1, 1, v17);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v32 = v18;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v19, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A498 != -1)
  {
    swift_once();
  }

  v20 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v20, qword_100173600);
  v41(v9, 1, 1, v16);
  v21 = v37;
  (*(*(v20 - 8) + 56))(v37, 1, 1, v20);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v21, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  v40[3] = v10;
  v22 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  v40[4] = v22;
  v23 = sub_100042BAC(v40);
  v24 = *(v36 + 16);
  v24(v23, v35, v10);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100130BB0;
  *(v25 + 56) = v10;
  *(v25 + 64) = v22;
  v26 = sub_100042BAC((v25 + 32));
  v24(v26, v33, v10);
  *(v25 + 96) = v10;
  *(v25 + 104) = v22;
  v27 = sub_100042BAC((v25 + 72));
  v24(v27, v38, v10);
  *(v25 + 136) = v17;
  *(v25 + 144) = sub_10002B95C(&qword_10016B720, &qword_10016B6E8, &qword_100131368, &protocol conformance descriptor for Expression<A>);
  v28 = sub_100042BAC((v25 + 112));
  (*(v31 + 16))(v28, v32, v17);
  TableBuilder.primaryKey(_:_:)();

  return sub_100026FDC(v40);
}

uint64_t sub_10006F094(uint64_t a1)
{
  v37[1] = a1;
  v1 = type metadata accessor for ColumnDefinition();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  v6 = *(v5 - 8);
  v7 = v6;
  __chkstk_darwin(v5);
  v9 = v37 - v8;
  sub_100026F94(&qword_10016B700, &unk_100131370);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v42 = *(v6 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100130B20;
  v12 = v11 + v10;
  v13 = v11;
  if (qword_10016A458 != -1)
  {
LABEL_25:
    swift_once();
  }

  v14 = sub_10002FD14(v5, qword_100173540);
  v44 = v7;
  v17 = *(v7 + 16);
  v16 = v7 + 16;
  v15 = v17;
  v17(v12, v14, v5);
  if (qword_10016A468 != -1)
  {
    swift_once();
  }

  v48 = v9;
  v18 = sub_10002FD14(v5, qword_100173570);
  v40 = v16;
  v41 = v12;
  v50 = v5;
  v15(v12 + v42, v18, v5);
  Connection.schema.getter();
  if (qword_10016A3F8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Table();
  v20 = sub_10002FD14(v19, qword_100173420);
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v47 = v20;
  QueryType.name.getter();
  v7 = v21;
  v22 = v46;
  v23 = dispatch thunk of SchemaReader.columnDefinitions(table:)();
  v43 = v22;
  if (v22)
  {
  }

  else
  {
    v9 = v23;
    v39 = v15;
    v37[0] = v13;

    v25 = 0;
    v26 = 0;
    v27 = *(v9 + 2);
    v45 = v2 + 16;
    v46 = v27;
    v28 = (v2 + 8);
    v38 = (v44 + 8);
    v29 = v50;
    v5 = v47;
    v12 = v48;
    while (2)
    {
      LODWORD(v44) = v25;
      v39(v12, v41 + v26 * v42, v29);
      v13 = 0;
      while (v46 != v13)
      {
        if (v13 >= *(v9 + 2))
        {
          __break(1u);
          goto LABEL_25;
        }

        (*(v2 + 16))(v4, &v9[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13], v1);
        v7 = ColumnDefinition.name.getter();
        v31 = v30;
        sub_10002B95C(&qword_10016B6F8, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
        v32 = Expressible.columnName.getter();
        v12 = v33;
        if (v7 == v32 && v31 == v33)
        {

          (*v28)(v4, v1);
          goto LABEL_9;
        }

        ++v13;
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v28)(v4, v1);
        v5 = v47;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      sub_10002B95C(&qword_10016B6F8, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
      Expressible.columnName.getter();
      v7 = v34;
      static Int.declaredDatatype.getter();
      v49[4] = &protocol witness table for Int;
      v49[3] = &type metadata for Int;
      v49[0] = 0;
      v35 = v43;
      Table.addColumn(_:datatype:isNullable:isUnique:defaultValue:)();
      v43 = v35;
      if (v35)
      {

        sub_10002BA6C(v49, &qword_10016B708, &unk_100133390);
        return (*v38)(v48, v50);
      }

      sub_10002BA6C(v49, &qword_10016B708, &unk_100133390);
      v36 = v43;
      Connection.run(_:_:)();
      if (v36)
      {

        return (*v38)(v48, v50);
      }

      v43 = 0;

LABEL_9:
      v5 = v47;
LABEL_10:
      v12 = v48;
      v29 = v50;
      (*v38)(v48, v50);
      v25 = 1;
      v26 = 1;
      if ((v44 & 1) == 0)
      {
        continue;
      }

      break;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    return swift_deallocClassInstance();
  }
}

unint64_t sub_10006F770(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016B6B0, &qword_100131328);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100026F94(&qword_10016B6B8, &qword_100131330);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002BA04(v9, v5, &qword_10016B6B0, &qword_100131328);
      result = sub_10006C968(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100070144(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10006F960(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Table();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006F9E0()
{
  result = qword_10016B698;
  if (!qword_10016B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B698);
  }

  return result;
}

unint64_t sub_10006FA34()
{
  v1 = v0;
  v2 = type metadata accessor for Row();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  __chkstk_darwin(v5 - 8);
  v49 = &v41 - v6;
  if (qword_10016A400 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Table();
  v8 = sub_10002FD14(v7, qword_100173438);
  v9 = sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v10._countAndFlagsBits = QueryType.name.getter();
  v11 = Connection.tableExists(_:)(v10);

  if (!v11)
  {
    if (qword_10016A3D8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v14 = type metadata accessor for OSLogger();
    sub_10002FD14(v14, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    return sub_100088D34(_swiftEmptyArrayStorage);
  }

  v12 = sub_100088D34(_swiftEmptyArrayStorage);
  v52[3] = v7;
  v52[4] = v9;
  v13 = sub_100042BAC(v52);
  (*(*(v7 - 8) + 16))(v13, v8, v7);
  Connection.prepare(_:)();
  if (v0)
  {

    sub_100026FDC(v52);
    return v12;
  }

  sub_100026FDC(v52);
  v16 = dispatch thunk of _AnySequenceBox._makeIterator()();

  v17 = v49;
  v46 = v16;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v44 = *(v3 + 48);
  v45 = v3 + 48;
  if (v44(v17, 1, v2) == 1)
  {
LABEL_10:

    return v12;
  }

  v19 = *(v3 + 32);
  v18 = v3 + 32;
  v42 = (v18 - 24);
  v43 = v19;
  v20 = &type metadata for Int;
  v21 = v48;
  v19(v48, v17, v2);
  while (1)
  {
    if (qword_10016A480 != -1)
    {
      swift_once();
    }

    v24 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
    sub_10002FD14(v24, qword_1001735B8);
    Row.subscript.getter();
    if (v1)
    {
      (*v42)(v21, v2);

      return v12;
    }

    v50 = v52[0];
    if (qword_10016A488 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v24, qword_1001735D0);
    Row.subscript.getter();
    v47 = 0;
    v25 = v20;
    v26 = v18;
    v27 = v2;
    v28 = v52[6];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v12;
    v31 = sub_10009E80C(v50);
    v32 = v12[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      __break(1u);
      goto LABEL_31;
    }

    v35 = v30;
    if (v12[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000A2C24();
      }
    }

    else
    {
      sub_10009FFF4(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_10009E80C(v50);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_33;
      }

      v31 = v36;
    }

    v21 = v48;
    v12 = v51;
    if (v35)
    {
      *(v51[7] + 8 * v31) = v28;
      v2 = v27;
      (*v42)(v21, v27);
      goto LABEL_13;
    }

    v51[(v31 >> 6) + 8] |= 1 << v31;
    *(v12[6] + 8 * v31) = v50;
    *(v12[7] + 8 * v31) = v28;
    v2 = v27;
    (*v42)(v21, v27);
    v38 = v12[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      break;
    }

    v12[2] = v40;
LABEL_13:
    v22 = v49;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v23 = v44(v22, 1, v2);
    v18 = v26;
    v20 = v25;
    v1 = v47;
    if (v23 == 1)
    {
      goto LABEL_10;
    }

    v43(v21, v22, v2);
  }

  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000700F0()
{
  result = qword_10016B6A8;
  if (!qword_10016B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B6A8);
  }

  return result;
}

_OWORD *sub_100070144(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100070154(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016B5C8);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
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
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_10007053C()
{
  result = qword_10016B710;
  if (!qword_10016B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B710);
  }

  return result;
}

uint64_t sub_100070590()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000705F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A658 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_100173828, qword_10016B748);
}

id sub_100070654()
{
  v0 = [objc_allocWithZone(AMSEngagement) initWithBag:Bag.amsBag.getter()];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000706AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v6[24] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000707A0, v5, 0);
}

uint64_t sub_1000707A0(uint64_t a1)
{
  v3 = v1[26];
  v2 = v1[27];
  v4 = v1[25];
  v5 = v1[22];
  v16 = v1[21];
  v7 = v1[19];
  v6 = v1[20];
  v8 = AccessCredential.requestId.getter();
  v10 = v9;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  (*(v3 + 8))(v2, v4);
  v1[2] = v8;
  v1[3] = v10;
  v1[4] = v7;
  v1[5] = v6;
  v1[6] = v16;
  v1[7] = v5;
  v1[8] = 0;
  v1[9] = v12;

  v13 = swift_task_alloc();
  v1[28] = v13;
  *v13 = v1;
  v13[1] = sub_1000708E0;
  v14 = v1[18];

  return sub_100073364((v1 + 2), v14);
}

uint64_t sub_1000708E0(char a1)
{
  v2 = *(*v1 + 184);
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_1000709F8, v2, 0);
}

uint64_t sub_1000709F8()
{
  if (*(v0 + 248) == 1)
  {
    sub_100026F50((*(v0 + 184) + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry), *(*(v0 + 184) + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry + 24));
    v1 = swift_task_alloc();
    *(v0 + 232) = v1;
    *v1 = v0;
    v1[1] = sub_100070B00;

    return sub_1000673E4(v0 + 16);
  }

  else
  {
    sub_1000704E8(v0 + 16);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100070B00()
{
  v2 = *v1;
  v2[30] = v0;

  sub_1000704E8((v2 + 2));
  if (v0)
  {
    v3 = v2[23];

    return _swift_task_switch(sub_1000743D4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100070C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v6[24] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_100070D44, v5, 0);
}

uint64_t sub_100070D44(uint64_t a1)
{
  v3 = v1[26];
  v2 = v1[27];
  v4 = v1[25];
  v5 = v1[22];
  v16 = v1[21];
  v7 = v1[19];
  v6 = v1[20];
  v8 = AccessCredential.requestId.getter();
  v10 = v9;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  (*(v3 + 8))(v2, v4);
  v1[2] = v8;
  v1[3] = v10;
  v1[4] = v7;
  v1[5] = v6;
  v1[6] = v16;
  v1[7] = v5;
  v1[8] = 1;
  v1[9] = v12;

  v13 = swift_task_alloc();
  v1[28] = v13;
  *v13 = v1;
  v13[1] = sub_1000708E0;
  v14 = v1[18];

  return sub_100073364((v1 + 2), v14);
}

uint64_t sub_100070E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v6[24] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_100070F7C, v5, 0);
}

uint64_t sub_100070F7C(uint64_t a1)
{
  v3 = v1[26];
  v2 = v1[27];
  v4 = v1[25];
  v5 = v1[22];
  v16 = v1[21];
  v7 = v1[19];
  v6 = v1[20];
  v8 = AccessCredential.requestId.getter();
  v10 = v9;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  (*(v3 + 8))(v2, v4);
  v1[2] = v8;
  v1[3] = v10;
  v1[4] = v7;
  v1[5] = v6;
  v1[6] = v16;
  v1[7] = v5;
  v1[8] = 2;
  v1[9] = v12;

  v13 = swift_task_alloc();
  v1[28] = v13;
  *v13 = v1;
  v13[1] = sub_1000710C0;
  v14 = v1[18];

  return sub_100073364((v1 + 2), v14);
}

uint64_t sub_1000710C0(char a1)
{
  v2 = *(*v1 + 184);
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_1000711D8, v2, 0);
}

uint64_t sub_1000711D8()
{
  if (*(v0 + 248) == 1)
  {
    sub_100026F50((*(v0 + 184) + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry), *(*(v0 + 184) + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry + 24));
    v1 = swift_task_alloc();
    *(v0 + 232) = v1;
    *v1 = v0;
    v1[1] = sub_1000712E0;

    return sub_1000673E4(v0 + 16);
  }

  else
  {
    sub_1000704E8(v0 + 16);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1000712E0()
{
  v2 = *v1;
  v2[30] = v0;

  sub_1000704E8((v2 + 2));
  if (v0)
  {
    v3 = v2[23];

    return _swift_task_switch(sub_100071430, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100071430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013B1E0;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v3[14];
  v6 = v3[15];
  v3[13] = v6;
  v7 = sub_100042BAC(v3 + 10);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 10), &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v9 = v3[1];

  return v9();
}

uint64_t sub_100071670(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100071700, v1, 0);
}

uint64_t sub_100071700()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry;
  v0[17] = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry;
  v3 = sub_100026F50((v1 + v2), *(v1 + v2 + 24));
  v4 = AccessCredential.requestId.getter();
  v6 = v5;
  v0[18] = v5;
  v0[19] = *v3;
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1000717E8;

  return sub_100068334("scheduledNotifications", 22, 2, v4, v6);
}

uint64_t sub_1000717E8(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[19];
    v5 = sub_100071C7C;
  }

  else
  {
    v6 = v3[15];

    v5 = sub_100071910;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100071910()
{
  v1 = v0[22];
  sub_1000723C0(v0[21]);
  if (v1)
  {

    if (qword_10016A4A0 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016B748, qword_10016B760);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v2._object = 0x800000010013B0C0;
    v2._countAndFlagsBits = 0xD000000000000035;
    LogMessage.StringInterpolation.appendLiteral(_:)(v2);
    v3 = AccessCredential.requestId.getter();
    v0[5] = &type metadata for String;
    v0[2] = v3;
    v0[3] = v4;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
    v5._countAndFlagsBits = 2629678;
    v5._object = 0xE300000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    swift_getErrorValue();
    v6 = v0[10];
    v7 = v0[11];
    v0[9] = v7;
    v8 = sub_100042BAC(v0 + 6);
    (*(*(v7 - 8) + 16))(v8, v6, v7);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 6), &qword_10016AB10, &unk_100130B10);
    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[17];
    v13 = v0[15];

    v14 = sub_100026F50((v13 + v12), *(v13 + v12 + 24));
    v15 = AccessCredential.requestId.getter();
    v17 = v16;
    v0[23] = v16;
    v0[24] = *v14;
    v18 = swift_task_alloc();
    v0[25] = v18;
    *v18 = v0;
    v18[1] = sub_100071F7C;

    return sub_100068CF8("removeAllScheduledNotifications", 31, 2, v15, v17);
  }
}

uint64_t sub_100071C7C()
{
  v1 = *(v0 + 120);

  return _swift_task_switch(sub_100071CE8, v1, 0);
}

uint64_t sub_100071CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013B0C0;
  v4._countAndFlagsBits = 0xD000000000000035;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = AccessCredential.requestId.getter();
  v3[5] = &type metadata for String;
  v3[2] = v5;
  v3[3] = v6;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 2), &qword_10016AB10, &unk_100130B10);
  v7._countAndFlagsBits = 2629678;
  v7._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v3[10];
  v9 = v3[11];
  v3[9] = v9;
  v10 = sub_100042BAC(v3 + 6);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 6), &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = v3[1];

  return v12();
}

uint64_t sub_100071F7C()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    v3 = v2[24];

    return _swift_task_switch(sub_1000720C0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000720C0()
{
  v1 = *(v0 + 120);

  return _swift_task_switch(sub_10007212C, v1, 0);
}

uint64_t sub_10007212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013B0C0;
  v4._countAndFlagsBits = 0xD000000000000035;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = AccessCredential.requestId.getter();
  v3[5] = &type metadata for String;
  v3[2] = v5;
  v3[3] = v6;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 2), &qword_10016AB10, &unk_100130B10);
  v7._countAndFlagsBits = 2629678;
  v7._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v3[10];
  v9 = v3[11];
  v3[9] = v9;
  v10 = sub_100042BAC(v3 + 6);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 6), &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = v3[1];

  return v12();
}

void sub_1000723C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v17 = (*(v1 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_engagementFactory))(v1 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_bag);
    if (v17)
    {
      for (i = (a1 + 48); ; i += 8)
      {
        v5 = *(i - 1);
        v18 = v2;
        v19 = *(i - 2);
        v6 = *(i + 1);
        v7 = *(i + 3);
        v20 = *i;
        v21 = *(i + 2);
        v8 = i[5];
        v28 = v8;
        sub_100026F94(&qword_10016B890, &unk_1001314E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001313F0;
        aBlock = 7368801;
        v23 = 0xE300000000000000;

        AnyHashable.init<A>(_:)();
        v10 = static Utils.daemonBundleId.getter();
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v10;
        *(inited + 80) = v11;
        aBlock = 0x707954746E657665;
        v23 = 0xE900000000000065;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = 0xD000000000000015;
        *(inited + 152) = 0x800000010013B120;
        aBlock = 0x6D617473656D6974;
        v23 = 0xE900000000000070;
        AnyHashable.init<A>(_:)();
        if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v8 <= -9.22337204e18)
        {
          goto LABEL_12;
        }

        if (v8 >= 9.22337204e18)
        {
          goto LABEL_13;
        }

        *(inited + 240) = &type metadata for Int;
        *(inited + 216) = v8;
        aBlock = 0x4974736575716572;
        v23 = 0xE900000000000064;
        AnyHashable.init<A>(_:)();
        *(inited + 312) = &type metadata for String;
        *(inited + 288) = v19;
        *(inited + 296) = v5;
        aBlock = 0x6573616261746164;
        v23 = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        *(inited + 384) = &type metadata for String;
        *(inited + 360) = v20;
        *(inited + 368) = v6;
        aBlock = 0x656C626174;
        v23 = 0xE500000000000000;
        AnyHashable.init<A>(_:)();
        *(inited + 456) = &type metadata for String;
        *(inited + 432) = v21;
        *(inited + 440) = v7;
        sub_100088E10(inited);
        swift_setDeallocating();
        sub_100026F94(&qword_10016B898, &qword_100131BB0);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v13 = [v17 enqueueData:isa];

        v26 = sub_100073E78;
        v27 = 0;
        aBlock = _NSConcreteStackBlock;
        v23 = 1107296256;
        v24 = sub_1000740BC;
        v25 = &unk_100165018;
        v14 = _Block_copy(&aBlock);
        [v13 addErrorBlock:v14];
        _Block_release(v14);

        --v2;
        if (v18 == 1)
        {

          return;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
    }

    else
    {
      v15 = type metadata accessor for DaemonError();
      sub_100074354();
      swift_allocError();
      (*(*(v15 - 8) + 104))(v16, enum case for DaemonError.noAMSEngagement(_:), v15);
      swift_willThrow();
    }
  }
}

uint64_t sub_100072840()
{
  *(v1 + 80) = v0;
  type metadata accessor for LogMessage.StringInterpolation();
  *(v1 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1000728D0, v0, 0);
}

uint64_t sub_1000728D0()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry;
  v0[12] = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry;
  sub_100026F50((v1 + v2), *(v1 + v2 + 24));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100072998;

  return sub_100068334("allScheduledNotifications", 25, 2, 0, 0);
}

uint64_t sub_100072998(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 80);
  if (v1)
  {
    v6 = sub_100072DC0;
  }

  else
  {
    v6 = sub_100072ACC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100072ACC()
{
  v1 = v0[15];
  sub_1000723C0(v0[14]);
  if (v1)
  {

    if (qword_10016A4A0 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016B748, qword_10016B760);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v2._object = 0x800000010013B1B0;
    v2._countAndFlagsBits = 0xD00000000000002DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v2);
    swift_getErrorValue();
    v3 = v0[6];
    v4 = v0[7];
    v0[5] = v4;
    v5 = sub_100042BAC(v0 + 2);
    (*(*(v4 - 8) + 16))(v5, v3, v4);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[12];
    v10 = v0[10];

    sub_100026F50((v10 + v9), *(v10 + v9 + 24));
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_100072FF4;

    return sub_100068CF8("removeAllScheduledNotifications", 31, 2, 0, 0);
  }
}

uint64_t sub_100072DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013B1B0;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v3[6];
  v6 = v3[7];
  v3[5] = v6;
  v7 = sub_100042BAC(v3 + 2);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 2), &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v9 = v3[1];

  return v9();
}

uint64_t sub_100072FF4()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[10];

    return _swift_task_switch(sub_100073130, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100073130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013B1B0;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v3[6];
  v6 = v3[7];
  v3[5] = v6;
  v7 = sub_100042BAC(v3 + 2);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 2), &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v9 = v3[1];

  return v9();
}

uint64_t sub_100073364(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100073388, v2, 0);
}

uint64_t sub_100073388()
{
  if ((static Utils.isUnderTest.getter() & 1) != 0 && (static Utils.isInternalBuild.getter() & 1) != 0 && (v1 = v0[4] + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_scheduler, (v2 = *v1) != 0))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = *(v1 + 8);

    v6 = v2(v4, v3);
    sub_1000743C4(v2, v5);
    v7 = v0[1];

    return v7(v6 & 1);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[5] = v9;
    *v9 = v0;
    v9[1] = sub_1000734B4;

    return sub_10007382C();
  }
}

uint64_t sub_1000734B4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000735CC, v2, 0);
}

uint64_t sub_1000735CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[6];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v3[2];
    v7 = v6[6];
    if (v7 != 1 && v7 != 2)
    {
      v11 = (v4 + 40);
      v12 = -v5;
      v13 = -1;
      while (v12 + v13 != -1)
      {
        if (++v13 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v15 = *(v11 - 1);
        v14 = *v11;
        v16 = v6[2];
        v17 = v6[3];

        if (sub_10008B764(v15, v14, v16, v17))
        {

LABEL_19:

          v8 = 1;
          goto LABEL_8;
        }

        v11 += 2;
        v18 = sub_10008B764(v15, v14, v6[4], v6[5]);

        if (v18)
        {
          goto LABEL_19;
        }
      }
    }
  }

  else
  {

    if (qword_10016A4A0 != -1)
    {
LABEL_21:
      swift_once();
    }

    sub_100026F50(qword_10016B748, qword_10016B760);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  v8 = 0;
LABEL_8:
  v9 = v3[1];

  return v9(v8);
}

uint64_t sub_10007384C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_cachedPrefixes;
  v0[3] = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_cachedPrefixes;
  v3 = v1 + v2;
  os_unfair_lock_lock((v1 + v2));
  v4 = *(v3 + 8);

  os_unfair_lock_unlock(v3);
  if (v4)
  {
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100073950;

    return sub_100073AEC();
  }
}

uint64_t sub_100073950(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100073A50, 0, 0);
}

uint64_t sub_100073A50()
{
  v1 = v0[2] + v0[3];
  if (v0[5])
  {
    v2 = v0[5];
  }

  else
  {
    v2 = &off_1001645F8;
  }

  os_unfair_lock_lock((v0[2] + v0[3]));

  *(v1 + 8) = v2;

  os_unfair_lock_unlock(v1);
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100073AEC()
{
  v1[3] = v0;
  v2 = sub_100026F94(&qword_10016AC08, &qword_100131520);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100073BB8, 0, 0);
}

uint64_t sub_100073BB8()
{
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100073C94;
  v3 = *(v0 + 32);

  return Bag.Value.currentOrNil()(v0 + 16, v3);
}

uint64_t sub_100073C94()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100073DEC, 0, 0);
}

uint64_t sub_100073DEC()
{
  if (*(v0 + 16))
  {
    v1 = sub_10002F3B8(*(v0 + 16));
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100073E78(uint64_t a1)
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  if (qword_10016A670 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100026F50(v8, v8[3]);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010013B160;
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_100042BAC(v7);
  (*(*(v6 - 8) + 16))(v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v7, &qword_10016AB10, &unk_100130B10);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return sub_100026FDC(v8);
}

void sub_1000740BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100074124()
{
  v1 = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_bag;
  v2 = type metadata accessor for Bag();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100026FDC((v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry));

  sub_100026FDC((v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dateProvider));
  sub_1000743C4(*(v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_scheduler), *(v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_scheduler + 8));
  sub_10002BA6C(v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_cachedPrefixes + 8, &qword_10016B8A0, &qword_1001314F8);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for NotificationCenterImplementation(uint64_t a1)
{
  result = qword_10016B7C8;
  if (!qword_10016B7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007425C(uint64_t a1)
{
  result = type metadata accessor for Bag();
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

char *sub_100074324()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100026F94(&qword_10016B888, &qword_100131498);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

unint64_t sub_100074354()
{
  result = qword_10016AB40;
  if (!qword_10016AB40)
  {
    type metadata accessor for DaemonError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB40);
  }

  return result;
}

uint64_t sub_1000743AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000743C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000743D8()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016B8A8);
  sub_10002FD14(v0, qword_10016B8A8);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100074494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[79] = a4;
  v5[78] = a3;
  v5[77] = a2;
  v5[76] = a1;
  v6 = type metadata accessor for ColumnDefinition();
  v5[80] = v6;
  v5[81] = *(v6 - 8);
  v5[82] = swift_task_alloc();
  v7 = type metadata accessor for DataSpecification.Namespace.Table.Column();
  v5[83] = v7;
  v5[84] = *(v7 - 8);
  v5[85] = swift_task_alloc();
  v8 = type metadata accessor for DataSpecification.Namespace.Table();
  v5[86] = v8;
  v5[87] = *(v8 - 8);
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v9 = type metadata accessor for DataSpecification.Namespace();
  v5[90] = v9;
  v5[91] = *(v9 - 8);
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v10 = type metadata accessor for DataSpecification();
  v5[94] = v10;
  v5[95] = *(v10 - 8);
  v5[96] = swift_task_alloc();
  v11 = type metadata accessor for AccessType();
  v5[97] = v11;
  v5[98] = *(v11 - 8);
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v5[101] = v12;
  v5[102] = *(v12 - 8);
  v5[103] = swift_task_alloc();
  v5[104] = swift_task_alloc();

  return _swift_task_switch(sub_1000747EC, v4, 0);
}

uint64_t sub_1000747EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v297 = v3;
  if (qword_10016A4A8 != -1)
  {
    goto LABEL_160;
  }

LABEL_2:
  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B8A8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "checkQuery", "", v7, 2u);
  }

  v9 = v3[34].__r_.__value_.__r.__words[2];
  size = v3[34].__r_.__value_.__l.__size_;
  data = v3[34].__r_.__value_.__l.__data_;
  v12 = v3[33].__r_.__value_.__r.__words[2];
  v13 = v3[25].__r_.__value_.__l.__size_;

  (*(data + 2))(size, v9, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v280 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(data + 1))(v9, v12);
  v14 = *v13;
  v295 = v3;
  sub_10007AA90(v14, &v3[18].__r_.__value_.__r.__words[2]);
  v286 = 0;
  v3 = v295;
  v15 = v295[33].__r_.__value_.__l.__data_;
  v16 = v295[32].__r_.__value_.__r.__words[2];
  v17 = v295[32].__r_.__value_.__l.__size_;
  AccessCredential.accessType.getter();
  sub_1000785F0(&qword_10016B968, &protocol conformance descriptor for AccessType);
  LOBYTE(size) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v20 = *(v16 + 8);
  v18 = v16 + 8;
  v19 = v20;
  v20(v15, v17);
  if ((size & 1) == 0)
  {
    v43 = v3[33].__r_.__value_.__l.__size_;
    v44 = v3[32].__r_.__value_.__l.__size_;
    sub_100078504();
    v286 = swift_allocError();
    *v45 = v14;
    *(v45 + 8) = 0;
    swift_willThrow();
    v19(v43, v44);
    goto LABEL_138;
  }

  v267 = v19;
  v268 = v18;
  v21 = v3[32].__r_.__value_.__l.__data_;
  v22 = v3[31].__r_.__value_.__r.__words[2];
  v23 = v3[31].__r_.__value_.__l.__size_;
  v24 = v3[25].__r_.__value_.__l.__size_;
  AccessCredential.dataSpecification.getter();
  v270 = DataSpecification.namespaces.getter();
  (*(v22 + 8))(v21, v23);
  sub_10001DAD8(v24, &v3[8]);
  v25 = sub_10002A1C8(&v3[8]);
  v26 = sub_10002A1D0(&v3[8]);
  v3[23].__r_.__value_.__l.__size_ = v25;
  v3[23].__r_.__value_.__r.__words[0] = v26;
  v27 = sub_10002A30C(&v3[23].__r_.__value_.__l.__size_, v3[23].__r_.__value_.__r.__words);
  if (v27)
  {
    v28 = v27;
    v296 = _swiftEmptyArrayStorage;
    result = sub_10007E9EC(0, v27 & ~(v27 >> 63), 0);
    if (v28 < 0)
    {
      goto LABEL_163;
    }

    v30 = 0;
    v3 = v295;
    v31 = v296;
    v32 = &v295[21].__r_.__value_.__r.__words[2];
    v33 = &v295[22];
    do
    {
      v34 = sub_10002A418(v3[8].__r_.__value_.__r.__words, v30);
      std::string::basic_string(v3 + 10, v34);
      std::string::basic_string(v3 + 11, v3 + 10);
      sub_10002EFB0(&v3[11]);
      sub_10002EFC4(&v3[11]);
      v35 = static String._fromUTF8Repairing(_:)();
      v37 = v36;
      std::string::~string(v3 + 10);
      std::string::~string(v3 + 11);
      v296 = v31;
      v39 = v31[2];
      v38 = v31[3];
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
        v3 = v295;
        v31 = v296;
      }

      v31[2] = v39 + 1;
      v40 = &v31[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
      v41 = sub_10002A1C8(&v3[8]);
      v42 = sub_10002A1D0(&v3[8]);
      v33->__words[0] = v41;
      *v32 = v42;
      if (v30 >= sub_10002A30C(v33, v32))
      {
        __break(1u);
        goto LABEL_158;
      }

      ++v30;
    }

    while (v28 != v30);
    sub_100078558(&v3[8].__r_.__value_.__l.__data_);
  }

  else
  {
    sub_100078558(&v3[8].__r_.__value_.__l.__data_);
    v31 = _swiftEmptyArrayStorage;
  }

  v283 = sub_1000817CC(v31);

  v46 = *(v270 + 16);
  v47 = _swiftEmptyArrayStorage;
  if (v46)
  {
    v48 = v3[30].__r_.__value_.__l.__size_;
    v296 = _swiftEmptyArrayStorage;
    sub_10007E9EC(0, v46, 0);
    v47 = v296;
    v50 = *(v48 + 16);
    v49 = v48 + 16;
    v294 = v50;
    v51 = v270 + ((*(v49 + 64) + 32) & ~*(v49 + 64));
    v293 = *(v49 + 56);
    v52 = (v49 - 8);
    do
    {
      v53 = v295[31].__r_.__value_.__l.__data_;
      v54 = v295[30].__r_.__value_.__l.__data_;
      v55 = v49;
      (v294)(v53, v51, v54);
      v56 = DataSpecification.Namespace.name.getter();
      v58 = v57;
      (*v52)(v53, v54);
      v296 = v47;
      v60 = v47[2];
      v59 = v47[3];
      if (v60 >= v59 >> 1)
      {
        sub_10007E9EC((v59 > 1), v60 + 1, 1);
        v47 = v296;
      }

      v47[2] = v60 + 1;
      v61 = &v47[2 * v60];
      v61[4] = v56;
      v61[5] = v58;
      v51 += v293;
      --v46;
      v49 = v55;
    }

    while (v46);
    v3 = v295;
  }

  v62 = sub_1000817CC(v47);

  v63 = v283;
  if ((sub_100076660(v62, v283) & 1) == 0)
  {

    if (*(v62 + 16) <= v63[2] >> 3)
    {
      v296 = v63;
      sub_100077768(v62);

      v3 = v295;
      v219 = v296;
    }

    else
    {
      v219 = sub_100076D38(v62, v63);
    }

    v220 = v3[33].__r_.__value_.__l.__size_;
    v221 = v3[32].__r_.__value_.__l.__size_;
    sub_100078504();
    v286 = swift_allocError();
    *v222 = v219;
    *(v222 + 8) = 1;
    swift_willThrow();
    goto LABEL_130;
  }

  result = v270;
  v263 = *(v270 + 16);
  if (!v263)
  {
LABEL_127:

    (*(v3[26].__r_.__value_.__r.__words[0] + 72))(*v3[26].__r_.__value_.__l.__data_, *(v3[26].__r_.__value_.__r.__words[0] + 8), v3[25].__r_.__value_.__r.__words[2]);
    v224 = v295[26].__r_.__value_.__l.__data_;
    AccessCredential.entitlements.getter();
    sub_100026F50(v224 + 4, *(v224 + 7));
    v225 = dispatch thunk of EntitlementChecker.hasEntitlements(_:)();

    if (v225)
    {
      v226 = v295[33].__r_.__value_.__l.__size_;
      v227 = v295[32].__r_.__value_.__l.__size_;
      v294 = v295[28].__r_.__value_.__l.__size_;
      v267(v226, v227);
      sub_100078228("checkQuery", 10, 2, v280);

      v228 = v295->__r_.__value_.__l.__size_;
      goto LABEL_139;
    }

    sub_100042B50();
    v230 = v295;
    v295[19].__r_.__value_.__l.__size_ = 0;
    v230[19].__r_.__value_.__r.__words[2] = 0;
    swift_willThrowTypedImpl();
    v3 = v295;
    v231 = v295[33].__r_.__value_.__l.__size_;
    v221 = v295[32].__r_.__value_.__l.__size_;
    sub_100042B50();
    v286 = swift_allocError();
    *v232 = 0;
    v232[1] = 0;
    v223 = v231;
    goto LABEL_136;
  }

  v64 = 0;
  p_size = &v3[21].__r_.__value_.__l.__size_;
  v260 = &v3[22].__r_.__value_.__l.__size_;
  v259 = &v3[22].__r_.__value_.__r.__words[2];
  v292 = &v3[24];
  v293 = &v3[23].__r_.__value_.__r.__words[2];
  v278 = &v3[25];
  v65 = v3[30].__r_.__value_.__l.__size_;
  v66 = v3[29].__r_.__value_.__l.__data_;
  v67 = v3[28].__r_.__value_.__l.__data_;
  v68 = v3[27].__r_.__value_.__l.__data_;
  v265 = v270 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
  v264 = v65 + 16;
  v277 = v283 + 56;
  v285 = v66 + 16;
  v274 = v66;
  v284 = (v66 + 8);
  v291 = v67 + 16;
  v258 = v67;
  v290 = (v67 + 8);
  v282 = v68 + 16;
  v256 = v68;
  v281 = (v68 + 8);
  v266 = v65;
  v261 = (v65 + 8);
  while (1)
  {
    if (v64 >= *(result + 16))
    {
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      return result;
    }

    v71 = v3[30].__r_.__value_.__r.__words[2];
    v72 = v3[30].__r_.__value_.__l.__data_;
    v73 = *(v266 + 72);
    v269 = v64;
    (*(v266 + 16))(v71, v265 + v73 * v64, v72);
    v287 = DataSpecification.Namespace.name.getter();
    v288 = v74;
    if (!*(v283 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v75 = Hasher._finalize()(), v76 = -1 << *(v283 + 32), v77 = v75 & ~v76, ((*(v277 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0))
    {
      v3 = v295;
LABEL_25:
      v69 = v3[30].__r_.__value_.__r.__words[2];
      v70 = v3[30].__r_.__value_.__l.__data_;

      goto LABEL_26;
    }

    v78 = ~v76;
    while (1)
    {
      v79 = (*(v283 + 48) + 16 * v77);
      if (*v79 == v287 && v79[1] == v288)
      {
        break;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v3 = v295;
      if (v81)
      {
        break;
      }

      v77 = (v77 + 1) & v78;
      if (((*(v277 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v294 = DataSpecification.Namespace.tables.getter();
    v82 = v294[2];
    if (v82)
    {
      v296 = _swiftEmptyArrayStorage;
      sub_10007E9EC(0, v82, 0);
      v83 = v296;
      v84 = v294 + ((v274[80] + 32) & ~v274[80]);
      v85 = *(v274 + 9);
      v86 = *(v274 + 2);
      do
      {
        v87 = v295[29].__r_.__value_.__r.__words[2];
        v88 = v295[28].__r_.__value_.__r.__words[2];
        v86(v87, v84, v88);
        v89 = DataSpecification.Namespace.Table.name.getter();
        v91 = v90;
        (*v284)(v87, v88);
        v296 = v83;
        v93 = v83[2];
        v92 = v83[3];
        if (v93 >= v92 >> 1)
        {
          sub_10007E9EC((v92 > 1), v93 + 1, 1);
          v83 = v296;
        }

        v83[2] = v93 + 1;
        v94 = &v83[2 * v93];
        v94[4] = v89;
        v94[5] = v91;
        v84 += v85;
        --v82;
      }

      while (v82);
    }

    else
    {

      v83 = _swiftEmptyArrayStorage;
    }

    v95 = v295[25].__r_.__value_.__l.__size_;
    v96 = sub_1000817CC(v83);

    v97 = v288;

    sub_10007683C(v287, v97, v295 + 15);
    v98 = v295;
    sub_10001DD08(v95, &v295[15], &v295[14]);
    std::string::~string(v98 + 15);
    v99 = sub_10002A1C8(&v98[14]);
    v100 = sub_10002A1D0(&v98[14]);
    v101 = p_size;
    *p_size = v99;
    v98[20].__r_.__value_.__r.__words[2] = v100;
    v102 = sub_10002A2EC(v101, &v98[20].__r_.__value_.__r.__words[2]);
    if (v102)
    {
      v103 = v102;
      v296 = _swiftEmptyArrayStorage;
      result = sub_10007E9EC(0, v102 & ~(v102 >> 63), 0);
      if (v103 < 0)
      {
        goto LABEL_164;
      }

      v104 = 0;
      v3 = v295;
      v105 = v296;
      while (1)
      {
        v106 = sub_10002C030(v3[14].__r_.__value_.__r.__words, v104);
        sub_10002A33C(&v3[4].__r_.__value_.__s.__data_[16], v106);
        std::string::basic_string(v3 + 17, (v3 + 136));
        sub_10002EFB0(&v3[17]);
        sub_10002EFC4(&v3[17]);
        v107 = static String._fromUTF8Repairing(_:)();
        v109 = v108;
        v3 = v295;
        sub_10001B428(&v295[4].__r_.__value_.__r.__words[2]);
        std::string::~string(v3 + 17);
        v296 = v105;
        v111 = v105[2];
        v110 = v105[3];
        if (v111 >= v110 >> 1)
        {
          sub_10007E9EC((v110 > 1), v111 + 1, 1);
          v3 = v295;
          v105 = v296;
        }

        v105[2] = v111 + 1;
        v112 = &v105[2 * v111];
        v112[4] = v107;
        v112[5] = v109;
        v113 = sub_10002A1C8(&v3[14]);
        v114 = sub_10002A1D0(&v3[14]);
        v3[21].__r_.__value_.__r.__words[0] = v113;
        v115 = v278;
        *v278 = v114;
        if (v104 >= sub_10002A2EC(v3[21].__r_.__value_.__r.__words, v115))
        {
          break;
        }

        if (v103 == ++v104)
        {
          goto LABEL_54;
        }
      }

LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      swift_once();
      goto LABEL_2;
    }

    v105 = _swiftEmptyArrayStorage;
LABEL_54:
    v294 = sub_1000817CC(v105);

    if ((sub_100076660(v96, v294) & 1) == 0)
    {

      if (*(v96 + 16) <= v294[2] >> 3)
      {
        v296 = v294;
        sub_100077768(v96);

        v248 = v296;
      }

      else
      {
        v248 = sub_100076D38(v96, v294);
      }

      v3 = v295;
      v220 = v295[33].__r_.__value_.__l.__size_;
      v221 = v295[32].__r_.__value_.__l.__size_;
      v249 = v295[30].__r_.__value_.__r.__words[2];
      v250 = v295[30].__r_.__value_.__l.__data_;
      sub_100078504();
      v286 = swift_allocError();
      *v254 = v248;
      *(v254 + 8) = 2;
      swift_willThrow();
LABEL_156:
      sub_10002A4B8(&v3[14].__r_.__value_.__l.__data_);
      (*v261)(v249, v250);
LABEL_130:
      v223 = v220;
LABEL_136:
      v233 = v221;
      goto LABEL_137;
    }

    v116 = DataSpecification.Namespace.tables.getter();
    v275 = v116;
    v273 = *(v116 + 16);
    if (v273)
    {
      break;
    }

    v3 = v295;
LABEL_124:

    v69 = v3[30].__r_.__value_.__r.__words[2];
    v70 = v3[30].__r_.__value_.__l.__data_;

    sub_10002A4B8(&v3[14].__r_.__value_.__l.__data_);
LABEL_26:
    (*v261)(v69, v70);
    v64 = v269 + 1;
    result = v270;
    if (v269 + 1 == v263)
    {
      goto LABEL_127;
    }
  }

  v117 = 0;
  v272 = v116 + ((v274[80] + 32) & ~v274[80]);
  v3 = v295;
  v289 = v294 + 7;
  while (1)
  {
    if (v117 >= *(v275 + 16))
    {
      goto LABEL_159;
    }

    v120 = v3[29].__r_.__value_.__l.__size_;
    v121 = v3[28].__r_.__value_.__r.__words[2];
    v122 = *(v274 + 9);
    v279 = v117;
    (*(v274 + 2))(v120, v272 + v122 * v117, v121);
    v123 = DataSpecification.Namespace.Table.name.getter();
    v125 = v124;
    if (!v294[2] || (v126 = v123, Hasher.init(_seed:)(), String.hash(into:)(), v127 = Hasher._finalize()(), v128 = -1 << *(v294 + 32), v129 = v127 & ~v128, ((*(v289 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0))
    {
      v3 = v295;
LABEL_58:
      v118 = v3[29].__r_.__value_.__l.__size_;
      v119 = v3[28].__r_.__value_.__r.__words[2];

      (*v284)(v118, v119);
      goto LABEL_59;
    }

    v130 = ~v128;
    v3 = v295;
    while (1)
    {
      v131 = (v294[6] + 16 * v129);
      if (*v131 == v126 && v131[1] == v125)
      {
        break;
      }

      v133 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v3 = v295;
      if (v133)
      {
        break;
      }

      v129 = (v129 + 1) & v130;
      if (((*(v289 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v134 = v3[25].__r_.__value_.__l.__size_;

    v135 = DataSpecification.Namespace.Table.name.getter();
    sub_10007683C(v135, v136, v295 + 13);
    v137 = v288;

    sub_10007683C(v287, v137, v295 + 12);
    v138 = v295;
    sub_10001DE4C(v134, &v295[13], &v295[12], v295[16].__r_.__value_.__r.__words);
    std::string::~string(v138 + 12);
    std::string::~string(v138 + 13);
    v139 = sub_10002A1C8(&v138[16]);
    v140 = sub_10002A1D0(&v138[16]);
    v141 = v260;
    *v260 = v139;
    v142 = v259;
    *v259 = v140;
    v143 = sub_10002A2B8(v141, v142);
    v144 = _swiftEmptyArrayStorage;
    if (v143)
    {
      v145 = v143;
      v296 = _swiftEmptyArrayStorage;
      result = sub_10007E9EC(0, v143 & ~(v143 >> 63), 0);
      if (v145 < 0)
      {
        goto LABEL_162;
      }

      v146 = 0;
      v147 = v295;
      v144 = v296;
      while (1)
      {
        v148 = sub_10002A2D8(v147[16].__r_.__value_.__r.__words, v146);
        sub_10002A2E8(&v147->__r_.__value_.__s.__data_[16], v148);
        std::string::basic_string(v147 + 9, (v147 + 64));
        sub_10002EFB0(&v147[9]);
        sub_10002EFC4(&v147[9]);
        v149 = static String._fromUTF8Repairing(_:)();
        v151 = v150;
        v147 = v295;
        sub_10001B830(&v295->__r_.__value_.__r.__words[2]);
        std::string::~string(v147 + 9);
        v296 = v144;
        v153 = v144[2];
        v152 = v144[3];
        if (v153 >= v152 >> 1)
        {
          sub_10007E9EC((v152 > 1), v153 + 1, 1);
          v147 = v295;
          v144 = v296;
        }

        v144[2] = v153 + 1;
        v154 = &v144[2 * v153];
        v154[4] = v149;
        v154[5] = v151;
        v155 = sub_10002A1C8(&v147[16]);
        v156 = sub_10002A1D0(&v147[16]);
        v157 = v292;
        v158 = v293;
        *v293 = v155;
        *v157 = v156;
        v159 = sub_10002A2B8(v158, v157);
        if (v146 >= v159)
        {
          break;
        }

        if (v145 == ++v146)
        {
          goto LABEL_78;
        }
      }

      __break(1u);
      goto LABEL_151;
    }

LABEL_78:
    v160 = sub_1000817CC(v144);

    v162 = *(v160 + 32);
    v163 = ((1 << v162) + 63) >> 6;
    if ((v162 & 0x3Fu) <= 0xD)
    {
      goto LABEL_79;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v218 = swift_slowAlloc();

    v276 = sub_100076AFC(v218, v163, v160, sub_100076A20);
    v286 = 0;
    swift_bridgeObjectRelease_n();

    if (v286)
    {
      return result;
    }

LABEL_97:

    v178 = static Connection.ServiceColumns.allNames.getter();
    v179 = sub_100076B8C(v178, v276);

    if (v179[2] && (AccessType.isReadonly.getter() & 1) == 0)
    {
      v3 = v295;
      v234 = v295[33].__r_.__value_.__l.__size_;
      v235 = v295[32].__r_.__value_.__l.__size_;
      v236 = v295[30].__r_.__value_.__r.__words[2];
      v237 = v295[30].__r_.__value_.__l.__data_;
      v238 = v295[29].__r_.__value_.__l.__size_;
      v239 = v295[28].__r_.__value_.__r.__words[2];

      sub_100078504();
      v286 = swift_allocError();
      *v240 = v179;
      *(v240 + 8) = 4;
      swift_willThrow();
      sub_1000785A4(&v3[16].__r_.__value_.__l.__data_);
      (*v284)(v238, v239);
      sub_10002A4B8(&v3[14].__r_.__value_.__l.__data_);
      (*v261)(v236, v237);
      v223 = v234;
      v233 = v235;
      goto LABEL_137;
    }

    v271 = DataSpecification.Namespace.Table.columns.getter();
    v180 = v271[2];
    if (v180)
    {
      v296 = _swiftEmptyArrayStorage;
      sub_10007E9EC(0, v180, 0);
      v181 = v296;
      v182 = v271 + ((v258[80] + 32) & ~v258[80]);
      v183 = *(v258 + 9);
      v184 = *(v258 + 2);
      do
      {
        v185 = v295[28].__r_.__value_.__l.__size_;
        v186 = v295[27].__r_.__value_.__r.__words[2];
        v184(v185, v182, v186);
        v187 = DataSpecification.Namespace.Table.Column.name.getter();
        v189 = v188;
        (*v290)(v185, v186);
        v296 = v181;
        v191 = v181[2];
        v190 = v181[3];
        if (v191 >= v190 >> 1)
        {
          sub_10007E9EC((v190 > 1), v191 + 1, 1);
          v181 = v296;
        }

        v181[2] = v191 + 1;
        v192 = &v181[2 * v191];
        v192[4] = v187;
        v192[5] = v189;
        v182 += v183;
        --v180;
      }

      while (v180);
    }

    else
    {

      v181 = _swiftEmptyArrayStorage;
    }

    v193 = v295[33].__r_.__value_.__l.__data_;
    v194 = v295[32].__r_.__value_.__l.__size_;
    v271 = sub_1000817CC(v181);

    static AccessType.delete.getter();
    sub_1000785F0(&qword_10016B978, &protocol conformance descriptor for AccessType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v267(v193, v194);
    if (v295[24].__r_.__value_.__l.__size_ == v295[24].__r_.__value_.__r.__words[2])
    {
      Connection.schema.getter();
      v195 = DataSpecification.Namespace.Table.name.getter();
      v196 = v295;
      v295[20].__r_.__value_.__r.__words[0] = v195;
      v196[20].__r_.__value_.__l.__size_ = v197;
      String.init<A>(_:)();
      v262 = dispatch thunk of SchemaReader.columnDefinitions(table:)();
      v286 = 0;

      v198 = *(v262 + 16);
      if (v198)
      {
        v296 = _swiftEmptyArrayStorage;
        sub_10007E9EC(0, v198, 0);
        v199 = v296;
        v200 = v262 + ((v256[80] + 32) & ~v256[80]);
        v201 = *(v256 + 9);
        v202 = *(v256 + 2);
        do
        {
          v203 = v295[27].__r_.__value_.__l.__size_;
          v204 = v295[26].__r_.__value_.__r.__words[2];
          v202(v203, v200, v204);
          v205 = ColumnDefinition.name.getter();
          v206 = v295;
          v295[18].__r_.__value_.__r.__words[0] = v205;
          v206[18].__r_.__value_.__l.__size_ = v207;
          v208 = String.init<A>(_:)();
          v210 = v209;
          (*v281)(v203, v204);
          v296 = v199;
          v212 = v199[2];
          v211 = v199[3];
          if (v212 >= v211 >> 1)
          {
            sub_10007E9EC((v211 > 1), v212 + 1, 1);
            v199 = v296;
          }

          v199[2] = v212 + 1;
          v213 = &v199[2 * v212];
          v213[4] = v208;
          v213[5] = v210;
          v200 += v201;
          --v198;
        }

        while (v198);
      }

      else
      {

        v199 = _swiftEmptyArrayStorage;
      }

      v214 = sub_1000817CC(v199);

      v215 = static Connection.ServiceColumns.allNames.getter();
      v155 = sub_1000772BC(v215, v214);

      if ((sub_100076660(v271, v155) & 1) == 0)
      {

        v159 = v271;
        if (v271[2] <= v155[2] >> 3)
        {
LABEL_151:
          v296 = v155;
          sub_100077768(v159);
          goto LABEL_152;
        }

        v229 = sub_100076D38(v271, v155);
LABEL_147:
        v247 = v229;

LABEL_153:
        v3 = v295;
        v220 = v295[33].__r_.__value_.__l.__size_;
        v221 = v295[32].__r_.__value_.__l.__size_;
        v249 = v295[30].__r_.__value_.__r.__words[2];
        v250 = v295[30].__r_.__value_.__l.__data_;
        v251 = v295[29].__r_.__value_.__l.__size_;
        v252 = v295[28].__r_.__value_.__r.__words[2];
        sub_100078504();
        v286 = swift_allocError();
        *v253 = v247;
        *(v253 + 8) = 3;
        swift_willThrow();
        sub_1000785A4(&v3[16].__r_.__value_.__l.__data_);
        (*v284)(v251, v252);
        goto LABEL_156;
      }
    }

    if ((sub_100076660(v271, v276) & 1) == 0)
    {

      if (v271[2] <= v276[2] >> 3)
      {
        v296 = v276;
        sub_100077768(v271);
LABEL_152:

        v247 = v296;
        goto LABEL_153;
      }

      v229 = sub_100076D38(v271, v276);
      goto LABEL_147;
    }

    v3 = v295;
    v216 = v295[29].__r_.__value_.__l.__size_;
    v217 = v295[28].__r_.__value_.__r.__words[2];

    sub_1000785A4(&v3[16].__r_.__value_.__l.__data_);
    (*v284)(v216, v217);
LABEL_59:
    v117 = v279 + 1;
    if (v279 + 1 == v273)
    {

      goto LABEL_124;
    }
  }

LABEL_79:
  v271 = &v255;
  __chkstk_darwin(v161);
  v165 = &v255 - ((v164 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v165, v164);
  v166 = 0;
  v167 = 0;
  v168 = 1 << *(v160 + 32);
  if (v168 < 64)
  {
    v169 = ~(-1 << v168);
  }

  else
  {
    v169 = -1;
  }

  v170 = v169 & *(v160 + 56);
  v171 = (v168 + 63) >> 6;
  while (v170)
  {
    v172 = __clz(__rbit64(v170));
    v170 &= v170 - 1;
LABEL_90:
    v175 = v172 | (v167 << 6);
    v176 = (*(v160 + 48) + 16 * v175);
    if (*v176 != 42 || v176[1] != 0xE100000000000000)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        *&v165[(v175 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v175;
        if (__OFADD__(v166++, 1))
        {
          goto LABEL_165;
        }
      }
    }
  }

  v173 = v167;
  while (1)
  {
    v167 = v173 + 1;
    if (__OFADD__(v173, 1))
    {
      break;
    }

    if (v167 >= v171)
    {
      v276 = sub_100077CB0(v165, v163, v166, v160);
      goto LABEL_97;
    }

    v174 = *(v160 + 56 + 8 * v167);
    ++v173;
    if (v174)
    {
      v172 = __clz(__rbit64(v174));
      v170 = (v174 - 1) & v174;
      goto LABEL_90;
    }
  }

  __break(1u);
  v3 = v295;
  v241 = v295[33].__r_.__value_.__l.__size_;
  v242 = v295[32].__r_.__value_.__l.__size_;
  v243 = v295[30].__r_.__value_.__r.__words[2];
  v244 = v295[30].__r_.__value_.__l.__data_;
  v245 = v295[29].__r_.__value_.__l.__size_;
  v246 = v295[28].__r_.__value_.__r.__words[2];

  sub_1000785A4(&v3[16].__r_.__value_.__l.__data_);
  (*v284)(v245, v246);
  sub_10002A4B8(&v3[14].__r_.__value_.__l.__data_);
  (*v261)(v243, v244);
  v223 = v241;
  v233 = v242;
LABEL_137:
  v267(v223, v233);
LABEL_138:
  v294 = v3[28].__r_.__value_.__l.__size_;
  sub_100078228("checkQuery", 10, 2, v280);

  v228 = v295->__r_.__value_.__l.__size_;
LABEL_139:

  return v228();
}

void sub_10007660C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100076614);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100076660(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}