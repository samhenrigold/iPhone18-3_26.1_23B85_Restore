uint64_t sub_1000B7D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B7DB4(const char *a1, uint64_t a2, int a3, uint64_t a4)
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
  if (qword_10016A5D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016CA60);
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

uint64_t sub_1000B8090(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016CB48, &qword_100132C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B8100(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016CB48, &qword_100132C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000B816C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_1000B81CC()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CB80);
  v1 = sub_10002FD14(v0, qword_10016CB80);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B8294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  __chkstk_darwin(v6);
  v8 = (&v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000A3D14(a1, v17);
  v9 = type metadata accessor for TTLCleanupTask(0);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  v11 = v17[14];
  v10[14] = v17[13];
  v10[15] = v11;
  v12 = v17[16];
  v10[16] = v17[15];
  v10[17] = v12;
  v14 = v17[0];
  v13 = v17[1];

  sub_1000A3D70(v17);
  *v8 = v14;
  v8[1] = v13;
  swift_storeEnumTagMultiPayload();
  sub_1000BBB30(v8, v10 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource);
  *(v10 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_connection) = a2;
  a3[3] = v9;
  a3[4] = sub_1000BBF18(&qword_10016CC48, 255, type metadata accessor for TTLCleanupTask, &unk_100132EE4);
  *a3 = v10;
}

uint64_t sub_1000B840C(uint64_t a1)
{
  v2[106] = v1;
  v2[105] = a1;
  v2[107] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v2[108] = swift_task_alloc();
  v3 = type metadata accessor for StorageCategory();
  v2[109] = v3;
  v2[110] = *(v3 - 8);
  v2[111] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[112] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[116] = v4;
  v2[117] = *(v4 - 8);
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[120] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[121] = sub_1000BBF18(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[122] = v6;
  v2[123] = v5;

  return _swift_task_switch(sub_1000B8680, v6, v5);
}

uint64_t sub_1000B8680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016CB80);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "ScheduledTTLCleanupTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 952);
  v10 = *(v3 + 944);
  v11 = *(v3 + 936);
  v12 = *(v3 + 928);

  (*(v11 + 16))(v10, v9, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 992) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v12);
  if (qword_10016A5E0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(v3 + 1000) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 1008) = *(v13 + 72);
  *(v3 + 1240) = *(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v14 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  v15 = swift_task_alloc();
  *(v3 + 1016) = v15;
  *v15 = v3;
  v15[1] = sub_1000B89B4;

  return BaseObjectGraph.inject<A>(_:)(v3 + 288, v14, v14);
}

uint64_t sub_1000B89B4()
{
  v2 = *v1;
  v2[128] = v0;

  if (v0)
  {
    v3 = v2[123];
    v4 = v2[122];

    return _swift_task_switch(sub_1000BB63C, v4, v3);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v6 = swift_task_alloc();
    v2[129] = v6;
    *v6 = v2;
    v6[1] = sub_1000B8B58;

    return BaseObjectGraph.inject<A>(_:)(v2 + 41, v5, v5);
  }
}

uint64_t sub_1000B8B58()
{
  v2 = *v1;
  *(*v1 + 1040) = v0;

  v3 = *(v2 + 984);
  v4 = *(v2 + 976);
  if (v0)
  {
    v5 = sub_1000BB7F4;
  }

  else
  {
    v5 = sub_1000B8C94;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B8C94()
{
  sub_100026F50(v0 + 41, v0[44]);
  v1 = swift_task_alloc();
  v0[131] = v1;
  *v1 = v0;
  v1[1] = sub_1000B8D30;

  return sub_1000696AC();
}

uint64_t sub_1000B8D30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1056) = v1;

  if (v1)
  {
    v5 = v4[123];
    v6 = v4[122];
    v7 = sub_1000B8E60;
  }

  else
  {
    v4[133] = a1;
    v5 = v4[123];
    v6 = v4[122];
    v7 = sub_1000B9028;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B8E60()
{
  sub_100026FDC(v0 + 41);
  sub_100026FDC(v0 + 36);
  v1 = v0[124];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[115];
  v5 = v0[105];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327E0, v7);

  sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B9028()
{
  v1 = *(v0 + 1064);

  v3 = sub_1000BC240(v2);
  *(v0 + 1072) = v3;

  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x20646E756F46;
  v4._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = *(v1 + 16);

  *(v0 + 512) = &type metadata for Int;
  *(v0 + 488) = v5;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 488, &qword_10016AB10, &unk_100130B10);
  v6._object = 0x800000010013CBB0;
  v6._countAndFlagsBits = 0xD000000000000016;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = v3[2];
  *(v0 + 544) = &type metadata for Int;
  *(v0 + 520) = v7;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 520, &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 0xD000000000000020;
  v8._object = 0x800000010013CBD0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v12 = 0;
  v13 = *(v3 + 32);
  *(v0 + 1248) = v13;
  v14 = 1 << v13;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v3[8];
  *(v0 + 1244) = enum case for StorageCategory.classC(_:);
  if (v16)
  {
    while (1)
    {
      v17 = *(v0 + 1072);
LABEL_10:
      *(v0 + 1088) = v12;
      *(v0 + 1080) = v16;
      v19 = __clz(__rbit64(v16)) | (v12 << 6);
      v20 = (*(v17 + 48) + 16 * v19);
      v21 = *v20;
      *(v0 + 1096) = *v20;
      v22 = v20[1];
      *(v0 + 1104) = v22;
      v23 = *(*(v17 + 56) + 8 * v19);
      *(v0 + 1112) = v23;
      sub_100026F50(qword_10016CB58, qword_10016CB70);
      *(swift_allocObject() + 16) = xmmword_10012FA10;

      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._countAndFlagsBits = 0xD000000000000021;
      v24._object = 0x800000010013CC00;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      *(v0 + 576) = &type metadata for String;
      *(v0 + 552) = v21;
      *(v0 + 560) = v22;

      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_10002BA6C(v0 + 552, &qword_10016AB10, &unk_100130B10);
      v25._countAndFlagsBits = 0x206874697720;
      v25._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v26 = *(v23 + 16);
      *(v0 + 608) = &type metadata for Int;
      *(v0 + 584) = v26;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 584, &qword_10016AB10, &unk_100130B10);
      v27._countAndFlagsBits = 0x73656C62617420;
      v27._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v28 = *(v23 + 16);
      *(v0 + 1120) = v28;
      if (v28)
      {
        break;
      }

      v12 = *(v0 + 1088);
      v16 = (*(v0 + 1080) - 1) & *(v0 + 1080);
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    *(v0 + 1144) = 0;
    *(v0 + 1128) = 0u;
    sub_1000A3D14(*(v0 + 1112) + 32, v0 + 16);
    v36 = sub_100026F50((v0 + 288), *(v0 + 312));
    *(v0 + 1152) = _typeName(_:qualified:)();
    *(v0 + 1160) = v37;
    *(v0 + 1168) = *v36;
    v9 = sub_1000B975C;
    v10 = 0;
    v11 = 0;

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return _swift_task_switch(v9, v10, v11);
      }

      if (v18 >= (((1 << *(v0 + 1248)) + 63) >> 6))
      {
        break;
      }

      v17 = *(v0 + 1072);
      v16 = *(v17 + 8 * v18 + 64);
      ++v12;
      if (v16)
      {
        v12 = v18;
        goto LABEL_10;
      }
    }

    v40 = *(v0 + 968);
    v41 = *(v0 + 992);
    v38 = *(v0 + 920);
    v39 = *(v0 + 960);
    v29 = *(v0 + 840);

    sub_100026F50(qword_10016CB58, qword_10016CB70);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0xD000000000000039;
    v30._object = 0x800000010013CC60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    *(v0 + 800) = &type metadata for Int;
    *(v0 + 776) = 0;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 776, &qword_10016AB10, &unk_100130B10);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 328));
    sub_100026FDC((v0 + 288));
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = v39;
    v33[3] = v40;
    v33[4] = v29;

    sub_10009C9B8(0, 0, v38, &unk_100132500, v33);

    sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2, v41);

    v34 = *(v0 + 8);

    return v34(0);
  }
}

uint64_t sub_1000B975C()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1244);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);
  v6 = *(v0 + 144);
  *(v0 + 1176) = *(v0 + 136);
  *(v0 + 1184) = v6;
  (*(v4 + 104))(v3, v2, v5);

  return _swift_task_switch(sub_1000B97EC, v1, 0);
}

uint64_t sub_1000B97EC()
{
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[108];
  v4 = v0[107];
  (*(v0[110] + 16))(&v3[v4[5]], v0[111], v0[109]);
  v5 = v0[6];
  v6 = v0[7];
  *v3 = v2;
  *(v3 + 1) = v1;
  v7 = &v3[v4[6]];
  *v7 = v5;
  *(v7 + 1) = v6;
  v3[v4[7]] = 0;
  v3[v4[8]] = 1;

  v8 = swift_task_alloc();
  v0[149] = v8;
  *v8 = v0;
  v8[1] = sub_1000B990C;
  v9 = v0[145];
  v10 = v0[144];
  v11 = v0[108];

  return sub_100050F58(v11, v10, v9);
}

uint64_t sub_1000B990C(uint64_t a1)
{
  v3 = *v2;
  v3[150] = a1;
  v3[151] = v1;

  if (v1)
  {
    v4 = v3[146];
    sub_100054A78(v3[108]);

    v5 = sub_1000B9C80;
    v6 = v4;
    v7 = 0;
  }

  else
  {
    v8 = v3[111];
    v9 = v3[110];
    v10 = v3[109];
    v11 = v3[108];

    sub_100054A78(v11);
    (*(v9 + 8))(v8, v10);
    v7 = v3[123];
    v6 = v3[122];
    v5 = sub_1000B9A90;
  }

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000B9A90()
{
  (*(v0[106] + 112))(v0 + 2, v0[150]);
  sub_100026F50(v0 + 46, v0[49]);
  v1 = swift_task_alloc();
  v0[152] = v1;
  *v1 = v0;
  v1[1] = sub_1000B9B50;
  v2 = v0[105];

  return sub_1000BF074(v2);
}

uint64_t sub_1000B9B50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1224) = v1;

  if (v1)
  {
    v5 = v4[123];
    v6 = v4[122];
    v7 = sub_1000BADE8;
  }

  else
  {
    v4[154] = a1;
    v5 = v4[123];
    v6 = v4[122];
    v7 = sub_1000BA538;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B9C80()
{
  (*(v0[110] + 8))(v0[111], v0[109]);

  return _swift_task_switch(sub_1000B9CFC, 0, 0);
}

uint64_t sub_1000B9D18()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1104);
  v47 = *(v0 + 1096);
  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0xD000000000000029;
  v4._object = 0x800000010013CC30;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  *(v0 + 640) = &type metadata for String;
  *(v0 + 616) = v6;
  *(v0 + 624) = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 616, &qword_10016AB10, &unk_100130B10);
  v7._countAndFlagsBits = 0x65686373206E6920;
  v7._object = 0xEC000000203A616DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 672) = &type metadata for String;
  *(v0 + 648) = v2;
  *(v0 + 656) = v1;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 648, &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 0x65737520726F6620;
  v8._object = 0xEB00000000203A72;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 704) = &type metadata for String;
  *(v0 + 680) = v47;
  *(v0 + 688) = v3;

  LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10002BA6C(v0 + 680, &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0x3A726F727265202CLL;
  v9._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  swift_getErrorValue();
  v10 = *(v0 + 808);
  v11 = *(v0 + 816);
  *(v0 + 736) = v11;
  v12 = sub_100042BAC((v0 + 712));
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 712, &qword_10016AB10, &unk_100130B10);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v48 = *(v0 + 1136);
  v49 = *(v0 + 1128);
  v14 = *(v0 + 1120);
  v15 = *(v0 + 1144) + 1;
  sub_1000A3D70(v0 + 16);
  if (v15 == v14)
  {
    while (1)
    {

      v19 = *(v0 + 1088);
      v20 = (*(v0 + 1080) - 1) & *(v0 + 1080);
      if (!v20)
      {
        break;
      }

      v21 = *(v0 + 1072);
LABEL_8:
      *(v0 + 1088) = v19;
      *(v0 + 1080) = v20;
      v23 = __clz(__rbit64(v20)) | (v19 << 6);
      v24 = (*(v21 + 48) + 16 * v23);
      v25 = *v24;
      *(v0 + 1096) = *v24;
      v26 = v24[1];
      *(v0 + 1104) = v26;
      v27 = *(*(v21 + 56) + 8 * v23);
      *(v0 + 1112) = v27;
      sub_100026F50(qword_10016CB58, qword_10016CB70);
      *(swift_allocObject() + 16) = xmmword_10012FA10;

      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v28._object = 0x800000010013CC00;
      v28._countAndFlagsBits = 0xD000000000000021;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      *(v0 + 576) = &type metadata for String;
      *(v0 + 552) = v25;
      *(v0 + 560) = v26;

      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_10002BA6C(v0 + 552, &qword_10016AB10, &unk_100130B10);
      v29._countAndFlagsBits = 0x206874697720;
      v29._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v30 = *(v27 + 16);
      *(v0 + 608) = &type metadata for Int;
      *(v0 + 584) = v30;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 584, &qword_10016AB10, &unk_100130B10);
      v31._countAndFlagsBits = 0x73656C62617420;
      v31._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v32 = *(v27 + 16);
      *(v0 + 1120) = v32;
      if (v32)
      {
        v33 = 0;
        goto LABEL_11;
      }
    }

    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return _swift_task_switch(v16, v17, v18);
      }

      if (v22 >= (((1 << *(v0 + 1248)) + 63) >> 6))
      {
        break;
      }

      v21 = *(v0 + 1072);
      v20 = *(v21 + 8 * v22 + 64);
      ++v19;
      if (v20)
      {
        v19 = v22;
        goto LABEL_8;
      }
    }

    v45 = *(v0 + 968);
    v46 = *(v0 + 992);
    v43 = *(v0 + 920);
    v44 = *(v0 + 960);
    v36 = *(v0 + 840);

    sub_100026F50(qword_10016CB58, qword_10016CB70);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._countAndFlagsBits = 0xD000000000000039;
    v37._object = 0x800000010013CC60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v0 + 800) = &type metadata for Int;
    *(v0 + 776) = v49;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 776, &qword_10016AB10, &unk_100130B10);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 328));
    sub_100026FDC((v0 + 288));
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
    v40 = swift_allocObject();
    v40[2] = v44;
    v40[3] = v45;
    v40[4] = v36;

    sub_10009C9B8(0, 0, v43, &unk_100132500, v40);

    sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2, v46);

    v41 = *(v0 + 8);

    return v41(v49);
  }

  else
  {
    v33 = *(v0 + 1144) + 1;
LABEL_11:
    *(v0 + 1144) = v33;
    *(v0 + 1136) = v48;
    *(v0 + 1128) = v49;
    sub_1000A3D14(*(v0 + 1112) + 136 * v33 + 32, v0 + 16);
    v34 = sub_100026F50((v0 + 288), *(v0 + 312));
    *(v0 + 1152) = _typeName(_:qualified:)();
    *(v0 + 1160) = v35;
    *(v0 + 1168) = *v34;
    v16 = sub_1000B975C;
    v17 = 0;
    v18 = 0;

    return _swift_task_switch(v16, v17, v18);
  }
}

uint64_t sub_1000BA538(uint64_t (*i)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1232);
  v5 = *(v3 + 1136);
  v6 = __OFADD__(v5, v4);
  v7 = v5 + v4;
  if (v6)
  {
LABEL_28:
    __break(1u);
    return _swift_task_switch(i, a2, a3);
  }

  v56 = v7;
  v57 = *(v3 + 968);
  v8 = *(v3 + 960);
  v9 = *(v3 + 912);
  v10 = *(v3 + 904);
  v11 = *(v3 + 848);
  sub_100026FDC((v3 + 368));
  v12 = *sub_100026F50((v3 + 288), *(v3 + 312));
  *(v3 + 432) = type metadata accessor for DatabaseConnectionManagerImplementation();
  *(v3 + 440) = &off_100164E98;
  *(v3 + 408) = v12;
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v54 = *(v14 + 56);
  v54(v9, 1, 1, v13);
  sub_100026EEC(v3 + 408, v3 + 448);
  sub_1000A3D14(v3 + 16, v3 + 152);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v57;
  sub_10002C604((v3 + 448), v15 + 32);
  *(v15 + 152) = *(v3 + 232);
  *(v15 + 168) = *(v3 + 248);
  *(v15 + 184) = *(v3 + 264);
  v16 = *(v3 + 280);
  *(v15 + 88) = *(v3 + 168);
  *(v15 + 104) = *(v3 + 184);
  *(v15 + 120) = *(v3 + 200);
  *(v15 + 136) = *(v3 + 216);
  *(v15 + 72) = *(v3 + 152);
  *(v15 + 200) = v16;
  *(v15 + 208) = v11;
  sub_100042774(v9, v10);
  v17 = v10;
  v18 = v13;
  LODWORD(v13) = (*(v14 + 48))(v17, 1, v13);

  v19 = *(v3 + 904);
  v55 = v18;
  if (v13 == 1)
  {
    sub_10002BA6C(v19, &qword_10016AD80, &qword_1001311B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v19, v18);
  }

  v20 = *(v15 + 16);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_10002BA6C(*(v3 + 912), &qword_10016AD80, &qword_1001311B0);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_100132D20;
  *(v24 + 24) = v15;
  if (v23 | v21)
  {
    *(v3 + 744) = 0;
    *(v3 + 752) = 0;
    *(v3 + 760) = v21;
    *(v3 + 768) = v23;
  }

  swift_task_create();

  sub_100026FDC((v3 + 408));
  v25 = *(v3 + 1120);
  v26 = *(v3 + 1144) + 1;
  sub_1000A3D70(v3 + 16);
  if (v26 != v25)
  {
    v41 = *(v3 + 1144) + 1;
LABEL_20:
    *(v3 + 1144) = v41;
    *(v3 + 1136) = v56;
    *(v3 + 1128) = v56;
    sub_1000A3D14(*(v3 + 1112) + 136 * v41 + 32, v3 + 16);
    v42 = sub_100026F50((v3 + 288), *(v3 + 312));
    *(v3 + 1152) = _typeName(_:qualified:)();
    *(v3 + 1160) = v43;
    *(v3 + 1168) = *v42;
    i = sub_1000B975C;
    a2 = 0;
    a3 = 0;

    return _swift_task_switch(i, a2, a3);
  }

  while (1)
  {

    v27 = *(v3 + 1088);
    v28 = (*(v3 + 1080) - 1) & *(v3 + 1080);
    if (!v28)
    {
      break;
    }

    v29 = *(v3 + 1072);
LABEL_17:
    *(v3 + 1088) = v27;
    *(v3 + 1080) = v28;
    v31 = __clz(__rbit64(v28)) | (v27 << 6);
    v32 = (*(v29 + 48) + 16 * v31);
    v33 = *v32;
    *(v3 + 1096) = *v32;
    v34 = v32[1];
    *(v3 + 1104) = v34;
    v35 = *(*(v29 + 56) + 8 * v31);
    *(v3 + 1112) = v35;
    sub_100026F50(qword_10016CB58, qword_10016CB70);
    *(swift_allocObject() + 16) = xmmword_10012FA10;

    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v36._object = 0x800000010013CC00;
    v36._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v3 + 576) = &type metadata for String;
    *(v3 + 552) = v33;
    *(v3 + 560) = v34;

    LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10002BA6C(v3 + 552, &qword_10016AB10, &unk_100130B10);
    v37._countAndFlagsBits = 0x206874697720;
    v37._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    v38 = *(v35 + 16);
    *(v3 + 608) = &type metadata for Int;
    *(v3 + 584) = v38;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v3 + 584, &qword_10016AB10, &unk_100130B10);
    v39._countAndFlagsBits = 0x73656C62617420;
    v39._object = 0xE700000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v40 = *(v35 + 16);
    *(v3 + 1120) = v40;
    if (v40)
    {
      v41 = 0;
      goto LABEL_20;
    }
  }

  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v30 >= (((1 << *(v3 + 1248)) + 63) >> 6))
    {
      break;
    }

    v29 = *(v3 + 1072);
    v28 = *(v29 + 8 * v30 + 64);
    ++v27;
    if (v28)
    {
      v27 = v30;
      goto LABEL_17;
    }
  }

  v52 = *(v3 + 968);
  v53 = *(v3 + 992);
  v50 = *(v3 + 920);
  v51 = *(v3 + 960);
  v44 = *(v3 + 840);

  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v45._countAndFlagsBits = 0xD000000000000039;
  v45._object = 0x800000010013CC60;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  *(v3 + 800) = &type metadata for Int;
  *(v3 + 776) = v56;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 776, &qword_10016AB10, &unk_100130B10);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v46);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 328));
  sub_100026FDC((v3 + 288));
  v54(v50, 1, 1, v55);
  v47 = swift_allocObject();
  v47[2] = v51;
  v47[3] = v52;
  v47[4] = v44;

  sub_10009C9B8(0, 0, v50, &unk_100132500, v47);

  sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2, v53);

  v48 = *(v3 + 8);

  return v48(v56);
}

uint64_t sub_1000BADE8()
{
  v1 = *(v0 + 848);
  sub_100026FDC((v0 + 368));
  v2 = sub_100026F50((v0 + 288), *(v0 + 312));
  sub_1000BBCE8(*v2, v0 + 16, v1);

  v3 = *(v0 + 1184);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1104);
  v49 = *(v0 + 1096);
  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000029;
  v6._object = 0x800000010013CC30;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  *(v0 + 640) = &type metadata for String;
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 616, &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0x65686373206E6920;
  v9._object = 0xEC000000203A616DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 672) = &type metadata for String;
  *(v0 + 648) = v4;
  *(v0 + 656) = v3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 648, &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 0x65737520726F6620;
  v10._object = 0xEB00000000203A72;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  *(v0 + 704) = &type metadata for String;
  *(v0 + 680) = v49;
  *(v0 + 688) = v5;

  LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10002BA6C(v0 + 680, &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 0x3A726F727265202CLL;
  v11._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  swift_getErrorValue();
  v12 = *(v0 + 808);
  v13 = *(v0 + 816);
  *(v0 + 736) = v13;
  v14 = sub_100042BAC((v0 + 712));
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 712, &qword_10016AB10, &unk_100130B10);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v50 = *(v0 + 1136);
  v51 = *(v0 + 1128);
  v16 = *(v0 + 1120);
  v17 = *(v0 + 1144) + 1;
  sub_1000A3D70(v0 + 16);
  if (v17 == v16)
  {
    while (1)
    {

      v21 = *(v0 + 1088);
      v22 = (*(v0 + 1080) - 1) & *(v0 + 1080);
      if (!v22)
      {
        break;
      }

      v23 = *(v0 + 1072);
LABEL_8:
      *(v0 + 1088) = v21;
      *(v0 + 1080) = v22;
      v25 = __clz(__rbit64(v22)) | (v21 << 6);
      v26 = (*(v23 + 48) + 16 * v25);
      v27 = *v26;
      *(v0 + 1096) = *v26;
      v28 = v26[1];
      *(v0 + 1104) = v28;
      v29 = *(*(v23 + 56) + 8 * v25);
      *(v0 + 1112) = v29;
      sub_100026F50(qword_10016CB58, qword_10016CB70);
      *(swift_allocObject() + 16) = xmmword_10012FA10;

      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v30._object = 0x800000010013CC00;
      v30._countAndFlagsBits = 0xD000000000000021;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      *(v0 + 576) = &type metadata for String;
      *(v0 + 552) = v27;
      *(v0 + 560) = v28;

      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_10002BA6C(v0 + 552, &qword_10016AB10, &unk_100130B10);
      v31._countAndFlagsBits = 0x206874697720;
      v31._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v32 = *(v29 + 16);
      *(v0 + 608) = &type metadata for Int;
      *(v0 + 584) = v32;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 584, &qword_10016AB10, &unk_100130B10);
      v33._countAndFlagsBits = 0x73656C62617420;
      v33._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v34 = *(v29 + 16);
      *(v0 + 1120) = v34;
      if (v34)
      {
        v35 = 0;
        goto LABEL_11;
      }
    }

    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        return _swift_task_switch(v18, v19, v20);
      }

      if (v24 >= (((1 << *(v0 + 1248)) + 63) >> 6))
      {
        break;
      }

      v23 = *(v0 + 1072);
      v22 = *(v23 + 8 * v24 + 64);
      ++v21;
      if (v22)
      {
        v21 = v24;
        goto LABEL_8;
      }
    }

    v47 = *(v0 + 968);
    v48 = *(v0 + 992);
    v45 = *(v0 + 920);
    v46 = *(v0 + 960);
    v38 = *(v0 + 840);

    sub_100026F50(qword_10016CB58, qword_10016CB70);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v39._countAndFlagsBits = 0xD000000000000039;
    v39._object = 0x800000010013CC60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    *(v0 + 800) = &type metadata for Int;
    *(v0 + 776) = v51;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 776, &qword_10016AB10, &unk_100130B10);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 328));
    sub_100026FDC((v0 + 288));
    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v45, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = v46;
    v42[3] = v47;
    v42[4] = v38;

    sub_10009C9B8(0, 0, v45, &unk_100132500, v42);

    sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2, v48);

    v43 = *(v0 + 8);

    return v43(v51);
  }

  else
  {
    v35 = *(v0 + 1144) + 1;
LABEL_11:
    *(v0 + 1144) = v35;
    *(v0 + 1136) = v50;
    *(v0 + 1128) = v51;
    sub_1000A3D14(*(v0 + 1112) + 136 * v35 + 32, v0 + 16);
    v36 = sub_100026F50((v0 + 288), *(v0 + 312));
    *(v0 + 1152) = _typeName(_:qualified:)();
    *(v0 + 1160) = v37;
    *(v0 + 1168) = *v36;
    v18 = sub_1000B975C;
    v19 = 0;
    v20 = 0;

    return _swift_task_switch(v18, v19, v20);
  }
}

uint64_t sub_1000BB63C()
{
  v1 = v0[124];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[115];
  v5 = v0[105];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001324D0, v7);

  sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000BB7F4()
{
  sub_100026FDC(v0 + 36);
  v1 = v0[124];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[115];
  v5 = v0[105];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327D0, v7);

  sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000BB9B4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000BBA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100042680;

  return sub_1000B840C(a1);
}

uint64_t sub_1000BBAD8(uint64_t a1, uint64_t a2)
{
  result = sub_1000BBF18(&qword_10016CC40, a2, type metadata accessor for ScheduledTTLCleanupTask, &unk_100132C98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000BBB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for StorageCategory();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000BBF18(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B0678, v9, v8);
}

uint64_t sub_1000BBCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v24[3] = type metadata accessor for DatabaseConnectionManagerImplementation();
  v24[4] = &off_100164E98;
  v24[0] = a1;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100026EEC(v24, v23);
  sub_1000A3D14(a2, v21);
  v10 = qword_10016A6C8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1001738A8;
  v12 = sub_1000BBF18(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  sub_10002C604(v23, v13 + 32);
  v14 = v21[4];
  *(v13 + 152) = v21[5];
  v15 = v21[7];
  *(v13 + 168) = v21[6];
  *(v13 + 184) = v15;
  v16 = v21[0];
  *(v13 + 88) = v21[1];
  v17 = v21[3];
  *(v13 + 104) = v21[2];
  *(v13 + 120) = v17;
  *(v13 + 136) = v14;
  v18 = v22;
  *(v13 + 72) = v16;
  *(v13 + 200) = v18;
  *(v13 + 208) = a3;

  sub_10009C9B8(0, 0, v8, &unk_100132D30, v13);

  return sub_100026FDC(v24);
}

uint64_t sub_1000BBF18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000BBF64(const char *a1, uint64_t a2, int a3, uint64_t a4)
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
  if (qword_10016A5E8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016CB80);
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

void *sub_1000BC240(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v49 = &_swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = a1 + 32;
  v4 = &selRef_processInfo;
  while (1)
  {
    sub_1000A3D14(v3, &v40);
    if (v4[217] != -1)
    {
      swift_once();
    }

    type metadata accessor for DaemonActor();
    sub_1000BBF18(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v6 = v42;

    v8 = sub_10009E700(v6, *(&v6 + 1));
    v9 = v1[2];
    v10 = (v7 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      break;
    }

    v12 = v7;
    if (v1[3] < v11)
    {
      sub_1000A05B0(v11, 1);
      v1 = v49;
      v13 = sub_10009E700(v6, *(&v6 + 1));
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_23;
      }

      v8 = v13;
    }

    if (v12)
    {

      v15 = v1[7];
      v37 = v46;
      v38 = v47;
      v39 = v48;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v31 = v40;
      v32 = v41;
      v16 = *(v15 + 8 * v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 8 * v8) = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_10007E4A4(0, *(v16 + 2) + 1, 1, v16);
        *(v15 + 8 * v8) = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_10007E4A4((v18 > 1), v19 + 1, 1, v16);
        *(v15 + 8 * v8) = v16;
      }

      *(v16 + 2) = v19 + 1;
      v5 = &v16[136 * v19];
      *(v5 + 2) = v31;
      *(v5 + 5) = v34;
      *(v5 + 6) = v35;
      *(v5 + 3) = v32;
      *(v5 + 4) = v33;
      *(v5 + 20) = v39;
      *(v5 + 8) = v37;
      *(v5 + 9) = v38;
      *(v5 + 7) = v36;
      v4 = &selRef_processInfo;
    }

    else
    {
      sub_100026F94(&qword_10016BBA0, &unk_100131870);
      v20 = swift_allocObject();
      v21 = v46;
      v22 = v47;
      v23 = v44;
      *(v20 + 112) = v45;
      *(v20 + 128) = v21;
      *(v20 + 144) = v22;
      v24 = v42;
      v25 = v43;
      v26 = v40;
      *(v20 + 48) = v41;
      *(v20 + 64) = v24;
      *(v20 + 80) = v25;
      *(v20 + 96) = v23;
      *(v20 + 160) = v48;
      *(v20 + 16) = xmmword_10012FA10;
      *(v20 + 32) = v26;
      v1[(v8 >> 6) + 8] |= 1 << v8;
      *(v1[6] + 16 * v8) = v6;
      *(v1[7] + 8 * v8) = v20;
      v27 = v1[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_22;
      }

      v1[2] = v29;
    }

    v3 += 136;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000BC598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A444C;

  return sub_1000BBB94(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000BC65C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BC694()
{
  swift_unknownObjectRelease();
  sub_100026FDC((v0 + 32));

  sub_100026FDC((v0 + 120));

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000BC714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_1000BBB94(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000BC7E8()
{
  type metadata accessor for LogMessage.StringInterpolation();
  v0[25] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v0[26] = qword_1001738A8;
  v1 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_1000BC90C;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1000BC90C()
{
  v2 = *v1;
  v2[28] = v0;

  type metadata accessor for DaemonActor();
  sub_1000BCFE8();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v4;
  v2[30] = v3;
  if (v0)
  {
    v5 = sub_1000BCD98;
  }

  else
  {
    v5 = sub_1000BCA68;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000BCA68()
{
  sub_1000BD040((v0 + 2), (v0 + 12));
  v1 = v0[15];
  if (v1)
  {
    v2 = sub_100026F50(v0 + 12, v1);
    v3 = *v2;
    v0[31] = *v2;

    return _swift_task_switch(sub_1000BCB50, v3, 0);
  }

  else
  {
    sub_10002BA6C((v0 + 2), &qword_10016CC50, &unk_100132D60);
    sub_10002BA6C((v0 + 12), &qword_10016CC50, &unk_100132D60);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000BCB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3[31] + 216) <= 0)
  {
    if (qword_10016A3B8 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016B350, qword_10016B368);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_1000522FC(0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
    type metadata accessor for Connection();
    static Connection.releaseMemory()();
  }

  v4 = v3[29];
  v5 = v3[30];

  return _swift_task_switch(sub_1000BCD18, v4, v5);
}

uint64_t sub_1000BCD18()
{
  sub_10002BA6C(v0 + 16, &qword_10016CC50, &unk_100132D60);
  sub_100026FDC((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BCD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100026F50(v3 + 7, v3[10]);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013CCE0;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v3[21];
  v6 = v3[22];
  v3[20] = v6;
  v7 = sub_100042BAC(v3 + 17);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 17), &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100026FDC(v3 + 7);

  v9 = v3[1];

  return v9();
}

unint64_t sub_1000BCFE8()
{
  result = qword_10016ADA0;
  if (!qword_10016ADA0)
  {
    type metadata accessor for DaemonActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ADA0);
  }

  return result;
}

uint64_t sub_1000BD040(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016CC50, &unk_100132D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BD0B0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CC58);
  v1 = sub_10002FD14(v0, qword_10016CC58);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000BD19C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000BD578(a1);
}

uint64_t sub_1000BD244(uint64_t a1, uint64_t a2)
{
  result = sub_1000BEE54(&qword_10016CD10, a2, type metadata accessor for TriggerForwardDeletionRulesTask, &unk_100132D90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000BD29C(const char *a1, uint64_t a2, int a3, uint64_t a4)
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
  if (qword_10016A5F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016CC58);
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

uint64_t sub_1000BD578(uint64_t a1)
{
  v1[39] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v1[40] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v1[41] = swift_task_alloc();
  v2 = type metadata accessor for OSSignpostID();
  v1[42] = v2;
  v1[43] = *(v2 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v1[46] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v1[47] = sub_1000BEE54(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[48] = v4;
  v1[49] = v3;

  return _swift_task_switch(sub_1000BD740, v4, v3);
}

uint64_t sub_1000BD740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016CC58);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "TriggerForwardDeletionRulesTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 352);
  v10 = *(v3 + 360);
  v11 = *(v3 + 336);
  v12 = *(v3 + 344);

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 400) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v3 + 408) = qword_100173878;
  TaskLocal.get()();
  sub_100026F50((v3 + 16), *(v3 + 40));
  *(v3 + 416) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 424) = *(v13 + 72);
  *(v3 + 536) = *(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 16));
  v14 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v15 = swift_task_alloc();
  *(v3 + 432) = v15;
  *v15 = v3;
  v15[1] = sub_1000BDA84;

  return BaseObjectGraph.inject<A>(_:)(v3 + 56, v14, v14);
}

uint64_t sub_1000BDA84()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_1000BE724;
  }

  else
  {
    v5 = sub_1000BDBC0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000BDBC0()
{
  sub_100026F50(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[56] = v1;
  *v1 = v0;
  v1[1] = sub_1000BDC5C;

  return sub_10005CC18();
}

uint64_t sub_1000BDC5C(uint64_t a1)
{
  v3 = *v2;
  v3[57] = a1;
  v3[58] = v1;

  if (v1)
  {
    v4 = v3[48];
    v5 = v3[49];

    return _swift_task_switch(sub_1000BDF18, v4, v5);
  }

  else
  {
    v6 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
    v7 = swift_task_alloc();
    v3[59] = v7;
    *v7 = v3;
    v7[1] = sub_1000BDDFC;

    return BaseObjectGraph.inject<A>(_:)(v3 + 12, v6, v6);
  }
}

uint64_t sub_1000BDDFC()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_1000BE898;
  }

  else
  {
    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_1000BE094;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000BDF18()
{
  sub_100026FDC(v0 + 7);
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[41];
  v5 = v0[39];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327D0, v7);

  sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000BE094()
{
  v1 = v0[57];
  v2 = v1[2];
  v0[61] = v2;
  if (v2)
  {
    v0[62] = 0;
    v3 = v1[4];
    v0[63] = v3;
    v4 = v1[5];
    v0[64] = v4;
    sub_100026F50(v0 + 12, v0[15]);
    v5 = type metadata accessor for AppDataCleanupTask();
    v6 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    swift_defaultActor_initialize();
    *(v6 + 112) = v3;
    *(v6 + 120) = v4;
    v0[20] = v5;
    v0[21] = sub_1000BEE54(&qword_10016CD18, 255, type metadata accessor for AppDataCleanupTask, &unk_100132648);
    v0[17] = v6;
    v7 = swift_task_alloc();
    v0[65] = v7;
    *v7 = v0;
    v7[1] = sub_1000BE344;
    v8 = v0[39];

    return sub_100095AAC((v0 + 17), v8);
  }

  else
  {
    v10 = v0[50];
    v11 = v0[46];
    v12 = v0[47];
    v13 = v0[41];
    v14 = v0[39];

    sub_100026FDC(v0 + 12);
    sub_100026FDC(v0 + 7);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = v11;
    v16[3] = v12;
    v16[4] = v14;

    sub_10009C9B8(0, 0, v13, &unk_1001326B0, v16);

    sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2, v10);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1000BE344()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = v2[48];
    v4 = v2[49];
    v5 = sub_1000BEA14;
  }

  else
  {

    sub_100026FDC(v2 + 17);
    v3 = v2[48];
    v4 = v2[49];
    v5 = sub_1000BE468;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000BE468()
{
  v1 = v0[62] + 1;
  if (v1 == v0[61])
  {
    v2 = v0[50];
    v3 = v0[46];
    v4 = v0[47];
    v5 = v0[41];
    v6 = v0[39];

    sub_100026FDC(v0 + 12);
    sub_100026FDC(v0 + 7);
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v4;
    v8[4] = v6;

    sub_10009C9B8(0, 0, v5, &unk_1001326B0, v8);

    sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2, v2);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v0[62] = v1;
    v11 = v0[57] + 16 * v1;
    v12 = *(v11 + 32);
    v0[63] = v12;
    v13 = *(v11 + 40);
    v0[64] = v13;
    sub_100026F50(v0 + 12, v0[15]);
    v14 = type metadata accessor for AppDataCleanupTask();
    v15 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    swift_defaultActor_initialize();
    *(v15 + 112) = v12;
    *(v15 + 120) = v13;
    v0[20] = v14;
    v0[21] = sub_1000BEE54(&qword_10016CD18, 255, type metadata accessor for AppDataCleanupTask, &unk_100132648);
    v0[17] = v15;
    v16 = swift_task_alloc();
    v0[65] = v16;
    *v16 = v0;
    v16[1] = sub_1000BE344;
    v17 = v0[39];

    return sub_100095AAC((v0 + 17), v17);
  }
}

uint64_t sub_1000BE724()
{
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[41];
  v5 = v0[39];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001324D0, v7);

  sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000BE898()
{
  sub_100026FDC(v0 + 7);
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[41];
  v5 = v0[39];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327E0, v7);

  sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000BEA14()
{
  v1 = v0[63];
  v2 = v0[64];
  sub_100026FDC(v0 + 17);
  TaskLocal.get()();
  sub_100026F50(v0 + 22, v0[25]);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010013CDB0;
  v3._countAndFlagsBits = 0xD000000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  v0[27] = v1;
  v0[30] = &type metadata for String;
  v0[28] = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 27));
  v4._countAndFlagsBits = 2629678;
  v4._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v0[35];
  v6 = v0[36];
  v0[34] = v6;
  v7 = sub_100042BAC(v0 + 31);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 31));
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100026FDC(v0 + 22);
  v9 = v0[62] + 1;
  if (v9 == v0[61])
  {
    v10 = v0[50];
    v11 = v0[46];
    v12 = v0[47];
    v13 = v0[41];
    v14 = v0[39];

    sub_100026FDC(v0 + 12);
    sub_100026FDC(v0 + 7);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = v11;
    v16[3] = v12;
    v16[4] = v14;

    sub_10009C9B8(0, 0, v13, &unk_1001326B0, v16);

    sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2, v10);

    v17 = v0[1];

    return v17();
  }

  else
  {
    v0[62] = v9;
    v19 = v0[57] + 16 * v9;
    v20 = *(v19 + 32);
    v0[63] = v20;
    v21 = *(v19 + 40);
    v0[64] = v21;
    sub_100026F50(v0 + 12, v0[15]);
    v22 = type metadata accessor for AppDataCleanupTask();
    v23 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    swift_defaultActor_initialize();
    *(v23 + 112) = v20;
    *(v23 + 120) = v21;
    v0[20] = v22;
    v0[21] = sub_1000BEE54(&qword_10016CD18, 255, type metadata accessor for AppDataCleanupTask, &unk_100132648);
    v0[17] = v23;
    v24 = swift_task_alloc();
    v0[65] = v24;
    *v24 = v0;
    v24[1] = sub_1000BE344;
    v25 = v0[39];

    return sub_100095AAC((v0 + 17), v25);
  }
}

uint64_t sub_1000BEE54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_1000BEEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_1000BEF08()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CD48);
  v1 = sub_10002FD14(v0, qword_10016CD48);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000BEFD0()
{
  _StringGuts.grow(_:)(22);

  String.append(_:)(v0[7]);
  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  String.append(_:)(v0[8]);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0x6E61656C434C5454;
}

uint64_t sub_1000BF074(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[44] = swift_task_alloc();
  v3 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v4 = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v5 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v2[51] = v5;
  v2[52] = *(v5 - 8);
  v2[53] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[54] = v6;
  v2[55] = *(v6 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v7 = type metadata accessor for Delete();
  v2[58] = v7;
  v2[59] = *(v7 - 8);
  v2[60] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v2[61] = v8;
  v2[62] = *(v8 - 8);
  v2[63] = swift_task_alloc();
  v9 = type metadata accessor for AccessCredential.Error();
  v2[64] = v9;
  v2[65] = *(v9 - 8);
  v2[66] = swift_task_alloc();
  v10 = type metadata accessor for DataSpecification();
  v2[67] = v10;
  v2[68] = *(v10 - 8);
  v2[69] = swift_task_alloc();
  v11 = type metadata accessor for DataSpecification.Namespace.Table();
  v2[70] = v11;
  v2[71] = *(v11 - 8);
  v2[72] = swift_task_alloc();
  sub_100026F94(&qword_10016CB48, &qword_100132C60);
  v2[73] = swift_task_alloc();
  v12 = type metadata accessor for AccessCredential();
  v2[74] = v12;
  v2[75] = *(v12 - 8);
  v2[76] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[77] = swift_task_alloc();
  v13 = type metadata accessor for OSSignpostID();
  v2[78] = v13;
  v2[79] = *(v13 - 8);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[82] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[83] = sub_1000C1BB0(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[84] = v15;
  v2[85] = v14;

  return _swift_task_switch(sub_1000BF63C, v15, v14);
}

uint64_t sub_1000BF63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A600 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016CD48);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "TTLCleanupTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 648);
  v10 = *(v3 + 640);
  v11 = *(v3 + 632);
  v12 = *(v3 + 624);

  (*(v11 + 16))(v10, v9, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 688) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v12);
  if (qword_10016A5F8 != -1)
  {
    swift_once();
  }

  v13 = *(v3 + 344);
  sub_100026F50(qword_10016CD20, qword_10016CD38);
  *(v3 + 696) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v14 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 704) = *(v14 + 72);
  *(v3 + 776) = *(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x800000010013CE60;
  v15._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v13[14];
  *(v3 + 712) = v16;
  v17 = v13[15];
  *(v3 + 720) = v17;
  *(v3 + 80) = &type metadata for String;
  *(v3 + 56) = v16;
  *(v3 + 64) = v17;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 56, &qword_10016AB10, &unk_100130B10);
  v18._countAndFlagsBits = 0x65686373206E6920;
  v18._object = 0xEC000000203A616DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v13[16];
  *(v3 + 728) = v19;
  v20 = v13[17];
  *(v3 + 736) = v20;
  *(v3 + 112) = &type metadata for String;
  *(v3 + 88) = v19;
  *(v3 + 96) = v20;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 88, &qword_10016AB10, &unk_100130B10);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v22 = swift_task_alloc();
  *(v3 + 744) = v22;
  *v22 = v3;
  v22[1] = sub_1000BFA38;
  v23 = *(v3 + 584);
  v24 = *(v3 + 336);

  return sub_1000C1090(v23, v24);
}

uint64_t sub_1000BFA38()
{
  v1 = *v0;

  v2 = *(v1 + 680);
  v3 = *(v1 + 672);

  return _swift_task_switch(sub_1000BFB58, v3, v2);
}

uint64_t sub_1000BFB58()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 344);
    sub_10002BA6C(v3, &qword_10016CB48, &qword_100132C60);
    sub_100026F50(qword_10016CD20, qword_10016CD38);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._countAndFlagsBits = 0xD000000000000033;
    v5._object = 0x800000010013CE90;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    v6 = OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource;
    *(v0 + 144) = type metadata accessor for TTLCleanupTask.CredentialSource(0);
    v7 = sub_100042BAC((v0 + 120));
    sub_1000C1BF8(v4 + v6, v7);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 120, &qword_10016AB10, &unk_100130B10);
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    v9 = &unk_1001324D0;
LABEL_3:
    v10 = *(v0 + 688);
    v11 = *(v0 + 664);
    v12 = *(v0 + 656);
    v13 = *(v0 + 352);
    v14 = *(v0 + 336);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v11;
    v16[4] = v14;

    sub_10009C9B8(0, 0, v13, v9, v16);

    sub_1000C1C60("TTLCleanupTask.run", 18, 2, v10);

    v17 = *(v0 + 8);

    return v17(0);
  }

  (*(v1 + 32))(*(v0 + 608), v3, v2);
  AccessCredential.dataSpecification.getter();
  _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
  (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));
  *(v0 + 312) = DataSpecification.Namespace.Table.timeToLive.getter();
  *(v0 + 320) = v19;
  if (v19)
  {
    v20 = *(v0 + 736);
    v21 = *(v0 + 720);
    v29 = *(v0 + 712);
    v30 = *(v0 + 728);
    v34 = *(v0 + 608);
    v22 = *(v0 + 600);
    v32 = *(v0 + 576);
    v33 = *(v0 + 592);
    v23 = *(v0 + 568);
    v31 = *(v0 + 560);
    sub_100026F50(qword_10016CD20, qword_10016CD38);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._object = 0x800000010013CED0;
    v24._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v0 + 176) = &type metadata for String;
    *(v0 + 152) = v29;
    *(v0 + 160) = v21;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 152, &qword_10016AB10, &unk_100130B10);
    v25._countAndFlagsBits = 0x65686373206E6920;
    v25._object = 0xEC000000203A616DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v0 + 208) = &type metadata for String;
    *(v0 + 184) = v30;
    *(v0 + 192) = v20;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 184, &qword_10016AB10, &unk_100130B10);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v23 + 8))(v32, v31);
    (*(v22 + 8))(v34, v33);
    v9 = &unk_100132F50;
    goto LABEL_3;
  }

  v27 = sub_100026F94(&qword_10016CF08, &qword_100132F58);
  v28 = swift_task_alloc();
  *(v0 + 752) = v28;
  *v28 = v0;
  v28[1] = sub_1000C0474;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v27, v27);
}

uint64_t sub_1000C0474()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = v2[85];
    v4 = v2[84];
    v5 = sub_1000C0E2C;
  }

  else
  {
    v2[96] = v2[39];
    v3 = v2[85];
    v4 = v2[84];
    v5 = sub_1000C0598;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C0598(uint64_t a1)
{
  v2 = *(v1 + 768);
  v4 = *(v1 + 496);
  v3 = *(v1 + 504);
  v5 = *(v1 + 488);
  v61 = *(v1 + 760);
  v45 = *(v1 + 448);
  v50 = *(v1 + 432);
  v52 = *(v1 + 456);
  v54 = *(v1 + 416);
  v6 = *(v1 + 400);
  v56 = *(v1 + 408);
  v58 = *(v1 + 440);
  v7 = *(v1 + 392);
  v47 = *(v1 + 384);
  v48 = *(v1 + 424);
  v8 = *(v1 + 368);
  v9 = *(v1 + 376);
  v49 = *(v1 + 360);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v11 = v10;
  (*(v4 + 8))(v3, v5);

  Table.init(_:database:)();
  static Connection.ServiceColumns.modificationTime.getter();
  Expression<A>.timestamp.getter();
  (*(v7 + 8))(v6, v47);
  *(v1 + 328) = v11 - v2;
  static Expression<A>.<= infix<A>(_:_:)();
  (*(v8 + 8))(v9, v49);
  sub_1000C1BB0(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  QueryType.where(_:)();
  (*(v54 + 8))(v48, v56);
  v12 = *(v58 + 8);
  v12(v45, v50);
  QueryType.delete()();
  v12(v52, v50);
  v13 = Connection.run(_:)();
  if (v61)
  {
    v14 = *(v1 + 608);
    v15 = *(v1 + 600);
    v16 = *(v1 + 592);
    v17 = *(v1 + 576);
    v18 = *(v1 + 568);
    v19 = *(v1 + 560);
    (*(*(v1 + 472) + 8))(*(v1 + 480), *(v1 + 464));
    sub_100026FDC((v1 + 16));
    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
    v20 = *(v1 + 688);
    v21 = *(v1 + 664);
    v22 = *(v1 + 656);
    v23 = *(v1 + 352);
    v24 = *(v1 + 336);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = v22;
    v26[3] = v21;
    v26[4] = v24;

    sub_10009C9B8(0, 0, v23, &unk_100132F68, v26);

    sub_1000C1C60("TTLCleanupTask.run", 18, 2, v20);

    v27 = *(v1 + 8);

    return v27();
  }

  else
  {
    v51 = *(v1 + 728);
    v53 = *(v1 + 736);
    v29 = *(v1 + 720);
    v30 = *(v1 + 600);
    v59 = *(v1 + 592);
    v60 = *(v1 + 608);
    v31 = *(v1 + 568);
    v55 = *(v1 + 560);
    v57 = *(v1 + 576);
    v46 = *(v1 + 712);
    v32 = v13;
    v62 = v13;
    (*(*(v1 + 472) + 8))(*(v1 + 480), *(v1 + 464));
    sub_100026F50(qword_10016CD20, qword_10016CD38);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._object = 0x800000010013CEF0;
    v33._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v1 + 240) = &type metadata for Int;
    *(v1 + 216) = v32;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v1 + 216, &qword_10016AB10, &unk_100130B10);
    v34._countAndFlagsBits = 0xD00000000000001ALL;
    v34._object = 0x800000010013CF10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    *(v1 + 272) = &type metadata for String;
    *(v1 + 248) = v46;
    *(v1 + 256) = v29;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v1 + 248, &qword_10016AB10, &unk_100130B10);
    v35._countAndFlagsBits = 0x65686373206E6920;
    v35._object = 0xEC000000203A616DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v1 + 304) = &type metadata for String;
    *(v1 + 280) = v51;
    *(v1 + 288) = v53;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v1 + 280, &qword_10016AB10, &unk_100130B10);
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v1 + 16));
    (*(v31 + 8))(v57, v55);
    (*(v30 + 8))(v60, v59);
    v37 = *(v1 + 688);
    v38 = *(v1 + 664);
    v39 = *(v1 + 656);
    v40 = *(v1 + 352);
    v41 = *(v1 + 336);
    v42 = type metadata accessor for TaskPriority();
    (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    v43 = swift_allocObject();
    v43[2] = v39;
    v43[3] = v38;
    v43[4] = v41;

    sub_10009C9B8(0, 0, v40, &unk_100132AD0, v43);

    sub_1000C1C60("TTLCleanupTask.run", 18, 2, v37);

    v44 = *(v1 + 8);

    return v44(v62);
  }
}

uint64_t sub_1000C0E2C()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  (*(v0[71] + 8))(v0[72], v0[70]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[86];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[44];
  v8 = v0[42];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_100132F60, v10);

  sub_1000C1C60("TTLCleanupTask.run", 18, 2, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000C1090(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000C1128, v2, 0);
}

uint64_t sub_1000C1128()
{
  sub_1000C1BF8(v0[9] + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource, v0[11]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[11];
    v2 = v0[7];
    v3 = type metadata accessor for AccessCredential();
    v4 = *(v3 - 8);
    (*(v4 + 32))(v2, v1, v3);
    (*(v4 + 56))(v2, 0, 1, v3);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[11];
    v0[12] = *v7;
    v0[13] = v7[1];
    v8 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1000C1300;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v8, v8);
  }
}

uint64_t sub_1000C1300()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 72);

    v4 = sub_1000C1758;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = sub_1000C1440;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000C1440()
{
  sub_100026F50(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1000C14E8;
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[7];

  return sub_10003D0A0(v4, v2, v3);
}

uint64_t sub_1000C14E8()
{
  v2 = *v1;

  v3 = *(v2 + 72);
  if (v0)
  {

    v4 = sub_1000C16AC;
  }

  else
  {

    v4 = sub_1000C1644;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C1644()
{
  sub_100026FDC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C16AC()
{
  sub_100026FDC(v0 + 2);
  v1 = v0[7];
  v2 = type metadata accessor for AccessCredential();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000C1758()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AccessCredential();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000C17FC()
{

  sub_1000C1F3C(v0 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C1884(uint64_t a1)
{
  result = type metadata accessor for TTLCleanupTask.CredentialSource(319);
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

uint64_t sub_1000C19A8(uint64_t a1)
{
  result = type metadata accessor for AccessCredential();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C1A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100042680;

  return sub_1000BF074(a1);
}

uint64_t sub_1000C1B00(uint64_t a1)
{
  result = sub_1000C1BB0(&qword_10016CEF8, type metadata accessor for TTLCleanupTask, &unk_100132E94);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C1B58(uint64_t a1)
{
  result = sub_1000C1BB0(&qword_10016CF00, type metadata accessor for TTLCleanupTask, &unk_100132EC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C1BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C1BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C1C60(const char *a1, uint64_t a2, int a3, uint64_t a4)
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
  if (qword_10016A600 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016CD48);
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

uint64_t sub_1000C1F3C(uint64_t a1)
{
  v2 = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C1FAC(uint64_t inited, uint64_t a2, uint64_t a3)
{
  v5 = (*v3 / 0x989680uLL) * 10000000.0;
  if (v5 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  sub_100026F94(&qword_10016BF18, &qword_100131B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100131AD0;
  *(inited + 32) = 0x55656761726F7473;
  *(inited + 40) = 0xEB00000000646573;
  *(inited + 48) = v6;
  *(inited + 72) = &type metadata for UInt64;
  *(inited + 80) = 0x6673736563637573;
  v4 = &type metadata for Int;
  v7 = v3[1];
  v8 = v3[2];
  *(inited + 88) = 0xEF73646165526C75;
  *(inited + 96) = v7;
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000010013D0F0;
  *(inited + 144) = v8;
  *(inited + 168) = &type metadata for Int;
  *(inited + 176) = 0xD000000000000010;
  v9 = v3[3];
  v10 = v3[4];
  *(inited + 184) = 0x800000010013D110;
  *(inited + 192) = v9;
  *(inited + 216) = &type metadata for Int;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x800000010013D130;
  *(inited + 240) = v10;
  *(inited + 264) = &type metadata for Int;
  strcpy((inited + 272), "hardwareModel");
  *(inited + 286) = -4864;
  if (qword_10016A608 != -1)
  {
LABEL_9:
    v15 = inited;
    swift_once();
    inited = v15;
  }

  v11 = *algn_10016CF18;
  *(inited + 288) = qword_10016CF10;
  *(inited + 296) = v11;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x707954746E657665;
  *(inited + 328) = 0xE900000000000065;
  *(inited + 336) = 0x74736F6E67616964;
  *(inited + 344) = 0xEB00000000736369;
  *(inited + 360) = &type metadata for String;
  strcpy((inited + 368), "eventVersion");
  *(inited + 408) = v4;
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  *(inited + 384) = 1;
  v12 = inited;

  sub_100088F4C(v12);
  swift_setDeallocating();
  sub_100026F94(&qword_10016BF20, &qword_100131B80);
  swift_arrayDestroy();
  sub_100026F94(&qword_10016CFE8, &qword_1001330E8);
  type metadata accessor for MetricsFieldExclusionRequest();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100132F70;
  static MetricsFieldExclusionRequest.amsMetricsID.getter();
  static MetricsFieldExclusionRequest.app.getter();
  static MetricsFieldExclusionRequest.appVersion.getter();
  static MetricsFieldExclusionRequest.baseVersion.getter();
  static MetricsFieldExclusionRequest.clientEventId.getter();
  static MetricsFieldExclusionRequest.clientBuildType.getter();
  static MetricsFieldExclusionRequest.connection.getter();
  static MetricsFieldExclusionRequest.osLanguages.getter();
  static MetricsFieldExclusionRequest.isSignedIn.getter();
  static MetricsFieldExclusionRequest.page.getter();
  static MetricsFieldExclusionRequest.storeFrontHeader.getter();
  static MetricsFieldExclusionRequest.timezoneOffset.getter();
  static MetricsFieldExclusionRequest.userAgent.getter();
  static MetricsFieldExclusionRequest.xpPostFrequency.getter();
  static MetricsFieldExclusionRequest.capacity.getter();
  static MetricsFieldExclusionRequest.eventTime.getter();
  static MetricsFieldExclusionRequest.systemInfo.getter();
  static MetricsFieldExclusionRequest.screen.getter();
  static MetricsFieldExclusionRequest.pageHistory.getter();
  static MetricsFieldExclusionRequest.eventVersion.getter();
  static MetricsFieldExclusionRequest.sampling.getter();
  static MetricsFieldExclusionRequest.xpViewablePercentage.getter();
  static MetricsFieldExclusionRequest.xpViewableThreshold.getter();
  static MetricsFieldExclusionRequest.xpSendMethod.getter();
  static MetricsFieldExclusionRequest.config.getter();
  static MetricsFieldExclusionRequest.pageRenderClientId.getter();
  sub_1000C6E1C(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
}

uint64_t sub_1000C24A4()
{
  result = sub_1000C24C8();
  qword_10016CF10 = result;
  *algn_10016CF18 = v1;
  return result;
}

uint64_t sub_1000C24C8()
{
  v8 = 0;
  v0 = 0x6E776F6E6B6E75;
  if (!sysctlbyname("hw.machine", 0, &v8, 0, 0))
  {
    v1 = v8;
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    if (v8)
    {
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v2[2] = v1;
      bzero(v2 + 4, v1);
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    if (sysctlbyname("hw.machine", v2 + 4, &v8, 0, 0))
    {
    }

    else
    {

      v5 = sub_1000C260C(v4);
      v7 = v6;

      if (v7)
      {
        return v5;
      }
    }
  }

  return v0;
}

void sub_1000C25F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x1000C25FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000C260C(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_1000C68BC(v7);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      v1 = 0;
      while (*(a1 + v1 + 32))
      {
        if (v11 == ++v1)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    static String.Encoding.utf8.getter();
    v12 = String.Encoding.rawValue.getter();
    (*(v4 + 8))(v6, v3);
    v13 = [objc_allocWithZone(NSString) initWithBytes:a1 + 32 length:v1 encoding:v12];

    if (v13)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

uint64_t sub_1000C27DC()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CF20);
  v1 = sub_10002FD14(v0, qword_10016CF20);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000C28A4(uint64_t a1)
{
  v2[152] = v1;
  v2[151] = a1;
  v3 = type metadata accessor for MetricsFieldsContext();
  v2[153] = v3;
  v2[154] = *(v3 - 8);
  v2[155] = swift_task_alloc();
  v4 = type metadata accessor for MetricsData();
  v2[156] = v4;
  v2[157] = *(v4 - 8);
  v2[158] = swift_task_alloc();
  v5 = type metadata accessor for LintedMetricsEvent();
  v2[159] = v5;
  v2[160] = *(v5 - 8);
  v2[161] = swift_task_alloc();
  v6 = type metadata accessor for MetricsPipeline();
  v2[162] = v6;
  v2[163] = *(v6 - 8);
  v2[164] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[165] = swift_task_alloc();
  v7 = type metadata accessor for PreferenceNamespace();
  v2[166] = v7;
  v2[167] = *(v7 - 8);
  v2[168] = swift_task_alloc();
  v2[169] = swift_task_alloc();
  v2[170] = type metadata accessor for MetricsSamplingLottery(0);
  v2[171] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[172] = swift_task_alloc();
  v8 = sub_100026F94(&qword_10016CFE0, &qword_100133030);
  v2[173] = v8;
  v2[174] = *(v8 - 8);
  v2[175] = swift_task_alloc();
  v9 = type metadata accessor for Bag();
  v2[176] = v9;
  v2[177] = *(v9 - 8);
  v2[178] = swift_task_alloc();
  v10 = type metadata accessor for OSSignpostID();
  v2[179] = v10;
  v2[180] = *(v10 - 8);
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[183] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[184] = sub_1000C71FC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[185] = v12;
  v2[186] = v11;

  return _swift_task_switch(sub_1000C2D40, v12, v11);
}

uint64_t sub_1000C2D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A610 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016CF20);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "WeeklyMetricsTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 1456);
  v10 = *(v3 + 1448);
  v11 = *(v3 + 1440);
  v12 = *(v3 + 1432);

  (*(v11 + 16))(v10, v9, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 1496) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v12);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v3 + 1504) = qword_100173878;
  TaskLocal.get()();
  sub_100026F50((v3 + 120), *(v3 + 144));
  *(v3 + 1512) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 1520) = *(v13 + 72);
  *(v3 + 1204) = *(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 120));
  v14 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v15 = swift_task_alloc();
  *(v3 + 1528) = v15;
  *v15 = v3;
  v15[1] = sub_1000C308C;

  return BaseObjectGraph.inject<A>(_:)(v3 + 160, v14, v14);
}

uint64_t sub_1000C308C()
{
  v2 = *v1;
  v2[192] = v0;

  if (v0)
  {
    v3 = v2[186];
    v4 = v2[185];

    return _swift_task_switch(sub_1000C52C4, v4, v3);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016B128, &qword_100130F90);
    v6 = swift_task_alloc();
    v2[193] = v6;
    *v6 = v2;
    v6[1] = sub_1000C3230;

    return BaseObjectGraph.inject<A>(_:)(v2 + 25, v5, v5);
  }
}

uint64_t sub_1000C3230()
{
  v2 = *v1;
  *(*v1 + 1552) = v0;

  v3 = *(v2 + 1488);
  v4 = *(v2 + 1480);
  if (v0)
  {
    v5 = sub_1000C54C4;
  }

  else
  {
    v5 = sub_1000C336C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C336C()
{
  v1 = [objc_opt_self() sharedConnection];
  if (!v1)
  {
    __break(1u);
    return BaseObjectGraph.inject<A>(_:)(v1, v2, v3);
  }

  v4 = v1;
  v5 = [v1 isDiagnosticSubmissionAllowed];

  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 1560) = v6;
    *v6 = v0;
    v6[1] = sub_1000C37B4;
    v1 = *(v0 + 1424);
    v2 = *(v0 + 1408);
    v3 = v2;

    return BaseObjectGraph.inject<A>(_:)(v1, v2, v3);
  }

  v7 = *(v0 + 1472);
  v19 = *(v0 + 1464);
  v8 = *(v0 + 1320);
  TaskLocal.get()();
  sub_100026F50((v0 + 320), *(v0 + 344));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_100026FDC((v0 + 200));
  sub_100026FDC((v0 + 320));
  v9 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 384) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 392) = &off_100164F18;
  *(v0 + 360) = v9;
  v10 = type metadata accessor for TaskPriority();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 1, 1, v10);
  sub_100026EEC(v0 + 360, v0 + 400);
  v12 = swift_allocObject();
  *(v12 + 16) = v19;
  *(v12 + 24) = v7;
  sub_10002C604((v0 + 400), v12 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v8, &unk_100133050, v12);

  sub_100026FDC((v0 + 360));
  sub_100026FDC((v0 + 160));
  v13 = *(v0 + 1496);
  v14 = *(v0 + 1320);
  v15 = *(v0 + 1208);
  v11(v14, 1, 1, v10);
  v16 = swift_allocObject();
  v16[2] = v19;
  v16[3] = v7;
  v16[4] = v15;

  sub_10009C9B8(0, 0, v14, &unk_100132F60, v16);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v13);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000C37B4()
{
  v2 = *v1;
  *(*v1 + 1568) = v0;

  v3 = *(v2 + 1488);
  v4 = *(v2 + 1480);
  if (v0)
  {
    v5 = sub_1000C5790;
  }

  else
  {
    v5 = sub_1000C38F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C38F0()
{
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  *(v0 + 1576) = v2;
  *v2 = v0;
  v2[1] = sub_1000C39CC;
  v3 = *(v0 + 1384);

  return Bag.Value.currentOrNil()(v0 + 1192, v3);
}

uint64_t sub_1000C39CC()
{
  v1 = *v0;
  v2 = *(*v0 + 1400);
  v3 = *(*v0 + 1392);
  v4 = *(*v0 + 1384);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 1488);
  v6 = *(v1 + 1480);

  return _swift_task_switch(sub_1000C3B50, v6, v5);
}

uint64_t sub_1000C3B50()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1200);
  TaskLocal.get()();
  sub_100026F50((v0 + 520), *(v0 + 544));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x800000010013D000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  if (v2)
  {
    v4 = 0;
    *(v0 + 1168) = 0u;
    v5 = 0.0;
  }

  else
  {
    v4 = &type metadata for Double;
    v5 = v1;
  }

  *(v0 + 1160) = v5;
  *(v0 + 1184) = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 1160, &qword_10016AB10, &unk_100130B10);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 520));
  if (v2)
  {
    v1 = 0.01;
  }

  if (qword_10016A578 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1368);
  v8 = *(v0 + 1360);
  v9 = *(v0 + 1352);
  v10 = *(v0 + 1344);
  v11 = *(v0 + 1336);
  v12 = *(v0 + 1328);
  sub_10002FD14(v12, qword_100173700);
  PreferenceNamespace.appending(_:)();
  v13 = *(v11 + 16);
  v13(v10, v9, v12);
  PreferenceKey.init(_:in:)();
  v13(v10, v9, v12);
  PreferenceKey.init(_:in:)();
  (*(v11 + 8))(v9, v12);
  *(v7 + *(v8 + 24)) = v1;
  *(v7 + *(v8 + 28)) = 0x40F5180000000000;
  if (sub_100097174())
  {
    sub_100026F50((v0 + 160), *(v0 + 184));
    v14 = swift_task_alloc();
    *(v0 + 1584) = v14;
    *v14 = v0;
    v14[1] = sub_1000C4220;

    return sub_100064D70(v0 + 16);
  }

  else
  {
    v31 = *(v0 + 1472);
    v16 = *(v0 + 1416);
    v27 = *(v0 + 1408);
    v28 = *(v0 + 1424);
    v17 = *(v0 + 1368);
    v29 = *(v0 + 1320);
    v30 = *(v0 + 1464);
    TaskLocal.get()();
    sub_100026F50((v0 + 560), *(v0 + 584));
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_1000C6D80(v17);
    (*(v16 + 8))(v28, v27);
    sub_100026FDC((v0 + 200));
    sub_100026FDC((v0 + 560));
    v18 = *sub_100026F50((v0 + 160), *(v0 + 184));
    *(v0 + 624) = type metadata accessor for DataRegistryImplementation();
    *(v0 + 632) = &off_100164F18;
    *(v0 + 600) = v18;
    v19 = type metadata accessor for TaskPriority();
    v20 = *(*(v19 - 8) + 56);
    v20(v29, 1, 1, v19);
    sub_100026EEC(v0 + 600, v0 + 640);
    v21 = swift_allocObject();
    *(v21 + 16) = v30;
    *(v21 + 24) = v31;
    sub_10002C604((v0 + 640), v21 + 32);
    swift_retain_n();

    sub_100053D08(0, 0, v29, &unk_100133078, v21);

    sub_100026FDC((v0 + 600));
    sub_100026FDC((v0 + 160));
    v22 = *(v0 + 1496);
    v23 = *(v0 + 1320);
    v24 = *(v0 + 1208);
    v20(v23, 1, 1, v19);
    v25 = swift_allocObject();
    v25[2] = v30;
    v25[3] = v31;
    v25[4] = v24;

    sub_10009C9B8(0, 0, v23, &unk_100133080, v25);

    sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v22);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1000C4220()
{
  v2 = *v1;
  *(*v1 + 1592) = v0;

  v3 = *(v2 + 1488);
  v4 = *(v2 + 1480);
  if (v0)
  {
    v5 = sub_1000C47F8;
  }

  else
  {
    v5 = sub_1000C435C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C435C()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v2 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = (v2 + 32);
      while (1)
      {
        v10 = *v9++;
        v11 = __CFADD__(v8, v10);
        v8 += v10;
        if (v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      v8 = 0;
LABEL_11:
      sub_10002BA6C(result, &qword_10016C048, &qword_1001321F8);
      *(v0 + 80) = v8;
      *(v0 + 88) = v3;
      *(v0 + 96) = v4;
      *(v0 + 104) = v5;
      *(v0 + 112) = v6;
      v23 = swift_task_alloc();
      *(v0 + 1600) = v23;
      *v23 = v0;
      v23[1] = sub_1000C4AF0;
      v24 = *(v0 + 1424);
      v25 = *(v0 + 1312);

      return sub_1000C6068(v25, v24);
    }
  }

  else
  {
    v30 = *(v0 + 1472);
    v12 = *(v0 + 1416);
    v26 = *(v0 + 1408);
    v27 = *(v0 + 1424);
    v13 = *(v0 + 1368);
    v28 = *(v0 + 1320);
    v29 = *(v0 + 1464);
    TaskLocal.get()();
    sub_100026F50((v0 + 760), *(v0 + 784));
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_1000C6D80(v13);
    (*(v12 + 8))(v27, v26);
    sub_100026FDC((v0 + 200));
    sub_100026FDC((v0 + 760));
    v14 = *sub_100026F50((v0 + 160), *(v0 + 184));
    *(v0 + 824) = type metadata accessor for DataRegistryImplementation();
    *(v0 + 832) = &off_100164F18;
    *(v0 + 800) = v14;
    v15 = type metadata accessor for TaskPriority();
    v16 = *(*(v15 - 8) + 56);
    v16(v28, 1, 1, v15);
    sub_100026EEC(v0 + 800, v0 + 840);
    v17 = swift_allocObject();
    *(v17 + 16) = v29;
    *(v17 + 24) = v30;
    sub_10002C604((v0 + 840), v17 + 32);
    swift_retain_n();

    sub_100053D08(0, 0, v28, &unk_100133098, v17);

    sub_100026FDC((v0 + 800));
    sub_100026FDC((v0 + 160));
    v18 = *(v0 + 1496);
    v19 = *(v0 + 1320);
    v20 = *(v0 + 1208);
    v16(v19, 1, 1, v15);
    v21 = swift_allocObject();
    v21[2] = v29;
    v21[3] = v30;
    v21[4] = v20;

    sub_10009C9B8(0, 0, v19, &unk_1001330A0, v21);

    sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v18);

    v22 = *(v0 + 8);

    return v22();
  }

  return result;
}

uint64_t sub_1000C47F8()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = *(v0 + 1408);
  v6 = *(v0 + 1320);
  v7 = *(v0 + 1208);
  sub_1000C6D80(*(v0 + 1368));
  (*(v4 + 8))(v3, v5);
  sub_100026FDC((v0 + 200));
  v8 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 704) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 712) = &off_100164F18;
  *(v0 + 680) = v8;
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  sub_100026EEC(v0 + 680, v0 + 720);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  sub_10002C604((v0 + 720), v11 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v6, &unk_100133088, v11);

  sub_100026FDC((v0 + 680));
  sub_100026FDC((v0 + 160));
  v10(v6, 1, 1, v9);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v1;
  v12[4] = v7;
  v13 = *(v0 + 1496);
  v14 = *(v0 + 1320);

  sub_10009C9B8(0, 0, v14, &unk_100132530, v12);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000C4AF0()
{
  v2 = *v1;
  *(*v1 + 1608) = v0;

  v3 = *(v2 + 1488);
  v4 = *(v2 + 1480);
  if (v0)
  {
    v5 = sub_1000C5A58;
  }

  else
  {
    v5 = sub_1000C4C2C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C4C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000C1FAC(a1, a2, a3);
  MetricsFieldsContext.init()();
  v4 = swift_task_alloc();
  v3[202] = v4;
  *v4 = v3;
  v4[1] = sub_1000C4CE8;
  v5 = v3[161];
  v6 = v3[158];
  v7 = v3[155];

  return MetricsPipeline.process(_:using:)(v5, v6, v7);
}

uint64_t sub_1000C4CE8()
{
  v2 = *v1;
  v3 = *(*v1 + 1264);
  v4 = *(*v1 + 1256);
  v5 = *(*v1 + 1248);
  v6 = *(*v1 + 1240);
  v7 = *(*v1 + 1232);
  v8 = *(*v1 + 1224);
  *(*v1 + 1624) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = v2[186];
    v10 = v2[185];
    v11 = sub_1000C5D50;
  }

  else
  {
    (*(v2[160] + 8))(v2[161], v2[159]);
    v9 = v2[186];
    v10 = v2[185];
    v11 = sub_1000C4EEC;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_1000C4EEC()
{
  v20 = *(v0 + 1472);
  v1 = *(v0 + 1416);
  v16 = *(v0 + 1408);
  v17 = *(v0 + 1424);
  v18 = *(v0 + 1320);
  v19 = *(v0 + 1464);
  v14 = *(v0 + 1312);
  v15 = *(v0 + 1368);
  v2 = *(v0 + 1304);
  v13 = *(v0 + 1296);
  TaskLocal.get()();
  sub_100026F50((v0 + 1040), *(v0 + 1064));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  (*(v2 + 8))(v14, v13);
  sub_1000C6D80(v15);
  (*(v1 + 8))(v17, v16);
  sub_100026FDC((v0 + 200));
  sub_100026FDC((v0 + 1040));
  v3 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 1104) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 1112) = &off_100164F18;
  *(v0 + 1080) = v3;
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v18, 1, 1, v4);
  sub_100026EEC(v0 + 1080, v0 + 1120);
  v6 = swift_allocObject();
  *(v6 + 16) = v19;
  *(v6 + 24) = v20;
  sub_10002C604((v0 + 1120), v6 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v18, &unk_1001330D8, v6);

  sub_100026FDC((v0 + 1080));
  sub_100026FDC((v0 + 160));
  v7 = *(v0 + 1496);
  v8 = *(v0 + 1320);
  v9 = *(v0 + 1208);
  v5(v8, 1, 1, v4);
  v10 = swift_allocObject();
  v10[2] = v19;
  v10[3] = v20;
  v10[4] = v9;

  sub_10009C9B8(0, 0, v8, &unk_1001330E0, v10);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000C52C4()
{
  v1 = v0[184];
  v2 = v0[183];
  v3 = v0[165];
  v4 = v0[151];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v7 = v0[187];
  v8 = v0[165];

  sub_10009C9B8(0, 0, v8, &unk_1001324D0, v6);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000C54C4()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1320);
  v13 = *(v0 + 1208);
  v4 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 264) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 272) = &off_100164F18;
  *(v0 + 240) = v4;
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  sub_100026EEC(v0 + 240, v0 + 280);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  sub_10002C604((v0 + 280), v7 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v3, &unk_100133040, v7);

  sub_100026FDC((v0 + 240));
  sub_100026FDC((v0 + 160));
  v6(v3, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v13;
  v9 = *(v0 + 1496);
  v10 = *(v0 + 1320);

  sub_10009C9B8(0, 0, v10, &unk_100133048, v8);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000C5790()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1320);
  v4 = *(v0 + 1208);
  sub_100026FDC((v0 + 200));
  v5 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 464) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 472) = &off_100164F18;
  *(v0 + 440) = v5;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  sub_100026EEC(v0 + 440, v0 + 480);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  sub_10002C604((v0 + 480), v8 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v3, &unk_100133060, v8);

  sub_100026FDC((v0 + 440));
  sub_100026FDC((v0 + 160));
  v7(v3, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v1;
  v9[4] = v4;
  v10 = *(v0 + 1496);
  v11 = *(v0 + 1320);

  sub_10009C9B8(0, 0, v11, &unk_100133068, v9);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000C5A58()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = *(v0 + 1408);
  v6 = *(v0 + 1320);
  v7 = *(v0 + 1208);
  sub_1000C6D80(*(v0 + 1368));
  (*(v4 + 8))(v3, v5);
  sub_100026FDC((v0 + 200));
  v8 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 904) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 912) = &off_100164F18;
  *(v0 + 880) = v8;
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  sub_100026EEC(v0 + 880, v0 + 920);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  sub_10002C604((v0 + 920), v11 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v6, &unk_1001330B8, v11);

  sub_100026FDC((v0 + 880));
  sub_100026FDC((v0 + 160));
  v10(v6, 1, 1, v9);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v1;
  v12[4] = v7;
  v13 = *(v0 + 1496);
  v14 = *(v0 + 1320);

  sub_10009C9B8(0, 0, v14, &unk_1001330C0, v12);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000C5D50()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = *(v0 + 1408);
  v6 = *(v0 + 1368);
  v7 = *(v0 + 1320);
  v8 = *(v0 + 1208);
  (*(*(v0 + 1304) + 8))(*(v0 + 1312), *(v0 + 1296));
  sub_1000C6D80(v6);
  (*(v4 + 8))(v3, v5);
  sub_100026FDC((v0 + 200));
  v9 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 984) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 992) = &off_100164F18;
  *(v0 + 960) = v9;
  v10 = type metadata accessor for TaskPriority();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  sub_100026EEC(v0 + 960, v0 + 1000);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v1;
  sub_10002C604((v0 + 1000), v12 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v7, &unk_1001330C8, v12);

  sub_100026FDC((v0 + 960));
  sub_100026FDC((v0 + 160));
  v11(v7, 1, 1, v10);
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = v1;
  v13[4] = v8;
  v14 = *(v0 + 1496);
  v15 = *(v0 + 1320);

  sub_10009C9B8(0, 0, v15, &unk_1001330D0, v13);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000C6068(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for Bag.Profile();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for Bag();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for MetricsPipeline.Configuration();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000C61C8, v2, 0);
}

uint64_t sub_1000C61C8()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v20 = v0[11];
  v21 = v0[5];
  v22 = v0[4];
  v6 = v0[3];
  sub_100026F94(&qword_10016D008, &qword_1001330F8);
  sub_1000C7144();
  LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:configuration:rules:)();
  v7 = *(v3 + 16);
  v7(v20, v6, v5);
  sub_1000C7198();
  v7(v1, v6, v5);
  v7(v2, v1, v5);
  type metadata accessor for DaemonMetricsEventRecorder(0);
  v8 = swift_allocObject();
  v7(v8 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_bag, v2, v5);

  Bag.profile.getter();
  Bag.Profile.name.getter();
  (*(v21 + 8))(v4, v22);
  v9 = Bag.amsBag.getter();
  v10 = objc_allocWithZone(AMSMetrics);
  v11 = String._bridgeToObjectiveC()();

  v23 = [v10 initWithContainerID:v11 bag:v9];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  swift_unknownObjectRelease();

  v16 = *(v15 + 8);
  v16(v13, v14);
  v16(v12, v14);
  *(v8 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_metrics) = v23;
  v17 = (v8 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_defaultTopic);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(v8 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_anonymousTopics) = &_swiftEmptySetSingleton;
  sub_1000C71FC(&qword_10016D020, 255, type metadata accessor for DaemonMetricsEventRecorder, &unk_1001339D0);
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:recorder:)();
  MetricsPipeline.init(from:)();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000C6520(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000C28A4(a1);
}

uint64_t sub_1000C65B8(uint64_t a1, uint64_t a2)
{
  result = sub_1000C71FC(&qword_10016CFD8, a2, type metadata accessor for WeeklyMetricsTask, &unk_100132FA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C6634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000C71FC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C6728, v6, v5);
}

uint64_t sub_1000C6728()
{
  sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000C67C4;

  return sub_1000643EC();
}

uint64_t sub_1000C67C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000C68BC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = static String._tryFromUTF8(_:)();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C6940(const char *a1, uint64_t a2, int a3, uint64_t a4)
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
  if (qword_10016A610 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016CF20);
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

uint64_t sub_1000C6C20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000A444C;

  return sub_1000C6634(a1, v4, v5, v1 + 32);
}

uint64_t sub_1000C6CD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100042680;

  return sub_1000C6634(a1, v4, v5, v1 + 32);
}

uint64_t sub_1000C6D80(uint64_t a1)
{
  v2 = type metadata accessor for MetricsSamplingLottery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C6DDC()
{
  swift_unknownObjectRelease();
  sub_100026FDC((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void *sub_1000C6E1C(uint64_t a1)
{
  v2 = type metadata accessor for MetricsFieldExclusionRequest();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100026F94(&qword_10016CFF0, &qword_1001330F0);
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
      sub_1000C71FC(&qword_10016CFF8, 255, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
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
          sub_1000C71FC(&qword_10016D000, 255, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
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

unint64_t sub_1000C7144()
{
  result = qword_10016D010;
  if (!qword_10016D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D010);
  }

  return result;
}

unint64_t sub_1000C7198()
{
  result = qword_10016D018;
  if (!qword_10016D018)
  {
    sub_10002AD94(&qword_10016D008, &qword_1001330F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D018);
  }

  return result;
}

uint64_t sub_1000C71FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000C72AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTime();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000C732C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTime();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RateLimitInfo(uint64_t a1)
{
  result = qword_10016D080;
  if (!qword_10016D080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C73E8(uint64_t a1)
{
  result = type metadata accessor for MonotonicTime();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C746C()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  sub_10002FDA4(v0, qword_100173718);
  sub_10002FD14(v0, qword_100173718);
  static Utils.daemonBundleId.getter();
  return OSLogger.Subsystem.init(rawValue:)();
}

uint64_t sub_1000C74C0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v4 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v4, v0);
  qword_100173748 = type metadata accessor for OSLogger();
  unk_100173750 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173730);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7604()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v4 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v4, v0);
  qword_100173770 = type metadata accessor for OSLogger();
  unk_100173778 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173758);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7744()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v4 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v4, v0);
  qword_100173798 = type metadata accessor for OSLogger();
  unk_1001737A0 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173780);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C787C()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v4 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v4, v0);
  qword_1001737C0 = type metadata accessor for OSLogger();
  unk_1001737C8 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_1001737A8);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C79C8()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v4 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v4, v0);
  qword_1001737E8 = type metadata accessor for OSLogger();
  unk_1001737F0 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_1001737D0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7B20()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v4 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v4, v0);
  qword_100173818 = type metadata accessor for OSLogger();
  unk_100173820 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173800);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7C60()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v4 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v4, v0);
  qword_100173840 = type metadata accessor for OSLogger();
  unk_100173848 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173828);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7DAC()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v4 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v4, v0);
  qword_100173868 = type metadata accessor for OSLogger();
  unk_100173870 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173850);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for OSLogger.Subsystem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v9 = sub_10002FD14(v5, qword_100173718);
  (*(v6 + 16))(v8, v9, v5);
  v12[3] = type metadata accessor for OSLogger();
  v12[4] = &protocol witness table for OSLogger;
  sub_100042BAC(v12);
  OSLogger.init(subsystem:category:)();
  sub_100026F94(&qword_10016D0C0, &qword_1001331A8);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  *a4 = result;
  return result;
}

uint64_t sub_1000C8094(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v3[14] = swift_task_alloc();
  v3[15] = sub_100026F94(&qword_10016D1F8, &qword_100133288);
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000C81CC, v2, 0);
}

uint64_t sub_1000C81CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "performSelectRequest", "", v7, 2u);
  }

  v9 = v3[19];
  v10 = v3[20];
  v11 = v3[17];
  v12 = v3[18];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[21] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v13 = swift_task_alloc();
  v3[22] = v13;
  *v13 = v3;
  v13[1] = sub_1000C83B8;
  v14 = v3[16];
  v15 = v3[12];
  v16 = v3[11];

  return sub_1000DA9EC(v14, v16, v15);
}

uint64_t sub_1000C83B8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1000C8D38;
  }

  else
  {
    v4 = sub_1000C84E4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C84E4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = (v2 + *(v1 + 40));
  v4 = *v3;
  v5 = v3[1];
  v0[24] = *(v2 + *(v1 + 44));
  v6 = qword_10016A678;

  if (v6 != -1)
  {
    swift_once();
  }

  v14 = v0[23];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013D290;
  v7._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v0[10] = &type metadata for String;
  v0[7] = v4;
  v0[8] = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 7), &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_10002C044(v4, v5);
  v0[25] = Connection.prepare(_:_:)();
  if (v14)
  {
    v9 = v0[21];
    sub_10002BA6C(v0[16], &qword_10016D1F8, &qword_100133288);

    sub_1000F7B88("performSelectRequest", 20, 2, v9);

    v10 = v0[1];

    return v10();
  }

  else
  {

    v12 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_1000C884C;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v12, v12);
  }
}

uint64_t sub_1000C884C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1000C8DE8;
  }

  else
  {
    v4 = sub_1000C8978;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C8978()
{
  sub_100026F50(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1000C8A18;

  return sub_100061DD0(0);
}

uint64_t sub_1000C8A18()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1000C8C54;
  }

  else
  {
    v4 = sub_1000C8B44;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C8B44()
{
  v1 = v0[21];
  v2 = v0[16];

  v3 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  sub_10002BA6C(v2, &qword_10016D1F8, &qword_100133288);
  sub_100026FDC(v0 + 2);
  sub_1000F7B88("performSelectRequest", 20, 2, v1);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1000C8C54()
{
  v1 = v0[21];
  v2 = v0[16];

  sub_10002BA6C(v2, &qword_10016D1F8, &qword_100133288);
  sub_100026FDC(v0 + 2);
  sub_1000F7B88("performSelectRequest", 20, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000C8D38()
{
  sub_1000F7B88("performSelectRequest", 20, 2, *(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C8DE8()
{
  v1 = v0[21];
  v2 = v0[16];

  sub_10002BA6C(v2, &qword_10016D1F8, &qword_100133288);
  sub_1000F7B88("performSelectRequest", 20, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000C8EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[49] = a3;
  v4[50] = v3;
  v4[47] = a1;
  v4[48] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[51] = swift_task_alloc();
  sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = sub_100026F94(&qword_10016D228, &qword_1001332F8);
  v4[56] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();

  return _swift_task_switch(sub_1000C904C, v3, 0);
}

uint64_t sub_1000C904C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "performPluckRequest", "", v7, 2u);
  }

  v9 = v3[59];
  v10 = v3[60];
  v11 = v3[57];
  v12 = v3[58];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[61] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v13 = swift_task_alloc();
  v3[62] = v13;
  *v13 = v3;
  v13[1] = sub_1000C9238;
  v14 = v3[56];
  v15 = v3[49];
  v16 = v3[48];

  return sub_1000DDBE4(v14, v16, v15);
}

uint64_t sub_1000C9238()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 400);
  if (v0)
  {
    v4 = sub_1000CA038;
  }

  else
  {
    v4 = sub_1000C9364;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C9364()
{
  v1 = (*(v0 + 448) + *(*(v0 + 440) + 40));
  v2 = *v1;
  v3 = v1[1];

  PluckRequest.query.getter();
  sub_100026F94(&qword_10016A948, &unk_100131880);
  sub_100026F94(&qword_10016A950, &unk_100133310);
  if (swift_dynamicCast())
  {
    sub_10002C604((v0 + 96), v0 + 16);
    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 504);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v4._object = 0x800000010013D3A0;
    v4._countAndFlagsBits = 0xD000000000000022;
    LogMessage.StringInterpolation.appendLiteral(_:)(v4);
    *(v0 + 272) = &type metadata for String;
    *(v0 + 248) = v2;
    *(v0 + 256) = v3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 248, &qword_10016AB10, &unk_100130B10);
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    sub_100026F50((v0 + 16), v6);
    *(v0 + 200) = v6;
    *(v0 + 208) = v7;
    sub_100042BAC((v0 + 176));
    dispatch thunk of QueryType.descoped.getter();
    Connection.pluck(_:)();
    if (v27)
    {
      v8 = *(v0 + 488);
      sub_10002BA6C(*(v0 + 448), &qword_10016D228, &qword_1001332F8);
      sub_100026FDC((v0 + 176));
      sub_100026FDC((v0 + 16));
LABEL_10:
      sub_1000F7B88("performPluckRequest", 19, 2, v8);

      v19 = *(v0 + 8);

      return v19();
    }

    v21 = *(v0 + 424);
    v22 = *(v0 + 432);
    sub_100026FDC((v0 + 176));
    sub_1000F7F90(v21, v22, &qword_10016AD38, &qword_1001332F0);
    sub_100026FDC((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_10002BA6C(v0 + 96, &qword_10016A958, &qword_100130A68);
    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 504);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0xD00000000000002ALL;
    v9._object = 0x800000010013D370;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    *(v0 + 240) = &type metadata for String;
    *(v0 + 216) = v2;
    *(v0 + 224) = v3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 216, &qword_10016AB10, &unk_100130B10);
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    type metadata accessor for PluckRequest();
    sub_1000F820C(&qword_10016D230, &type metadata accessor for PluckRequest, &protocol conformance descriptor for PluckRequest);
    *(v0 + 280) = QueryRequest.statement.getter();
    *(v0 + 288) = v11;

    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    *(v0 + 296) = v2;
    *(v0 + 304) = v3;
    *(v0 + 312) = 0;
    *(v0 + 320) = 0xE000000000000000;
    sub_10002C5B0();
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v15 = v14;

    *(v0 + 328) = v13;
    *(v0 + 336) = v15;
    v16._countAndFlagsBits = v2;
    v16._object = v3;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 11810;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    *(v0 + 344) = 34;
    *(v0 + 352) = 0xE100000000000000;
    *(v0 + 360) = 0;
    *(v0 + 368) = 0xE000000000000000;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    Connection.pluck(_:_:)();
    if (v28)
    {
      v8 = *(v0 + 488);
      v18 = *(v0 + 448);

      sub_10002BA6C(v18, &qword_10016D228, &qword_1001332F8);
      goto LABEL_10;
    }

    v23 = *(v0 + 432);
    v24 = *(v0 + 416);

    sub_1000F7F90(v24, v23, &qword_10016AD38, &qword_1001332F0);
  }

  v25 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v26 = swift_task_alloc();
  *(v0 + 512) = v26;
  *v26 = v0;
  v26[1] = sub_1000C9B00;

  return BaseObjectGraph.inject<A>(_:)(v0 + 136, v25, v25);
}

uint64_t sub_1000C9B00()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 400);
  if (v0)
  {
    v4 = sub_1000CA114;
  }

  else
  {
    v4 = sub_1000C9C2C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C9C2C()
{
  sub_100026F50(v0 + 17, v0[20]);
  v1 = swift_task_alloc();
  v0[66] = v1;
  *v1 = v0;
  v1[1] = sub_1000C9CCC;

  return sub_100061DD0(0);
}

uint64_t sub_1000C9CCC()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 400);
  if (v0)
  {
    v4 = sub_1000C9F20;
  }

  else
  {
    v4 = sub_1000C9DF8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C9DF8()
{
  v1 = v0[61];
  v2 = v0[54];
  v3 = v0[47];
  sub_10002BA6C(v0[56], &qword_10016D228, &qword_1001332F8);
  sub_1000F7F90(v2, v3, &qword_10016AD38, &qword_1001332F0);
  sub_100026FDC(v0 + 17);
  sub_1000F7B88("performPluckRequest", 19, 2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000C9F20()
{
  v1 = v0[61];
  v2 = v0[56];
  sub_10002BA6C(v0[54], &qword_10016AD38, &qword_1001332F0);
  sub_10002BA6C(v2, &qword_10016D228, &qword_1001332F8);
  sub_100026FDC(v0 + 17);
  sub_1000F7B88("performPluckRequest", 19, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000CA038()
{
  sub_1000F7B88("performPluckRequest", 19, 2, *(v0 + 488));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CA114()
{
  v1 = v0[61];
  v2 = v0[56];
  sub_10002BA6C(v0[54], &qword_10016AD38, &qword_1001332F0);
  sub_10002BA6C(v2, &qword_10016D228, &qword_1001332F8);
  sub_1000F7B88("performPluckRequest", 19, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000CA224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = a3;
  v4[46] = v3;
  v4[43] = a1;
  v4[44] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[47] = swift_task_alloc();
  v4[48] = sub_100026F94(&qword_10016D240, &qword_100133328);
  v4[49] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v4[50] = v5;
  v4[51] = *(v5 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();

  return _swift_task_switch(sub_1000CA35C, v3, 0);
}

uint64_t sub_1000CA35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "performScalarValueRequest", "", v7, 2u);
  }

  v9 = v3[52];
  v10 = v3[53];
  v11 = v3[50];
  v12 = v3[51];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[54] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v13 = swift_task_alloc();
  v3[55] = v13;
  *v13 = v3;
  v13[1] = sub_1000CA548;
  v14 = v3[49];
  v15 = v3[45];
  v16 = v3[44];

  return sub_1000E0C94(v14, v16, v15);
}

uint64_t sub_1000CA548()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = sub_1000CB158;
  }

  else
  {
    v4 = sub_1000CA674;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000CA674()
{
  v1 = (v0[49] + *(v0[48] + 40));
  v3 = *v1;
  v2 = v1[1];
  v4 = qword_10016A678;

  if (v4 != -1)
  {
    swift_once();
  }

  v20 = v0[56];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013D3F0;
  v5._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v0[30] = &type metadata for String;
  v0[27] = v3;
  v0[28] = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 27), &qword_10016AB10, &unk_100130B10);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  type metadata accessor for ScalarValueRequest();
  sub_1000F820C(&qword_10016D248, &type metadata accessor for ScalarValueRequest, &protocol conformance descriptor for ScalarValueRequest);
  v0[31] = dispatch thunk of QueryRequest.statement.getter();
  v0[32] = v7;

  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v0[33] = v3;
  v0[34] = v2;
  v0[35] = 0;
  v0[36] = 0xE000000000000000;
  sub_10002C5B0();
  v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v11 = v10;

  v0[37] = v9;
  v0[38] = v11;
  v12._countAndFlagsBits = v3;
  v12._object = v2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 11810;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v0[39] = 34;
  v0[40] = 0xE100000000000000;
  v0[41] = 0;
  v0[42] = 0xE000000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  Connection.scalar(_:_:)();
  if (v20)
  {
    v14 = v0[54];
    v15 = v0[49];

    sub_10002BA6C(v15, &qword_10016D240, &qword_100133328);
    sub_1000F7B88("performScalarValueRequest", 25, 2, v14);

    v16 = v0[1];

    return v16();
  }

  else
  {

    v18 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v19 = swift_task_alloc();
    v0[57] = v19;
    *v19 = v0;
    v19[1] = sub_1000CAB1C;

    return BaseObjectGraph.inject<A>(_:)(v0 + 7, v18, v18);
  }
}

uint64_t sub_1000CAB1C()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = sub_1000CB208;
  }

  else
  {
    v4 = sub_1000CAC48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000CAC48()
{
  sub_100026F50(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_1000CACE8;

  return sub_100061DD0(0);
}

uint64_t sub_1000CACE8()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = sub_1000CB06C;
  }

  else
  {
    v4 = sub_1000CAE14;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000CAE14()
{
  sub_10002BA04(v0 + 16, v0 + 136, &qword_10016C030, &qword_1001321B8);
  if (*(v0 + 160))
  {
    v1 = *(v0 + 480);
    sub_10002C604((v0 + 136), v0 + 96);
    sub_100026EEC(v0 + 96, v0 + 176);
    AnyValue.init(binding:)();
    if (v1)
    {
      v2 = *(v0 + 432);
      v3 = *(v0 + 392);
      sub_100026FDC((v0 + 96));
      sub_10002BA6C(v0 + 16, &qword_10016C030, &qword_1001321B8);
      sub_10002BA6C(v3, &qword_10016D240, &qword_100133328);
      sub_100026FDC((v0 + 56));
      sub_1000F7B88("performScalarValueRequest", 25, 2, v2);

      v4 = *(v0 + 8);
      goto LABEL_7;
    }

    v7 = *(v0 + 392);
    sub_100026FDC((v0 + 96));
    sub_10002BA6C(v0 + 16, &qword_10016C030, &qword_1001321B8);
    v6 = v7;
  }

  else
  {
    v5 = *(v0 + 392);
    sub_10002BA6C(v0 + 136, &qword_10016C030, &qword_1001321B8);
    AnyValue.init(_:)();
    sub_10002BA6C(v0 + 16, &qword_10016C030, &qword_1001321B8);
    v6 = v5;
  }

  sub_10002BA6C(v6, &qword_10016D240, &qword_100133328);
  sub_100026FDC((v0 + 56));
  sub_1000F7B88("performScalarValueRequest", 25, 2, *(v0 + 432));

  v4 = *(v0 + 8);
LABEL_7:

  return v4();
}

uint64_t sub_1000CB06C()
{
  v1 = v0[54];
  v2 = v0[49];
  sub_10002BA6C((v0 + 2), &qword_10016C030, &qword_1001321B8);
  sub_10002BA6C(v2, &qword_10016D240, &qword_100133328);
  sub_100026FDC(v0 + 7);
  sub_1000F7B88("performScalarValueRequest", 25, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000CB158()
{
  sub_1000F7B88("performScalarValueRequest", 25, 2, *(v0 + 432));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CB208()
{
  v1 = v0[54];
  v2 = v0[49];
  sub_10002BA6C((v0 + 2), &qword_10016C030, &qword_1001321B8);
  sub_10002BA6C(v2, &qword_10016D240, &qword_100133328);
  sub_1000F7B88("performScalarValueRequest", 25, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000CB2EC(uint64_t a1, uint64_t a2)
{
  v3[160] = v2;
  v3[159] = a2;
  v3[158] = a1;
  sub_100026F94(&qword_10016CB48, &qword_100132C60);
  v3[161] = swift_task_alloc();
  v4 = type metadata accessor for StatementType();
  v3[162] = v4;
  v3[163] = *(v4 - 8);
  v3[164] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v3[165] = swift_task_alloc();
  v3[166] = type metadata accessor for RequestContext(0);
  v3[167] = swift_task_alloc();
  v3[168] = swift_task_alloc();
  v3[169] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[170] = v5;
  v3[171] = *(v5 - 8);
  v3[172] = swift_task_alloc();
  v6 = type metadata accessor for AccessCredential.Error();
  v3[173] = v6;
  v3[174] = *(v6 - 8);
  v3[175] = swift_task_alloc();
  v7 = type metadata accessor for DataSpecification();
  v3[176] = v7;
  v3[177] = *(v7 - 8);
  v3[178] = swift_task_alloc();
  v8 = type metadata accessor for DataSpecification.Namespace.Table();
  v3[179] = v8;
  v3[180] = *(v8 - 8);
  v3[181] = swift_task_alloc();
  v9 = type metadata accessor for OSSignposter();
  v3[182] = v9;
  v3[183] = *(v9 - 8);
  v3[184] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v3[185] = swift_task_alloc();
  v10 = sub_100026F94(&qword_10016D258, &qword_100133350);
  v3[186] = v10;
  v11 = *(v10 - 8);
  v3[187] = v11;
  v3[188] = *(v11 + 64);
  v3[189] = swift_task_alloc();
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();
  v3[192] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v3[193] = v12;
  v3[194] = *(v12 - 8);
  v3[195] = swift_task_alloc();
  v3[196] = swift_task_alloc();
  v3[197] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB76C, v2, 0);
}

uint64_t sub_1000CB76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v3[198] = sub_10002FD14(v3[182], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v7, "performInsertRequest", "", v6, 2u);
  }

  v8 = v3[197];
  v9 = v3[196];
  v10 = v3[194];
  v11 = v3[193];

  (*(v10 + 16))(v9, v8, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[199] = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = *(v10 + 8);
  v3[200] = v12;
  v3[201] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v11);
  v13 = swift_task_alloc();
  v3[202] = v13;
  *v13 = v3;
  v13[1] = sub_1000CB974;
  v14 = v3[192];
  v15 = v3[159];
  v16 = v3[158];

  return sub_1000E4AD8(v14, v16, v15);
}

uint64_t sub_1000CB974()
{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  v3 = *(v2 + 1280);
  if (v0)
  {
    v4 = sub_1000D0000;
  }

  else
  {
    v4 = sub_1000CBAA0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000CBAA0()
{
  v1 = *(v0 + 1536);
  v2 = *(v0 + 1488);
  v3 = (v1 + *(v2 + 40));
  v4 = *v3;
  *(v0 + 1632) = *v3;
  v52 = v3[1];
  *(v0 + 1640) = v52;
  sub_10002A9C4(v0 + 104, (v1 + *(v2 + 36)));
  v51 = v4;
  v49 = *(*(v0 + 1536) + *(*(v0 + 1488) + 44));
  *(v0 + 1648) = v49;
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 1624);
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(v0 + 1656) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v5 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1664) = *(v5 + 72);
  *(v0 + 1936) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x800000010013D440;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 1168) = &type metadata for String;
  *(v0 + 1144) = v4;
  *(v0 + 1152) = v52;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 1144, &qword_10016AB10, &unk_100130B10);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100083D2C(v4, v52, v0 + 192);
  if (v50)
  {
    v8 = *(v0 + 1592);
    v9 = *(v0 + 1536);
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v9, &qword_10016D258, &qword_100133350);
    sub_1000F7B88("performInsertRequest", 20, 2, v8);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    std::string::basic_string((v0 + 1240), (v0 + 216));
    sub_10002EFB0((v0 + 1240));
    sub_10002EFC4(v0 + 1240);
    v10 = static String._fromUTF8Repairing(_:)();
    v12 = v11;
    v13 = *(v0 + 1280);
    *(v0 + 1672) = v11;
    *(v0 + 1680) = v10;
    std::string::~string((v0 + 1240));
    v14 = v13 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate;
    *(v0 + 1688) = *(v13 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate);
    *(v0 + 1696) = *(v14 + 8);
    v15 = v51;
    v16 = v52;
    sub_10002CDF4(v49, v10, v12, v51, v52);
    v17._countAndFlagsBits = v10;
    v17._object = v12;
    if (Connection.tableExists(_:)(v17))
    {
      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v18._countAndFlagsBits = 0x203A656C626154;
      v18._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v0 + 1200) = &type metadata for String;
      *(v0 + 1176) = v10;
      *(v0 + 1184) = v12;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 1176, &qword_10016AB10, &unk_100130B10);
      v19._countAndFlagsBits = 0xD00000000000001CLL;
      v19._object = 0x800000010013D5B0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v0 + 1232) = &type metadata for String;
      *(v0 + 1208) = v51;
      *(v0 + 1216) = v52;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 1208, &qword_10016AB10, &unk_100130B10);
      v20._countAndFlagsBits = 0xD000000000000027;
      v20._object = 0x800000010013D5D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_1000EDCE8(v10, v12, v51, v52, v49, v0 + 104);
      v21 = v49;
    }

    else
    {
      v48 = v10;
      (*(*(v0 + 1464) + 16))(*(v0 + 1472), *(v0 + 1584), *(v0 + 1456));
      static OSSignpostID.exclusive.getter();
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = OSSignposter.logHandle.getter();
      v26 = static os_signpost_type_t.begin.getter();
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v27, "performInsertRequest.createTable", "", v24, 2u);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      AccessCredential.dataSpecification.getter();
      _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
      v43 = *(v0 + 1448);
      v46 = *(v0 + 1368);
      (*(*(v0 + 1416) + 8))(*(v0 + 1424), *(v0 + 1408));
      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v28._object = 0x800000010013D4D0;
      v28._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      *(v0 + 784) = &type metadata for String;
      *(v0 + 760) = v48;
      *(v0 + 768) = v12;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 760, &qword_10016AB10, &unk_100130B10);
      v29._countAndFlagsBits = 0x686373206E69202CLL;
      v29._object = 0xED0000203A616D65;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      *(v0 + 1136) = &type metadata for String;
      *(v0 + 1112) = v51;
      *(v0 + 1120) = v52;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 1112, &qword_10016AB10, &unk_100130B10);
      v30._countAndFlagsBits = 0xD000000000000010;
      v30._object = 0x800000010013D4F0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v31 = DataSpecification.Namespace.Table.columns.getter();
      *(v0 + 752) = sub_100026F94(&qword_10016D260, &qword_100133360);
      *(v0 + 728) = v31;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 728, &qword_10016AB10, &unk_100130B10);
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      Table.init(_:database:)();
      v33 = swift_task_alloc();
      v33[2] = v43;
      v33[3] = v48;
      v33[4] = v12;
      v33[5] = v51;
      v33[6] = v52;
      default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
      default argument 1 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
      default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
      Table.create(temporary:ifNotExists:withoutRowid:block:)();
      v35 = *(v0 + 1440);
      (*(v46 + 8))(*(v0 + 1376), *(v0 + 1360));

      Connection.run(_:_:)();
      v36 = (v35 + 8);
      v37 = *(v0 + 1560);
      v44 = *(v0 + 1544);
      v45 = *(v0 + 1600);
      v38 = *(v0 + 1472);
      v39 = *(v0 + 1464);
      v47 = *(v0 + 1456);
      v40 = *(v0 + 1448);
      v41 = *(v0 + 1432);

      (*v36)(v40, v41);
      LOBYTE(v41) = static os_signpost_type_t.end.getter();
      v42 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v41, v42, "performInsertRequest.createTable", "", v24, 2u);

      v45(v37, v44);
      (*(v39 + 8))(v38, v47);
      v10 = v48;
      v21 = v49;
      v15 = v51;
      v16 = v52;
    }

    sub_1000F002C(v10, v12, v15, v16, v21);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v34 = swift_task_alloc();
    *(v0 + 1704) = v34;
    *v34 = v0;
    v34[1] = sub_1000CC81C;

    return BaseObjectGraph.inject<A>(_:)(v0 + 16, &type metadata for ClientInfo, &type metadata for ClientInfo);
  }
}

uint64_t sub_1000CC81C()
{
  v2 = *v1;
  *(*v1 + 1712) = v0;

  if (v0)
  {
    v3 = *(v2 + 1280);

    v4 = sub_1000D019C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1280);
    v4 = sub_1000CC944;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000CC944()
{
  v1 = *(v0 + 1536);
  v2 = *(v0 + 1528);
  v47 = *(v0 + 1520);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 1344);
  v46 = *(v0 + 1336);
  v5 = *(v0 + 1328);
  v6 = *(v0 + 1280);
  v7 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  *(v0 + 1720) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v8 = v5[5];
  v9 = type metadata accessor for AccessCredential();
  *(v0 + 1728) = v9;
  v10 = *(v9 - 8);
  *(v0 + 1736) = v10;
  v11 = *(v10 + 16);
  *(v0 + 1744) = v11;
  *(v0 + 1752) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v48 = *(v0 + 1688);
  v11(v3 + v8, v6 + v7, v9);
  sub_100026EEC(v6 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager, v3 + v5[7]);
  v12 = *(v0 + 32);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v12;
  v14 = *(v0 + 64);
  v13 = *(v0 + 80);
  v15 = *(v0 + 48);
  *(v3 + 80) = *(v0 + 96);
  *(v3 + 48) = v14;
  *(v3 + 64) = v13;
  *(v3 + 32) = v15;
  *(v3 + v5[6]) = v48;
  sub_1000F6524(v3, v4);
  sub_10002BA04(v1, v2, &qword_10016D258, &qword_100133350);
  sub_1000F6524(v3, v46);
  sub_10002BA04(v1, v47, &qword_10016D258, &qword_100133350);
  swift_unknownObjectRetain();

  sub_10002BA04(v6 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, v0 + 528, &qword_10016AFF8, &unk_100130F10);
  if (*(v0 + 552))
  {
    sub_10002C604((v0 + 528), v0 + 488);
    *(v0 + 1760) = sub_100026F50((v0 + 488), *(v0 + 512));

    return _swift_task_switch(sub_1000CD020, 0, 0);
  }

  else
  {
    v16 = *(v0 + 1712);
    v17 = *(v0 + 1648);
    v18 = *(v0 + 1528);
    v19 = *(v0 + 1512);
    v20 = *(v0 + 1496);
    v21 = *(v0 + 1344);
    sub_10002BA6C(v0 + 528, &qword_10016AFF8, &unk_100130F10);
    sub_10002BA04(v18, v19, &qword_10016D258, &qword_100133350);
    v22 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    sub_1000F7F90(v19, v23 + v22, &qword_10016D258, &qword_100133350);

    v24 = sub_1000D9E7C(v21, sub_1000F65B0, v23, sub_1000F8894);
    if (v16)
    {
      v25 = *(v0 + 1528);
      v26 = *(v0 + 1520);
      v27 = *(v0 + 1344);
      v28 = *(v0 + 1336);

      sub_1000F65EC(v28, type metadata accessor for RequestContext);
      sub_10002BA6C(v26, &qword_10016D258, &qword_100133350);

      sub_10002BA6C(v25, &qword_10016D258, &qword_100133350);
      sub_1000F65EC(v27, type metadata accessor for RequestContext);
      v29 = *(v0 + 1592);
      v30 = *(v0 + 1536);
      sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
      sub_10001B428(v0 + 192);
      sub_10002AAE4((v0 + 104));
      sub_10002BA6C(v30, &qword_10016D258, &qword_100133350);
      sub_1000F7B88("performInsertRequest", 20, 2, v29);

      v31 = *(v0 + 8);

      return v31();
    }

    else
    {
      v32 = v24;
      v33 = *(v0 + 1528);
      v34 = *(v0 + 1520);
      v35 = *(v0 + 1344);
      v36 = *(v0 + 1336);

      sub_1000F65EC(v36, type metadata accessor for RequestContext);
      sub_10002BA6C(v34, &qword_10016D258, &qword_100133350);
      sub_10002BA6C(v33, &qword_10016D258, &qword_100133350);
      sub_1000F65EC(v35, type metadata accessor for RequestContext);
      *(v0 + 1776) = v32;
      if (InsertRequest.isLastInBatch.getter())
      {
        v37 = sub_100026F94(&qword_10016B008, &unk_100130F30);
        v38 = swift_task_alloc();
        *(v0 + 1792) = v38;
        *v38 = v0;
        v38[1] = sub_1000CD894;

        return BaseObjectGraph.inject<A>(_:)(v0 + 448, v37, v37);
      }

      else
      {
        v39 = swift_task_alloc();
        *(v0 + 1824) = v39;
        *v39 = v0;
        v39[1] = sub_1000CDE20;
        v40 = *(v0 + 1680);
        v41 = *(v0 + 1672);
        v42 = *(v0 + 1640);
        v43 = *(v0 + 1632);
        v44 = *(v0 + 1272);

        return sub_1000F0814(v40, v41, v43, v42, v44);
      }
    }
  }
}

uint64_t sub_1000CD020()
{
  sub_100026F50(*(v0 + 1760), *(*(v0 + 1760) + 24));
  v1 = type metadata accessor for ConfigurationStoreImplementation();
  if (sub_1000503E4(v1))
  {
    sub_10008CEE4();
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(v0 + 1712);
    v4 = *(v0 + 1648);
    v5 = *(v0 + 1512);
    v6 = *(v0 + 1496);
    v7 = *(v0 + 1336);
    sub_10002BA04(*(v0 + 1520), v5, &qword_10016D258, &qword_100133350);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    sub_1000F7F90(v5, v9 + v8, &qword_10016D258, &qword_100133350);

    v10 = sub_1000D9E7C(v7, sub_1000F8864, v9, sub_1000F8894);
    if (v3)
    {

      v11 = CFAbsoluteTimeGetCurrent();
      v12 = *(v0 + 1760);
      v13 = *(v0 + 1320);
      v14 = *(v0 + 1272);
      sub_10009173C(v11 - Current);
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      sub_10008E36C(v12, v0 + 320);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v17 = *(v0 + 336);
      *(v16 + 32) = *(v0 + 320);
      *(v16 + 48) = v17;
      *(v16 + 64) = *(v0 + 352);
      *(v16 + 80) = v14;

      sub_10009C9B8(0, 0, v13, &unk_100133380, v16);

LABEL_6:
      *(v0 + 1784) = v3;
      v25 = *(v0 + 1280);
      v26 = sub_1000CD64C;
      goto LABEL_10;
    }

    v27 = v10;

    v28 = CFAbsoluteTimeGetCurrent();
    v29 = *(v0 + 1760);
    v30 = *(v0 + 1320);
    v31 = *(v0 + 1272);
    sub_10009173C(v28 - Current);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    sub_10008E36C(v29, v0 + 272);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v34 = *(v0 + 288);
    *(v33 + 32) = *(v0 + 272);
    *(v33 + 48) = v34;
    *(v33 + 64) = *(v0 + 304);
    *(v33 + 80) = v31;

    sub_10009C9B8(0, 0, v30, &unk_100133388, v33);
  }

  else
  {
    v3 = *(v0 + 1712);
    v18 = *(v0 + 1648);
    v19 = *(v0 + 1512);
    v20 = *(v0 + 1496);
    v21 = *(v0 + 1336);
    sub_10002BA04(*(v0 + 1520), v19, &qword_10016D258, &qword_100133350);
    v22 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    sub_1000F7F90(v19, v23 + v22, &qword_10016D258, &qword_100133350);

    v24 = sub_1000D9E7C(v21, sub_1000F8864, v23, sub_1000F8894);
    if (v3)
    {

      goto LABEL_6;
    }

    v27 = v24;
  }

  *(v0 + 1768) = v27;
  v25 = *(v0 + 1280);
  v26 = sub_1000CD468;
LABEL_10:

  return _swift_task_switch(v26, v25, 0);
}

uint64_t sub_1000CD468()
{
  v1 = v0[191];
  v2 = v0[190];
  v3 = v0[168];
  v4 = v0[167];

  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_10002BA6C(v1, &qword_10016D258, &qword_100133350);
  sub_1000F65EC(v3, type metadata accessor for RequestContext);
  sub_100026FDC(v0 + 61);
  v0[222] = v0[221];
  if (InsertRequest.isLastInBatch.getter())
  {
    v5 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v6 = swift_task_alloc();
    v0[224] = v6;
    *v6 = v0;
    v6[1] = sub_1000CD894;

    return BaseObjectGraph.inject<A>(_:)(v0 + 56, v5, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[228] = v7;
    *v7 = v0;
    v7[1] = sub_1000CDE20;
    v8 = v0[210];
    v9 = v0[209];
    v10 = v0[205];
    v11 = v0[204];
    v12 = v0[159];

    return sub_1000F0814(v8, v9, v11, v10, v12);
  }
}

uint64_t sub_1000CD64C()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1336);

  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_10002BA6C(v1, &qword_10016D258, &qword_100133350);
  sub_1000F65EC(v3, type metadata accessor for RequestContext);
  sub_100026FDC((v0 + 488));
  v5 = *(v0 + 1592);
  v6 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v6, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000CD894()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  if (v0)
  {
    v3 = *(v2 + 1280);

    v4 = sub_1000D0364;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1280);
    v4 = sub_1000CD9BC;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000CD9BC()
{
  sub_100026F50(v0 + 56, v0[59]);
  v1 = swift_task_alloc();
  v0[226] = v1;
  *v1 = v0;
  v1[1] = sub_1000CDA5C;

  return sub_100061DD0(1);
}

uint64_t sub_1000CDA5C()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v3 = *(v2 + 1280);

    v4 = sub_1000CDC34;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1280);
    v4 = sub_1000CDB84;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000CDB84()
{
  sub_100026FDC(v0 + 56);
  v1 = swift_task_alloc();
  v0[228] = v1;
  *v1 = v0;
  v1[1] = sub_1000CDE20;
  v2 = v0[210];
  v3 = v0[209];
  v4 = v0[205];
  v5 = v0[204];
  v6 = v0[159];

  return sub_1000F0814(v2, v3, v5, v4, v6);
}

uint64_t sub_1000CDC34()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performInsertRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000CDE20()
{
  v2 = *v1;
  *(*v1 + 1832) = v0;

  if (v0)
  {
    v3 = *(v2 + 1280);

    v4 = sub_1000D0548;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1280);
    v4 = sub_1000CDF48;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000CDF48()
{
  v1 = sub_10002CA64(*(v0 + 1648), *(v0 + 1680), *(v0 + 1672), *(v0 + 1632), *(v0 + 1640));
  if (v1 >= 1)
  {
    v2 = v1;
    v3 = *(v0 + 1672);
    v4 = *(v0 + 1640);
    v33 = *(v0 + 1680);
    v36 = *(v0 + 1632);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._countAndFlagsBits = 0x206465726F6E6749;
    v5._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    *(v0 + 1040) = &type metadata for Int;
    *(v0 + 1016) = v2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 1016, &qword_10016AB10, &unk_100130B10);
    v6._countAndFlagsBits = 0xD00000000000003ALL;
    v6._object = 0x800000010013D570;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    *(v0 + 1072) = &type metadata for String;
    *(v0 + 1048) = v33;
    *(v0 + 1056) = v3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 1048, &qword_10016AB10, &unk_100130B10);
    v7._countAndFlagsBits = 0x686373206E69202CLL;
    v7._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    *(v0 + 1104) = &type metadata for String;
    *(v0 + 1080) = v36;
    *(v0 + 1088) = v4;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 1080, &qword_10016AB10, &unk_100130B10);
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  v9 = sub_10002CB94(*(v0 + 1648), *(v0 + 1680), *(v0 + 1672), *(v0 + 1632), *(v0 + 1640));
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = *(v0 + 1672);
    v12 = *(v0 + 1640);
    v32 = *(v0 + 1680);
    v34 = *(v0 + 1632);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0x206465726F6E6749;
    v13._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v0 + 944) = &type metadata for Int;
    *(v0 + 920) = v10;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 920, &qword_10016AB10, &unk_100130B10);
    v14._object = 0x800000010013D530;
    v14._countAndFlagsBits = 0xD00000000000003CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v0 + 976) = &type metadata for String;
    *(v0 + 952) = v32;
    *(v0 + 960) = v11;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 952, &qword_10016AB10, &unk_100130B10);
    v15._countAndFlagsBits = 0x686373206E69202CLL;
    v15._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v0 + 1008) = &type metadata for String;
    *(v0 + 984) = v34;
    *(v0 + 992) = v12;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 984, &qword_10016AB10, &unk_100130B10);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  v17 = sub_10002CCC4(*(v0 + 1648), *(v0 + 1680), *(v0 + 1672), *(v0 + 1632), *(v0 + 1640));
  if (v17 >= 1)
  {
    v18 = v17;
    v19 = *(v0 + 1672);
    v20 = *(v0 + 1640);
    v35 = *(v0 + 1680);
    v37 = *(v0 + 1632);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0x2064657463697645;
    v21._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v0 + 848) = &type metadata for Int;
    *(v0 + 824) = v18;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 824, &qword_10016AB10, &unk_100130B10);
    v22._object = 0x800000010013D530;
    v22._countAndFlagsBits = 0xD00000000000003CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v0 + 880) = &type metadata for String;
    *(v0 + 856) = v35;
    *(v0 + 864) = v19;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 856, &qword_10016AB10, &unk_100130B10);
    v23._countAndFlagsBits = 0x686373206E69202CLL;
    v23._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v0 + 912) = &type metadata for String;
    *(v0 + 888) = v37;
    *(v0 + 896) = v20;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 888, &qword_10016AB10, &unk_100130B10);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  if (*(v0 + 1776) < 1)
  {
    inserted = type metadata accessor for InsertRequest();
    *(v0 + 1856) = inserted;
    *(v0 + 592) = inserted;
    v29 = sub_1000F820C(&qword_10016D268, &type metadata accessor for InsertRequest, &protocol conformance descriptor for InsertRequest);
    *(v0 + 1864) = v29;
    *(v0 + 600) = v29;
    *(v0 + 1872) = sub_100042BAC((v0 + 568));
    (*(*(inserted - 8) + 16))();
    *(v0 + 1940) = InsertRequest.isLastInBatch.getter() & 1;
    v25 = sub_100026F94(&qword_10016CB50, &qword_100133370);
    v30 = swift_task_alloc();
    *(v0 + 1880) = v30;
    *v30 = v0;
    v30[1] = sub_1000CE9E0;
    v27 = v0 + 608;
  }

  else
  {
    v25 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v26 = swift_task_alloc();
    *(v0 + 1840) = v26;
    *v26 = v0;
    v26[1] = sub_1000CE6A8;
    v27 = v0 + 648;
  }

  return BaseObjectGraph.inject<A>(_:)(v27, v25, v25);
}

uint64_t sub_1000CE6A8()
{
  v2 = *v1;
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v3 = *(v2 + 1280);

    v4 = sub_1000D072C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1280);
    v4 = sub_1000CE7D0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000CE7D0()
{
  v1 = *(v0 + 1320);
  v2 = *sub_100026F50((v0 + 648), *(v0 + 672));
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_100133378, v4);

  sub_100026FDC((v0 + 648));
  inserted = type metadata accessor for InsertRequest();
  *(v0 + 1856) = inserted;
  *(v0 + 592) = inserted;
  v6 = sub_1000F820C(&qword_10016D268, &type metadata accessor for InsertRequest, &protocol conformance descriptor for InsertRequest);
  *(v0 + 1864) = v6;
  *(v0 + 600) = v6;
  *(v0 + 1872) = sub_100042BAC((v0 + 568));
  (*(*(inserted - 8) + 16))();
  *(v0 + 1940) = InsertRequest.isLastInBatch.getter() & 1;
  v7 = sub_100026F94(&qword_10016CB50, &qword_100133370);
  v8 = swift_task_alloc();
  *(v0 + 1880) = v8;
  *v8 = v0;
  v8[1] = sub_1000CE9E0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 608, v7, v7);
}

uint64_t sub_1000CE9E0()
{
  v2 = *v1;
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v3 = *(v2 + 1280);

    v4 = sub_1000CF0C8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1280);
    v4 = sub_1000CEB08;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000CEB08()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  sub_100026F50((v0 + 568), *(v0 + 592));
  dispatch thunk of QueryRequest.statementType.getter();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for StatementType.select(_:))
  {

LABEL_3:
    v5 = *(v0 + 1592);
    v6 = *(v0 + 1536);
    v7 = *(v0 + 1352);
    sub_100026FDC((v0 + 608));
    sub_100026FDC((v0 + 568));
    sub_1000F65EC(v7, type metadata accessor for RequestContext);
    sub_10001B428(v0 + 192);
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v6, &qword_10016D258, &qword_100133350);
    sub_1000F7B88("performInsertRequest", 20, 2, v5);

    v8 = *(v0 + 8);
    v9 = *(v0 + 1776);

    return v8(v9);
  }

  if (v4 == enum case for StatementType.insert(_:))
  {
    v11 = *(v0 + 1720);
    v12 = *(v0 + 1280);
    sub_100026F50((v0 + 608), *(v0 + 632));
    v13 = swift_task_alloc();
    *(v0 + 1896) = v13;
    *v13 = v0;
    v13[1] = sub_1000CF2B4;
    v14 = *(v0 + 1680);
    v15 = *(v0 + 1672);
    v16 = *(v0 + 1640);
    v17 = *(v0 + 1632);

    return sub_1000706AC(v12 + v11, v17, v16, v14, v15);
  }

  else if (v4 == enum case for StatementType.update(_:))
  {
    v18 = *(v0 + 1720);
    v19 = *(v0 + 1280);
    sub_100026F50((v0 + 608), *(v0 + 632));
    v20 = swift_task_alloc();
    *(v0 + 1904) = v20;
    *v20 = v0;
    v20[1] = sub_1000CF680;
    v21 = *(v0 + 1680);
    v22 = *(v0 + 1672);
    v23 = *(v0 + 1640);
    v24 = *(v0 + 1632);

    return sub_100070C50(v19 + v18, v24, v23, v21, v22);
  }

  else
  {
    if (v4 != enum case for StatementType.delete(_:))
    {
      v36 = *(v0 + 1312);
      v32 = *(v0 + 1304);
      v35 = *(v0 + 1296);

      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33._object = 0x800000010013B360;
      v33._countAndFlagsBits = 0xD000000000000018;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      *(v0 + 816) = v35;
      sub_100042BAC((v0 + 792));
      dispatch thunk of QueryRequest.statementType.getter();
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 792, &qword_10016AB10, &unk_100130B10);
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v32 + 8))(v36, v35);
      goto LABEL_3;
    }

    v25 = *(v0 + 1720);
    v26 = *(v0 + 1280);
    sub_100026F50((v0 + 608), *(v0 + 632));
    v27 = swift_task_alloc();
    *(v0 + 1912) = v27;
    *v27 = v0;
    v27[1] = sub_1000CF7AC;
    v28 = *(v0 + 1680);
    v29 = *(v0 + 1672);
    v30 = *(v0 + 1640);
    v31 = *(v0 + 1632);

    return sub_100070E88(v26 + v25, v31, v30, v28, v29);
  }
}

uint64_t sub_1000CF0C8()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_100026FDC((v0 + 568));
  sub_1000F7B88("performInsertRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000CF2B4()
{
  v1 = *(*v0 + 1280);

  return _swift_task_switch(sub_1000CF3E0, v1, 0);
}

uint64_t sub_1000CF3E0()
{
  if (*(v0 + 1940))
  {
    v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
    v2 = swift_task_alloc();
    *(v0 + 1920) = v2;
    *v2 = v0;
    v2[1] = sub_1000CF8D8;

    return BaseObjectGraph.inject<A>(_:)(v0 + 688, v1, v1);
  }

  else
  {
    v3 = *(v0 + 1592);
    v4 = *(v0 + 1536);
    v5 = *(v0 + 1352);
    sub_100026FDC((v0 + 608));
    sub_100026FDC((v0 + 568));
    sub_1000F65EC(v5, type metadata accessor for RequestContext);
    sub_10001B428(v0 + 192);
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v4, &qword_10016D258, &qword_100133350);
    sub_1000F7B88("performInsertRequest", 20, 2, v3);

    v6 = *(v0 + 8);
    v7 = *(v0 + 1776);

    return v6(v7);
  }
}

uint64_t sub_1000CF680()
{
  v1 = *(*v0 + 1280);

  return _swift_task_switch(sub_1000F8854, v1, 0);
}

uint64_t sub_1000CF7AC()
{
  v1 = *(*v0 + 1280);

  return _swift_task_switch(sub_1000F8854, v1, 0);
}

uint64_t sub_1000CF8D8()
{
  v2 = *v1;
  *(*v1 + 1928) = v0;

  v3 = *(v2 + 1280);
  if (v0)
  {
    v4 = sub_1000CFE0C;
  }

  else
  {
    v4 = sub_1000CFA04;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000CFA04()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1320);
  v4 = *(v0 + 1288);
  (*(v0 + 1744))(v4, *(v0 + 1280) + *(v0 + 1720), v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v5 = type metadata accessor for PostScheduledNotificationsTask(0);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000F7F90(v4, v6 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential, &qword_10016CB48, &qword_100132C60);
  *(v0 + 432) = v5;
  *(v0 + 440) = sub_1000F820C(&qword_10016D270, type metadata accessor for PostScheduledNotificationsTask, &unk_100132C08);
  *(v0 + 408) = v6;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_100026EEC(v0 + 408, v0 + 368);
  v8 = qword_10016A6C8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 1320);
  v10 = *(v0 + 1272);
  v11 = qword_1001738A8;
  v12 = sub_1000F820C(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  sub_10002C604((v0 + 368), (v13 + 4));
  v13[9] = v10;

  sub_100053D08(0, 0, v9, &unk_100130CC0, v13);

  sub_100026FDC((v0 + 688));
  sub_100026FDC((v0 + 408));
  v14 = *(v0 + 1592);
  v15 = *(v0 + 1536);
  v16 = *(v0 + 1352);
  sub_100026FDC((v0 + 608));
  sub_100026FDC((v0 + 568));
  sub_1000F65EC(v16, type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v15, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2, v14);

  v17 = *(v0 + 8);
  v18 = *(v0 + 1776);

  return v17(v18);
}

uint64_t sub_1000CFE0C()
{
  sub_100026FDC((v0 + 608));
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_100026FDC((v0 + 568));
  sub_1000F7B88("performInsertRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D0000()
{
  sub_1000F7B88("performInsertRequest", 20, 2, *(v0 + 1592));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D019C()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D0364()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D0548()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D072C()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D0910(uint64_t a1, uint64_t a2)
{
  v3[140] = v2;
  v3[139] = a2;
  v3[138] = a1;
  sub_100026F94(&qword_10016CB48, &qword_100132C60);
  v3[141] = swift_task_alloc();
  v4 = type metadata accessor for StatementType();
  v3[142] = v4;
  v3[143] = *(v4 - 8);
  v3[144] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v3[145] = swift_task_alloc();
  v3[146] = type metadata accessor for RequestContext(0);
  v3[147] = swift_task_alloc();
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v3[150] = swift_task_alloc();
  v5 = sub_100026F94(&qword_10016D298, &qword_1001333F0);
  v3[151] = v5;
  v6 = *(v5 - 8);
  v3[152] = v6;
  v3[153] = *(v6 + 64);
  v3[154] = swift_task_alloc();
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v3[158] = v7;
  v3[159] = *(v7 - 8);
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();

  return _swift_task_switch(sub_1000D0BB8, v2, 0);
}

uint64_t sub_1000D0BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "performUpdateRequest", "", v7, 2u);
  }

  v9 = v3[161];
  v10 = v3[160];
  v11 = v3[159];
  v12 = v3[158];

  (*(v11 + 16))(v10, v9, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[162] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v12);
  v13 = swift_task_alloc();
  v3[163] = v13;
  *v13 = v3;
  v13[1] = sub_1000D0DB0;
  v14 = v3[157];
  v15 = v3[139];
  v16 = v3[138];

  return sub_1000E7B88(v14, v16, v15);
}

uint64_t sub_1000D0DB0()
{
  v2 = *v1;
  *(*v1 + 1312) = v0;

  v3 = *(v2 + 1120);
  if (v0)
  {
    v4 = sub_1000D4854;
  }

  else
  {
    v4 = sub_1000D0EDC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D0EDC()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1208);
  v3 = v1 + *(v2 + 40);
  v4 = *v3;
  *(v0 + 1320) = *v3;
  v5 = *(v3 + 8);
  *(v0 + 1328) = v5;
  sub_10002A9C4(v0 + 104, (v1 + *(v2 + 36)));
  v23 = *(*(v0 + 1256) + *(*(v0 + 1208) + 44));
  *(v0 + 1336) = v23;
  v6 = qword_10016A678;

  if (v6 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 1312);
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(v0 + 1344) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v7 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1352) = *(v7 + 72);
  *(v0 + 1624) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x800000010013DEE0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 784) = &type metadata for String;
  *(v0 + 760) = v4;
  *(v0 + 768) = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 760, &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100083D2C(v4, v5, v0 + 192);
  if (v24)
  {
    v10 = *(v0 + 1296);
    v11 = *(v0 + 1256);

LABEL_8:
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v11, &qword_10016D298, &qword_1001333F0);
    sub_1000F7B88("performUpdateRequest", 20, 2, v10);

    v20 = *(v0 + 8);

    return v20();
  }

  std::string::basic_string((v0 + 1080), (v0 + 216));
  v12 = v5;
  sub_10002EFB0((v0 + 1080));
  sub_10002EFC4(v0 + 1080);
  v13 = static String._fromUTF8Repairing(_:)();
  v15 = v14;
  *(v0 + 1360) = v14;
  *(v0 + 1368) = v13;
  std::string::~string((v0 + 1080));
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  if (!Connection.tableExists(_:)(v16))
  {
    v10 = *(v0 + 1296);
    v11 = *(v0 + 1256);
    v18 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    *v19 = v13;
    v19[1] = v15;
    v19[2] = v4;
    v19[3] = v12;
    (*(*(v18 - 8) + 104))(v19, enum case for DaemonError.noTable(_:), v18);
    swift_willThrow();
    sub_10001B428(v0 + 192);
    goto LABEL_8;
  }

  v17 = (*(v0 + 1120) + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate);
  *(v0 + 1376) = *v17;
  *(v0 + 1384) = v17[1];
  sub_10002CDF4(v23, v13, v15, v4, v12);
  sub_1000EDCE8(v13, v15, v4, v12, v23, v0 + 104);
  sub_1000F002C(v13, v15, v4, v12, v23);
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v22 = swift_task_alloc();
  *(v0 + 1392) = v22;
  *v22 = v0;
  v22[1] = sub_1000D1534;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000D1534()
{
  v2 = *v1;
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v3 = *(v2 + 1120);

    v4 = sub_1000D4998;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1120);
    v4 = sub_1000D1668;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D1668()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v41 = *(v0 + 1240);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1120);
  v8 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  *(v0 + 1408) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v9 = v6[5];
  v10 = type metadata accessor for AccessCredential();
  *(v0 + 1416) = v10;
  v11 = *(v10 - 8);
  *(v0 + 1424) = v11;
  v12 = *(v11 + 16);
  *(v0 + 1432) = v12;
  *(v0 + 1440) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42 = *(v0 + 1376);
  v12(v3 + v9, v7 + v8, v10);
  sub_100026EEC(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager, v3 + v6[7]);
  v13 = *(v0 + 32);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v13;
  v15 = *(v0 + 64);
  v14 = *(v0 + 80);
  v16 = *(v0 + 48);
  *(v3 + 80) = *(v0 + 96);
  *(v3 + 48) = v15;
  *(v3 + 64) = v14;
  *(v3 + 32) = v16;
  *(v3 + v6[6]) = v42;
  sub_1000F6524(v3, v4);
  sub_10002BA04(v1, v2, &qword_10016D298, &qword_1001333F0);
  sub_1000F6524(v3, v5);
  sub_10002BA04(v1, v41, &qword_10016D298, &qword_1001333F0);
  swift_unknownObjectRetain();

  sub_10002BA04(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, v0 + 408, &qword_10016AFF8, &unk_100130F10);
  if (*(v0 + 432))
  {
    sub_10002C604((v0 + 408), v0 + 368);
    *(v0 + 1448) = sub_100026F50((v0 + 368), *(v0 + 392));

    return _swift_task_switch(sub_1000D1C58, 0, 0);
  }

  else
  {
    v17 = *(v0 + 1400);
    v18 = *(v0 + 1336);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1232);
    v21 = *(v0 + 1216);
    v22 = *(v0 + 1184);
    sub_10002BA6C(v0 + 408, &qword_10016AFF8, &unk_100130F10);
    sub_10002BA04(v19, v20, &qword_10016D298, &qword_1001333F0);
    v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    sub_1000F7F90(v20, v24 + v23, &qword_10016D298, &qword_1001333F0);

    v25 = sub_1000D9E7C(v22, sub_1000F7E90, v24, sub_1000F7F1C);
    if (v17)
    {
      v26 = *(v0 + 1248);
      v27 = *(v0 + 1240);
      v28 = *(v0 + 1184);
      v29 = *(v0 + 1176);

      sub_1000F65EC(v29, type metadata accessor for RequestContext);
      sub_10002BA6C(v27, &qword_10016D298, &qword_1001333F0);

      sub_10002BA6C(v26, &qword_10016D298, &qword_1001333F0);
      sub_1000F65EC(v28, type metadata accessor for RequestContext);
      v30 = *(v0 + 1296);
      v31 = *(v0 + 1256);
      sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
      sub_10001B428(v0 + 192);
      sub_10002AAE4((v0 + 104));
      sub_10002BA6C(v31, &qword_10016D298, &qword_1001333F0);
      sub_1000F7B88("performUpdateRequest", 20, 2, v30);

      v32 = *(v0 + 8);

      return v32();
    }

    else
    {
      v33 = v25;
      v34 = *(v0 + 1248);
      v35 = *(v0 + 1240);
      v36 = *(v0 + 1184);
      v37 = *(v0 + 1176);

      sub_1000F65EC(v37, type metadata accessor for RequestContext);
      sub_10002BA6C(v35, &qword_10016D298, &qword_1001333F0);
      sub_10002BA6C(v34, &qword_10016D298, &qword_1001333F0);
      sub_1000F65EC(v36, type metadata accessor for RequestContext);
      *(v0 + 1464) = v33;
      v38 = sub_100026F94(&qword_10016B008, &unk_100130F30);
      v39 = swift_task_alloc();
      *(v0 + 1472) = v39;
      *v39 = v0;
      v39[1] = sub_1000D2208;

      return BaseObjectGraph.inject<A>(_:)(v0 + 448, v38, v38);
    }
  }
}

uint64_t sub_1000D1C58()
{
  sub_100026F50(*(v0 + 1448), *(*(v0 + 1448) + 24));
  v1 = type metadata accessor for ConfigurationStoreImplementation();
  if (sub_1000503E4(v1))
  {
    sub_10008CEE4();
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(v0 + 1400);
    v4 = *(v0 + 1336);
    v5 = *(v0 + 1232);
    v6 = *(v0 + 1216);
    v7 = *(v0 + 1176);
    sub_10002BA04(*(v0 + 1240), v5, &qword_10016D298, &qword_1001333F0);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    sub_1000F7F90(v5, v9 + v8, &qword_10016D298, &qword_1001333F0);

    v10 = sub_1000D9E7C(v7, sub_1000F887C, v9, sub_1000F7F1C);
    if (v3)
    {

      v11 = CFAbsoluteTimeGetCurrent();
      v12 = *(v0 + 1448);
      v13 = *(v0 + 1160);
      v14 = *(v0 + 1112);
      sub_10009173C(v11 - Current);
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      sub_10008E36C(v12, v0 + 320);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v17 = *(v0 + 336);
      *(v16 + 32) = *(v0 + 320);
      *(v16 + 48) = v17;
      *(v16 + 64) = *(v0 + 352);
      *(v16 + 80) = v14;

      sub_10009C9B8(0, 0, v13, &unk_100133410, v16);

LABEL_6:
      *(v0 + 1488) = v3;
      v25 = *(v0 + 1120);
      v26 = sub_1000D233C;
      goto LABEL_10;
    }

    v27 = v10;

    v28 = CFAbsoluteTimeGetCurrent();
    v29 = *(v0 + 1448);
    v30 = *(v0 + 1160);
    v31 = *(v0 + 1112);
    sub_10009173C(v28 - Current);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    sub_10008E36C(v29, v0 + 272);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v34 = *(v0 + 288);
    *(v33 + 32) = *(v0 + 272);
    *(v33 + 48) = v34;
    *(v33 + 64) = *(v0 + 304);
    *(v33 + 80) = v31;

    sub_10009C9B8(0, 0, v30, &unk_100133418, v33);
  }

  else
  {
    v3 = *(v0 + 1400);
    v18 = *(v0 + 1336);
    v19 = *(v0 + 1232);
    v20 = *(v0 + 1216);
    v21 = *(v0 + 1176);
    sub_10002BA04(*(v0 + 1240), v19, &qword_10016D298, &qword_1001333F0);
    v22 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    sub_1000F7F90(v19, v23 + v22, &qword_10016D298, &qword_1001333F0);

    v24 = sub_1000D9E7C(v21, sub_1000F887C, v23, sub_1000F7F1C);
    if (v3)
    {

      goto LABEL_6;
    }

    v27 = v24;
  }

  *(v0 + 1456) = v27;
  v25 = *(v0 + 1120);
  v26 = sub_1000D20B8;
LABEL_10:

  return _swift_task_switch(v26, v25, 0);
}

uint64_t sub_1000D20B8()
{
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[148];
  v4 = v0[147];

  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_10002BA6C(v1, &qword_10016D298, &qword_1001333F0);
  sub_1000F65EC(v3, type metadata accessor for RequestContext);
  sub_100026FDC(v0 + 46);
  v0[183] = v0[182];
  v5 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v6 = swift_task_alloc();
  v0[184] = v6;
  *v6 = v0;
  v6[1] = sub_1000D2208;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v5, v5);
}

uint64_t sub_1000D2208()
{
  v2 = *v1;
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v3 = *(v2 + 1120);

    v4 = sub_1000D4B08;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1120);
    v4 = sub_1000D2530;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D233C()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1176);

  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_10002BA6C(v1, &qword_10016D298, &qword_1001333F0);
  sub_1000F65EC(v3, type metadata accessor for RequestContext);
  sub_100026FDC((v0 + 368));
  v5 = *(v0 + 1296);
  v6 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v6, &qword_10016D298, &qword_1001333F0);
  sub_1000F7B88("performUpdateRequest", 20, 2, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000D2530()
{
  sub_100026F50(v0 + 56, v0[59]);
  v1 = swift_task_alloc();
  v0[187] = v1;
  *v1 = v0;
  v1[1] = sub_1000D25D0;

  return sub_100061DD0(1);
}

uint64_t sub_1000D25D0()
{
  v2 = *v1;
  v2[188] = v0;

  if (v0)
  {
    v3 = v2[140];

    return _swift_task_switch(sub_1000D28A0, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[189] = v4;
    *v4 = v2;
    v4[1] = sub_1000D276C;
    v5 = v2[170];
    v6 = v2[166];
    v7 = v2[165];
    v8 = v2[139];
    v9 = v2[171];

    return sub_1000F0814(v9, v5, v7, v6, v8);
  }
}

uint64_t sub_1000D276C()
{
  v2 = *v1;
  *(*v1 + 1520) = v0;

  if (v0)
  {
    v3 = *(v2 + 1120);

    v4 = sub_1000D4C94;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1120);
    v4 = sub_1000D2A34;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D28A0()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D2A34()
{
  v1 = sub_10002CA64(v0[167], v0[171], v0[170], v0[165], v0[166]);
  if (v1 >= 1)
  {
    v2 = v1;
    v3 = v0[170];
    v4 = v0[166];
    v33 = v0[171];
    v36 = v0[165];
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._countAndFlagsBits = 0x206465726F6E6749;
    v5._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    v0[126] = &type metadata for Int;
    v0[123] = v2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 123), &qword_10016AB10, &unk_100130B10);
    v6._countAndFlagsBits = 0xD00000000000003ALL;
    v6._object = 0x800000010013D570;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v0[130] = &type metadata for String;
    v0[127] = v33;
    v0[128] = v3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 127), &qword_10016AB10, &unk_100130B10);
    v7._countAndFlagsBits = 0x686373206E69202CLL;
    v7._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    v0[134] = &type metadata for String;
    v0[131] = v36;
    v0[132] = v4;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 131), &qword_10016AB10, &unk_100130B10);
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  v9 = sub_10002CB94(v0[167], v0[171], v0[170], v0[165], v0[166]);
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = v0[170];
    v12 = v0[166];
    v32 = v0[171];
    v34 = v0[165];
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0x206465726F6E6749;
    v13._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v0[114] = &type metadata for Int;
    v0[111] = v10;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 111), &qword_10016AB10, &unk_100130B10);
    v14._object = 0x800000010013D530;
    v14._countAndFlagsBits = 0xD00000000000003CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v0[118] = &type metadata for String;
    v0[115] = v32;
    v0[116] = v11;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 115), &qword_10016AB10, &unk_100130B10);
    v15._countAndFlagsBits = 0x686373206E69202CLL;
    v15._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v0[122] = &type metadata for String;
    v0[119] = v34;
    v0[120] = v12;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 119), &qword_10016AB10, &unk_100130B10);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  v17 = sub_10002CCC4(v0[167], v0[171], v0[170], v0[165], v0[166]);
  if (v17 >= 1)
  {
    v18 = v17;
    v19 = v0[170];
    v20 = v0[166];
    v35 = v0[171];
    v37 = v0[165];
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0x2064657463697645;
    v21._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v0[102] = &type metadata for Int;
    v0[99] = v18;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 99), &qword_10016AB10, &unk_100130B10);
    v22._object = 0x800000010013D530;
    v22._countAndFlagsBits = 0xD00000000000003CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    v0[106] = &type metadata for String;
    v0[103] = v35;
    v0[104] = v19;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 103), &qword_10016AB10, &unk_100130B10);
    v23._countAndFlagsBits = 0x686373206E69202CLL;
    v23._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    v0[110] = &type metadata for String;
    v0[107] = v37;
    v0[108] = v20;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 107), &qword_10016AB10, &unk_100130B10);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  if (v0[183] < 1)
  {
    updated = type metadata accessor for UpdateRequest();
    v0[193] = updated;
    v0[64] = updated;
    v29 = sub_1000F820C(&qword_10016D2A0, &type metadata accessor for UpdateRequest, &protocol conformance descriptor for UpdateRequest);
    v0[194] = v29;
    v0[65] = v29;
    v0[195] = sub_100042BAC(v0 + 61);
    (*(*(updated - 8) + 16))();
    v25 = sub_100026F94(&qword_10016CB50, &qword_100133370);
    v30 = swift_task_alloc();
    v0[196] = v30;
    *v30 = v0;
    v30[1] = sub_1000D34C0;
    v27 = v0 + 66;
  }

  else
  {
    v25 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v26 = swift_task_alloc();
    v0[191] = v26;
    *v26 = v0;
    v26[1] = sub_1000D3188;
    v27 = v0 + 81;
  }

  return BaseObjectGraph.inject<A>(_:)(v27, v25, v25);
}

uint64_t sub_1000D3188()
{
  v2 = *v1;
  *(*v1 + 1536) = v0;

  if (v0)
  {
    v3 = *(v2 + 1120);

    v4 = sub_1000D4E28;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1120);
    v4 = sub_1000D32BC;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D32BC()
{
  v1 = v0[145];
  v2 = *sub_100026F50(v0 + 81, v0[84]);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_100133408, v4);

  sub_100026FDC(v0 + 81);
  updated = type metadata accessor for UpdateRequest();
  v0[193] = updated;
  v0[64] = updated;
  v6 = sub_1000F820C(&qword_10016D2A0, &type metadata accessor for UpdateRequest, &protocol conformance descriptor for UpdateRequest);
  v0[194] = v6;
  v0[65] = v6;
  v0[195] = sub_100042BAC(v0 + 61);
  (*(*(updated - 8) + 16))();
  v7 = sub_100026F94(&qword_10016CB50, &qword_100133370);
  v8 = swift_task_alloc();
  v0[196] = v8;
  *v8 = v0;
  v8[1] = sub_1000D34C0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 66, v7, v7);
}

uint64_t sub_1000D34C0()
{
  v2 = *v1;
  *(*v1 + 1576) = v0;

  if (v0)
  {
    v3 = *(v2 + 1120);

    v4 = sub_1000D3B78;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1120);
    v4 = sub_1000D35F4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D35F4()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  sub_100026F50((v0 + 488), *(v0 + 512));
  dispatch thunk of QueryRequest.statementType.getter();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for StatementType.select(_:))
  {

LABEL_3:
    v5 = *(v0 + 1296);
    v6 = *(v0 + 1256);
    v7 = *(v0 + 1192);
    sub_100026FDC((v0 + 528));
    sub_100026FDC((v0 + 488));
    sub_1000F65EC(v7, type metadata accessor for RequestContext);
    sub_10001B428(v0 + 192);
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v6, &qword_10016D298, &qword_1001333F0);
    sub_100026FDC((v0 + 448));
    sub_1000F7B88("performUpdateRequest", 20, 2, v5);

    v8 = *(v0 + 8);
    v9 = *(v0 + 1464);

    return v8(v9);
  }

  if (v4 == enum case for StatementType.insert(_:))
  {
    v11 = *(v0 + 1408);
    v12 = *(v0 + 1120);
    sub_100026F50((v0 + 528), *(v0 + 552));
    v13 = swift_task_alloc();
    *(v0 + 1584) = v13;
    *v13 = v0;
    v13[1] = sub_1000D3D18;
    v14 = *(v0 + 1368);
    v15 = *(v0 + 1360);
    v16 = *(v0 + 1328);
    v17 = *(v0 + 1320);

    return sub_1000706AC(v12 + v11, v17, v16, v14, v15);
  }

  else if (v4 == enum case for StatementType.update(_:))
  {
    v18 = *(v0 + 1408);
    v19 = *(v0 + 1120);
    sub_100026F50((v0 + 528), *(v0 + 552));
    v20 = swift_task_alloc();
    *(v0 + 1592) = v20;
    *v20 = v0;
    v20[1] = sub_1000D3F24;
    v21 = *(v0 + 1368);
    v22 = *(v0 + 1360);
    v23 = *(v0 + 1328);
    v24 = *(v0 + 1320);

    return sub_100070C50(v19 + v18, v24, v23, v21, v22);
  }

  else
  {
    if (v4 != enum case for StatementType.delete(_:))
    {
      v35 = *(v0 + 1144);
      v36 = *(v0 + 1152);
      v32 = *(v0 + 1136);

      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33._object = 0x800000010013B360;
      v33._countAndFlagsBits = 0xD000000000000018;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      *(v0 + 752) = v32;
      sub_100042BAC((v0 + 728));
      dispatch thunk of QueryRequest.statementType.getter();
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 728, &qword_10016AB10, &unk_100130B10);
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v35 + 8))(v36, v32);
      goto LABEL_3;
    }

    v25 = *(v0 + 1408);
    v26 = *(v0 + 1120);
    sub_100026F50((v0 + 528), *(v0 + 552));
    v27 = swift_task_alloc();
    *(v0 + 1600) = v27;
    *v27 = v0;
    v27[1] = sub_1000D4074;
    v28 = *(v0 + 1368);
    v29 = *(v0 + 1360);
    v30 = *(v0 + 1328);
    v31 = *(v0 + 1320);

    return sub_100070E88(v26 + v25, v31, v30, v28, v29);
  }
}

uint64_t sub_1000D3B78()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 488));
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D3D18()
{
  v1 = *(*v0 + 1120);

  return _swift_task_switch(sub_1000D3E68, v1, 0);
}

uint64_t sub_1000D3E68()
{
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = swift_task_alloc();
  *(v0 + 1608) = v2;
  *v2 = v0;
  v2[1] = sub_1000D41C4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 568, v1, v1);
}

uint64_t sub_1000D3F24()
{
  v1 = *(*v0 + 1120);

  return _swift_task_switch(sub_1000F88C4, v1, 0);
}

uint64_t sub_1000D4074()
{
  v1 = *(*v0 + 1120);

  return _swift_task_switch(sub_1000F88C4, v1, 0);
}

uint64_t sub_1000D41C4()
{
  v2 = *v1;
  *(*v1 + 1616) = v0;

  v3 = *(v2 + 1120);
  if (v0)
  {
    v4 = sub_1000D46AC;
  }

  else
  {
    v4 = sub_1000D42F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D42F0()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1416);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1128);
  (*(v0 + 1432))(v4, *(v0 + 1120) + *(v0 + 1408), v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v5 = type metadata accessor for PostScheduledNotificationsTask(0);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000F7F90(v4, v6 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential, &qword_10016CB48, &qword_100132C60);
  *(v0 + 632) = v5;
  *(v0 + 640) = sub_1000F820C(&qword_10016D270, type metadata accessor for PostScheduledNotificationsTask, &unk_100132C08);
  *(v0 + 608) = v6;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_100026EEC(v0 + 608, v0 + 688);
  v8 = qword_10016A6C8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 1160);
  v10 = *(v0 + 1112);
  v11 = qword_1001738A8;
  v12 = sub_1000F820C(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  sub_10002C604((v0 + 688), (v13 + 4));
  v13[9] = v10;

  sub_100053D08(0, 0, v9, &unk_100133400, v13);

  sub_100026FDC((v0 + 568));
  sub_100026FDC((v0 + 608));
  v14 = *(v0 + 1296);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1192);
  sub_100026FDC((v0 + 528));
  sub_100026FDC((v0 + 488));
  sub_1000F65EC(v16, type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v15, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2, v14);

  v17 = *(v0 + 8);
  v18 = *(v0 + 1464);

  return v17(v18);
}

uint64_t sub_1000D46AC()
{
  sub_100026FDC((v0 + 528));
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 488));
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D4854()
{
  sub_1000F7B88("performUpdateRequest", 20, 2, *(v0 + 1296));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D4998()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_1000F7B88("performUpdateRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D4B08()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_1000F7B88("performUpdateRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D4C94()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D4E28()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D4FBC(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  sub_100026F94(&qword_10016CB48, &qword_100132C60);
  v3[110] = swift_task_alloc();
  v4 = type metadata accessor for StatementType();
  v3[111] = v4;
  v3[112] = *(v4 - 8);
  v3[113] = swift_task_alloc();
  v5 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v3[114] = v5;
  v3[115] = *(v5 - 8);
  v3[116] = swift_task_alloc();
  v6 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v3[117] = v6;
  v3[118] = *(v6 - 8);
  v3[119] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[120] = v7;
  v3[121] = *(v7 - 8);
  v3[122] = swift_task_alloc();
  sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v3[123] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v3[124] = swift_task_alloc();
  v3[125] = type metadata accessor for RequestContext(0);
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v3[129] = swift_task_alloc();
  v8 = sub_100026F94(&qword_10016D2B0, &qword_100133430);
  v3[130] = v8;
  v9 = *(v8 - 8);
  v3[131] = v9;
  v3[132] = *(v9 + 64);
  v3[133] = swift_task_alloc();
  v3[134] = swift_task_alloc();
  v3[135] = swift_task_alloc();
  v3[136] = swift_task_alloc();
  v10 = type metadata accessor for OSSignpostID();
  v3[137] = v10;
  v3[138] = *(v10 - 8);
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();

  return _swift_task_switch(sub_1000D53C8, v2, 0);
}

uint64_t sub_1000D53C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "performDeleteRequest", "", v7, 2u);
  }

  v9 = v3[140];
  v10 = v3[139];
  v11 = v3[138];
  v12 = v3[137];

  (*(v11 + 16))(v10, v9, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[141] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v12);
  v13 = swift_task_alloc();
  v3[142] = v13;
  *v13 = v3;
  v13[1] = sub_1000D55C0;
  v14 = v3[136];
  v15 = v3[108];
  v16 = v3[107];

  return sub_1000EAC38(v14, v16, v15);
}

uint64_t sub_1000D55C0()
{
  v2 = *v1;
  *(*v1 + 1144) = v0;

  v3 = *(v2 + 872);
  if (v0)
  {
    v4 = sub_1000D95E4;
  }

  else
  {
    v4 = sub_1000D56EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D56EC()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1040);
  v3 = (v1 + *(v2 + 40));
  v4 = *v3;
  *(v0 + 1152) = *v3;
  v5 = v3[1];
  *(v0 + 1160) = v5;
  *(v0 + 1168) = *(v1 + *(v2 + 44));
  v6 = qword_10016A678;

  if (v6 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 1144);
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(v0 + 1176) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v7 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1184) = *(v7 + 72);
  *(v0 + 1464) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x800000010013DF50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 792) = &type metadata for String;
  *(v0 + 768) = v4;
  *(v0 + 776) = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 768, &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100083D2C(v4, v5, v0 + 192);
  if (v21)
  {
    v10 = *(v0 + 1128);
    v11 = *(v0 + 1088);

LABEL_10:
    sub_10002BA6C(v11, &qword_10016D2B0, &qword_100133430);
    sub_1000F7B88("performDeleteRequest", 20, 2, v10);

    v19 = *(v0 + 8);

    return v19();
  }

  v23 = v4;
  std::string::basic_string((v0 + 832), (v0 + 216));
  v22 = v5;
  sub_10002EFB0((v0 + 832));
  sub_10002EFC4(v0 + 832);
  v12 = static String._fromUTF8Repairing(_:)();
  v14 = v13;
  *(v0 + 1192) = v13;
  *(v0 + 1200) = v12;
  std::string::~string((v0 + 832));
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  if (!Connection.tableExists(_:)(v15))
  {
    v10 = *(v0 + 1128);
    v11 = *(v0 + 1088);
    v17 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    *v18 = v12;
    v18[1] = v14;
    v18[2] = v23;
    v18[3] = v22;
    (*(*(v17 - 8) + 104))(v18, enum case for DaemonError.noTable(_:), v17);
    swift_willThrow();
    sub_10001B428(v0 + 192);
    goto LABEL_10;
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v16 = swift_task_alloc();
  *(v0 + 1208) = v16;
  *v16 = v0;
  v16[1] = sub_1000D5CC0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000D5CC0()
{
  v2 = *v1;
  *(*v1 + 1216) = v0;

  if (v0)
  {
    v3 = *(v2 + 872);

    v4 = sub_1000D9764;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 872);
    v4 = sub_1000D5DF4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D5DF4()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v41 = *(v0 + 1072);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1000);
  v7 = *(v0 + 872);
  v8 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  *(v0 + 1224) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v9 = v6[5];
  v10 = type metadata accessor for AccessCredential();
  *(v0 + 1232) = v10;
  v11 = *(v10 - 8);
  *(v0 + 1240) = v11;
  v12 = *(v11 + 16);
  *(v0 + 1248) = v12;
  *(v0 + 1256) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v3 + v9, v7 + v8, v10);
  v42 = *(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate);
  sub_100026EEC(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager, v3 + v6[7]);
  v13 = *(v0 + 32);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v13;
  v15 = *(v0 + 64);
  v14 = *(v0 + 80);
  v16 = *(v0 + 48);
  *(v3 + 80) = *(v0 + 96);
  *(v3 + 48) = v15;
  *(v3 + 64) = v14;
  *(v3 + 32) = v16;
  *(v3 + v6[6]) = v42;
  sub_1000F6524(v3, v4);
  sub_10002BA04(v1, v2, &qword_10016D2B0, &qword_100133430);
  sub_1000F6524(v3, v5);
  sub_10002BA04(v1, v41, &qword_10016D2B0, &qword_100133430);
  swift_unknownObjectRetain();

  sub_10002BA04(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, v0 + 408, &qword_10016AFF8, &unk_100130F10);
  if (*(v0 + 432))
  {
    sub_10002C604((v0 + 408), v0 + 368);
    *(v0 + 1264) = sub_100026F50((v0 + 368), *(v0 + 392));

    return _swift_task_switch(sub_1000D641C, 0, 0);
  }

  else
  {
    v17 = *(v0 + 1216);
    v18 = *(v0 + 1168);
    v19 = *(v0 + 1080);
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1048);
    v22 = *(v0 + 1016);
    sub_10002BA6C(v0 + 408, &qword_10016AFF8, &unk_100130F10);
    sub_10002BA04(v19, v20, &qword_10016D2B0, &qword_100133430);
    v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    sub_1000F7F90(v20, v24 + v23, &qword_10016D2B0, &qword_100133430);

    v25 = sub_1000D9E7C(v22, sub_1000F7FF8, v24, sub_1000F7F1C);
    if (v17)
    {
      v26 = *(v0 + 1080);
      v27 = *(v0 + 1072);
      v28 = *(v0 + 1016);
      v29 = *(v0 + 1008);

      sub_1000F65EC(v29, type metadata accessor for RequestContext);
      sub_10002BA6C(v27, &qword_10016D2B0, &qword_100133430);

      sub_10002BA6C(v26, &qword_10016D2B0, &qword_100133430);
      sub_1000F65EC(v28, type metadata accessor for RequestContext);
      v30 = *(v0 + 1128);
      v31 = *(v0 + 1088);
      sub_1000F65EC(*(v0 + 1024), type metadata accessor for RequestContext);
      sub_10001B428(v0 + 192);
      sub_10002BA6C(v31, &qword_10016D2B0, &qword_100133430);
      sub_1000F7B88("performDeleteRequest", 20, 2, v30);

      v32 = *(v0 + 8);

      return v32();
    }

    else
    {
      v33 = v25;
      v34 = *(v0 + 1080);
      v35 = *(v0 + 1072);
      v36 = *(v0 + 1016);
      v37 = *(v0 + 1008);

      sub_1000F65EC(v37, type metadata accessor for RequestContext);
      sub_10002BA6C(v35, &qword_10016D2B0, &qword_100133430);
      sub_10002BA6C(v34, &qword_10016D2B0, &qword_100133430);
      sub_1000F65EC(v36, type metadata accessor for RequestContext);
      *(v0 + 1280) = v33;
      v38 = sub_100026F94(&qword_10016B008, &unk_100130F30);
      v39 = swift_task_alloc();
      *(v0 + 1288) = v39;
      *v39 = v0;
      v39[1] = sub_1000D69CC;

      return BaseObjectGraph.inject<A>(_:)(v0 + 448, v38, v38);
    }
  }
}

uint64_t sub_1000D641C()
{
  sub_100026F50(*(v0 + 1264), *(*(v0 + 1264) + 24));
  v1 = type metadata accessor for ConfigurationStoreImplementation();
  if (sub_1000503E4(v1))
  {
    sub_10008CEE4();
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(v0 + 1216);
    v4 = *(v0 + 1168);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1048);
    v7 = *(v0 + 1008);
    sub_10002BA04(*(v0 + 1072), v5, &qword_10016D2B0, &qword_100133430);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    sub_1000F7F90(v5, v9 + v8, &qword_10016D2B0, &qword_100133430);

    v10 = sub_1000D9E7C(v7, sub_1000F88AC, v9, sub_1000F7F1C);
    if (v3)
    {

      v11 = CFAbsoluteTimeGetCurrent();
      v12 = *(v0 + 1264);
      v13 = *(v0 + 992);
      v14 = *(v0 + 864);
      sub_10009173C(v11 - Current);
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      sub_10008E36C(v12, v0 + 272);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v17 = *(v0 + 288);
      *(v16 + 32) = *(v0 + 272);
      *(v16 + 48) = v17;
      *(v16 + 64) = *(v0 + 304);
      *(v16 + 80) = v14;

      sub_10009C9B8(0, 0, v13, &unk_100133450, v16);

LABEL_6:
      *(v0 + 1304) = v3;
      v25 = *(v0 + 872);
      v26 = sub_1000D6B00;
      goto LABEL_10;
    }

    v27 = v10;

    v28 = CFAbsoluteTimeGetCurrent();
    v29 = *(v0 + 1264);
    v30 = *(v0 + 992);
    v31 = *(v0 + 864);
    sub_10009173C(v28 - Current);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    sub_10008E36C(v29, v0 + 320);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v34 = *(v0 + 336);
    *(v33 + 32) = *(v0 + 320);
    *(v33 + 48) = v34;
    *(v33 + 64) = *(v0 + 352);
    *(v33 + 80) = v31;

    sub_10009C9B8(0, 0, v30, &unk_100133458, v33);
  }

  else
  {
    v3 = *(v0 + 1216);
    v18 = *(v0 + 1168);
    v19 = *(v0 + 1064);
    v20 = *(v0 + 1048);
    v21 = *(v0 + 1008);
    sub_10002BA04(*(v0 + 1072), v19, &qword_10016D2B0, &qword_100133430);
    v22 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    sub_1000F7F90(v19, v23 + v22, &qword_10016D2B0, &qword_100133430);

    v24 = sub_1000D9E7C(v21, sub_1000F88AC, v23, sub_1000F7F1C);
    if (v3)
    {

      goto LABEL_6;
    }

    v27 = v24;
  }

  *(v0 + 1272) = v27;
  v25 = *(v0 + 872);
  v26 = sub_1000D687C;
LABEL_10:

  return _swift_task_switch(v26, v25, 0);
}

uint64_t sub_1000D687C()
{
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[127];
  v4 = v0[126];

  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_10002BA6C(v1, &qword_10016D2B0, &qword_100133430);
  sub_1000F65EC(v3, type metadata accessor for RequestContext);
  sub_100026FDC(v0 + 46);
  v0[160] = v0[159];
  v5 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v6 = swift_task_alloc();
  v0[161] = v6;
  *v6 = v0;
  v6[1] = sub_1000D69CC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v5, v5);
}

uint64_t sub_1000D69CC()
{
  v2 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v3 = *(v2 + 872);

    v4 = sub_1000D9908;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 872);
    v4 = sub_1000D6D24;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D6B00()
{
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[127];
  v4 = v0[126];

  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_10002BA6C(v1, &qword_10016D2B0, &qword_100133430);
  sub_1000F65EC(v3, type metadata accessor for RequestContext);
  sub_100026FDC(v0 + 46);
  v5 = v0[141];
  v6 = v0[136];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v6, &qword_10016D2B0, &qword_100133430);
  sub_1000F7B88("performDeleteRequest", 20, 2, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D6D24()
{
  sub_100026F50(v0 + 56, v0[59]);
  v1 = swift_task_alloc();
  v0[164] = v1;
  *v1 = v0;
  v1[1] = sub_1000D6DC4;

  return sub_100061DD0(1);
}

uint64_t sub_1000D6DC4()
{
  v2 = *v1;
  v2[165] = v0;

  if (v0)
  {
    v3 = v2[109];

    return _swift_task_switch(sub_1000D7094, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[166] = v4;
    *v4 = v2;
    v4[1] = sub_1000D6F60;

    return BaseObjectGraph.inject<A>(_:)(v2 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
  }
}

uint64_t sub_1000D6F60()
{
  v2 = *v1;
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v3 = *(v2 + 872);

    v4 = sub_1000D9AC8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 872);
    v4 = sub_1000D725C;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D7094()
{
  v1 = v0[141];
  v2 = v0[136];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D725C()
{
  v32 = *(v0 + 1336);
  v31 = *(v0 + 968);
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  v29 = *(v0 + 976);
  v30 = *(v0 + 936);
  v4 = *(v0 + 928);
  v5 = *(v0 + 920);
  v6 = *(v0 + 912);

  Table.init(_:database:)();
  static Connection.ServiceColumns.bundleIds.getter();
  String.append(_:)(*(v0 + 104));
  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  ExpressionType<>.like(_:escape:)();

  (*(v5 + 8))(v4, v6);
  *(v0 + 512) = v1;
  *(v0 + 520) = sub_1000F820C(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  sub_100042BAC((v0 + 488));
  QueryType.where(_:)();
  (*(v3 + 8))(v2, v30);
  (*(v31 + 8))(v29, v1);
  Connection.pluck(_:)();
  if (v32)
  {
    v8 = *(v0 + 1128);
    v9 = *(v0 + 1088);
    v10 = *(v0 + 1024);

    sub_1000F65EC(v10, type metadata accessor for RequestContext);
    sub_10001B428(v0 + 192);
    sub_100042AFC(v0 + 104);
    sub_10002BA6C(v9, &qword_10016D2B0, &qword_100133430);
    sub_100026FDC((v0 + 488));
    sub_100026FDC((v0 + 448));
    sub_1000F7B88("performDeleteRequest", 20, 2, v8);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 984);
    sub_100026FDC((v0 + 488));
    v14 = type metadata accessor for Row();
    if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
    {
      sub_100026F50((v0 + 448), *(v0 + 472));
      v15 = AccessCredential.requestId.getter();
      v17 = v16;
      *(v0 + 1344) = v16;
      v18 = swift_task_alloc();
      *(v0 + 1352) = v18;
      *v18 = v0;
      v18[1] = sub_1000D78BC;
      v19 = *(v0 + 1200);
      v20 = *(v0 + 1192);
      v21 = *(v0 + 1160);
      v22 = *(v0 + 1152);

      return sub_10005EDF0(v15, v17, v0 + 104, v19, v20, v22, v21);
    }

    else
    {
      if (*(v0 + 1280) < 1)
      {
        v26 = type metadata accessor for DeleteRequest();
        *(v0 + 1384) = v26;
        *(v0 + 552) = v26;
        v27 = sub_1000F820C(&qword_10016D2B8, &type metadata accessor for DeleteRequest, &protocol conformance descriptor for DeleteRequest);
        *(v0 + 1392) = v27;
        *(v0 + 560) = v27;
        *(v0 + 1400) = sub_100042BAC((v0 + 528));
        (*(*(v26 - 8) + 16))();
        v23 = sub_100026F94(&qword_10016CB50, &qword_100133370);
        v28 = swift_task_alloc();
        *(v0 + 1408) = v28;
        *v28 = v0;
        v28[1] = sub_1000D8108;
        v25 = v0 + 568;
      }

      else
      {
        v23 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
        v24 = swift_task_alloc();
        *(v0 + 1368) = v24;
        *v24 = v0;
        v24[1] = sub_1000D7DD0;
        v25 = v0 + 728;
      }

      return BaseObjectGraph.inject<A>(_:)(v25, v23, v23);
    }
  }
}

uint64_t sub_1000D78BC()
{
  v2 = *v1;
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v3 = *(v2 + 872);

    v4 = sub_1000D7BE4;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 872);

    v4 = sub_1000D7A20;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D7A20()
{
  if (v0[160] < 1)
  {
    v4 = type metadata accessor for DeleteRequest();
    v0[173] = v4;
    v0[69] = v4;
    v5 = sub_1000F820C(&qword_10016D2B8, &type metadata accessor for DeleteRequest, &protocol conformance descriptor for DeleteRequest);
    v0[174] = v5;
    v0[70] = v5;
    v0[175] = sub_100042BAC(v0 + 66);
    (*(*(v4 - 8) + 16))();
    v1 = sub_100026F94(&qword_10016CB50, &qword_100133370);
    v6 = swift_task_alloc();
    v0[176] = v6;
    *v6 = v0;
    v6[1] = sub_1000D8108;
    v3 = v0 + 71;
  }

  else
  {
    v1 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v2 = swift_task_alloc();
    v0[171] = v2;
    *v2 = v0;
    v2[1] = sub_1000D7DD0;
    v3 = v0 + 91;
  }

  return BaseObjectGraph.inject<A>(_:)(v3, v1, v1);
}

uint64_t sub_1000D7BE4()
{
  v1 = v0[141];
  v2 = v0[136];
  v3 = v0[123];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC((v0 + 13));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D7DD0()
{
  v2 = *v1;
  *(*v1 + 1376) = v0;

  if (v0)
  {
    v3 = *(v2 + 872);

    v4 = sub_1000D9C90;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 872);
    v4 = sub_1000D7F04;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D7F04()
{
  v1 = v0[124];
  v2 = *sub_100026F50(v0 + 91, v0[94]);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_100133448, v4);

  sub_100026FDC(v0 + 91);
  v5 = type metadata accessor for DeleteRequest();
  v0[173] = v5;
  v0[69] = v5;
  v6 = sub_1000F820C(&qword_10016D2B8, &type metadata accessor for DeleteRequest, &protocol conformance descriptor for DeleteRequest);
  v0[174] = v6;
  v0[70] = v6;
  v0[175] = sub_100042BAC(v0 + 66);
  (*(*(v5 - 8) + 16))();
  v7 = sub_100026F94(&qword_10016CB50, &qword_100133370);
  v8 = swift_task_alloc();
  v0[176] = v8;
  *v8 = v0;
  v8[1] = sub_1000D8108;

  return BaseObjectGraph.inject<A>(_:)(v0 + 71, v7, v7);
}

uint64_t sub_1000D8108()
{
  v2 = *v1;
  *(*v1 + 1416) = v0;

  if (v0)
  {
    v3 = *(v2 + 872);

    v4 = sub_1000D8810;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 872);
    v4 = sub_1000D823C;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000D823C()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  sub_100026F50(v0 + 66, v0[69]);
  dispatch thunk of QueryRequest.statementType.getter();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for StatementType.select(_:))
  {

LABEL_3:
    v5 = v0[141];
    v6 = v0[136];
    v7 = v0[128];
    v8 = v0[123];
    sub_100026FDC(v0 + 71);
    sub_100026FDC(v0 + 66);
    sub_1000F65EC(v7, type metadata accessor for RequestContext);
    sub_10001B428((v0 + 24));
    sub_10002BA6C(v8, &qword_10016AD38, &qword_1001332F0);
    sub_100042AFC((v0 + 13));
    sub_10002BA6C(v6, &qword_10016D2B0, &qword_100133430);
    sub_100026FDC(v0 + 56);
    sub_1000F7B88("performDeleteRequest", 20, 2, v5);

    v9 = v0[1];
    v10 = v0[160];

    return v9(v10);
  }

  if (v4 == enum case for StatementType.insert(_:))
  {
    v12 = v0[153];
    v13 = v0[109];
    sub_100026F50(v0 + 71, v0[74]);
    v14 = swift_task_alloc();
    v0[178] = v14;
    *v14 = v0;
    v14[1] = sub_1000D8A04;
    v15 = v0[150];
    v16 = v0[149];
    v17 = v0[145];
    v18 = v0[144];

    return sub_1000706AC(v13 + v12, v18, v17, v15, v16);
  }

  else if (v4 == enum case for StatementType.update(_:))
  {
    v19 = v0[153];
    v20 = v0[109];
    sub_100026F50(v0 + 71, v0[74]);
    v21 = swift_task_alloc();
    v0[179] = v21;
    *v21 = v0;
    v21[1] = sub_1000D8C10;
    v22 = v0[150];
    v23 = v0[149];
    v24 = v0[145];
    v25 = v0[144];

    return sub_100070C50(v20 + v19, v25, v24, v22, v23);
  }

  else
  {
    if (v4 != enum case for StatementType.delete(_:))
    {
      v36 = v0[112];
      v37 = v0[113];
      v33 = v0[111];

      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34._object = 0x800000010013B360;
      v34._countAndFlagsBits = 0xD000000000000018;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v0[103] = v33;
      sub_100042BAC(v0 + 100);
      dispatch thunk of QueryRequest.statementType.getter();
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C((v0 + 100), &qword_10016AB10, &unk_100130B10);
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v36 + 8))(v37, v33);
      goto LABEL_3;
    }

    v26 = v0[153];
    v27 = v0[109];
    sub_100026F50(v0 + 71, v0[74]);
    v28 = swift_task_alloc();
    v0[180] = v28;
    *v28 = v0;
    v28[1] = sub_1000D8D60;
    v29 = v0[150];
    v30 = v0[149];
    v31 = v0[145];
    v32 = v0[144];

    return sub_100070E88(v27 + v26, v32, v31, v29, v30);
  }
}

uint64_t sub_1000D8810()
{
  v1 = v0[141];
  v2 = v0[136];
  v3 = v0[123];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC((v0 + 13));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 66);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D8A04()
{
  v1 = *(*v0 + 872);

  return _swift_task_switch(sub_1000D8B54, v1, 0);
}

uint64_t sub_1000D8B54()
{
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = swift_task_alloc();
  *(v0 + 1448) = v2;
  *v2 = v0;
  v2[1] = sub_1000D8EB0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 608, v1, v1);
}

uint64_t sub_1000D8C10()
{
  v1 = *(*v0 + 872);

  return _swift_task_switch(sub_1000F88C8, v1, 0);
}

uint64_t sub_1000D8D60()
{
  v1 = *(*v0 + 872);

  return _swift_task_switch(sub_1000F88C8, v1, 0);
}

uint64_t sub_1000D8EB0()
{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  v3 = *(v2 + 872);
  if (v0)
  {
    v4 = sub_1000D93E8;
  }

  else
  {
    v4 = sub_1000D8FDC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D8FDC()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 992);
  v4 = *(v0 + 880);
  (*(v0 + 1248))(v4, *(v0 + 872) + *(v0 + 1224), v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v5 = type metadata accessor for PostScheduledNotificationsTask(0);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000F7F90(v4, v6 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential, &qword_10016CB48, &qword_100132C60);
  *(v0 + 672) = v5;
  *(v0 + 680) = sub_1000F820C(&qword_10016D270, type metadata accessor for PostScheduledNotificationsTask, &unk_100132C08);
  *(v0 + 648) = v6;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_100026EEC(v0 + 648, v0 + 688);
  v8 = qword_10016A6C8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 992);
  v10 = *(v0 + 864);
  v11 = qword_1001738A8;
  v12 = sub_1000F820C(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  sub_10002C604((v0 + 688), (v13 + 4));
  v13[9] = v10;

  sub_100053D08(0, 0, v9, &unk_100133440, v13);

  sub_100026FDC((v0 + 608));
  sub_100026FDC((v0 + 648));
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1088);
  v16 = *(v0 + 1024);
  v17 = *(v0 + 984);
  sub_100026FDC((v0 + 568));
  sub_100026FDC((v0 + 528));
  sub_1000F65EC(v16, type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002BA6C(v17, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC(v0 + 104);
  sub_10002BA6C(v15, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performDeleteRequest", 20, 2, v14);

  v18 = *(v0 + 8);
  v19 = *(v0 + 1280);

  return v18(v19);
}

uint64_t sub_1000D93E8()
{
  sub_100026FDC(v0 + 71);
  v1 = v0[141];
  v2 = v0[136];
  v3 = v0[123];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC((v0 + 13));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 66);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D95E4()
{
  sub_1000F7B88("performDeleteRequest", 20, 2, *(v0 + 1128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D9764()
{
  v1 = v0[141];
  v2 = v0[136];
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_1000F7B88("performDeleteRequest", 20, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D9908()
{
  v1 = v0[141];
  v2 = v0[136];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_1000F7B88("performDeleteRequest", 20, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D9AC8()
{
  v1 = v0[141];
  v2 = v0[136];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D9C90()
{
  v1 = v0[141];
  v2 = v0[136];
  v3 = v0[123];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC((v0 + 13));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D9E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (Connection.isOnClientContextQueue.getter())
  {
    v5 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DaemonError.unexpectedContextReentry(_:), v5);
    return swift_willThrow();
  }

  else
  {
    v8 = Connection.clientContextQueue.getter();
    swift_allocObject();
    v9 = swift_weakInit();
    v10[1] = v10;
    __chkstk_darwin(v9);
    OS_dispatch_queue.sync<A>(execute:)();

    if (!v4)
    {
      return v10[3];
    }
  }

  return result;
}

uint64_t sub_1000DA01C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11[3] = type metadata accessor for RequestContext(0);
    v6 = sub_100042BAC(v11);
    sub_1000F6524(a2, v6);
    Connection.setClientContext(_:)();
    v7 = sub_100026FDC(v11);
    a3(&v12, v7);
    Connection.clearClientContext()();
    if (v3)
    {
    }

    else
    {

      return v12;
    }
  }

  else
  {
    v9 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for DaemonError.interruptedContext(_:), v9);
    return swift_willThrow();
  }
}

uint64_t sub_1000DA19C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  _StringGuts.grow(_:)(41);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 656419879;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000019;
  v11._object = 0x800000010013DC00;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 10537;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(literal:)();
}

uint64_t sub_1000DA304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A638 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_1001737A8, qword_10016D0C8);
}

uint64_t sub_1000DA35C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016D0F0);
  v1 = sub_10002FD14(v0, qword_10016D0F0);
  if (qword_10016A538 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000DA424()
{
  v1 = v0;
  v2 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013D250;
  v6._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = (v0 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  v9 = *(v0 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  v8 = *(v0 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id + 8);
  v21 = &type metadata for String;
  *&v20 = v9;
  *(&v20 + 1) = v8;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v20, &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager;
  v14 = *v7;
  v13 = v7[1];
  sub_100026EEC(v1 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager, &v20);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  sub_10002C604(&v20, (v15 + 4));
  v15[9] = v14;
  v15[10] = v13;

  sub_10009C9B8(0, 0, v4, &unk_100133270, v15);

  v16 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v17 = type metadata accessor for AccessCredential();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  swift_unknownObjectRelease();

  sub_100026FDC((v1 + v12));
  sub_10002BA6C(v1 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, &qword_10016AFF8, &unk_100130F10);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1000DA7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000DA7DC, 0, 0);
}

uint64_t sub_1000DA7DC()
{
  v1 = sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = *v1;
  *(v0 + 40) = *v1;

  return _swift_task_switch(sub_1000DA84C, v2, 0);
}

uint64_t sub_1000DA84C()
{
  sub_1000522FC(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DA8B0()
{
  sub_1000DA424();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ClientSession(uint64_t a1)
{
  result = qword_10016D148;
  if (!qword_10016D148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DA930(uint64_t a1)
{
  result = type metadata accessor for AccessCredential();
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

uint64_t sub_1000DA9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v4[170] = *(v5 - 8);
  v4[171] = swift_task_alloc();
  v6 = type metadata accessor for AccessCredential();
  v4[172] = v6;
  v7 = *(v6 - 8);
  v4[173] = v7;
  v4[174] = *(v7 + 64);
  v4[175] = swift_task_alloc();
  v8 = type metadata accessor for OSSignposter();
  v4[176] = v8;
  v4[177] = *(v8 - 8);
  v4[178] = swift_task_alloc();
  v9 = type metadata accessor for SelectRequest();
  v4[179] = v9;
  v4[180] = *(v9 - 8);
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v4[185] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v4[186] = swift_task_alloc();
  v10 = type metadata accessor for StorageCategory();
  v4[187] = v10;
  v4[188] = *(v10 - 8);
  v4[189] = swift_task_alloc();
  v11 = type metadata accessor for StatementType();
  v4[190] = v11;
  v4[191] = *(v11 - 8);
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[195] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v4[196] = v12;
  v4[197] = *(v12 - 8);
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000DAD98, v3, 0);
}